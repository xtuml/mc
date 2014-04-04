.// CDS temporarily order parameters alphabetically for backwards compatibility
.function sparm_sort
  .param inst_ref_set s_sparms
.//-- 007: 20140213 Add Start (saitou) 
  .if( not_empty s_sparms )
.//-- 007: 20140213 Add End (saitou) 
    .for each s_sparm in s_sparms
      .select one prev_s_sparm related by s_sparm->S_SPARM[R54.'precedes']
      .if ( not_empty prev_s_sparm )
        .// unrelate s_sparm from prev_s_sparm across R54.'precedes';
        .assign s_sparm.Previous_SParm_ID = 00
        .assign s_sparm.Previous_SParm_ID = 00
        .// end unrelate
      .end if
    .end for
.//-- 007: 20140213 Add Start (saitou) 
    .// S_SYNC を取ってくる(いい取得方法が見つからない…)
    .select any s_sync from instances of S_SYNC where ( false )
    .for each s_sparm in s_sparms
      .select any s_sync related by s_sparm->S_SYNC[R24]
      .break for
    .end for
    .if( empty s_sync )
      .print "Error! not found S_SYNC!"
      .exit -1
    .end if
    .//
    .// 引数順指定を取得
    .invoke ref_param = CreateSTIObjects(s_sync)
    .assign param_order = ref_param.result
    .//
    .if( "${param_order.Name_key}" != "" )
      .// 指定されていれば、指定順にソート
      .print "[sparm_sort] ${s_sync.Name} param order control enable"
      .//
      .invoke ret = sparm_sort_order_control( param_order, s_sparms )
      .assign orderNum = ret.result
      .assign sprmNum = cardinality s_sparms
      .if ( orderNum != sprmNum )
        .// もともとの引数の数と、指定された引数の数が合わない。エラーで落とす。
        .print "Error! [${s_sync.Name}] : param order num mismatch! ordNum=${orderNum} : sprmNum=${sprmNum}"
        .exit -1
      .end if
    .else
      .// 指定されていなければ、アルファベット順にソート
.//-- 007: 20140213 Add End (saitou) 
      .// Declare an empty instance reference.
      .select any head_s_sparm related by s_sparms->S_SPARM[R54.'precedes'] where ( false )
      .for each s_sparm in s_sparms
        .invoke r = sparm_insert( head_s_sparm, s_sparm )
        .assign head_s_sparm = r.result
      .end for
.//-- 007: 20140213 Add Start (saitou) 
    .end if	.// "${param_order.Name_key}"
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
    .// relate s_sparm to head_s_sparm across R54.'succeeds';
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
    .// relate prev_s_sparm to s_sparm across R54.'succeeds';
    .assign s_sparm.Previous_SParm_ID = prev_s_sparm.SParm_ID
    .// end relate
    .if ( not_empty cursor_s_sparm )
      .// relate s_sparm to cursor_s_sparm across R54.'succeeds';
      .assign cursor_s_sparm.Previous_SParm_ID = s_sparm.SParm_ID
      .// end relate
    .end if
  .end if
  .assign attr_result = result
.end function
.//-- 007: 20140213 Add Start (saitou) 
.function sparm_sort_order_control
  .param inst_ref     param_order 	.// TE_STI
  .param inst_ref_set s_sparms 		.// S_SPARM set
  .//
  .//
  .select any cur_s_sparm from instances of S_SPARM where ( false )
  .assign orderNum = 0
  .while ( not_empty param_order )
    .if ( "${param_order.Name_key}" != "" )
      .assign orderNum = orderNum + 1
      .//
      .for each s_sparm in s_sparms
        .if ( "${s_sparm.Name}" == "${param_order.Name_key}" )
          .if ( not_empty cur_s_sparm )
            .// 既に見つけているS_PARMを先頭側とするため、
            .// 見つけたS_PARMと"前(Prev")の関連を、既に見つけているS_PARMと張る。
            .assign s_sparm.Previous_SParm_ID = cur_s_sparm.SParm_ID
          .end if
          .assign cur_s_sparm = s_sparm
          .break for
        .end if
      .end for
    .end if
    .select one param_order related by param_order->TE_STI[R3002.'succeeds']
  .end while
  .//
  .// 指定された引数の数を返す
  .assign attr_result = orderNum
.end function
.function CreateFirstLinkParameterValue
  .param string name_key
  .select any attr_result from instances of TE_STI 
  .select any sti from instances of TE_STI where selected.IsFirst
  .if ( not_empty sti )
     .assign sti.Name_key = "${name_key}"   
     .assign attr_result = sti
  .else
  .create object instance sti of TE_STI
  .assign sti.Name_key = "${name_key}"
  .assign sti.PID = 0
  .assign attr_result = sti
.end function
.function LinkAddParameterValue
   .param frag_ref ref_psti .// TE_STI
   .param string name_key
   .assign psti = ref_psti.result
   .select one attr_result related by psti->TE_STI[R3002.'succeeds']   
   .if ( not_empty attr_result )
     .assign attr_result.Name_key = "${name_key}"
   .else 
     .create object instance sti of TE_STI
     .assign sti.Name_key = "${name_key}"
     .assign sti.PID = psti.ID
     .assign attr_result = sti
   .end if
.end function
.function CreateSTIObjects
  .param inst_ref item	.// S_SYNC / S_BRG
  .// 旧SyncService用の記述と、旧RealFunc用の記述の両方に対応する。
  .// 一つのDescriptionに両方の記載があると破綻するので注意。(ゆくゆくは param_n に統一したい)

  .// 戻り値の型合わせ
  .select any te_sti from instances of TE_STI where ( false )

  .// param_n 指定の場合 (旧SyncService用)
  .if( "${item.Descrip:param_0}" != "" )
    .invoke param_0 = CreateFirstLinkParameterValue("${item.Descrip:param_0}")
    .invoke param_1 = LinkAddParameterValue(param_0,"${item.Descrip:param_1}")
    .invoke param_2 = LinkAddParameterValue(param_1,"${item.Descrip:param_2}")
    .invoke param_3 = LinkAddParameterValue(param_2,"${item.Descrip:param_3}")
    .invoke param_4 = LinkAddParameterValue(param_3,"${item.Descrip:param_4}")
    .invoke param_5 = LinkAddParameterValue(param_4,"${item.Descrip:param_5}")
    .invoke param_6 = LinkAddParameterValue(param_5,"${item.Descrip:param_6}")
    .invoke param_7 = LinkAddParameterValue(param_6,"${item.Descrip:param_7}")
    .invoke param_8 = LinkAddParameterValue(param_7,"${item.Descrip:param_8}")
    .invoke param_9 = LinkAddParameterValue(param_8,"${item.Descrip:param_9}")
    .invoke param_10 = LinkAddParameterValue(param_9,"${item.Descrip:param_10}")
    .invoke param_11 = LinkAddParameterValue(param_10,"${item.Descrip:param_11}")
    .invoke param_12 = LinkAddParameterValue(param_11,"${item.Descrip:param_12}")
    .invoke param_13 = LinkAddParameterValue(param_12,"${item.Descrip:param_13}")
    .invoke param_14 = LinkAddParameterValue(param_13,"${item.Descrip:param_14}")
    .invoke param_15 = LinkAddParameterValue(param_14,"${item.Descrip:param_15}")
    .invoke param_16 = LinkAddParameterValue(param_15,"${item.Descrip:param_16}")
    .invoke param_17 = LinkAddParameterValue(param_16,"${item.Descrip:param_17}")
    .invoke param_18 = LinkAddParameterValue(param_17,"${item.Descrip:param_18}")
    .invoke param_19 = LinkAddParameterValue(param_18,"${item.Descrip:param_19}")
    .invoke param_20 = LinkAddParameterValue(param_19,"${item.Descrip:param_20}")
    .invoke param_21 = LinkAddParameterValue(param_20,"${item.Descrip:param_21}")
    .invoke param_22 = LinkAddParameterValue(param_21,"${item.Descrip:param_22}")
    .invoke param_23 = LinkAddParameterValue(param_22,"${item.Descrip:param_23}")
    .invoke param_24 = LinkAddParameterValue(param_23,"${item.Descrip:param_24}")
    .invoke param_25 = LinkAddParameterValue(param_24,"${item.Descrip:param_25}")
    .invoke param_26 = LinkAddParameterValue(param_25,"${item.Descrip:param_26}")
    .invoke param_27 = LinkAddParameterValue(param_26,"${item.Descrip:param_27}")
    .invoke param_28 = LinkAddParameterValue(param_27,"${item.Descrip:param_28}")
    .invoke param_29 = LinkAddParameterValue(param_28,"${item.Descrip:param_29}")
    .invoke param_30 = LinkAddParameterValue(param_29,"${item.Descrip:param_30}")
    .invoke param_31 = LinkAddParameterValue(param_30,"${item.Descrip:param_31}")
    .invoke param_32 = LinkAddParameterValue(param_31,"${item.Descrip:param_32}")
    .invoke param_33 = LinkAddParameterValue(param_32,"${item.Descrip:param_33}")
    .invoke param_34 = LinkAddParameterValue(param_33,"${item.Descrip:param_34}")
    .invoke param_35 = LinkAddParameterValue(param_34,"${item.Descrip:param_35}")
    .invoke param_36 = LinkAddParameterValue(param_35,"${item.Descrip:param_36}")
    .invoke param_37 = LinkAddParameterValue(param_36,"${item.Descrip:param_37}")
    .invoke param_38 = LinkAddParameterValue(param_37,"${item.Descrip:param_38}")
    .invoke param_39 = LinkAddParameterValue(param_38,"${item.Descrip:param_39}")
    .invoke param_40 = LinkAddParameterValue(param_39,"${item.Descrip:param_40}")
    .invoke param_41 = LinkAddParameterValue(param_40,"${item.Descrip:param_41}")
    .invoke param_42 = LinkAddParameterValue(param_41,"${item.Descrip:param_42}")
    .invoke param_43 = LinkAddParameterValue(param_42,"${item.Descrip:param_43}")
    .invoke param_44 = LinkAddParameterValue(param_43,"${item.Descrip:param_44}")
    .invoke param_45 = LinkAddParameterValue(param_44,"${item.Descrip:param_45}")
    .invoke param_46 = LinkAddParameterValue(param_45,"${item.Descrip:param_46}")
    .invoke param_47 = LinkAddParameterValue(param_46,"${item.Descrip:param_47}")
    .invoke param_48 = LinkAddParameterValue(param_47,"${item.Descrip:param_48}")
    .invoke param_49 = LinkAddParameterValue(param_48,"${item.Descrip:param_49}")
    .invoke param_50 = LinkAddParameterValue(param_49,"${item.Descrip:param_50}")
    
    .assign te_sti = param_0.result

  .elif( "${item.Descrip:ARG1}" != "" )

    .// ARGn 指定の場合 (旧RealFunc用)
    .invoke param_0 = CreateFirstLinkParameterValue("${item.Descrip:ARG1}")
    .invoke param_1 = LinkAddParameterValue(param_0,"${item.Descrip:ARG2}")
    .invoke param_2 = LinkAddParameterValue(param_1,"${item.Descrip:ARG3}")
    .invoke param_3 = LinkAddParameterValue(param_2,"${item.Descrip:ARG4}")
    .invoke param_4 = LinkAddParameterValue(param_3,"${item.Descrip:ARG5}")
    .invoke param_5 = LinkAddParameterValue(param_4,"${item.Descrip:ARG6}")
    .invoke param_6 = LinkAddParameterValue(param_5,"${item.Descrip:ARG7}")
    .invoke param_7 = LinkAddParameterValue(param_6,"${item.Descrip:ARG8}")
    .invoke param_8 = LinkAddParameterValue(param_7,"${item.Descrip:ARG9}")
    .invoke param_9 = LinkAddParameterValue(param_8,"${item.Descrip:ARG10}")
    .invoke param_10 = LinkAddParameterValue(param_9,"${item.Descrip:ARG11}")
    .invoke param_11 = LinkAddParameterValue(param_10,"${item.Descrip:ARG12}")
    .invoke param_12 = LinkAddParameterValue(param_11,"${item.Descrip:ARG13}")
    .invoke param_13 = LinkAddParameterValue(param_12,"${item.Descrip:ARG14}")
    .invoke param_14 = LinkAddParameterValue(param_13,"${item.Descrip:ARG15}")
    .invoke param_15 = LinkAddParameterValue(param_14,"${item.Descrip:ARG16}")
    .invoke param_16 = LinkAddParameterValue(param_15,"${item.Descrip:ARG17}")
    .invoke param_17 = LinkAddParameterValue(param_16,"${item.Descrip:ARG18}")
    .invoke param_18 = LinkAddParameterValue(param_17,"${item.Descrip:ARG19}")
    .invoke param_19 = LinkAddParameterValue(param_18,"${item.Descrip:ARG20}")
    .invoke param_20 = LinkAddParameterValue(param_19,"${item.Descrip:ARG21}")
    .invoke param_21 = LinkAddParameterValue(param_20,"${item.Descrip:ARG22}")
    .invoke param_22 = LinkAddParameterValue(param_21,"${item.Descrip:ARG23}")
    .invoke param_23 = LinkAddParameterValue(param_22,"${item.Descrip:ARG24}")
    .invoke param_24 = LinkAddParameterValue(param_23,"${item.Descrip:ARG25}")
    .invoke param_25 = LinkAddParameterValue(param_24,"${item.Descrip:ARG26}")
    .invoke param_26 = LinkAddParameterValue(param_25,"${item.Descrip:ARG27}")
    .invoke param_27 = LinkAddParameterValue(param_26,"${item.Descrip:ARG28}")
    .invoke param_28 = LinkAddParameterValue(param_27,"${item.Descrip:ARG29}")
    .invoke param_29 = LinkAddParameterValue(param_28,"${item.Descrip:ARG30}")
    .invoke param_30 = LinkAddParameterValue(param_29,"${item.Descrip:ARG31}")
    .invoke param_31 = LinkAddParameterValue(param_30,"${item.Descrip:ARG32}")
    .invoke param_32 = LinkAddParameterValue(param_31,"${item.Descrip:ARG33}")
    .invoke param_33 = LinkAddParameterValue(param_32,"${item.Descrip:ARG34}")
    .invoke param_34 = LinkAddParameterValue(param_33,"${item.Descrip:ARG35}")
    .invoke param_35 = LinkAddParameterValue(param_34,"${item.Descrip:ARG36}")
    .invoke param_36 = LinkAddParameterValue(param_35,"${item.Descrip:ARG37}")
    .invoke param_37 = LinkAddParameterValue(param_36,"${item.Descrip:ARG38}")
    .invoke param_38 = LinkAddParameterValue(param_37,"${item.Descrip:ARG39}")
    .invoke param_39 = LinkAddParameterValue(param_38,"${item.Descrip:ARG40}")
    .invoke param_40 = LinkAddParameterValue(param_39,"${item.Descrip:ARG41}")
    .invoke param_41 = LinkAddParameterValue(param_40,"${item.Descrip:ARG42}")
    .invoke param_42 = LinkAddParameterValue(param_41,"${item.Descrip:ARG43}")
    .invoke param_43 = LinkAddParameterValue(param_42,"${item.Descrip:ARG44}")
    .invoke param_44 = LinkAddParameterValue(param_43,"${item.Descrip:ARG45}")
    .invoke param_45 = LinkAddParameterValue(param_44,"${item.Descrip:ARG46}")
    .invoke param_46 = LinkAddParameterValue(param_45,"${item.Descrip:ARG47}")
    .invoke param_47 = LinkAddParameterValue(param_46,"${item.Descrip:ARG48}")
    .invoke param_48 = LinkAddParameterValue(param_47,"${item.Descrip:ARG49}")
    .invoke param_49 = LinkAddParameterValue(param_48,"${item.Descrip:ARG50}")
    .invoke param_50 = LinkAddParameterValue(param_49,"${item.Descrip:ARG51}")

    .assign te_sti = param_0.result
  .else
    .// 0番目は何かしら作っておかないとコンパイルが通らない。ダミーを作る
    .invoke param_0 = CreateFirstLinkParameterValue("")
    .assign te_sti = param_0.result
  .end if

  .assign attr_result = te_sti
.end function
.//-- 007: 20140213 Add End (saitou) 
.//
.//
.function bparm_sort
  .param inst_ref s_brg
  .param inst_ref_set s_bparms
  .// 20130314 nomura paramにs_brg追加
  .//
.//-- 008: 20140213 Add Start (saitou) 
  .if( not_empty s_bparms )
.//-- 008: 20140213 Add End (saitou) 
    .for each s_bparm in s_bparms
      .select one prev_s_bparm related by s_bparm->S_BPARM[R55.'precedes']
      .if ( not_empty prev_s_bparm )
        .// unrelate s_bparm from prev_s_bparm across R55.'precedes';
        .assign s_bparm.Previous_BParm_ID = 00
        .assign s_bparm.Previous_BParm_ID = 00
        .// end unrelate
      .end if
    .end for
.//-- 008: 20140213 Add Start (saitou) 
    .// S_BRG を取ってくる(いい取得方法が見つからない…)
.//    .select any s_brg from instances of S_BRG where ( false )
.//    .for each s_bparm in s_bparms
.//      .select any s_brg related by s_bparm->S_BRG[R21]
.//      .break for
.//    .end for
.//    .if( empty s_brg )
.//      .print "Error! not found S_BRG!"
.//      .exit -1
.//    .end if
    .//
    .// 引数順指定を取得
    .invoke ref_param = CreateSTIObjects(s_brg)
    .assign param_order = ref_param.result
    .//
    .if( "${param_order.Name_key}" != "" )
      .// 指定されていれば、指定順にソート
      .print "[bparm_sort] ${s_brg.Name} param order control enable"
      .//
      .invoke ret = sbrg_sort_order_control( param_order, s_bparms )
      .assign orderNum = ret.result
      .assign bprmNum = cardinality s_bparms
      .if ( orderNum != bprmNum )
        .// もともとの引数の数と、指定された引数の数が合わない。エラーで落とす。
        .print "Error! [${s_brg.Name}] : param order num mismatch! ordNum=${orderNum} : bprmNum=${bprmNum}"
        .exit -1
      .end if
    .else
      .// 指定されていなければ、アルファベット順にソート
.//-- 008: 20140213 Add End (saitou) 
      .// Declare an empty instance reference.
      .select any head_s_bparm related by s_bparms->S_BPARM[R55.'precedes'] where ( false )
      .for each s_bparm in s_bparms
        .invoke r = bparm_insert( head_s_bparm, s_bparm )
        .assign head_s_bparm = r.result
      .end for
.//-- 008: 20140213 Add Start (saitou) 
    .end if	.// "${param_order.Name_key}"
  .end if .// not_empty s_bparms
.//-- 008: 20140213 Add End (saitou) 
.end function
.//-- 008: 20140213 Add Start (saitou) 
.function sbrg_sort_order_control
  .param inst_ref     param_order 	.// TE_STI
  .param inst_ref_set s_bparms 		.// S_BPARM set
  .//
  .//
  .select any cur_s_bparm from instances of S_BPARM where ( false )
  .assign orderNum = 0
  .while ( not_empty param_order )
    .if ( "${param_order.Name_key}" != "" )
      .assign orderNum = orderNum + 1
      .//
      .for each s_bparm in s_bparms
        .if ( "${s_bparm.Name}" == "${param_order.Name_key}" )
          .if ( not_empty cur_s_bparm )
            .// 既に見つけているS_PARMを先頭側とするため、
            .// 見つけたS_PARMと"前(Prev")の関連を、既に見つけているS_PARMと張る。
            .assign s_bparm.Previous_BParm_ID = cur_s_bparm.BParm_ID
          .end if
          .assign cur_s_bparm = s_bparm
          .break for
        .end if
      .end for
    .end if
    .select one param_order related by param_order->TE_STI[R3002.'succeeds']
  .end while
  .//
  .// 指定された引数の数を返す
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
    .// relate s_bparm to head_s_bparm across R55.'succeeds';
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
    .// relate prev_s_bparm to s_bparm across R55.'succeeds';
    .assign s_bparm.Previous_BParm_ID = prev_s_bparm.BParm_ID
    .// end relate
    .if ( not_empty cursor_s_bparm )
      .// relate s_bparm to cursor_s_bparm across R55.'succeeds';
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
      .// unrelate o_tparm from prev_o_tparm across R124.'precedes';
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
    .// relate o_tparm to head_o_tparm across R124.'succeeds';
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
    .// relate prev_o_tparm to o_tparm across R124.'succeeds';
    .assign o_tparm.Previous_TParm_ID = prev_o_tparm.TParm_ID
    .// end relate
    .if ( not_empty cursor_o_tparm )
      .// relate o_tparm to cursor_o_tparm across R124.'succeeds';
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
      .// unrelate sm_evtdi from prev_sm_evtdi across R533.'precedes';
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
    .// relate sm_evtdi to head_sm_evtdi across R533.'succeeds';
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
    .// relate prev_sm_evtdi to sm_evtdi across R533.'succeeds';
    .assign sm_evtdi.Previous_SMedi_ID = prev_sm_evtdi.SMedi_ID
    .// end relate
    .if ( not_empty cursor_sm_evtdi )
      .// relate sm_evtdi to cursor_sm_evtdi across R533.'succeeds';
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
      .// unrelate c_pp from prev_c_pp across R4021.'precedes';
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
    .// relate c_pp to head_c_pp across R4021.'succeeds';
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
    .// relate prev_c_pp to c_pp across R4021.'succeeds';
    .assign c_pp.Previous_PP_Id = prev_c_pp.PP_Id
    .// end relate
    .if ( not_empty cursor_c_pp )
      .// relate c_pp to cursor_c_pp across R4021.'succeeds';
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
