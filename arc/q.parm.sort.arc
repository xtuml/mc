.// CDS temporarily order parameters alphabetically for backwards compatibility
.function sparm_sort
  .param inst_ref_set s_sparms
.//-- 007: 20140213 Add Start (saitou) 
  .if ( not_empty s_sparms )
.//-- 007: 20140213 Add End (saitou) 
    .for each s_sparm in s_sparms
      .select one prev_s_sparm related by s_sparm->S_SPARM[R54.'precedes']
      .if ( not_empty prev_s_sparm )
        .// unrelate s_sparm from prev_s_sparm across R54.'succeeds';
        .assign s_sparm.Previous_SParm_ID = 00
        .assign s_sparm.Previous_SParm_ID = 00
        .// end unrelate
      .end if
    .end for
.//-- 007: 20140213 Add Start (saitou) 
    .select any s_sync from instances of S_SYNC where ( false )
    .for each s_sparm in s_sparms
      .select one s_sync related by s_sparm->S_SYNC[R24]
      .break for
    .end for
    .if ( empty s_sync )
      .print "Error! not found S_SYNC!"
      .exit -1
    .end if
    .//
    .select any te_stidescrip from instances of TE_STIDESCRIP
    .assign te_stidescrip.Descrip = s_sync.Descrip
    .invoke r = CreateSTIObjects(te_stidescrip)
    .assign te_sti = r.result
    .//
    .if ( te_sti.Name_key != "" )
      .print "[sparm_sort] ${s_sync.Name} param order control enable"
      .//
      .invoke r1 = sparm_sort_order_control( te_sti, s_sparms )
      .assign orderNum = r1.result
      .assign sprmNum = cardinality s_sparms
      .if ( orderNum != sprmNum )
        .print "Error! [${s_sync.Name}] : param order num mismatch! ordNum=$t{orderNum} : sprmNum=$t{sprmNum}"
        .exit -1
      .end if
    .else
.//-- 007: 20140213 Add End (saitou) 
      .// Declare an empty instance reference.
      .select any head_s_sparm related by s_sparms->S_SPARM[R54.'precedes'] where ( false )
      .for each s_sparm in s_sparms
        .invoke r1 = sparm_insert( head_s_sparm, s_sparm )
        .assign head_s_sparm = r1.result
      .end for
.//-- 007: 20140213 Add Start (saitou) 
    .end if	.// "${te_sti.Name_key}"
  .end if	.// not_empty s_sparms
.//-- 007: 20140213 Add End (saitou) 
.end function
.function sparm_insert  .// s_sparm
  .param inst_ref head_s_sparm
  .param inst_ref s_sparm
  .assign result = s_sparm
  .if ( empty head_s_sparm )
    .// Just starting.  Return s_sparm as head.
  .elif ( s_sparm.Name <= head_s_sparm.Name )
    .// insert before
    .// relate s_sparm to head_s_sparm across R54.'precedes';
    .assign head_s_sparm.Previous_SParm_ID = s_sparm.SParm_ID
    .// end relate
  .else
    .// find bigger
    .assign result = head_s_sparm
    .assign prev_s_sparm = head_s_sparm
    .select one cursor_s_sparm related by head_s_sparm->S_SPARM[R54.'succeeds']
    .while ( not_empty cursor_s_sparm )
      .if ( s_sparm.Name <= cursor_s_sparm.Name )
        .break while
      .else
        .assign prev_s_sparm = cursor_s_sparm
        .select one cursor_s_sparm related by cursor_s_sparm->S_SPARM[R54.'succeeds']
      .end if
    .end while
    .// relate prev_s_sparm to s_sparm across R54.'precedes';
    .assign s_sparm.Previous_SParm_ID = prev_s_sparm.SParm_ID
    .// end relate
    .if ( not_empty cursor_s_sparm )
      .// relate s_sparm to cursor_s_sparm across R54.'precedes';
      .assign cursor_s_sparm.Previous_SParm_ID = s_sparm.SParm_ID
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//-- 007: 20140213 Add Start (saitou) 
.function sparm_sort_order_control .// integer
  .param inst_ref te_sti
  .param inst_ref_set s_sparms
  .//
  .//
  .select any cur_s_sparm from instances of S_SPARM where ( false )
  .assign orderNum = 0
  .while ( not_empty te_sti )
    .if ( te_sti.Name_key != "" )
      .assign orderNum = orderNum + 1
      .//
      .for each s_sparm in s_sparms
        .if ( s_sparm.Name == te_sti.Name_key )
          .if ( not_empty cur_s_sparm )
            .// relate s_sparm to cur_s_sparm across R54.'succeeds';
            .assign s_sparm.Previous_SParm_ID = cur_s_sparm.SParm_ID
            .// end relate
          .end if
          .assign cur_s_sparm = s_sparm
          .break for
        .end if
      .end for
    .end if
    .select one te_sti related by te_sti->TE_STI[R2099.'succeeds']
  .end while
  .//
  .assign attr_result = orderNum
.end function
.function CreateFirstLinkParameterValue .// te_sti
  .param string name_key
  .select any te_sti from instances of TE_STI where ( selected.IsFirst )
  .if ( empty te_sti )
    .create object instance te_sti of TE_STI
    .assign te_sti.PID = 00
  .end if
  .assign te_sti.Name_key = name_key
  .assign attr_result = te_sti
.end function
.function LinkAddParameterValue .// te_sti
   .param inst_ref p_te_sti
   .param string name_key
   .select one te_sti related by p_te_sti->TE_STI[R2099.'succeeds']   
   .if ( empty te_sti )
     .create object instance te_sti of TE_STI
     .// relate te_sti to p_te_sti across R2099.'succeeds';
     .assign te_sti.PID = p_te_sti.ID
     .// end relate
   .end if
   .assign te_sti.Name_key = name_key
   .assign attr_result = te_sti
.end function
.function CreateSTIObjects .// te_sti
  .param inst_ref te_stidescrip
  .select any te_sti from instances of TE_STI where ( false )
  .assign param_0 = "${te_stidescrip.Descrip:param_0}"
  .assign arg1 = "${te_stidescrip.Descrip:ARG1}"
  .if ( "" != param_0 )
    .invoke r0 = CreateFirstLinkParameterValue("${te_stidescrip.Descrip:param_0}")
    .invoke r1 = LinkAddParameterValue(r0.result,"${te_stidescrip.Descrip:param_1}")
    .invoke r2 = LinkAddParameterValue(r1.result,"${te_stidescrip.Descrip:param_2}")
    .invoke r3 = LinkAddParameterValue(r2.result,"${te_stidescrip.Descrip:param_3}")
    .invoke r4 = LinkAddParameterValue(r3.result,"${te_stidescrip.Descrip:param_4}")
    .invoke r5 = LinkAddParameterValue(r4.result,"${te_stidescrip.Descrip:param_5}")
    .invoke r6 = LinkAddParameterValue(r5.result,"${te_stidescrip.Descrip:param_6}")
    .invoke r7 = LinkAddParameterValue(r6.result,"${te_stidescrip.Descrip:param_7}")
    .invoke r8 = LinkAddParameterValue(r7.result,"${te_stidescrip.Descrip:param_8}")
    .invoke r9 = LinkAddParameterValue(r8.result,"${te_stidescrip.Descrip:param_9}")
    .invoke r10 = LinkAddParameterValue(r9.result,"${te_stidescrip.Descrip:param_10}")
    .invoke r11 = LinkAddParameterValue(r10.result,"${te_stidescrip.Descrip:param_11}")
    .invoke r12 = LinkAddParameterValue(r11.result,"${te_stidescrip.Descrip:param_12}")
    .invoke r13 = LinkAddParameterValue(r12.result,"${te_stidescrip.Descrip:param_13}")
    .invoke r14 = LinkAddParameterValue(r13.result,"${te_stidescrip.Descrip:param_14}")
    .invoke r15 = LinkAddParameterValue(r14.result,"${te_stidescrip.Descrip:param_15}")
    .invoke r16 = LinkAddParameterValue(r15.result,"${te_stidescrip.Descrip:param_16}")
    .invoke r17 = LinkAddParameterValue(r16.result,"${te_stidescrip.Descrip:param_17}")
    .invoke r18 = LinkAddParameterValue(r17.result,"${te_stidescrip.Descrip:param_18}")
    .invoke r19 = LinkAddParameterValue(r18.result,"${te_stidescrip.Descrip:param_19}")
    .invoke r20 = LinkAddParameterValue(r19.result,"${te_stidescrip.Descrip:param_20}")
    .invoke r21 = LinkAddParameterValue(r20.result,"${te_stidescrip.Descrip:param_21}")
    .invoke r22 = LinkAddParameterValue(r21.result,"${te_stidescrip.Descrip:param_22}")
    .invoke r23 = LinkAddParameterValue(r22.result,"${te_stidescrip.Descrip:param_23}")
    .invoke r24 = LinkAddParameterValue(r23.result,"${te_stidescrip.Descrip:param_24}")
    .invoke r25 = LinkAddParameterValue(r24.result,"${te_stidescrip.Descrip:param_25}")
    .invoke r26 = LinkAddParameterValue(r25.result,"${te_stidescrip.Descrip:param_26}")
    .invoke r27 = LinkAddParameterValue(r26.result,"${te_stidescrip.Descrip:param_27}")
    .invoke r28 = LinkAddParameterValue(r27.result,"${te_stidescrip.Descrip:param_28}")
    .invoke r29 = LinkAddParameterValue(r28.result,"${te_stidescrip.Descrip:param_29}")
    .invoke r30 = LinkAddParameterValue(r29.result,"${te_stidescrip.Descrip:param_30}")
    .invoke r31 = LinkAddParameterValue(r30.result,"${te_stidescrip.Descrip:param_31}")
    .invoke r32 = LinkAddParameterValue(r31.result,"${te_stidescrip.Descrip:param_32}")
    .invoke r33 = LinkAddParameterValue(r32.result,"${te_stidescrip.Descrip:param_33}")
    .invoke r34 = LinkAddParameterValue(r33.result,"${te_stidescrip.Descrip:param_34}")
    .invoke r35 = LinkAddParameterValue(r34.result,"${te_stidescrip.Descrip:param_35}")
    .invoke r36 = LinkAddParameterValue(r35.result,"${te_stidescrip.Descrip:param_36}")
    .invoke r37 = LinkAddParameterValue(r36.result,"${te_stidescrip.Descrip:param_37}")
    .invoke r38 = LinkAddParameterValue(r37.result,"${te_stidescrip.Descrip:param_38}")
    .invoke r39 = LinkAddParameterValue(r38.result,"${te_stidescrip.Descrip:param_39}")
    .invoke r40 = LinkAddParameterValue(r39.result,"${te_stidescrip.Descrip:param_40}")
    .invoke r41 = LinkAddParameterValue(r40.result,"${te_stidescrip.Descrip:param_41}")
    .invoke r42 = LinkAddParameterValue(r41.result,"${te_stidescrip.Descrip:param_42}")
    .invoke r43 = LinkAddParameterValue(r42.result,"${te_stidescrip.Descrip:param_43}")
    .invoke r44 = LinkAddParameterValue(r43.result,"${te_stidescrip.Descrip:param_44}")
    .invoke r45 = LinkAddParameterValue(r44.result,"${te_stidescrip.Descrip:param_45}")
    .invoke r46 = LinkAddParameterValue(r45.result,"${te_stidescrip.Descrip:param_46}")
    .invoke r47 = LinkAddParameterValue(r46.result,"${te_stidescrip.Descrip:param_47}")
    .invoke r48 = LinkAddParameterValue(r47.result,"${te_stidescrip.Descrip:param_48}")
    .invoke r49 = LinkAddParameterValue(r48.result,"${te_stidescrip.Descrip:param_49}")
    .invoke r50 = LinkAddParameterValue(r49.result,"${te_stidescrip.Descrip:param_50}")
    .//
    .assign te_sti = r0.result
    .//
  .elif ( "" != arg1 )
    .//
    .invoke r0 = CreateFirstLinkParameterValue("${te_stidescrip.Descrip:ARG1}")
    .invoke r1 = LinkAddParameterValue(r0.result,"${te_stidescrip.Descrip:ARG2}")
    .invoke r2 = LinkAddParameterValue(r1.result,"${te_stidescrip.Descrip:ARG3}")
    .invoke r3 = LinkAddParameterValue(r2.result,"${te_stidescrip.Descrip:ARG4}")
    .invoke r4 = LinkAddParameterValue(r3.result,"${te_stidescrip.Descrip:ARG5}")
    .invoke r5 = LinkAddParameterValue(r4.result,"${te_stidescrip.Descrip:ARG6}")
    .invoke r6 = LinkAddParameterValue(r5.result,"${te_stidescrip.Descrip:ARG7}")
    .invoke r7 = LinkAddParameterValue(r6.result,"${te_stidescrip.Descrip:ARG8}")
    .invoke r8 = LinkAddParameterValue(r7.result,"${te_stidescrip.Descrip:ARG9}")
    .invoke r9 = LinkAddParameterValue(r8.result,"${te_stidescrip.Descrip:ARG10}")
    .invoke r10 = LinkAddParameterValue(r9.result,"${te_stidescrip.Descrip:ARG11}")
    .invoke r11 = LinkAddParameterValue(r10.result,"${te_stidescrip.Descrip:ARG12}")
    .invoke r12 = LinkAddParameterValue(r11.result,"${te_stidescrip.Descrip:ARG13}")
    .invoke r13 = LinkAddParameterValue(r12.result,"${te_stidescrip.Descrip:ARG14}")
    .invoke r14 = LinkAddParameterValue(r13.result,"${te_stidescrip.Descrip:ARG15}")
    .invoke r15 = LinkAddParameterValue(r14.result,"${te_stidescrip.Descrip:ARG16}")
    .invoke r16 = LinkAddParameterValue(r15.result,"${te_stidescrip.Descrip:ARG17}")
    .invoke r17 = LinkAddParameterValue(r16.result,"${te_stidescrip.Descrip:ARG18}")
    .invoke r18 = LinkAddParameterValue(r17.result,"${te_stidescrip.Descrip:ARG19}")
    .invoke r19 = LinkAddParameterValue(r18.result,"${te_stidescrip.Descrip:ARG20}")
    .invoke r20 = LinkAddParameterValue(r19.result,"${te_stidescrip.Descrip:ARG21}")
    .invoke r21 = LinkAddParameterValue(r20.result,"${te_stidescrip.Descrip:ARG22}")
    .invoke r22 = LinkAddParameterValue(r21.result,"${te_stidescrip.Descrip:ARG23}")
    .invoke r23 = LinkAddParameterValue(r22.result,"${te_stidescrip.Descrip:ARG24}")
    .invoke r24 = LinkAddParameterValue(r23.result,"${te_stidescrip.Descrip:ARG25}")
    .invoke r25 = LinkAddParameterValue(r24.result,"${te_stidescrip.Descrip:ARG26}")
    .invoke r26 = LinkAddParameterValue(r25.result,"${te_stidescrip.Descrip:ARG27}")
    .invoke r27 = LinkAddParameterValue(r26.result,"${te_stidescrip.Descrip:ARG28}")
    .invoke r28 = LinkAddParameterValue(r27.result,"${te_stidescrip.Descrip:ARG29}")
    .invoke r29 = LinkAddParameterValue(r28.result,"${te_stidescrip.Descrip:ARG30}")
    .invoke r30 = LinkAddParameterValue(r29.result,"${te_stidescrip.Descrip:ARG31}")
    .invoke r31 = LinkAddParameterValue(r30.result,"${te_stidescrip.Descrip:ARG32}")
    .invoke r32 = LinkAddParameterValue(r31.result,"${te_stidescrip.Descrip:ARG33}")
    .invoke r33 = LinkAddParameterValue(r32.result,"${te_stidescrip.Descrip:ARG34}")
    .invoke r34 = LinkAddParameterValue(r33.result,"${te_stidescrip.Descrip:ARG35}")
    .invoke r35 = LinkAddParameterValue(r34.result,"${te_stidescrip.Descrip:ARG36}")
    .invoke r36 = LinkAddParameterValue(r35.result,"${te_stidescrip.Descrip:ARG37}")
    .invoke r37 = LinkAddParameterValue(r36.result,"${te_stidescrip.Descrip:ARG38}")
    .invoke r38 = LinkAddParameterValue(r37.result,"${te_stidescrip.Descrip:ARG39}")
    .invoke r39 = LinkAddParameterValue(r38.result,"${te_stidescrip.Descrip:ARG40}")
    .invoke r40 = LinkAddParameterValue(r39.result,"${te_stidescrip.Descrip:ARG41}")
    .invoke r41 = LinkAddParameterValue(r40.result,"${te_stidescrip.Descrip:ARG42}")
    .invoke r42 = LinkAddParameterValue(r41.result,"${te_stidescrip.Descrip:ARG43}")
    .invoke r43 = LinkAddParameterValue(r42.result,"${te_stidescrip.Descrip:ARG44}")
    .invoke r44 = LinkAddParameterValue(r43.result,"${te_stidescrip.Descrip:ARG45}")
    .invoke r45 = LinkAddParameterValue(r44.result,"${te_stidescrip.Descrip:ARG46}")
    .invoke r46 = LinkAddParameterValue(r45.result,"${te_stidescrip.Descrip:ARG47}")
    .invoke r47 = LinkAddParameterValue(r46.result,"${te_stidescrip.Descrip:ARG48}")
    .invoke r48 = LinkAddParameterValue(r47.result,"${te_stidescrip.Descrip:ARG49}")
    .invoke r49 = LinkAddParameterValue(r48.result,"${te_stidescrip.Descrip:ARG50}")
    .invoke r50 = LinkAddParameterValue(r49.result,"${te_stidescrip.Descrip:ARG51}")
    .//
    .assign te_sti = r0.result
  .else
    .invoke r0 = CreateFirstLinkParameterValue("")
    .assign te_sti = r0.result
  .end if
  .//
  .assign attr_result = te_sti
.end function
.//-- 007: 20140213 Add End (saitou) 
.//
.//
.function bparm_sort
  .param inst_ref s_brg
  .param inst_ref_set s_bparms
  .// 20130314 nomura param
  .//
.//-- 008: 20140213 Add Start (saitou) 
  .if ( not_empty s_bparms )
.//-- 008: 20140213 Add End (saitou) 
    .for each s_bparm in s_bparms
      .select one prev_s_bparm related by s_bparm->S_BPARM[R55.'precedes']
      .if ( not_empty prev_s_bparm )
        .// unrelate s_bparm from prev_s_bparm across R55.'succeeds';
        .assign s_bparm.Previous_BParm_ID = 00
        .assign s_bparm.Previous_BParm_ID = 00
        .// end unrelate
      .end if
    .end for
.//-- 008: 20140213 Add Start (saitou) 
.//    .select any s_brg from instances of S_BRG where ( false )
.//    .for each s_bparm in s_bparms
.//      .select any s_brg related by s_bparm->S_BRG[R21]
.//      .break for
.//    .end for
.//    .if ( empty s_brg )
.//      .print "Error! not found S_BRG!"
.//      .exit -1
.//    .end if
    .//
    .select any te_stidescrip from instances of TE_STIDESCRIP
    .assign te_stidescrip.Descrip = s_brg.Descrip
    .invoke r = CreateSTIObjects(te_stidescrip)
    .assign te_sti = r.result
    .//
    .if ( te_sti.Name_key != "" )
      .print "[bparm_sort] ${s_brg.Name} param order control enable"
      .//
      .invoke r1 = sbrg_sort_order_control( te_sti, s_bparms )
      .assign orderNum = r1.result
      .assign bprmNum = cardinality s_bparms
      .if ( orderNum != bprmNum )
        .print "Error! [${s_brg.Name}] : param order num mismatch! ordNum=$t{orderNum} : bprmNum=$t{bprmNum}"
        .exit -1
      .end if
    .else
.//-- 008: 20140213 Add End (saitou) 
      .// Declare an empty instance reference.
      .select any head_s_bparm related by s_bparms->S_BPARM[R55.'precedes'] where ( false )
      .for each s_bparm in s_bparms
        .invoke r1 = bparm_insert( head_s_bparm, s_bparm )
        .assign head_s_bparm = r1.result
      .end for
.//-- 008: 20140213 Add Start (saitou) 
    .end if
  .end if
.//-- 008: 20140213 Add End (saitou) 
.end function
.//-- 008: 20140213 Add Start (saitou) 
.function sbrg_sort_order_control .// integer
  .param inst_ref te_sti
  .param inst_ref_set s_bparms
  .//
  .//
  .select any cur_s_bparm from instances of S_BPARM where ( false )
  .assign orderNum = 0
  .while ( not_empty te_sti )
    .if ( te_sti.Name_key != "" )
      .assign orderNum = orderNum + 1
      .//
      .for each s_bparm in s_bparms
        .if ( s_bparm.Name == te_sti.Name_key )
          .if ( not_empty cur_s_bparm )
            .// relate s_bparm to cur_s_bparm across R55.'succeeds';
            .assign s_bparm.Previous_BParm_ID = cur_s_bparm.BParm_ID
            .// end relate
          .end if
          .assign cur_s_bparm = s_bparm
          .break for
        .end if
      .end for
    .end if
    .select one te_sti related by te_sti->TE_STI[R2099.'succeeds']
  .end while
  .//
  .assign attr_result = orderNum
.end function
.//-- 008: 20140213 Add End (saitou) 
.function bparm_insert .// s_bparm
  .param inst_ref head_s_bparm
  .param inst_ref s_bparm
  .assign result = s_bparm
  .if ( empty head_s_bparm )
    .// Just starting.  Return s_bparm as head.
  .elif ( s_bparm.Name <= head_s_bparm.Name )
    .// insert before
    .// relate s_bparm to head_s_bparm across R55.'precedes';
    .assign head_s_bparm.Previous_BParm_ID = s_bparm.BParm_ID
    .// end relate
  .else
    .// find bigger
    .assign result = head_s_bparm
    .assign prev_s_bparm = head_s_bparm
    .select one cursor_s_bparm related by head_s_bparm->S_BPARM[R55.'succeeds']
    .while ( not_empty cursor_s_bparm )
      .if ( s_bparm.Name <= cursor_s_bparm.Name )
        .break while
      .else
        .assign prev_s_bparm = cursor_s_bparm
        .select one cursor_s_bparm related by cursor_s_bparm->S_BPARM[R55.'succeeds']
      .end if
    .end while
    .// relate prev_s_bparm to s_bparm across R55.'precedes';
    .assign s_bparm.Previous_BParm_ID = prev_s_bparm.BParm_ID
    .// end relate
    .if ( not_empty cursor_s_bparm )
      .// relate s_bparm to cursor_s_bparm across R55.'precedes';
      .assign cursor_s_bparm.Previous_BParm_ID = s_bparm.BParm_ID
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//
.function tparm_sort
  .param inst_ref_set o_tparms
  .for each o_tparm in o_tparms
    .select one prev_o_tparm related by o_tparm->O_TPARM[R124.'precedes']
    .if ( not_empty prev_o_tparm )
      .// unrelate o_tparm from prev_o_tparm across R124.'succeeds';
      .assign o_tparm.Previous_TParm_ID = 00
      .assign o_tparm.Previous_TParm_ID = 00
      .// end unrelate
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_o_tparm related by o_tparms->O_TPARM[R124.'precedes'] where ( false )
  .for each o_tparm in o_tparms
    .invoke r = tparm_insert( head_o_tparm, o_tparm )
    .assign head_o_tparm = r.result
  .end for
.end function
.function tparm_insert .// o_tparm
  .param inst_ref head_o_tparm
  .param inst_ref o_tparm
  .assign result = o_tparm
  .if ( empty head_o_tparm )
    .// Just starting.  Return o_tparm as head.
  .elif ( o_tparm.Name <= head_o_tparm.Name )
    .// insert before
    .// relate o_tparm to head_o_tparm across R124.'precedes';
    .assign head_o_tparm.Previous_TParm_ID = o_tparm.TParm_ID
    .// end relate
  .else
    .// find bigger
    .assign result = head_o_tparm
    .assign prev_o_tparm = head_o_tparm
    .select one cursor_o_tparm related by head_o_tparm->O_TPARM[R124.'succeeds']
    .while ( not_empty cursor_o_tparm )
      .if ( o_tparm.Name <= cursor_o_tparm.Name )
        .break while
      .else
        .assign prev_o_tparm = cursor_o_tparm
        .select one cursor_o_tparm related by cursor_o_tparm->O_TPARM[R124.'succeeds']
      .end if
    .end while
    .// relate prev_o_tparm to o_tparm across R124.'precedes';
    .assign o_tparm.Previous_TParm_ID = prev_o_tparm.TParm_ID
    .// end relate
    .if ( not_empty cursor_o_tparm )
      .// relate o_tparm to cursor_o_tparm across R124.'precedes';
      .assign cursor_o_tparm.Previous_TParm_ID = o_tparm.TParm_ID
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//
.function evtdi_sort
  .param inst_ref_set sm_evtdis
  .for each sm_evtdi in sm_evtdis
    .select one prev_sm_evtdi related by sm_evtdi->SM_EVTDI[R533.'precedes']
    .if ( not_empty prev_sm_evtdi )
      .// unrelate sm_evtdi from prev_sm_evtdi across R533.'succeeds';
      .assign sm_evtdi.Previous_SMedi_ID = 00
      .assign sm_evtdi.Previous_SMedi_ID = 00
      .// end unrelate
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_sm_evtdi related by sm_evtdis->SM_EVTDI[R533.'precedes'] where ( false )
  .for each sm_evtdi in sm_evtdis
    .invoke r = evtdi_insert( head_sm_evtdi, sm_evtdi )
    .assign head_sm_evtdi = r.result
  .end for
.end function
.function evtdi_insert .// sm_evtdi
  .param inst_ref head_sm_evtdi
  .param inst_ref sm_evtdi
  .assign result = sm_evtdi
  .if ( empty head_sm_evtdi )
    .// Just starting.  Return sm_evtdi as head.
  .elif ( sm_evtdi.Name <= head_sm_evtdi.Name )
    .// insert before
    .// relate sm_evtdi to head_sm_evtdi across R533.'precedes';
    .assign head_sm_evtdi.Previous_SMedi_ID = sm_evtdi.SMedi_ID
    .// end relate
  .else
    .// find bigger
    .assign result = head_sm_evtdi
    .assign prev_sm_evtdi = head_sm_evtdi
    .select one cursor_sm_evtdi related by head_sm_evtdi->SM_EVTDI[R533.'succeeds']
    .while ( not_empty cursor_sm_evtdi )
      .if ( sm_evtdi.Name <= cursor_sm_evtdi.Name )
        .break while
      .else
        .assign prev_sm_evtdi = cursor_sm_evtdi
        .select one cursor_sm_evtdi related by cursor_sm_evtdi->SM_EVTDI[R533.'succeeds']
      .end if
    .end while
    .// relate prev_sm_evtdi to sm_evtdi across R533.'precedes';
    .assign sm_evtdi.Previous_SMedi_ID = prev_sm_evtdi.SMedi_ID
    .// end relate
    .if ( not_empty cursor_sm_evtdi )
      .// relate sm_evtdi to cursor_sm_evtdi across R533.'precedes';
      .assign cursor_sm_evtdi.Previous_SMedi_ID = sm_evtdi.SMedi_ID
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.//
.function pp_sort
  .param inst_ref_set c_pps
  .for each c_pp in c_pps
    .select one prev_c_pp related by c_pp->C_PP[R4021.'precedes']
    .if ( not_empty prev_c_pp )
      .// unrelate c_pp from prev_c_pp across R4021.'succeeds';
      .assign c_pp.Previous_PP_Id = 00
      .assign c_pp.Previous_PP_Id = 00
      .// end unrelate
    .end if
  .end for
  .// Declare an empty instance reference.
  .select any head_c_pp related by c_pps->C_PP[R4021.'precedes'] where ( false )
  .for each c_pp in c_pps
    .invoke r = pp_insert( head_c_pp, c_pp )
    .assign head_c_pp = r.result
  .end for
.end function
.function pp_insert .// c_pp
  .param inst_ref head_c_pp
  .param inst_ref c_pp
  .assign result = c_pp
  .if ( empty head_c_pp )
    .// Just starting.  Return c_pp as head.
  .elif ( c_pp.Name <= head_c_pp.Name )
    .// insert before
    .// relate c_pp to head_c_pp across R4021.'precedes';
    .assign head_c_pp.Previous_PP_Id = c_pp.PP_Id
    .// end relate
  .else
    .// find bigger
    .assign result = head_c_pp
    .assign prev_c_pp = head_c_pp
    .select one cursor_c_pp related by head_c_pp->C_PP[R4021.'succeeds']
    .while ( not_empty cursor_c_pp )
      .if ( c_pp.Name <= cursor_c_pp.Name )
        .break while
      .else
        .assign prev_c_pp = cursor_c_pp
        .select one cursor_c_pp related by cursor_c_pp->C_PP[R4021.'succeeds']
      .end if
    .end while
    .// relate prev_c_pp to c_pp across R4021.'precedes';
    .assign c_pp.Previous_PP_Id = prev_c_pp.PP_Id
    .// end relate
    .if ( not_empty cursor_c_pp )
      .// relate c_pp to cursor_c_pp across R4021.'precedes';
      .assign cursor_c_pp.Previous_PP_Id = c_pp.PP_Id
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//
.// CDS temporary for sorting model data parameters
.function parm_sort
  .if ( true )
    .create object instance te_stidescrip of TE_STIDESCRIP
    .select many s_syncs from instances of S_SYNC
    .for each s_sync in s_syncs
      .select many s_sparms related by s_sync->S_SPARM[R24]
      .invoke sparm_sort( s_sparms )
    .end for
    .select many s_brgs from instances of S_BRG
    .for each s_brg in s_brgs
      .select many s_bparms related by s_brg->S_BPARM[R21]
      .// TEMP
      .invoke bparm_sort( s_brg, s_bparms )
    .end for
    .select many o_tfrs from instances of O_TFR
    .for each o_tfr in o_tfrs
      .select many o_tparms related by o_tfr->O_TPARM[R117]
      .invoke tparm_sort( o_tparms )
    .end for
    .select many sm_evts from instances of SM_EVT
    .for each sm_evt in sm_evts
      .select many sm_evtdis related by sm_evt->SM_EVTDI[R532]
      .invoke evtdi_sort( sm_evtdis )
    .end for
    .select many c_eps from instances of C_EP
    .for each c_ep in c_eps
      .select many c_pps related by c_ep->C_PP[R4006]
      .invoke pp_sort( c_pps )
    .end for
  .end if
.end function
.// CDS end of temporary sorting of model data parameters
