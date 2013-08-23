.print "dumping class instances into SQL format..."
.print "Activity"
.select many a_as from instances of A_A
.for each a_a in a_as
INSERT INTO A_A VALUES (\
  .if ( "un-initialized" == "${a_a.Package_ID}" )
 0\
  .else
 ${a_a.Package_ID}\
  .end if
, '${a_a.Name}', ''\
\
  .if ( "un-initialized" == "${a_a.Dom_ID}" )
, 0\
  .else
, ${a_a.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${a_a.SS_ID}" )
, 0\
  .else
, ${a_a.SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${a_a.Parent_Package_ID}" )
, 0\
  .else
, ${a_a.Parent_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${a_a.Sys_ID}" )
, 0\
  .else
, ${a_a.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${a_a.Component_Package_ID}" )
, 0\
  .else
, ${a_a.Component_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${a_a.Component_Id}" )
, 0\
  .else
, ${a_a.Component_Id}\
  .end if
 );
.end for
.select many a_ns from instances of A_N
.for each a_n in a_ns
INSERT INTO A_N VALUES (\
  .if ( "un-initialized" == "${a_n.Id}" )
 0\
  .else
 ${a_n.Id}\
  .end if
\
  .if ( "un-initialized" == "${a_n.Package_ID}" )
, 0\
  .else
, ${a_n.Package_ID}\
  .end if
 );
.end for
.select many a_es from instances of A_E
.for each a_e in a_es
INSERT INTO A_E VALUES (\
  .if ( "un-initialized" == "${a_e.Id}" )
 0\
  .else
 ${a_e.Id}\
  .end if
\
  .if ( "un-initialized" == "${a_e.Package_ID}" )
, 0\
  .else
, ${a_e.Package_ID}\
  .end if
, '${a_e.Guard}', ''\
\
  .if ( "un-initialized" == "${a_e.TargetId}" )
, 0\
  .else
, ${a_e.TargetId}\
  .end if
\
  .if ( "un-initialized" == "${a_e.SourceId}" )
, 0\
  .else
, ${a_e.SourceId}\
  .end if
 );
.end for
.select many a_acts from instances of A_ACT
.for each a_act in a_acts
INSERT INTO A_ACT VALUES (\
  .if ( "un-initialized" == "${a_act.Id}" )
 0\
  .else
 ${a_act.Id}\
  .end if
 );
.end for
.select many a_objs from instances of A_OBJ
.for each a_obj in a_objs
INSERT INTO A_OBJ VALUES (\
  .if ( "un-initialized" == "${a_obj.Id}" )
 0\
  .else
 ${a_obj.Id}\
  .end if
, '${a_obj.Name}', ''\
 );
.end for
.select many a_ctls from instances of A_CTL
.for each a_ctl in a_ctls
INSERT INTO A_CTL VALUES (\
  .if ( "un-initialized" == "${a_ctl.Id}" )
 0\
  .else
 ${a_ctl.Id}\
  .end if
 );
.end for
.select many a_inis from instances of A_INI
.for each a_ini in a_inis
INSERT INTO A_INI VALUES (\
  .if ( "un-initialized" == "${a_ini.Id}" )
 0\
  .else
 ${a_ini.Id}\
  .end if
, ''\
 );
.end for
.select many a_afs from instances of A_AF
.for each a_af in a_afs
INSERT INTO A_AF VALUES (\
  .if ( "un-initialized" == "${a_af.Id}" )
 0\
  .else
 ${a_af.Id}\
  .end if
, ''\
 );
.end for
.select many a_ffs from instances of A_FF
.for each a_ff in a_ffs
INSERT INTO A_FF VALUES (\
  .if ( "un-initialized" == "${a_ff.Id}" )
 0\
  .else
 ${a_ff.Id}\
  .end if
, ''\
 );
.end for
.select many a_dms from instances of A_DM
.for each a_dm in a_dms
INSERT INTO A_DM VALUES (\
  .if ( "un-initialized" == "${a_dm.Id}" )
 0\
  .else
 ${a_dm.Id}\
  .end if
, '${a_dm.Name}', ''\
 );
.end for
.select many a_fjs from instances of A_FJ
.for each a_fj in a_fjs
INSERT INTO A_FJ VALUES (\
  .if ( "un-initialized" == "${a_fj.Id}" )
 0\
  .else
 ${a_fj.Id}\
  .end if
, ''\
, '${a_fj.GuardCondition}' );
.end for
.select many a_gas from instances of A_GA
.for each a_ga in a_gas
INSERT INTO A_GA VALUES (\
  .if ( "un-initialized" == "${a_ga.Id}" )
 0\
  .else
 ${a_ga.Id}\
  .end if
, '${a_ga.Name}', ''\
 );
.end for
.select many a_aes from instances of A_AE
.for each a_ae in a_aes
INSERT INTO A_AE VALUES (\
  .if ( "un-initialized" == "${a_ae.Id}" )
 0\
  .else
 ${a_ae.Id}\
  .end if
 );
.end for
.select many a_sss from instances of A_SS
.for each a_ss in a_sss
INSERT INTO A_SS VALUES (\
  .if ( "un-initialized" == "${a_ss.Id}" )
 0\
  .else
 ${a_ss.Id}\
  .end if
, '${a_ss.Name}', ''\
 );
.end for
.select many a_aias from instances of A_AIA
.for each a_aia in a_aias
INSERT INTO A_AIA VALUES (\
  .if ( "un-initialized" == "${a_aia.Package_ID}" )
 0\
  .else
 ${a_aia.Package_ID}\
  .end if
 );
.end for
.select many a_aps from instances of A_AP
.for each a_ap in a_aps
INSERT INTO A_AP VALUES (\
  .if ( "un-initialized" == "${a_ap.Id}" )
 0\
  .else
 ${a_ap.Id}\
  .end if
\
  .if ( "un-initialized" == "${a_ap.Package_ID}" )
, 0\
  .else
, ${a_ap.Package_ID}\
  .end if
, '${a_ap.Name}', ''\
 );
.end for
.select many a_ates from instances of A_ATE
.for each a_ate in a_ates
INSERT INTO A_ATE VALUES (\
  .if ( "un-initialized" == "${a_ate.Id}" )
 0\
  .else
 ${a_ate.Id}\
  .end if
, '${a_ate.Name}', ''\
 );
.end for
.select many a_aeas from instances of A_AEA
.for each a_aea in a_aeas
INSERT INTO A_AEA VALUES (\
  .if ( "un-initialized" == "${a_aea.Id}" )
 0\
  .else
 ${a_aea.Id}\
  .end if
, '${a_aea.Name}', ''\
 );
.end for
.print "Association"
.select many r_rels from instances of R_REL
.for each r_rel in r_rels
INSERT INTO R_REL VALUES (\
  .if ( "un-initialized" == "${r_rel.Rel_ID}" )
 0\
  .else
 ${r_rel.Rel_ID}\
  .end if
, ${r_rel.Numb}, ''\
\
  .if ( "un-initialized" == "${r_rel.SS_ID}" )
, 0\
  .else
, ${r_rel.SS_ID}\
  .end if
 );
.end for
.select many r_oirs from instances of R_OIR
.for each r_oir in r_oirs
INSERT INTO R_OIR VALUES (\
  .if ( "un-initialized" == "${r_oir.Obj_ID}" )
 0\
  .else
 ${r_oir.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_oir.Rel_ID}" )
, 0\
  .else
, ${r_oir.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_oir.OIR_ID}" )
, 0\
  .else
, ${r_oir.OIR_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_oir.IObj_ID}" )
, 0\
  .else
, ${r_oir.IObj_ID}\
  .end if
 );
.end for
.select many r_rtos from instances of R_RTO
.for each r_rto in r_rtos
INSERT INTO R_RTO VALUES (\
  .if ( "un-initialized" == "${r_rto.Obj_ID}" )
 0\
  .else
 ${r_rto.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_rto.Rel_ID}" )
, 0\
  .else
, ${r_rto.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_rto.OIR_ID}" )
, 0\
  .else
, ${r_rto.OIR_ID}\
  .end if
, ${r_rto.Oid_ID} );
.end for
.select many r_rgos from instances of R_RGO
.for each r_rgo in r_rgos
INSERT INTO R_RGO VALUES (\
  .if ( "un-initialized" == "${r_rgo.Obj_ID}" )
 0\
  .else
 ${r_rgo.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_rgo.Rel_ID}" )
, 0\
  .else
, ${r_rgo.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_rgo.OIR_ID}" )
, 0\
  .else
, ${r_rgo.OIR_ID}\
  .end if
 );
.end for
.select many r_simps from instances of R_SIMP
.for each r_simp in r_simps
INSERT INTO R_SIMP VALUES (\
  .if ( "un-initialized" == "${r_simp.Rel_ID}" )
 0\
  .else
 ${r_simp.Rel_ID}\
  .end if
 );
.end for
.select many r_parts from instances of R_PART
.for each r_part in r_parts
INSERT INTO R_PART VALUES (\
  .if ( "un-initialized" == "${r_part.Obj_ID}" )
 0\
  .else
 ${r_part.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_part.Rel_ID}" )
, 0\
  .else
, ${r_part.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_part.OIR_ID}" )
, 0\
  .else
, ${r_part.OIR_ID}\
  .end if
, ${r_part.Mult}, ${r_part.Cond}, '${r_part.Txt_Phrs}' );
.end for
.select many r_forms from instances of R_FORM
.for each r_form in r_forms
INSERT INTO R_FORM VALUES (\
  .if ( "un-initialized" == "${r_form.Obj_ID}" )
 0\
  .else
 ${r_form.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_form.Rel_ID}" )
, 0\
  .else
, ${r_form.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_form.OIR_ID}" )
, 0\
  .else
, ${r_form.OIR_ID}\
  .end if
, ${r_form.Mult}, ${r_form.Cond}, '${r_form.Txt_Phrs}' );
.end for
.select many r_assocs from instances of R_ASSOC
.for each r_assoc in r_assocs
INSERT INTO R_ASSOC VALUES (\
  .if ( "un-initialized" == "${r_assoc.Rel_ID}" )
 0\
  .else
 ${r_assoc.Rel_ID}\
  .end if
 );
.end for
.select many r_aones from instances of R_AONE
.for each r_aone in r_aones
INSERT INTO R_AONE VALUES (\
  .if ( "un-initialized" == "${r_aone.Obj_ID}" )
 0\
  .else
 ${r_aone.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_aone.Rel_ID}" )
, 0\
  .else
, ${r_aone.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_aone.OIR_ID}" )
, 0\
  .else
, ${r_aone.OIR_ID}\
  .end if
, ${r_aone.Mult}, ${r_aone.Cond}, '${r_aone.Txt_Phrs}' );
.end for
.select many r_aoths from instances of R_AOTH
.for each r_aoth in r_aoths
INSERT INTO R_AOTH VALUES (\
  .if ( "un-initialized" == "${r_aoth.Obj_ID}" )
 0\
  .else
 ${r_aoth.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_aoth.Rel_ID}" )
, 0\
  .else
, ${r_aoth.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_aoth.OIR_ID}" )
, 0\
  .else
, ${r_aoth.OIR_ID}\
  .end if
, ${r_aoth.Mult}, ${r_aoth.Cond}, '${r_aoth.Txt_Phrs}' );
.end for
.select many r_assrs from instances of R_ASSR
.for each r_assr in r_assrs
INSERT INTO R_ASSR VALUES (\
  .if ( "un-initialized" == "${r_assr.Obj_ID}" )
 0\
  .else
 ${r_assr.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_assr.Rel_ID}" )
, 0\
  .else
, ${r_assr.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_assr.OIR_ID}" )
, 0\
  .else
, ${r_assr.OIR_ID}\
  .end if
, ${r_assr.Mult} );
.end for
.select many r_subsups from instances of R_SUBSUP
.for each r_subsup in r_subsups
INSERT INTO R_SUBSUP VALUES (\
  .if ( "un-initialized" == "${r_subsup.Rel_ID}" )
 0\
  .else
 ${r_subsup.Rel_ID}\
  .end if
 );
.end for
.select many r_supers from instances of R_SUPER
.for each r_super in r_supers
INSERT INTO R_SUPER VALUES (\
  .if ( "un-initialized" == "${r_super.Obj_ID}" )
 0\
  .else
 ${r_super.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_super.Rel_ID}" )
, 0\
  .else
, ${r_super.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_super.OIR_ID}" )
, 0\
  .else
, ${r_super.OIR_ID}\
  .end if
 );
.end for
.select many r_subs from instances of R_SUB
.for each r_sub in r_subs
INSERT INTO R_SUB VALUES (\
  .if ( "un-initialized" == "${r_sub.Obj_ID}" )
 0\
  .else
 ${r_sub.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_sub.Rel_ID}" )
, 0\
  .else
, ${r_sub.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_sub.OIR_ID}" )
, 0\
  .else
, ${r_sub.OIR_ID}\
  .end if
 );
.end for
.select many r_comps from instances of R_COMP
.for each r_comp in r_comps
INSERT INTO R_COMP VALUES (\
  .if ( "un-initialized" == "${r_comp.Rel_ID}" )
 0\
  .else
 ${r_comp.Rel_ID}\
  .end if
, '${r_comp.Rel_Chn}' );
.end for
.select many r_cones from instances of R_CONE
.for each r_cone in r_cones
INSERT INTO R_CONE VALUES (\
  .if ( "un-initialized" == "${r_cone.Obj_ID}" )
 0\
  .else
 ${r_cone.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_cone.Rel_ID}" )
, 0\
  .else
, ${r_cone.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_cone.OIR_ID}" )
, 0\
  .else
, ${r_cone.OIR_ID}\
  .end if
, ${r_cone.Mult}, ${r_cone.Cond}, '${r_cone.Txt_Phrs}' );
.end for
.select many r_coths from instances of R_COTH
.for each r_coth in r_coths
INSERT INTO R_COTH VALUES (\
  .if ( "un-initialized" == "${r_coth.Obj_ID}" )
 0\
  .else
 ${r_coth.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_coth.Rel_ID}" )
, 0\
  .else
, ${r_coth.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${r_coth.OIR_ID}" )
, 0\
  .else
, ${r_coth.OIR_ID}\
  .end if
, ${r_coth.Mult}, ${r_coth.Cond}, '${r_coth.Txt_Phrs}' );
.end for
.print "Breakpoint"
.select many bp_bps from instances of BP_BP
.for each bp_bp in bp_bps
INSERT INTO BP_BP VALUES (\
  .if ( "un-initialized" == "${bp_bp.Breakpoint_ID}" )
 0\
  .else
 ${bp_bp.Breakpoint_ID}\
  .end if
, ${bp_bp.enabled}, ${bp_bp.condition_enabled}, ${bp_bp.hit_count}, ${bp_bp.target_hit_count}, ${bp_bp.for_step} );
.end for
.select many bp_oals from instances of BP_OAL
.for each bp_oal in bp_oals
INSERT INTO BP_OAL VALUES (\
  .if ( "un-initialized" == "${bp_oal.Statement_ID}" )
 0\
  .else
 ${bp_oal.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${bp_oal.Breakpoint_ID}" )
, 0\
  .else
, ${bp_oal.Breakpoint_ID}\
  .end if
 );
.end for
.select many bp_evs from instances of BP_EV
.for each bp_ev in bp_evs
INSERT INTO BP_EV VALUES (\
  .if ( "un-initialized" == "${bp_ev.Breakpoint_ID}" )
 0\
  .else
 ${bp_ev.Breakpoint_ID}\
  .end if
, ${bp_ev.onEnqueue}, ${bp_ev.onDequeue}, ${bp_ev.onEventIgnored}, ${bp_ev.onCantHappen}\
  .if ( "un-initialized" == "${bp_ev.SMevt_ID}" )
, 0\
  .else
, ${bp_ev.SMevt_ID}\
  .end if
 );
.end for
.select many bp_cons from instances of BP_CON
.for each bp_con in bp_cons
INSERT INTO BP_CON VALUES (\
  .if ( "un-initialized" == "${bp_con.Breakpoint_ID}" )
 0\
  .else
 ${bp_con.Breakpoint_ID}\
  .end if
, '${bp_con.Expression}' );
.end for
.select many bp_sts from instances of BP_ST
.for each bp_st in bp_sts
INSERT INTO BP_ST VALUES (\
  .if ( "un-initialized" == "${bp_st.Breakpoint_ID}" )
 0\
  .else
 ${bp_st.Breakpoint_ID}\
  .end if
, ${bp_st.onEntry}, ${bp_st.onExit}\
  .if ( "un-initialized" == "${bp_st.SM_ID}" )
, 0\
  .else
, ${bp_st.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${bp_st.SMstt_ID}" )
, 0\
  .else
, ${bp_st.SMstt_ID}\
  .end if
 );
.end for
.print "Communication"
.select many comm_comms from instances of COMM_COMM
.for each comm_comm in comm_comms
INSERT INTO COMM_COMM VALUES (\
  .if ( "un-initialized" == "${comm_comm.Package_ID}" )
 0\
  .else
 ${comm_comm.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_comm.Dom_ID}" )
, 0\
  .else
, ${comm_comm.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_comm.SS_ID}" )
, 0\
  .else
, ${comm_comm.SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_comm.CIC_Package_ID}" )
, 0\
  .else
, ${comm_comm.CIC_Package_ID}\
  .end if
, '${comm_comm.Name}', ''\
\
  .if ( "un-initialized" == "${comm_comm.Sys_ID}" )
, 0\
  .else
, ${comm_comm.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_comm.Component_Package_ID}" )
, 0\
  .else
, ${comm_comm.Component_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_comm.Component_Id}" )
, 0\
  .else
, ${comm_comm.Component_Id}\
  .end if
 );
.end for
.select many comm_lnks from instances of COMM_LNK
.for each comm_lnk in comm_lnks
INSERT INTO COMM_LNK VALUES (\
  .if ( "un-initialized" == "${comm_lnk.Link_ID}" )
 0\
  .else
 ${comm_lnk.Link_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_lnk.Rel_ID}" )
, 0\
  .else
, ${comm_lnk.Rel_ID}\
  .end if
, '${comm_lnk.Numb}', ''\
, '${comm_lnk.StartText}', '${comm_lnk.EndText}', ${comm_lnk.isFormal}, ${comm_lnk.StartVisibility}, ${comm_lnk.EndVisibility}\
  .if ( "un-initialized" == "${comm_lnk.Start_Part_ID}" )
, 0\
  .else
, ${comm_lnk.Start_Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_lnk.Destination_Part_ID}" )
, 0\
  .else
, ${comm_lnk.Destination_Part_ID}\
  .end if
 );
.end for
.select many comm_cics from instances of COMM_CIC
.for each comm_cic in comm_cics
INSERT INTO COMM_CIC VALUES (\
  .if ( "un-initialized" == "${comm_cic.Package_ID}" )
 0\
  .else
 ${comm_cic.Package_ID}\
  .end if
 );
.end for
.select many comm_mics from instances of COMM_MIC
.for each comm_mic in comm_mics
INSERT INTO COMM_MIC VALUES (\
  .if ( "un-initialized" == "${comm_mic.Package_ID}" )
 0\
  .else
 ${comm_mic.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_mic.Msg_ID}" )
, 0\
  .else
, ${comm_mic.Msg_ID}\
  .end if
 );
.end for
.select many comm_pics from instances of COMM_PIC
.for each comm_pic in comm_pics
INSERT INTO COMM_PIC VALUES (\
  .if ( "un-initialized" == "${comm_pic.Package_ID}" )
 0\
  .else
 ${comm_pic.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${comm_pic.Part_ID}" )
, 0\
  .else
, ${comm_pic.Part_ID}\
  .end if
 );
.end for
.print "Communication And Access"
.select many ca_comms from instances of CA_COMM
.for each ca_comm in ca_comms
INSERT INTO CA_COMM VALUES (\
  .if ( "un-initialized" == "${ca_comm.CPath_ID}" )
 0\
  .else
 ${ca_comm.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_comm.SS_ID}" )
, 0\
  .else
, ${ca_comm.SS_ID}\
  .end if
 );
.end for
.select many ca_eesmcs from instances of CA_EESMC
.for each ca_eesmc in ca_eesmcs
INSERT INTO CA_EESMC VALUES (\
  .if ( "un-initialized" == "${ca_eesmc.CPath_ID}" )
 0\
  .else
 ${ca_eesmc.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_eesmc.EEmod_ID}" )
, 0\
  .else
, ${ca_eesmc.EEmod_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_eesmc.EE_ID}" )
, 0\
  .else
, ${ca_eesmc.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_eesmc.SM_ID}" )
, 0\
  .else
, ${ca_eesmc.SM_ID}\
  .end if
 );
.end for
.select many ca_smsmcs from instances of CA_SMSMC
.for each ca_smsmc in ca_smsmcs
INSERT INTO CA_SMSMC VALUES (\
  .if ( "un-initialized" == "${ca_smsmc.CPath_ID}" )
 0\
  .else
 ${ca_smsmc.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smsmc.OSM_ID}" )
, 0\
  .else
, ${ca_smsmc.OSM_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smsmc.DSM_ID}" )
, 0\
  .else
, ${ca_smsmc.DSM_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smsmc.OIObj_ID}" )
, 0\
  .else
, ${ca_smsmc.OIObj_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smsmc.DIObj_ID}" )
, 0\
  .else
, ${ca_smsmc.DIObj_ID}\
  .end if
 );
.end for
.select many ca_smeecs from instances of CA_SMEEC
.for each ca_smeec in ca_smeecs
INSERT INTO CA_SMEEC VALUES (\
  .if ( "un-initialized" == "${ca_smeec.CPath_ID}" )
 0\
  .else
 ${ca_smeec.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeec.SM_ID}" )
, 0\
  .else
, ${ca_smeec.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeec.EE_ID}" )
, 0\
  .else
, ${ca_smeec.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeec.EEmod_ID}" )
, 0\
  .else
, ${ca_smeec.EEmod_ID}\
  .end if
 );
.end for
.select many ca_eesmes from instances of CA_EESME
.for each ca_eesme in ca_eesmes
INSERT INTO CA_EESME VALUES (\
  .if ( "un-initialized" == "${ca_eesme.CPath_ID}" )
 0\
  .else
 ${ca_eesme.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_eesme.SMevt_ID}" )
, 0\
  .else
, ${ca_eesme.SMevt_ID}\
  .end if
 );
.end for
.select many ca_smsmes from instances of CA_SMSME
.for each ca_smsme in ca_smsmes
INSERT INTO CA_SMSME VALUES (\
  .if ( "un-initialized" == "${ca_smsme.CPath_ID}" )
 0\
  .else
 ${ca_smsme.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smsme.SMevt_ID}" )
, 0\
  .else
, ${ca_smsme.SMevt_ID}\
  .end if
 );
.end for
.select many ca_smeees from instances of CA_SMEEE
.for each ca_smeee in ca_smeees
INSERT INTO CA_SMEEE VALUES (\
  .if ( "un-initialized" == "${ca_smeee.CPath_ID}" )
 0\
  .else
 ${ca_smeee.CPath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeee.EE_ID}" )
, 0\
  .else
, ${ca_smeee.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeee.EEevt_ID}" )
, 0\
  .else
, ${ca_smeee.EEevt_ID}\
  .end if
 );
.end for
.select many ca_accs from instances of CA_ACC
.for each ca_acc in ca_accs
INSERT INTO CA_ACC VALUES (\
  .if ( "un-initialized" == "${ca_acc.APath_ID}" )
 0\
  .else
 ${ca_acc.APath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_acc.SS_ID}" )
, 0\
  .else
, ${ca_acc.SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_acc.SM_ID}" )
, 0\
  .else
, ${ca_acc.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_acc.IObj_ID}" )
, 0\
  .else
, ${ca_acc.IObj_ID}\
  .end if
 );
.end for
.select many ca_smoas from instances of CA_SMOA
.for each ca_smoa in ca_smoas
INSERT INTO CA_SMOA VALUES (\
  .if ( "un-initialized" == "${ca_smoa.APath_ID}" )
 0\
  .else
 ${ca_smoa.APath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smoa.Obj_ID}" )
, 0\
  .else
, ${ca_smoa.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smoa.IObj_ID}" )
, 0\
  .else
, ${ca_smoa.IObj_ID}\
  .end if
 );
.end for
.select many ca_smeeas from instances of CA_SMEEA
.for each ca_smeea in ca_smeeas
INSERT INTO CA_SMEEA VALUES (\
  .if ( "un-initialized" == "${ca_smeea.APath_ID}" )
 0\
  .else
 ${ca_smeea.APath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeea.EE_ID}" )
, 0\
  .else
, ${ca_smeea.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeea.EEmod_ID}" )
, 0\
  .else
, ${ca_smeea.EEmod_ID}\
  .end if
 );
.end for
.select many ca_smoaas from instances of CA_SMOAA
.for each ca_smoaa in ca_smoaas
INSERT INTO CA_SMOAA VALUES (\
  .if ( "un-initialized" == "${ca_smoaa.APath_ID}" )
 0\
  .else
 ${ca_smoaa.APath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smoaa.Attr_ID}" )
, 0\
  .else
, ${ca_smoaa.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smoaa.Obj_ID}" )
, 0\
  .else
, ${ca_smoaa.Obj_ID}\
  .end if
 );
.end for
.select many ca_smeeds from instances of CA_SMEED
.for each ca_smeed in ca_smeeds
INSERT INTO CA_SMEED VALUES (\
  .if ( "un-initialized" == "${ca_smeed.APath_ID}" )
 0\
  .else
 ${ca_smeed.APath_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeed.EEdi_ID}" )
, 0\
  .else
, ${ca_smeed.EEdi_ID}\
  .end if
\
  .if ( "un-initialized" == "${ca_smeed.EE_ID}" )
, 0\
  .else
, ${ca_smeed.EE_ID}\
  .end if
 );
.end for
.print "Component"
.select many c_cs from instances of C_C
.for each c_c in c_cs
INSERT INTO C_C VALUES (\
  .if ( "un-initialized" == "${c_c.Id}" )
 0\
  .else
 ${c_c.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_c.Package_ID}" )
, 0\
  .else
, ${c_c.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${c_c.NestedComponent_Id}" )
, 0\
  .else
, ${c_c.NestedComponent_Id}\
  .end if
, '${c_c.Name}', '${c_c.Descrip}'\
, ${c_c.Mult}\
  .if ( "un-initialized" == "${c_c.Root_Package_ID}" )
, 0\
  .else
, ${c_c.Root_Package_ID}\
  .end if
, ${c_c.isRealized}, '${c_c.Realized_Class_Path}' );
.end for
.select many c_is from instances of C_I
.for each c_i in c_is
INSERT INTO C_I VALUES (\
  .if ( "un-initialized" == "${c_i.Id}" )
 0\
  .else
 ${c_i.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_i.Package_ID}" )
, 0\
  .else
, ${c_i.Package_ID}\
  .end if
, '${c_i.Name}', ''\
 );
.end for
.select many c_ps from instances of C_P
.for each c_p in c_ps
INSERT INTO C_P VALUES (\
  .if ( "un-initialized" == "${c_p.Provision_Id}" )
 0\
  .else
 ${c_p.Provision_Id}\
  .end if
, '${c_p.Name}', '${c_p.InformalName}', ''\
, '${c_p.pathFromComponent}' );
.end for
.select many c_rs from instances of C_R
.for each c_r in c_rs
INSERT INTO C_R VALUES (\
  .if ( "un-initialized" == "${c_r.Requirement_Id}" )
 0\
  .else
 ${c_r.Requirement_Id}\
  .end if
, '${c_r.Name}', ''\
, '${c_r.InformalName}', '${c_r.reversePathFromComponent}' );
.end for
.select many c_eps from instances of C_EP
.for each c_ep in c_eps
INSERT INTO C_EP VALUES (\
  .if ( "un-initialized" == "${c_ep.Id}" )
 0\
  .else
 ${c_ep.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_ep.Interface_Id}" )
, 0\
  .else
, ${c_ep.Interface_Id}\
  .end if
, ${c_ep.Direction}, '${c_ep.Name}', ''\
 );
.end for
.select many c_ass from instances of C_AS
.for each c_as in c_ass
INSERT INTO C_AS VALUES (\
  .if ( "un-initialized" == "${c_as.Id}" )
 0\
  .else
 ${c_as.Id}\
  .end if
, '${c_as.Name}', ''\
, ${c_as.Direction}\
  .if ( "un-initialized" == "${c_as.Previous_Id}" )
, 0\
  .else
, ${c_as.Previous_Id}\
  .end if
 );
.end for
.select many c_ios from instances of C_IO
.for each c_io in c_ios
INSERT INTO C_IO VALUES (\
  .if ( "un-initialized" == "${c_io.Id}" )
 0\
  .else
 ${c_io.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_io.DT_ID}" )
, 0\
  .else
, ${c_io.DT_ID}\
  .end if
, '${c_io.Name}', ''\
, ${c_io.Direction}, '${c_io.Return_Dimensions}'\
  .if ( "un-initialized" == "${c_io.Previous_Id}" )
, 0\
  .else
, ${c_io.Previous_Id}\
  .end if
 );
.end for
.select many c_sfs from instances of C_SF
.for each c_sf in c_sfs
INSERT INTO C_SF VALUES (\
  .if ( "un-initialized" == "${c_sf.Id}" )
 0\
  .else
 ${c_sf.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_sf.Requirement_Id}" )
, 0\
  .else
, ${c_sf.Requirement_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_sf.Provision_Id}" )
, 0\
  .else
, ${c_sf.Provision_Id}\
  .end if
, ''\
, '${c_sf.Label}' );
.end for
.select many c_pps from instances of C_PP
.for each c_pp in c_pps
INSERT INTO C_PP VALUES (\
  .if ( "un-initialized" == "${c_pp.PP_Id}" )
 0\
  .else
 ${c_pp.PP_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_pp.Signal_Id}" )
, 0\
  .else
, ${c_pp.Signal_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_pp.DT_ID}" )
, 0\
  .else
, ${c_pp.DT_ID}\
  .end if
, '${c_pp.Name}', ''\
, ${c_pp.By_Ref}, '${c_pp.Dimensions}'\
  .if ( "un-initialized" == "${c_pp.Previous_PP_Id}" )
, 0\
  .else
, ${c_pp.Previous_PP_Id}\
  .end if
 );
.end for
.select many c_irs from instances of C_IR
.for each c_ir in c_irs
INSERT INTO C_IR VALUES (\
  .if ( "un-initialized" == "${c_ir.Id}" )
 0\
  .else
 ${c_ir.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_ir.Formal_Interface_Id}" )
, 0\
  .else
, ${c_ir.Formal_Interface_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_ir.Delegation_Id}" )
, 0\
  .else
, ${c_ir.Delegation_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_ir.Port_Id}" )
, 0\
  .else
, ${c_ir.Port_Id}\
  .end if
 );
.end for
.select many c_dgs from instances of C_DG
.for each c_dg in c_dgs
INSERT INTO C_DG VALUES (\
  .if ( "un-initialized" == "${c_dg.Id}" )
 0\
  .else
 ${c_dg.Id}\
  .end if
, '${c_dg.Name}' );
.end for
.select many c_pos from instances of C_PO
.for each c_po in c_pos
INSERT INTO C_PO VALUES (\
  .if ( "un-initialized" == "${c_po.Id}" )
 0\
  .else
 ${c_po.Id}\
  .end if
\
  .if ( "un-initialized" == "${c_po.Component_Id}" )
, 0\
  .else
, ${c_po.Component_Id}\
  .end if
, '${c_po.Name}', ${c_po.Mult}, ${c_po.DoNotShowPortOnCanvas} );
.end for
.select many c_rids from instances of C_RID
.for each c_rid in c_rids
INSERT INTO C_RID VALUES (\
  .if ( "un-initialized" == "${c_rid.Reference_Id}" )
 0\
  .else
 ${c_rid.Reference_Id}\
  .end if
\
  .if ( "un-initialized" == "${c_rid.Delegation_Id}" )
, 0\
  .else
, ${c_rid.Delegation_Id}\
  .end if
 );
.end for
.print "Constants"
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
INSERT INTO CNST_CSP VALUES (\
  .if ( "un-initialized" == "${cnst_csp.Constant_Spec_ID}" )
 0\
  .else
 ${cnst_csp.Constant_Spec_ID}\
  .end if
, '${cnst_csp.InformalGroupName}', ''\
 );
.end for
.select many cnst_sycs from instances of CNST_SYC
.for each cnst_syc in cnst_sycs
INSERT INTO CNST_SYC VALUES (\
  .if ( "un-initialized" == "${cnst_syc.Const_ID}" )
 0\
  .else
 ${cnst_syc.Const_ID}\
  .end if
, '${cnst_syc.Name}', ''\
\
  .if ( "un-initialized" == "${cnst_syc.DT_ID}" )
, 0\
  .else
, ${cnst_syc.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_syc.Constant_Spec_ID}" )
, 0\
  .else
, ${cnst_syc.Constant_Spec_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_syc.Previous_Const_ID}" )
, 0\
  .else
, ${cnst_syc.Previous_Const_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_syc.Previous_DT_DT_ID}" )
, 0\
  .else
, ${cnst_syc.Previous_DT_DT_ID}\
  .end if
 );
.end for
.select many cnst_lfscs from instances of CNST_LFSC
.for each cnst_lfsc in cnst_lfscs
INSERT INTO CNST_LFSC VALUES (\
  .if ( "un-initialized" == "${cnst_lfsc.Const_ID}" )
 0\
  .else
 ${cnst_lfsc.Const_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_lfsc.DT_ID}" )
, 0\
  .else
, ${cnst_lfsc.DT_ID}\
  .end if
 );
.end for
.select many cnst_lscs from instances of CNST_LSC
.for each cnst_lsc in cnst_lscs
INSERT INTO CNST_LSC VALUES (\
  .if ( "un-initialized" == "${cnst_lsc.Const_ID}" )
 0\
  .else
 ${cnst_lsc.Const_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_lsc.DT_ID}" )
, 0\
  .else
, ${cnst_lsc.DT_ID}\
  .end if
, '${cnst_lsc.Value}' );
.end for
.select many cnst_cips from instances of CNST_CIP
.for each cnst_cip in cnst_cips
INSERT INTO CNST_CIP VALUES (\
  .if ( "un-initialized" == "${cnst_cip.Constant_Spec_ID}" )
 0\
  .else
 ${cnst_cip.Constant_Spec_ID}\
  .end if
\
  .if ( "un-initialized" == "${cnst_cip.Package_ID}" )
, 0\
  .else
, ${cnst_cip.Package_ID}\
  .end if
 );
.end for
.print "Document"
.select many doc_docs from instances of DOC_DOC
.for each doc_doc in doc_docs
INSERT INTO DOC_DOC VALUES ( '${doc_doc.title}', '${doc_doc.subtitle}', '${doc_doc.author}', '${doc_doc.font_family}', '${doc_doc.company}', '${doc_doc.copyright}', '${doc_doc.filename}', '${doc_doc.model_image_ext}' );
.end for
.select many doc_secs from instances of DOC_SEC
.for each doc_sec in doc_secs
INSERT INTO DOC_SEC VALUES (\
  .if ( "un-initialized" == "${doc_sec.ID}" )
 0\
  .else
 ${doc_sec.ID}\
  .end if
\
  .if ( "un-initialized" == "${doc_sec.nextID}" )
, 0\
  .else
, ${doc_sec.nextID}\
  .end if
, '${doc_sec.title}', '${doc_sec.subtitle}', ${doc_sec.level}, '${doc_sec.abstract}' );
.end for
.select many doc_dates from instances of DOC_DATE
.for each doc_date in doc_dates
INSERT INTO DOC_DATE VALUES ( ${doc_date.year}, '${doc_date.month}', ${doc_date.day}, '${doc_date.time}' );
.end for
.select many doc_heads from instances of DOC_HEAD
.for each doc_head in doc_heads
INSERT INTO DOC_HEAD VALUES ( '${doc_head.text}' );
.end for
.select many doc_foots from instances of DOC_FOOT
.for each doc_foot in doc_foots
INSERT INTO DOC_FOOT VALUES ( '${doc_foot.text}' );
.end for
.select many doc_addrs from instances of DOC_ADDR
.for each doc_addr in doc_addrs
INSERT INTO DOC_ADDR VALUES ( '${doc_addr.street}', '${doc_addr.city}', '${doc_addr.state}', '${doc_addr.postcode}' );
.end for
.select many doc_pars from instances of DOC_PAR
.for each doc_par in doc_pars
INSERT INTO DOC_PAR VALUES (\
  .if ( "un-initialized" == "${doc_par.ID}" )
 0\
  .else
 ${doc_par.ID}\
  .end if
\
  .if ( "un-initialized" == "${doc_par.sectionID}" )
, 0\
  .else
, ${doc_par.sectionID}\
  .end if
, '${doc_par.text}', '${doc_par.ptext}', ${doc_par.formatted} );
.end for
.select many doc_figs from instances of DOC_FIG
.for each doc_fig in doc_figs
INSERT INTO DOC_FIG VALUES ( '${doc_fig.title}', '${doc_fig.ident}' );
.end for
.select many doc_links from instances of DOC_LINK
.for each doc_link in doc_links
INSERT INTO DOC_LINK VALUES ( '${doc_link.target}', '${doc_link.text}' );
.end for
.select many doc_tbls from instances of DOC_TBL
.for each doc_tbl in doc_tbls
INSERT INTO DOC_TBL VALUES ( '${doc_tbl.title}', ${doc_tbl.num_cols} );
.end for
.select many doc_imgs from instances of DOC_IMG
.for each doc_img in doc_imgs
INSERT INTO DOC_IMG VALUES ( '${doc_img.target}' );
.end for
.select many doc_cells from instances of DOC_CELL
.for each doc_cell in doc_cells
INSERT INTO DOC_CELL VALUES ( '${doc_cell.text}' );
.end for
.select many doc_rows from instances of DOC_ROW
.for each doc_row in doc_rows
INSERT INTO DOC_ROW VALUES ( ${doc_row.head} );
.end for
.print "Domain"
.select many s_doms from instances of S_DOM
.for each s_dom in s_doms
INSERT INTO S_DOM VALUES (\
  .if ( "un-initialized" == "${s_dom.Dom_ID}" )
 0\
  .else
 ${s_dom.Dom_ID}\
  .end if
, '${s_dom.Name}', ''\
, ${s_dom.Full_Der}\
  .if ( "un-initialized" == "${s_dom.Config_ID}" )
, 0\
  .else
, ${s_dom.Config_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dom.Sys_ID}" )
, 0\
  .else
, ${s_dom.Sys_ID}\
  .end if
 );
.end for
.select many s_sss from instances of S_SS
.for each s_ss in s_sss
INSERT INTO S_SS VALUES (\
  .if ( "un-initialized" == "${s_ss.SS_ID}" )
 0\
  .else
 ${s_ss.SS_ID}\
  .end if
, '${s_ss.Name}', ''\
, '${s_ss.Prefix}', ${s_ss.Num_Rng}\
  .if ( "un-initialized" == "${s_ss.Dom_ID}" )
, 0\
  .else
, ${s_ss.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_ss.Config_ID}" )
, 0\
  .else
, ${s_ss.Config_ID}\
  .end if
 );
.end for
.select many s_ees from instances of S_EE
.for each s_ee in s_ees
INSERT INTO S_EE VALUES (\
  .if ( "un-initialized" == "${s_ee.EE_ID}" )
 0\
  .else
 ${s_ee.EE_ID}\
  .end if
, '${s_ee.Name}', '${s_ee.Descrip}'\
, '${s_ee.Key_Lett}'\
  .if ( "un-initialized" == "${s_ee.Dom_ID}" )
, 0\
  .else
, ${s_ee.Dom_ID}\
  .end if
 );
.end for
.select many s_eems from instances of S_EEM
.for each s_eem in s_eems
INSERT INTO S_EEM VALUES (\
  .if ( "un-initialized" == "${s_eem.EEmod_ID}" )
 0\
  .else
 ${s_eem.EEmod_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eem.EE_ID}" )
, 0\
  .else
, ${s_eem.EE_ID}\
  .end if
, ${s_eem.Modl_Typ}\
  .if ( "un-initialized" == "${s_eem.SS_ID}" )
, 0\
  .else
, ${s_eem.SS_ID}\
  .end if
 );
.end for
.select many s_eedis from instances of S_EEDI
.for each s_eedi in s_eedis
INSERT INTO S_EEDI VALUES (\
  .if ( "un-initialized" == "${s_eedi.EEdi_ID}" )
 0\
  .else
 ${s_eedi.EEdi_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eedi.EE_ID}" )
, 0\
  .else
, ${s_eedi.EE_ID}\
  .end if
, '${s_eedi.Name}', ''\
\
  .if ( "un-initialized" == "${s_eedi.DT_ID}" )
, 0\
  .else
, ${s_eedi.DT_ID}\
  .end if
 );
.end for
.select many s_eeevts from instances of S_EEEVT
.for each s_eeevt in s_eeevts
INSERT INTO S_EEEVT VALUES (\
  .if ( "un-initialized" == "${s_eeevt.EEevt_ID}" )
 0\
  .else
 ${s_eeevt.EEevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eeevt.EE_ID}" )
, 0\
  .else
, ${s_eeevt.EE_ID}\
  .end if
, ${s_eeevt.Numb}, '${s_eeevt.Mning}', ${s_eeevt.Is_Lbl_U}, '${s_eeevt.Unq_Lbl}', '${s_eeevt.Drv_Lbl}', ''\
 );
.end for
.select many s_eeedis from instances of S_EEEDI
.for each s_eeedi in s_eeedis
INSERT INTO S_EEEDI VALUES (\
  .if ( "un-initialized" == "${s_eeedi.EEedi_ID}" )
 0\
  .else
 ${s_eeedi.EEedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eeedi.EE_ID}" )
, 0\
  .else
, ${s_eeedi.EE_ID}\
  .end if
, '${s_eeedi.Name}', ''\
\
  .if ( "un-initialized" == "${s_eeedi.DT_ID}" )
, 0\
  .else
, ${s_eeedi.DT_ID}\
  .end if
 );
.end for
.select many s_eeedts from instances of S_EEEDT
.for each s_eeedt in s_eeedts
INSERT INTO S_EEEDT VALUES (\
  .if ( "un-initialized" == "${s_eeedt.EE_ID}" )
 0\
  .else
 ${s_eeedt.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eeedt.EEevt_ID}" )
, 0\
  .else
, ${s_eeedt.EEevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eeedt.EEedi_ID}" )
, 0\
  .else
, ${s_eeedt.EEedi_ID}\
  .end if
 );
.end for
.select many s_dts from instances of S_DT
.for each s_dt in s_dts
INSERT INTO S_DT VALUES (\
  .if ( "un-initialized" == "${s_dt.DT_ID}" )
 0\
  .else
 ${s_dt.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dt.Dom_ID}" )
, 0\
  .else
, ${s_dt.Dom_ID}\
  .end if
, '${s_dt.Name}', ''\
, '${s_dt.DefaultValue}' );
.end for
.select many s_cdts from instances of S_CDT
.for each s_cdt in s_cdts
INSERT INTO S_CDT VALUES (\
  .if ( "un-initialized" == "${s_cdt.DT_ID}" )
 0\
  .else
 ${s_cdt.DT_ID}\
  .end if
, ${s_cdt.Core_Typ} );
.end for
.select many s_udts from instances of S_UDT
.for each s_udt in s_udts
INSERT INTO S_UDT VALUES (\
  .if ( "un-initialized" == "${s_udt.DT_ID}" )
 0\
  .else
 ${s_udt.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_udt.CDT_DT_ID}" )
, 0\
  .else
, ${s_udt.CDT_DT_ID}\
  .end if
, ${s_udt.Gen_Type} );
.end for
.select many s_brgs from instances of S_BRG
.for each s_brg in s_brgs
INSERT INTO S_BRG VALUES (\
  .if ( "un-initialized" == "${s_brg.Brg_ID}" )
 0\
  .else
 ${s_brg.Brg_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_brg.EE_ID}" )
, 0\
  .else
, ${s_brg.EE_ID}\
  .end if
, '${s_brg.Name}', ''\
, ${s_brg.Brg_Typ}\
  .if ( "un-initialized" == "${s_brg.DT_ID}" )
, 0\
  .else
, ${s_brg.DT_ID}\
  .end if
, ''\
, ${s_brg.Suc_Pars}, '${s_brg.Return_Dimensions}' );
.end for
.select many s_bparms from instances of S_BPARM
.for each s_bparm in s_bparms
INSERT INTO S_BPARM VALUES (\
  .if ( "un-initialized" == "${s_bparm.BParm_ID}" )
 0\
  .else
 ${s_bparm.BParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_bparm.Brg_ID}" )
, 0\
  .else
, ${s_bparm.Brg_ID}\
  .end if
, '${s_bparm.Name}'\
  .if ( "un-initialized" == "${s_bparm.DT_ID}" )
, 0\
  .else
, ${s_bparm.DT_ID}\
  .end if
, ${s_bparm.By_Ref}, '${s_bparm.Dimensions}'\
  .if ( "un-initialized" == "${s_bparm.Previous_BParm_ID}" )
, 0\
  .else
, ${s_bparm.Previous_BParm_ID}\
  .end if
, ''\
 );
.end for
.select many s_edts from instances of S_EDT
.for each s_edt in s_edts
INSERT INTO S_EDT VALUES (\
  .if ( "un-initialized" == "${s_edt.DT_ID}" )
 0\
  .else
 ${s_edt.DT_ID}\
  .end if
 );
.end for
.select many s_enums from instances of S_ENUM
.for each s_enum in s_enums
INSERT INTO S_ENUM VALUES (\
  .if ( "un-initialized" == "${s_enum.Enum_ID}" )
 0\
  .else
 ${s_enum.Enum_ID}\
  .end if
, '${s_enum.Name}', ''\
\
  .if ( "un-initialized" == "${s_enum.EDT_DT_ID}" )
, 0\
  .else
, ${s_enum.EDT_DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_enum.Previous_Enum_ID}" )
, 0\
  .else
, ${s_enum.Previous_Enum_ID}\
  .end if
 );
.end for
.select many s_syncs from instances of S_SYNC
.for each s_sync in s_syncs
INSERT INTO S_SYNC VALUES (\
  .if ( "un-initialized" == "${s_sync.Sync_ID}" )
 0\
  .else
 ${s_sync.Sync_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_sync.Dom_ID}" )
, 0\
  .else
, ${s_sync.Dom_ID}\
  .end if
, '${s_sync.Name}', ''\
, ''\
\
  .if ( "un-initialized" == "${s_sync.DT_ID}" )
, 0\
  .else
, ${s_sync.DT_ID}\
  .end if
, ${s_sync.Suc_Pars}, '${s_sync.Return_Dimensions}' );
.end for
.select many s_sparms from instances of S_SPARM
.for each s_sparm in s_sparms
INSERT INTO S_SPARM VALUES (\
  .if ( "un-initialized" == "${s_sparm.SParm_ID}" )
 0\
  .else
 ${s_sparm.SParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_sparm.Sync_ID}" )
, 0\
  .else
, ${s_sparm.Sync_ID}\
  .end if
, '${s_sparm.Name}'\
  .if ( "un-initialized" == "${s_sparm.DT_ID}" )
, 0\
  .else
, ${s_sparm.DT_ID}\
  .end if
, ${s_sparm.By_Ref}, '${s_sparm.Dimensions}'\
  .if ( "un-initialized" == "${s_sparm.Previous_SParm_ID}" )
, 0\
  .else
, ${s_sparm.Previous_SParm_ID}\
  .end if
, ''\
 );
.end for
.select many s_syss from instances of S_SYS
.for each s_sys in s_syss
INSERT INTO S_SYS VALUES (\
  .if ( "un-initialized" == "${s_sys.Sys_ID}" )
 0\
  .else
 ${s_sys.Sys_ID}\
  .end if
, '${s_sys.Name}', ${s_sys.useGlobals} );
.end for
.select many s_fpks from instances of S_FPK
.for each s_fpk in s_fpks
INSERT INTO S_FPK VALUES (\
  .if ( "un-initialized" == "${s_fpk.FunPack_ID}" )
 0\
  .else
 ${s_fpk.FunPack_ID}\
  .end if
, '${s_fpk.Name}'\
  .if ( "un-initialized" == "${s_fpk.Dom_ID}" )
, 0\
  .else
, ${s_fpk.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_fpk.Parent_FunPack_ID}" )
, 0\
  .else
, ${s_fpk.Parent_FunPack_ID}\
  .end if
 );
.end for
.select many s_fips from instances of S_FIP
.for each s_fip in s_fips
INSERT INTO S_FIP VALUES (\
  .if ( "un-initialized" == "${s_fip.FunPack_ID}" )
 0\
  .else
 ${s_fip.FunPack_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_fip.Sync_ID}" )
, 0\
  .else
, ${s_fip.Sync_ID}\
  .end if
 );
.end for
.select many s_fpips from instances of S_FPIP
.for each s_fpip in s_fpips
INSERT INTO S_FPIP VALUES (\
  .if ( "un-initialized" == "${s_fpip.FunPack_ID}" )
 0\
  .else
 ${s_fpip.FunPack_ID}\
  .end if
 );
.end for
.select many s_eepks from instances of S_EEPK
.for each s_eepk in s_eepks
INSERT INTO S_EEPK VALUES (\
  .if ( "un-initialized" == "${s_eepk.EEPack_ID}" )
 0\
  .else
 ${s_eepk.EEPack_ID}\
  .end if
, '${s_eepk.Name}'\
  .if ( "un-initialized" == "${s_eepk.Dom_ID}" )
, 0\
  .else
, ${s_eepk.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eepk.Parent_EEPack_ID}" )
, 0\
  .else
, ${s_eepk.Parent_EEPack_ID}\
  .end if
 );
.end for
.select many s_eeips from instances of S_EEIP
.for each s_eeip in s_eeips
INSERT INTO S_EEIP VALUES (\
  .if ( "un-initialized" == "${s_eeip.EEPack_ID}" )
 0\
  .else
 ${s_eeip.EEPack_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_eeip.EE_ID}" )
, 0\
  .else
, ${s_eeip.EE_ID}\
  .end if
 );
.end for
.select many s_eepips from instances of S_EEPIP
.for each s_eepip in s_eepips
INSERT INTO S_EEPIP VALUES (\
  .if ( "un-initialized" == "${s_eepip.EEPack_ID}" )
 0\
  .else
 ${s_eepip.EEPack_ID}\
  .end if
 );
.end for
.select many s_dpks from instances of S_DPK
.for each s_dpk in s_dpks
INSERT INTO S_DPK VALUES (\
  .if ( "un-initialized" == "${s_dpk.Package_ID}" )
 0\
  .else
 ${s_dpk.Package_ID}\
  .end if
, '${s_dpk.Name}'\
  .if ( "un-initialized" == "${s_dpk.Dom_ID}" )
, 0\
  .else
, ${s_dpk.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dpk.Parent_Package_ID}" )
, 0\
  .else
, ${s_dpk.Parent_Package_ID}\
  .end if
 );
.end for
.select many s_dips from instances of S_DIP
.for each s_dip in s_dips
INSERT INTO S_DIP VALUES (\
  .if ( "un-initialized" == "${s_dip.Package_ID}" )
 0\
  .else
 ${s_dip.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dip.DT_ID}" )
, 0\
  .else
, ${s_dip.DT_ID}\
  .end if
 );
.end for
.select many s_dpips from instances of S_DPIP
.for each s_dpip in s_dpips
INSERT INTO S_DPIP VALUES (\
  .if ( "un-initialized" == "${s_dpip.Package_ID}" )
 0\
  .else
 ${s_dpip.Package_ID}\
  .end if
 );
.end for
.select many s_siss from instances of S_SIS
.for each s_sis in s_siss
INSERT INTO S_SIS VALUES (\
  .if ( "un-initialized" == "${s_sis.Parent_SS_ID}" )
 0\
  .else
 ${s_sis.Parent_SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_sis.Child_SS_ID}" )
, 0\
  .else
, ${s_sis.Child_SS_ID}\
  .end if
 );
.end for
.select many s_sids from instances of S_SID
.for each s_sid in s_sids
INSERT INTO S_SID VALUES (\
  .if ( "un-initialized" == "${s_sid.Dom_ID}" )
 0\
  .else
 ${s_sid.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_sid.SS_ID}" )
, 0\
  .else
, ${s_sid.SS_ID}\
  .end if
 );
.end for
.select many s_irdts from instances of S_IRDT
.for each s_irdt in s_irdts
INSERT INTO S_IRDT VALUES (\
  .if ( "un-initialized" == "${s_irdt.DT_ID}" )
 0\
  .else
 ${s_irdt.DT_ID}\
  .end if
, ${s_irdt.isSet}\
  .if ( "un-initialized" == "${s_irdt.Obj_ID}" )
, 0\
  .else
, ${s_irdt.Obj_ID}\
  .end if
 );
.end for
.select many s_sdts from instances of S_SDT
.for each s_sdt in s_sdts
INSERT INTO S_SDT VALUES (\
  .if ( "un-initialized" == "${s_sdt.DT_ID}" )
 0\
  .else
 ${s_sdt.DT_ID}\
  .end if
 );
.end for
.select many s_mbrs from instances of S_MBR
.for each s_mbr in s_mbrs
INSERT INTO S_MBR VALUES (\
  .if ( "un-initialized" == "${s_mbr.Member_ID}" )
 0\
  .else
 ${s_mbr.Member_ID}\
  .end if
, '${s_mbr.Name}', ''\
\
  .if ( "un-initialized" == "${s_mbr.Parent_DT_DT_ID}" )
, 0\
  .else
, ${s_mbr.Parent_DT_DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_mbr.DT_ID}" )
, 0\
  .else
, ${s_mbr.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_mbr.Previous_Member_ID}" )
, 0\
  .else
, ${s_mbr.Previous_Member_ID}\
  .end if
, '${s_mbr.Dimensions}' );
.end for
.select many s_diss from instances of S_DIS
.for each s_dis in s_diss
INSERT INTO S_DIS VALUES (\
  .if ( "un-initialized" == "${s_dis.Dom_ID}" )
 0\
  .else
 ${s_dis.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dis.DT_ID}" )
, 0\
  .else
, ${s_dis.DT_ID}\
  .end if
 );
.end for
.select many s_dims from instances of S_DIM
.for each s_dim in s_dims
INSERT INTO S_DIM VALUES ( ${s_dim.elementCount}, ${s_dim.dimensionCount}\
  .if ( "un-initialized" == "${s_dim.Sync_ID}" )
, 0\
  .else
, ${s_dim.Sync_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.SParm_ID}" )
, 0\
  .else
, ${s_dim.SParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.BParm_ID}" )
, 0\
  .else
, ${s_dim.BParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Brg_ID}" )
, 0\
  .else
, ${s_dim.Brg_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Id}" )
, 0\
  .else
, ${s_dim.Id}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Obj_ID}" )
, 0\
  .else
, ${s_dim.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Attr_ID}" )
, 0\
  .else
, ${s_dim.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.TParm_ID}" )
, 0\
  .else
, ${s_dim.TParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Tfr_ID}" )
, 0\
  .else
, ${s_dim.Tfr_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Member_ID}" )
, 0\
  .else
, ${s_dim.Member_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.DT_ID}" )
, 0\
  .else
, ${s_dim.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.PP_Id}" )
, 0\
  .else
, ${s_dim.PP_Id}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.SM_ID}" )
, 0\
  .else
, ${s_dim.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.SMedi_ID}" )
, 0\
  .else
, ${s_dim.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.DIM_ID}" )
, 0\
  .else
, ${s_dim.DIM_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_dim.Var_ID}" )
, 0\
  .else
, ${s_dim.Var_ID}\
  .end if
 );
.end for
.print "Element Packaging"
.select many ep_pkgs from instances of EP_PKG
.for each ep_pkg in ep_pkgs
INSERT INTO EP_PKG VALUES (\
  .if ( "un-initialized" == "${ep_pkg.Package_ID}" )
 0\
  .else
 ${ep_pkg.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${ep_pkg.Sys_ID}" )
, 0\
  .else
, ${ep_pkg.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${ep_pkg.Direct_Sys_ID}" )
, 0\
  .else
, ${ep_pkg.Direct_Sys_ID}\
  .end if
, '${ep_pkg.Name}', ''\
, ${ep_pkg.Num_Rng} );
.end for
.select many ep_spkgs from instances of EP_SPKG
.for each ep_spkg in ep_spkgs
INSERT INTO EP_SPKG VALUES (\
  .if ( "un-initialized" == "${ep_spkg.Package_ID}" )
 0\
  .else
 ${ep_spkg.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${ep_spkg.Container_Package_ID}" )
, 0\
  .else
, ${ep_spkg.Container_Package_ID}\
  .end if
 );
.end for
.select many ep_pips from instances of EP_PIP
.for each ep_pip in ep_pips
INSERT INTO EP_PIP VALUES (\
  .if ( "un-initialized" == "${ep_pip.Parent_Package_ID}" )
 0\
  .else
 ${ep_pip.Parent_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${ep_pip.Child_Package_ID}" )
, 0\
  .else
, ${ep_pip.Child_Package_ID}\
  .end if
 );
.end for
.print "Globals"
.select many g_eiss from instances of G_EIS
.for each g_eis in g_eiss
INSERT INTO G_EIS VALUES (\
  .if ( "un-initialized" == "${g_eis.Element_ID}" )
 0\
  .else
 ${g_eis.Element_ID}\
  .end if
\
  .if ( "un-initialized" == "${g_eis.Sys_ID}" )
, 0\
  .else
, ${g_eis.Sys_ID}\
  .end if
 );
.end for
.print "Instance"
.select many i_lnks from instances of I_LNK
.for each i_lnk in i_lnks
INSERT INTO I_LNK VALUES (\
  .if ( "un-initialized" == "${i_lnk.Link_ID}" )
 0\
  .else
 ${i_lnk.Link_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_lnk.Rel_ID}" )
, 0\
  .else
, ${i_lnk.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_lnk.fromInst_ID}" )
, 0\
  .else
, ${i_lnk.fromInst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_lnk.toInst_ID}" )
, 0\
  .else
, ${i_lnk.toInst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_lnk.assocInst_ID}" )
, 0\
  .else
, ${i_lnk.assocInst_ID}\
  .end if
 );
.end for
.select many i_evis from instances of I_EVI
.for each i_evi in i_evis
INSERT INTO I_EVI VALUES (\
  .if ( "un-initialized" == "${i_evi.Event_ID}" )
 0\
  .else
 ${i_evi.Event_ID}\
  .end if
, ${i_evi.isExecuting}, ${i_evi.isCreation}\
  .if ( "un-initialized" == "${i_evi.SMevt_ID}" )
, 0\
  .else
, ${i_evi.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.Target_Inst_ID}" )
, 0\
  .else
, ${i_evi.Target_Inst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.nextEvent_ID}" )
, 0\
  .else
, ${i_evi.nextEvent_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.Sent_By_Inst_ID}" )
, 0\
  .else
, ${i_evi.Sent_By_Inst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.next_self_Event_ID}" )
, 0\
  .else
, ${i_evi.next_self_Event_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.Sent_By_CIE_ID}" )
, 0\
  .else
, ${i_evi.Sent_By_CIE_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.CIE_ID}" )
, 0\
  .else
, ${i_evi.CIE_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.Execution_Engine_ID}" )
, 0\
  .else
, ${i_evi.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_evi.Originating_Execution_Engine_ID}" )
, 0\
  .else
, ${i_evi.Originating_Execution_Engine_ID}\
  .end if
, '${i_evi.Label}' );
.end for
.select many i_avls from instances of I_AVL
.for each i_avl in i_avls
INSERT INTO I_AVL VALUES (\
  .if ( "un-initialized" == "${i_avl.Inst_ID}" )
 0\
  .else
 ${i_avl.Inst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_avl.Obj_ID}" )
, 0\
  .else
, ${i_avl.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_avl.Attr_ID}" )
, 0\
  .else
, ${i_avl.Attr_ID}\
  .end if
, '${i_avl.Value}', '${i_avl.Label}' );
.end for
.select many i_inss from instances of I_INS
.for each i_ins in i_inss
INSERT INTO I_INS VALUES (\
  .if ( "un-initialized" == "${i_ins.Inst_ID}" )
 0\
  .else
 ${i_ins.Inst_ID}\
  .end if
, '${i_ins.Name}'\
  .if ( "un-initialized" == "${i_ins.SM_ID}" )
, 0\
  .else
, ${i_ins.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_ins.SMstt_ID}" )
, 0\
  .else
, ${i_ins.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_ins.Execution_Engine_ID}" )
, 0\
  .else
, ${i_ins.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_ins.Trans_ID}" )
, 0\
  .else
, ${i_ins.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_ins.CIE_ID}" )
, 0\
  .else
, ${i_ins.CIE_ID}\
  .end if
, '${i_ins.Label}', '${i_ins.Default_Name}' );
.end for
.select many i_exes from instances of I_EXE
.for each i_exe in i_exes
INSERT INTO I_EXE VALUES ( ${i_exe.Running}\
  .if ( "un-initialized" == "${i_exe.Execution_Engine_ID}" )
, 0\
  .else
, ${i_exe.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_exe.Dom_ID}" )
, 0\
  .else
, ${i_exe.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_exe.Component_Id}" )
, 0\
  .else
, ${i_exe.Component_Id}\
  .end if
\
  .if ( "un-initialized" == "${i_exe.Package_ID}" )
, 0\
  .else
, ${i_exe.Package_ID}\
  .end if
, ${i_exe.Next_Unique_ID}, ${i_exe.Next_Instance_ID}\
  .if ( "un-initialized" == "${i_exe.ImportedComponent_Id}" )
, 0\
  .else
, ${i_exe.ImportedComponent_Id}\
  .end if
, '${i_exe.Label}', ${i_exe.EQE_Lock}, ${i_exe.SQE_Lock}\
  .if ( "un-initialized" == "${i_exe.Container_ID}" )
, 0\
  .else
, ${i_exe.Container_ID}\
  .end if
, ${i_exe.RealizedBy} );
.end for
.select many i_stfs from instances of I_STF
.for each i_stf in i_stfs
INSERT INTO I_STF VALUES (\
  .if ( "un-initialized" == "${i_stf.Stack_Frame_ID}" )
 0\
  .else
 ${i_stf.Stack_Frame_ID}\
  .end if
, ${i_stf.Created_For_Wired_Bridge}, ${i_stf.readyForInterrupt}\
  .if ( "un-initialized" == "${i_stf.Bridge_Caller_Stack_Frame_ID}" )
, 0\
  .else
, ${i_stf.Bridge_Caller_Stack_Frame_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Child_Stack_Frame_ID}" )
, 0\
  .else
, ${i_stf.Child_Stack_Frame_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Top_Stack_Frame_Stack_ID}" )
, 0\
  .else
, ${i_stf.Top_Stack_Frame_Stack_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Stack_ID}" )
, 0\
  .else
, ${i_stf.Stack_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Inst_ID}" )
, 0\
  .else
, ${i_stf.Inst_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Value_Q_Stack_ID}" )
, 0\
  .else
, ${i_stf.Value_Q_Stack_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stf.Blocking_Stack_Frame_ID}" )
, 0\
  .else
, ${i_stf.Blocking_Stack_Frame_ID}\
  .end if
 );
.end for
.select many i_bsfs from instances of I_BSF
.for each i_bsf in i_bsfs
INSERT INTO I_BSF VALUES (\
  .if ( "un-initialized" == "${i_bsf.Block_ID}" )
 0\
  .else
 ${i_bsf.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_bsf.Stack_Frame_ID}" )
, 0\
  .else
, ${i_bsf.Stack_Frame_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_bsf.Statement_ID}" )
, 0\
  .else
, ${i_bsf.Statement_ID}\
  .end if
, ${i_bsf.isExecuting} );
.end for
.select many i_stacks from instances of I_STACK
.for each i_stack in i_stacks
INSERT INTO I_STACK VALUES (\
  .if ( "un-initialized" == "${i_stack.Stack_ID}" )
 0\
  .else
 ${i_stack.Stack_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_stack.Execution_Engine_ID}" )
, 0\
  .else
, ${i_stack.Execution_Engine_ID}\
  .end if
, ${i_stack.runState}, '${i_stack.suspendReason}' );
.end for
.select many i_divs from instances of I_DIV
.for each i_div in i_divs
INSERT INTO I_DIV VALUES (\
  .if ( "un-initialized" == "${i_div.DIV_ID}" )
 0\
  .else
 ${i_div.DIV_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_div.Event_ID}" )
, 0\
  .else
, ${i_div.Event_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_div.SM_ID}" )
, 0\
  .else
, ${i_div.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_div.SMedi_ID}" )
, 0\
  .else
, ${i_div.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_div.PP_Id}" )
, 0\
  .else
, ${i_div.PP_Id}\
  .end if
 );
.end for
.select many i_tims from instances of I_TIM
.for each i_tim in i_tims
INSERT INTO I_TIM VALUES (\
  .if ( "un-initialized" == "${i_tim.Timer_ID}" )
 0\
  .else
 ${i_tim.Timer_ID}\
  .end if
, ${i_tim.delay}, ${i_tim.running}, ${i_tim.recurring}\
  .if ( "un-initialized" == "${i_tim.Event_ID}" )
, 0\
  .else
, ${i_tim.Event_ID}\
  .end if
, '${i_tim.Label}', ${i_tim.expiration} );
.end for
.select many i_eqes from instances of I_EQE
.for each i_eqe in i_eqes
INSERT INTO I_EQE VALUES (\
  .if ( "un-initialized" == "${i_eqe.Event_Queue_Entry_ID}" )
 0\
  .else
 ${i_eqe.Event_Queue_Entry_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_eqe.Execution_Engine_ID}" )
, 0\
  .else
, ${i_eqe.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_eqe.Event_ID}" )
, 0\
  .else
, ${i_eqe.Event_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_eqe.Next_Event_Queue_Entry_ID}" )
, 0\
  .else
, ${i_eqe.Next_Event_Queue_Entry_ID}\
  .end if
 );
.end for
.select many i_sqes from instances of I_SQE
.for each i_sqe in i_sqes
INSERT INTO I_SQE VALUES (\
  .if ( "un-initialized" == "${i_sqe.Self_Queue_Entry_ID}" )
 0\
  .else
 ${i_sqe.Self_Queue_Entry_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_sqe.Execution_Engine_ID}" )
, 0\
  .else
, ${i_sqe.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_sqe.Event_ID}" )
, 0\
  .else
, ${i_sqe.Event_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_sqe.Next_Self_Queue_Entry_ID}" )
, 0\
  .else
, ${i_sqe.Next_Self_Queue_Entry_ID}\
  .end if
 );
.end for
.select many i_mons from instances of I_MON
.for each i_mon in i_mons
INSERT INTO I_MON VALUES (\
  .if ( "un-initialized" == "${i_mon.Execution_Engine_ID}" )
 0\
  .else
 ${i_mon.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_mon.Inst_ID}" )
, 0\
  .else
, ${i_mon.Inst_ID}\
  .end if
, ${i_mon.enabled} );
.end for
.select many i_vsfs from instances of I_VSF
.for each i_vsf in i_vsfs
INSERT INTO I_VSF VALUES (\
  .if ( "un-initialized" == "${i_vsf.ValueInStackFrame_ID}" )
 0\
  .else
 ${i_vsf.ValueInStackFrame_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_vsf.Value_ID}" )
, 0\
  .else
, ${i_vsf.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_vsf.Stack_Frame_ID}" )
, 0\
  .else
, ${i_vsf.Stack_Frame_ID}\
  .end if
 );
.end for
.select many i_lips from instances of I_LIP
.for each i_lip in i_lips
INSERT INTO I_LIP VALUES (\
  .if ( "un-initialized" == "${i_lip.Rel_ID}" )
 0\
  .else
 ${i_lip.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_lip.Inst_ID}" )
, 0\
  .else
, ${i_lip.Inst_ID}\
  .end if
, '${i_lip.Label}' );
.end for
.select many i_rchs from instances of I_RCH
.for each i_rch in i_rchs
INSERT INTO I_RCH VALUES (\
  .if ( "un-initialized" == "${i_rch.Channel_Id}" )
 0\
  .else
 ${i_rch.Channel_Id}\
  .end if
\
  .if ( "un-initialized" == "${i_rch.Execution_Engine_ID}" )
, 0\
  .else
, ${i_rch.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_rch.other_Execution_Engine_ID}" )
, 0\
  .else
, ${i_rch.other_Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_rch.Satisfaction_Id}" )
, 0\
  .else
, ${i_rch.Satisfaction_Id}\
  .end if
\
  .if ( "un-initialized" == "${i_rch.Delegation_Id}" )
, 0\
  .else
, ${i_rch.Delegation_Id}\
  .end if
\
  .if ( "un-initialized" == "${i_rch.Next_provider_Channel_Id}" )
, 0\
  .else
, ${i_rch.Next_provider_Channel_Id}\
  .end if
 );
.end for
.select many i_cins from instances of I_CIN
.for each i_cin in i_cins
INSERT INTO I_CIN VALUES (\
  .if ( "un-initialized" == "${i_cin.Container_ID}" )
 0\
  .else
 ${i_cin.Container_ID}\
  .end if
 );
.end for
.select many i_icqes from instances of I_ICQE
.for each i_icqe in i_icqes
INSERT INTO I_ICQE VALUES (\
  .if ( "un-initialized" == "${i_icqe.Stack_ID}" )
 0\
  .else
 ${i_icqe.Stack_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_icqe.Stack_Frame_ID}" )
, 0\
  .else
, ${i_icqe.Stack_Frame_ID}\
  .end if
\
  .if ( "un-initialized" == "${i_icqe.Execution_Engine_ID}" )
, 0\
  .else
, ${i_icqe.Execution_Engine_ID}\
  .end if
 );
.end for
.print "Interaction"
.select many sq_lss from instances of SQ_LS
.for each sq_ls in sq_lss
INSERT INTO SQ_LS VALUES (\
  .if ( "un-initialized" == "${sq_ls.Part_ID}" )
 0\
  .else
 ${sq_ls.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_ls.Source_Part_ID}" )
, 0\
  .else
, ${sq_ls.Source_Part_ID}\
  .end if
, ''\
, ${sq_ls.Destroyed} );
.end for
.select many sq_cips from instances of SQ_CIP
.for each sq_cip in sq_cips
INSERT INTO SQ_CIP VALUES (\
  .if ( "un-initialized" == "${sq_cip.Part_ID}" )
 0\
  .else
 ${sq_cip.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_cip.Obj_ID}" )
, 0\
  .else
, ${sq_cip.Obj_ID}\
  .end if
, '${sq_cip.Name}', '${sq_cip.InformalClassName}', '${sq_cip.Label}', ''\
, ${sq_cip.isFormal} );
.end for
.select many sq_cops from instances of SQ_COP
.for each sq_cop in sq_cops
INSERT INTO SQ_COP VALUES (\
  .if ( "un-initialized" == "${sq_cop.Part_ID}" )
 0\
  .else
 ${sq_cop.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_cop.Component_Id}" )
, 0\
  .else
, ${sq_cop.Component_Id}\
  .end if
, '${sq_cop.Label}', '${sq_cop.InformalComponentName}', ''\
, ${sq_cop.isFormal} );
.end for
.select many sq_tms from instances of SQ_TM
.for each sq_tm in sq_tms
INSERT INTO SQ_TM VALUES (\
  .if ( "un-initialized" == "${sq_tm.Mark_ID}" )
 0\
  .else
 ${sq_tm.Mark_ID}\
  .end if
, '${sq_tm.Name}'\
  .if ( "un-initialized" == "${sq_tm.Part_ID}" )
, 0\
  .else
, ${sq_tm.Part_ID}\
  .end if
, ''\
 );
.end for
.select many sq_tss from instances of SQ_TS
.for each sq_ts in sq_tss
INSERT INTO SQ_TS VALUES (\
  .if ( "un-initialized" == "${sq_ts.Span_ID}" )
 0\
  .else
 ${sq_ts.Span_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_ts.Mark_ID}" )
, 0\
  .else
, ${sq_ts.Mark_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_ts.Prev_Mark_ID}" )
, 0\
  .else
, ${sq_ts.Prev_Mark_ID}\
  .end if
, '${sq_ts.Name}', ''\
 );
.end for
.select many sq_cps from instances of SQ_CP
.for each sq_cp in sq_cps
INSERT INTO SQ_CP VALUES (\
  .if ( "un-initialized" == "${sq_cp.Part_ID}" )
 0\
  .else
 ${sq_cp.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_cp.Obj_ID}" )
, 0\
  .else
, ${sq_cp.Obj_ID}\
  .end if
, '${sq_cp.Label}', '${sq_cp.InformalName}', ''\
, ${sq_cp.isFormal} );
.end for
.select many sq_ps from instances of SQ_P
.for each sq_p in sq_ps
INSERT INTO SQ_P VALUES (\
  .if ( "un-initialized" == "${sq_p.Part_ID}" )
 0\
  .else
 ${sq_p.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_p.Sequence_Package_ID}" )
, 0\
  .else
, ${sq_p.Sequence_Package_ID}\
  .end if
 );
.end for
.select many sq_eeps from instances of SQ_EEP
.for each sq_eep in sq_eeps
INSERT INTO SQ_EEP VALUES (\
  .if ( "un-initialized" == "${sq_eep.Part_ID}" )
 0\
  .else
 ${sq_eep.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_eep.EE_ID}" )
, 0\
  .else
, ${sq_eep.EE_ID}\
  .end if
, '${sq_eep.Label}', '${sq_eep.InformalName}', ''\
, ${sq_eep.isFormal} );
.end for
.select many sq_fpps from instances of SQ_FPP
.for each sq_fpp in sq_fpps
INSERT INTO SQ_FPP VALUES (\
  .if ( "un-initialized" == "${sq_fpp.Part_ID}" )
 0\
  .else
 ${sq_fpp.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_fpp.FunPack_ID}" )
, 0\
  .else
, ${sq_fpp.FunPack_ID}\
  .end if
, '${sq_fpp.Label}', '${sq_fpp.InformalName}', ''\
, ${sq_fpp.isFormal} );
.end for
.select many sq_cpas from instances of SQ_CPA
.for each sq_cpa in sq_cpas
INSERT INTO SQ_CPA VALUES (\
  .if ( "un-initialized" == "${sq_cpa.Ia_ID}" )
 0\
  .else
 ${sq_cpa.Ia_ID}\
  .end if
, '${sq_cpa.Name}', '${sq_cpa.Type}'\
  .if ( "un-initialized" == "${sq_cpa.Part_ID}" )
, 0\
  .else
, ${sq_cpa.Part_ID}\
  .end if
, ''\
 );
.end for
.select many sq_avs from instances of SQ_AV
.for each sq_av in sq_avs
INSERT INTO SQ_AV VALUES (\
  .if ( "un-initialized" == "${sq_av.Av_ID}" )
 0\
  .else
 ${sq_av.Av_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_av.Obj_ID}" )
, 0\
  .else
, ${sq_av.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_av.Attr_ID}" )
, 0\
  .else
, ${sq_av.Attr_ID}\
  .end if
, '${sq_av.Label}', '${sq_av.Value}', '${sq_av.InformalName}'\
  .if ( "un-initialized" == "${sq_av.Informal_Part_ID}" )
, 0\
  .else
, ${sq_av.Informal_Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_av.Formal_Part_ID}" )
, 0\
  .else
, ${sq_av.Formal_Part_ID}\
  .end if
, ''\
, ${sq_av.isFormal} );
.end for
.select many sq_aps from instances of SQ_AP
.for each sq_ap in sq_aps
INSERT INTO SQ_AP VALUES (\
  .if ( "un-initialized" == "${sq_ap.Part_ID}" )
 0\
  .else
 ${sq_ap.Part_ID}\
  .end if
, '${sq_ap.Name}', ''\
\
  .if ( "un-initialized" == "${sq_ap.LS_Part_ID}" )
, 0\
  .else
, ${sq_ap.LS_Part_ID}\
  .end if
 );
.end for
.select many sq_ias from instances of SQ_IA
.for each sq_ia in sq_ias
INSERT INTO SQ_IA VALUES (\
  .if ( "un-initialized" == "${sq_ia.Ia_ID}" )
 0\
  .else
 ${sq_ia.Ia_ID}\
  .end if
 );
.end for
.select many sq_fas from instances of SQ_FA
.for each sq_fa in sq_fas
INSERT INTO SQ_FA VALUES (\
  .if ( "un-initialized" == "${sq_fa.Ia_ID}" )
 0\
  .else
 ${sq_fa.Ia_ID}\
  .end if
 );
.end for
.select many sq_favs from instances of SQ_FAV
.for each sq_fav in sq_favs
INSERT INTO SQ_FAV VALUES (\
  .if ( "un-initialized" == "${sq_fav.Av_ID}" )
 0\
  .else
 ${sq_fav.Av_ID}\
  .end if
 );
.end for
.select many sq_iavs from instances of SQ_IAV
.for each sq_iav in sq_iavs
INSERT INTO SQ_IAV VALUES (\
  .if ( "un-initialized" == "${sq_iav.Av_ID}" )
 0\
  .else
 ${sq_iav.Av_ID}\
  .end if
 );
.end for
.select many ia_ucps from instances of IA_UCP
.for each ia_ucp in ia_ucps
INSERT INTO IA_UCP VALUES (\
  .if ( "un-initialized" == "${ia_ucp.Part_ID}" )
 0\
  .else
 ${ia_ucp.Part_ID}\
  .end if
, '${ia_ucp.Name}', ''\
 );
.end for
.select many sq_pps from instances of SQ_PP
.for each sq_pp in sq_pps
INSERT INTO SQ_PP VALUES (\
  .if ( "un-initialized" == "${sq_pp.Part_ID}" )
 0\
  .else
 ${sq_pp.Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_pp.Package_ID}" )
, 0\
  .else
, ${sq_pp.Package_ID}\
  .end if
, '${sq_pp.Label}', '${sq_pp.InformalName}', ''\
, ${sq_pp.isFormal} );
.end for
.print "Interface Package"
.select many ip_ips from instances of IP_IP
.for each ip_ip in ip_ips
INSERT INTO IP_IP VALUES (\
  .if ( "un-initialized" == "${ip_ip.Package_ID}" )
 0\
  .else
 ${ip_ip.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${ip_ip.Parent_Package_ID}" )
, 0\
  .else
, ${ip_ip.Parent_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${ip_ip.Direct_Sys_ID}" )
, 0\
  .else
, ${ip_ip.Direct_Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${ip_ip.Sys_ID}" )
, 0\
  .else
, ${ip_ip.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${ip_ip.Component_Id}" )
, 0\
  .else
, ${ip_ip.Component_Id}\
  .end if
\
  .if ( "un-initialized" == "${ip_ip.Component_Package_ID}" )
, 0\
  .else
, ${ip_ip.Component_Package_ID}\
  .end if
, '${ip_ip.Name}', ''\
 );
.end for
.select many ip_ipinips from instances of IP_IPINIP
.for each ip_ipinip in ip_ipinips
INSERT INTO IP_IPINIP VALUES (\
  .if ( "un-initialized" == "${ip_ipinip.Package_ID}" )
 0\
  .else
 ${ip_ipinip.Package_ID}\
  .end if
 );
.end for
.print "Invocation"
.select many act_tfms from instances of ACT_TFM
.for each act_tfm in act_tfms
INSERT INTO ACT_TFM VALUES (\
  .if ( "un-initialized" == "${act_tfm.Statement_ID}" )
 0\
  .else
 ${act_tfm.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_tfm.Tfr_ID}" )
, 0\
  .else
, ${act_tfm.Tfr_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_tfm.Var_ID}" )
, 0\
  .else
, ${act_tfm.Var_ID}\
  .end if
, ${act_tfm.operationNameLineNumber}, ${act_tfm.operationNameColumn}, ${act_tfm.modelClassKeyLettersLineNumber}, ${act_tfm.modelClassKeyLettersColumn} );
.end for
.select many act_brgs from instances of ACT_BRG
.for each act_brg in act_brgs
INSERT INTO ACT_BRG VALUES (\
  .if ( "un-initialized" == "${act_brg.Statement_ID}" )
 0\
  .else
 ${act_brg.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_brg.Brg_ID}" )
, 0\
  .else
, ${act_brg.Brg_ID}\
  .end if
, ${act_brg.bridgeNameLineNumber}, ${act_brg.bridgeNameColumn}, ${act_brg.externalEntityKeyLettersLineNumber}, ${act_brg.externalEntityKeyLettersColumn} );
.end for
.select many act_rets from instances of ACT_RET
.for each act_ret in act_rets
INSERT INTO ACT_RET VALUES (\
  .if ( "un-initialized" == "${act_ret.Statement_ID}" )
 0\
  .else
 ${act_ret.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ret.Value_ID}" )
, 0\
  .else
, ${act_ret.Value_ID}\
  .end if
 );
.end for
.select many act_fncs from instances of ACT_FNC
.for each act_fnc in act_fncs
INSERT INTO ACT_FNC VALUES (\
  .if ( "un-initialized" == "${act_fnc.Statement_ID}" )
 0\
  .else
 ${act_fnc.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_fnc.Sync_ID}" )
, 0\
  .else
, ${act_fnc.Sync_ID}\
  .end if
, ${act_fnc.functionNameLineNumber}, ${act_fnc.functionNameColumn} );
.end for
.select many act_iops from instances of ACT_IOP
.for each act_iop in act_iops
INSERT INTO ACT_IOP VALUES (\
  .if ( "un-initialized" == "${act_iop.Statement_ID}" )
 0\
  .else
 ${act_iop.Statement_ID}\
  .end if
, ${act_iop.opNameLineNumber}, ${act_iop.opNameColumn}, ${act_iop.ownerNameLineNumber}, ${act_iop.ownerNameColumn}\
  .if ( "un-initialized" == "${act_iop.ProvidedOp_Id}" )
, 0\
  .else
, ${act_iop.ProvidedOp_Id}\
  .end if
\
  .if ( "un-initialized" == "${act_iop.RequiredOp_Id}" )
, 0\
  .else
, ${act_iop.RequiredOp_Id}\
  .end if
\
  .if ( "un-initialized" == "${act_iop.Value_ID}" )
, 0\
  .else
, ${act_iop.Value_ID}\
  .end if
 );
.end for
.select many act_sgns from instances of ACT_SGN
.for each act_sgn in act_sgns
INSERT INTO ACT_SGN VALUES (\
  .if ( "un-initialized" == "${act_sgn.Statement_ID}" )
 0\
  .else
 ${act_sgn.Statement_ID}\
  .end if
, ${act_sgn.sigNameLineNumber}, ${act_sgn.sigNameColumn}, ${act_sgn.ownerNameLineNumber}, ${act_sgn.ownerNameColumn}\
  .if ( "un-initialized" == "${act_sgn.ProvidedSig_Id}" )
, 0\
  .else
, ${act_sgn.ProvidedSig_Id}\
  .end if
\
  .if ( "un-initialized" == "${act_sgn.RequiredSig_Id}" )
, 0\
  .else
, ${act_sgn.RequiredSig_Id}\
  .end if
\
  .if ( "un-initialized" == "${act_sgn.Value_ID}" )
, 0\
  .else
, ${act_sgn.Value_ID}\
  .end if
 );
.end for
.print "Message"
.select many msg_ms from instances of MSG_M
.for each msg_m in msg_ms
INSERT INTO MSG_M VALUES (\
  .if ( "un-initialized" == "${msg_m.Msg_ID}" )
 0\
  .else
 ${msg_m.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_m.Receiver_Part_ID}" )
, 0\
  .else
, ${msg_m.Receiver_Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_m.Sender_Part_ID}" )
, 0\
  .else
, ${msg_m.Sender_Part_ID}\
  .end if
, ${msg_m.participatesInCommunication} );
.end for
.select many msg_as from instances of MSG_A
.for each msg_a in msg_as
INSERT INTO MSG_A VALUES (\
  .if ( "un-initialized" == "${msg_a.Arg_ID}" )
 0\
  .else
 ${msg_a.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_a.Informal_Msg_ID}" )
, 0\
  .else
, ${msg_a.Informal_Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_a.Formal_Msg_ID}" )
, 0\
  .else
, ${msg_a.Formal_Msg_ID}\
  .end if
, '${msg_a.Label}', '${msg_a.Value}', '${msg_a.InformalName}', ''\
, ${msg_a.isFormal} );
.end for
.select many msg_os from instances of MSG_O
.for each msg_o in msg_os
INSERT INTO MSG_O VALUES (\
  .if ( "un-initialized" == "${msg_o.Msg_ID}" )
 0\
  .else
 ${msg_o.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_o.Tfr_ID}" )
, 0\
  .else
, ${msg_o.Tfr_ID}\
  .end if
 );
.end for
.select many msg_bs from instances of MSG_B
.for each msg_b in msg_bs
INSERT INTO MSG_B VALUES (\
  .if ( "un-initialized" == "${msg_b.Msg_ID}" )
 0\
  .else
 ${msg_b.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_b.Brg_ID}" )
, 0\
  .else
, ${msg_b.Brg_ID}\
  .end if
 );
.end for
.select many msg_es from instances of MSG_E
.for each msg_e in msg_es
INSERT INTO MSG_E VALUES (\
  .if ( "un-initialized" == "${msg_e.Msg_ID}" )
 0\
  .else
 ${msg_e.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_e.SMevt_ID}" )
, 0\
  .else
, ${msg_e.SMevt_ID}\
  .end if
 );
.end for
.select many msg_fs from instances of MSG_F
.for each msg_f in msg_fs
INSERT INTO MSG_F VALUES (\
  .if ( "un-initialized" == "${msg_f.Msg_ID}" )
 0\
  .else
 ${msg_f.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_f.Sync_ID}" )
, 0\
  .else
, ${msg_f.Sync_ID}\
  .end if
 );
.end for
.select many msg_bas from instances of MSG_BA
.for each msg_ba in msg_bas
INSERT INTO MSG_BA VALUES (\
  .if ( "un-initialized" == "${msg_ba.Arg_ID}" )
 0\
  .else
 ${msg_ba.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_ba.BParm_ID}" )
, 0\
  .else
, ${msg_ba.BParm_ID}\
  .end if
 );
.end for
.select many msg_oas from instances of MSG_OA
.for each msg_oa in msg_oas
INSERT INTO MSG_OA VALUES (\
  .if ( "un-initialized" == "${msg_oa.Arg_ID}" )
 0\
  .else
 ${msg_oa.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_oa.TParm_ID}" )
, 0\
  .else
, ${msg_oa.TParm_ID}\
  .end if
 );
.end for
.select many msg_fas from instances of MSG_FA
.for each msg_fa in msg_fas
INSERT INTO MSG_FA VALUES (\
  .if ( "un-initialized" == "${msg_fa.Arg_ID}" )
 0\
  .else
 ${msg_fa.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_fa.SParm_ID}" )
, 0\
  .else
, ${msg_fa.SParm_ID}\
  .end if
 );
.end for
.select many msg_eas from instances of MSG_EA
.for each msg_ea in msg_eas
INSERT INTO MSG_EA VALUES (\
  .if ( "un-initialized" == "${msg_ea.Arg_ID}" )
 0\
  .else
 ${msg_ea.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_ea.SM_ID}" )
, 0\
  .else
, ${msg_ea.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_ea.SMedi_ID}" )
, 0\
  .else
, ${msg_ea.SMedi_ID}\
  .end if
 );
.end for
.select many msg_rs from instances of MSG_R
.for each msg_r in msg_rs
INSERT INTO MSG_R VALUES (\
  .if ( "un-initialized" == "${msg_r.Msg_ID}" )
 0\
  .else
 ${msg_r.Msg_ID}\
  .end if
, '${msg_r.Name}', ''\
, '${msg_r.GuardCondition}', '${msg_r.ResultTarget}', '${msg_r.ReturnValue}', '${msg_r.SequenceNumb}' );
.end for
.select many msg_sms from instances of MSG_SM
.for each msg_sm in msg_sms
INSERT INTO MSG_SM VALUES (\
  .if ( "un-initialized" == "${msg_sm.Msg_ID}" )
 0\
  .else
 ${msg_sm.Msg_ID}\
  .end if
, '${msg_sm.InformalName}', ''\
, '${msg_sm.GuardCondition}', '${msg_sm.ResultTarget}', '${msg_sm.ReturnValue}', ${msg_sm.isFormal}, '${msg_sm.Label}', '${msg_sm.SequenceNumb}' );
.end for
.select many msg_ams from instances of MSG_AM
.for each msg_am in msg_ams
INSERT INTO MSG_AM VALUES (\
  .if ( "un-initialized" == "${msg_am.Msg_ID}" )
 0\
  .else
 ${msg_am.Msg_ID}\
  .end if
, '${msg_am.InformalName}', ''\
, '${msg_am.GuardCondition}', '${msg_am.DurationObservation}', '${msg_am.DurationConstraint}', ${msg_am.isFormal}, '${msg_am.Label}', '${msg_am.SequenceNumb}' );
.end for
.select many msg_isms from instances of MSG_ISM
.for each msg_ism in msg_isms
INSERT INTO MSG_ISM VALUES (\
  .if ( "un-initialized" == "${msg_ism.Msg_ID}" )
 0\
  .else
 ${msg_ism.Msg_ID}\
  .end if
 );
.end for
.select many msg_iams from instances of MSG_IAM
.for each msg_iam in msg_iams
INSERT INTO MSG_IAM VALUES (\
  .if ( "un-initialized" == "${msg_iam.Msg_ID}" )
 0\
  .else
 ${msg_iam.Msg_ID}\
  .end if
 );
.end for
.select many msg_ias from instances of MSG_IA
.for each msg_ia in msg_ias
INSERT INTO MSG_IA VALUES (\
  .if ( "un-initialized" == "${msg_ia.Arg_ID}" )
 0\
  .else
 ${msg_ia.Arg_ID}\
  .end if
 );
.end for
.select many msg_sigs from instances of MSG_SIG
.for each msg_sig in msg_sigs
INSERT INTO MSG_SIG VALUES (\
  .if ( "un-initialized" == "${msg_sig.Msg_ID}" )
 0\
  .else
 ${msg_sig.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_sig.Id}" )
, 0\
  .else
, ${msg_sig.Id}\
  .end if
 );
.end for
.select many msg_iops from instances of MSG_IOP
.for each msg_iop in msg_iops
INSERT INTO MSG_IOP VALUES (\
  .if ( "un-initialized" == "${msg_iop.Msg_ID}" )
 0\
  .else
 ${msg_iop.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_iop.Id}" )
, 0\
  .else
, ${msg_iop.Id}\
  .end if
 );
.end for
.select many msg_epas from instances of MSG_EPA
.for each msg_epa in msg_epas
INSERT INTO MSG_EPA VALUES (\
  .if ( "un-initialized" == "${msg_epa.Arg_ID}" )
 0\
  .else
 ${msg_epa.Arg_ID}\
  .end if
\
  .if ( "un-initialized" == "${msg_epa.PP_Id}" )
, 0\
  .else
, ${msg_epa.PP_Id}\
  .end if
 );
.end for
.print "Packageable Element"
.select many pe_pes from instances of PE_PE
.for each pe_pe in pe_pes
INSERT INTO PE_PE VALUES (\
  .if ( "un-initialized" == "${pe_pe.Element_ID}" )
 0\
  .else
 ${pe_pe.Element_ID}\
  .end if
, ${pe_pe.Visibility}\
  .if ( "un-initialized" == "${pe_pe.Package_ID}" )
, 0\
  .else
, ${pe_pe.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${pe_pe.Component_ID}" )
, 0\
  .else
, ${pe_pe.Component_ID}\
  .end if
, ${pe_pe.type} );
.end for
.select many pe_viss from instances of PE_VIS
.for each pe_vis in pe_viss
INSERT INTO PE_VIS VALUES (\
  .if ( "un-initialized" == "${pe_vis.Visibility_ID}" )
 0\
  .else
 ${pe_vis.Visibility_ID}\
  .end if
\
  .if ( "un-initialized" == "${pe_vis.Element_ID}" )
, 0\
  .else
, ${pe_vis.Element_ID}\
  .end if
\
  .if ( "un-initialized" == "${pe_vis.Package_ID}" )
, 0\
  .else
, ${pe_vis.Package_ID}\
  .end if
, '${pe_vis.Name}', ${pe_vis.Type} );
.end for
.select many pe_cvss from instances of PE_CVS
.for each pe_cvs in pe_cvss
INSERT INTO PE_CVS VALUES (\
  .if ( "un-initialized" == "${pe_cvs.Visibility_ID}" )
 0\
  .else
 ${pe_cvs.Visibility_ID}\
  .end if
\
  .if ( "un-initialized" == "${pe_cvs.Element_ID}" )
, 0\
  .else
, ${pe_cvs.Element_ID}\
  .end if
\
  .if ( "un-initialized" == "${pe_cvs.Id}" )
, 0\
  .else
, ${pe_cvs.Id}\
  .end if
, '${pe_cvs.Name}', ${pe_cvs.Type} );
.end for
.select many pe_srss from instances of PE_SRS
.for each pe_srs in pe_srss
INSERT INTO PE_SRS VALUES (\
  .if ( "un-initialized" == "${pe_srs.Package_ID}" )
 0\
  .else
 ${pe_srs.Package_ID}\
  .end if
, '${pe_srs.Name}', ${pe_srs.Type} );
.end for
.select many pe_crss from instances of PE_CRS
.for each pe_crs in pe_crss
INSERT INTO PE_CRS VALUES (\
  .if ( "un-initialized" == "${pe_crs.Id}" )
 0\
  .else
 ${pe_crs.Id}\
  .end if
, '${pe_crs.Name}', ${pe_crs.Type} );
.end for
.print "Persistence Associations"
.select many pa_sics from instances of PA_SIC
.for each pa_sic in pa_sics
INSERT INTO PA_SIC VALUES (\
  .if ( "un-initialized" == "${pa_sic.Component_Id}" )
 0\
  .else
 ${pa_sic.Component_Id}\
  .end if
\
  .if ( "un-initialized" == "${pa_sic.Satisfaction_Id}" )
, 0\
  .else
, ${pa_sic.Satisfaction_Id}\
  .end if
 );
.end for
.select many pa_sicps from instances of PA_SICP
.for each pa_sicp in pa_sicps
INSERT INTO PA_SICP VALUES (\
  .if ( "un-initialized" == "${pa_sicp.ComponentPackage_ID}" )
 0\
  .else
 ${pa_sicp.ComponentPackage_ID}\
  .end if
\
  .if ( "un-initialized" == "${pa_sicp.Satisfaction_Id}" )
, 0\
  .else
, ${pa_sicp.Satisfaction_Id}\
  .end if
 );
.end for
.select many pa_dics from instances of PA_DIC
.for each pa_dic in pa_dics
INSERT INTO PA_DIC VALUES (\
  .if ( "un-initialized" == "${pa_dic.Component_Id}" )
 0\
  .else
 ${pa_dic.Component_Id}\
  .end if
\
  .if ( "un-initialized" == "${pa_dic.Delegation_Id}" )
, 0\
  .else
, ${pa_dic.Delegation_Id}\
  .end if
 );
.end for
.print "Query"
.select many squ_qs from instances of SQU_Q
.for each squ_q in squ_qs
INSERT INTO SQU_Q VALUES (\
  .if ( "un-initialized" == "${squ_q.Id}" )
 0\
  .else
 ${squ_q.Id}\
  .end if
\
  .if ( "un-initialized" == "${squ_q.Engine_Id}" )
, 0\
  .else
, ${squ_q.Engine_Id}\
  .end if
, '${squ_q.pattern}', ${squ_q.regEx}, ${squ_q.caseSensitive}, ${squ_q.scope} );
.end for
.select many squ_ds from instances of SQU_D
.for each squ_d in squ_ds
INSERT INTO SQU_D VALUES (\
  .if ( "un-initialized" == "${squ_d.Id}" )
 0\
  .else
 ${squ_d.Id}\
  .end if
 );
.end for
.select many squ_rs from instances of SQU_R
.for each squ_r in squ_rs
INSERT INTO SQU_R VALUES (\
  .if ( "un-initialized" == "${squ_r.Id}" )
 0\
  .else
 ${squ_r.Id}\
  .end if
 );
.end for
.select many squ_des from instances of SQU_DE
.for each squ_de in squ_des
INSERT INTO SQU_DE VALUES (\
  .if ( "un-initialized" == "${squ_de.Id}" )
 0\
  .else
 ${squ_de.Id}\
  .end if
 );
.end for
.select many squ_as from instances of SQU_A
.for each squ_a in squ_as
INSERT INTO SQU_A VALUES (\
  .if ( "un-initialized" == "${squ_a.Id}" )
 0\
  .else
 ${squ_a.Id}\
  .end if
 );
.end for
.print "Relate And Unrelate"
.select many act_rels from instances of ACT_REL
.for each act_rel in act_rels
INSERT INTO ACT_REL VALUES (\
  .if ( "un-initialized" == "${act_rel.Statement_ID}" )
 0\
  .else
 ${act_rel.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_rel.One_Side_Var_ID}" )
, 0\
  .else
, ${act_rel.One_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_rel.Other_Side_Var_ID}" )
, 0\
  .else
, ${act_rel.Other_Side_Var_ID}\
  .end if
, '${act_rel.relationship_phrase}'\
  .if ( "un-initialized" == "${act_rel.Rel_ID}" )
, 0\
  .else
, ${act_rel.Rel_ID}\
  .end if
, ${act_rel.associationNumberLineNumber}, ${act_rel.associationNumberColumn}, ${act_rel.associationPhraseLineNumber}, ${act_rel.associationPhraseColumn} );
.end for
.select many act_unrs from instances of ACT_UNR
.for each act_unr in act_unrs
INSERT INTO ACT_UNR VALUES (\
  .if ( "un-initialized" == "${act_unr.Statement_ID}" )
 0\
  .else
 ${act_unr.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_unr.One_Side_Var_ID}" )
, 0\
  .else
, ${act_unr.One_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_unr.Other_Side_Var_ID}" )
, 0\
  .else
, ${act_unr.Other_Side_Var_ID}\
  .end if
, '${act_unr.relationship_phrase}'\
  .if ( "un-initialized" == "${act_unr.Rel_ID}" )
, 0\
  .else
, ${act_unr.Rel_ID}\
  .end if
, ${act_unr.associationNumberLineNumber}, ${act_unr.associationNumberColumn}, ${act_unr.associationPhraseLineNumber}, ${act_unr.associationPhraseColumn} );
.end for
.select many act_rus from instances of ACT_RU
.for each act_ru in act_rus
INSERT INTO ACT_RU VALUES (\
  .if ( "un-initialized" == "${act_ru.Statement_ID}" )
 0\
  .else
 ${act_ru.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ru.One_Side_Var_ID}" )
, 0\
  .else
, ${act_ru.One_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ru.Other_Side_Var_ID}" )
, 0\
  .else
, ${act_ru.Other_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ru.Associative_Var_ID}" )
, 0\
  .else
, ${act_ru.Associative_Var_ID}\
  .end if
, '${act_ru.relationship_phrase}'\
  .if ( "un-initialized" == "${act_ru.Rel_ID}" )
, 0\
  .else
, ${act_ru.Rel_ID}\
  .end if
, ${act_ru.associationNumberLineNumber}, ${act_ru.associationNumberColumn}, ${act_ru.associationPhraseLineNumber}, ${act_ru.associationPhraseColumn} );
.end for
.select many act_urus from instances of ACT_URU
.for each act_uru in act_urus
INSERT INTO ACT_URU VALUES (\
  .if ( "un-initialized" == "${act_uru.Statement_ID}" )
 0\
  .else
 ${act_uru.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_uru.One_Side_Var_ID}" )
, 0\
  .else
, ${act_uru.One_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_uru.Other_Side_Var_ID}" )
, 0\
  .else
, ${act_uru.Other_Side_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_uru.Associative_Var_ID}" )
, 0\
  .else
, ${act_uru.Associative_Var_ID}\
  .end if
, '${act_uru.relationship_phrase}'\
  .if ( "un-initialized" == "${act_uru.Rel_ID}" )
, 0\
  .else
, ${act_uru.Rel_ID}\
  .end if
, ${act_uru.associationNumberLineNumber}, ${act_uru.associationNumberColumn}, ${act_uru.associationPhraseLineNumber}, ${act_uru.associationPhraseColumn} );
.end for
.print "Result"
.select many sr_srs from instances of SR_SR
.for each sr_sr in sr_srs
INSERT INTO SR_SR VALUES (\
  .if ( "un-initialized" == "${sr_sr.Id}" )
 0\
  .else
 ${sr_sr.Id}\
  .end if
\
  .if ( "un-initialized" == "${sr_sr.Engine_Id}" )
, 0\
  .else
, ${sr_sr.Engine_Id}\
  .end if
\
  .if ( "un-initialized" == "${sr_sr.MatchedParticipant_Id}" )
, 0\
  .else
, ${sr_sr.MatchedParticipant_Id}\
  .end if
 );
.end for
.select many sr_ms from instances of SR_M
.for each sr_m in sr_ms
INSERT INTO SR_M VALUES (\
  .if ( "un-initialized" == "${sr_m.Id}" )
 0\
  .else
 ${sr_m.Id}\
  .end if
\
  .if ( "un-initialized" == "${sr_m.Result_Id}" )
, 0\
  .else
, ${sr_m.Result_Id}\
  .end if
 );
.end for
.select many sr_cms from instances of SR_CM
.for each sr_cm in sr_cms
INSERT INTO SR_CM VALUES (\
  .if ( "un-initialized" == "${sr_cm.Id}" )
 0\
  .else
 ${sr_cm.Id}\
  .end if
, ${sr_cm.startPosition}, ${sr_cm.matchLength} );
.end for
.select many sr_nms from instances of SR_NM
.for each sr_nm in sr_nms
INSERT INTO SR_NM VALUES (\
  .if ( "un-initialized" == "${sr_nm.Id}" )
 0\
  .else
 ${sr_nm.Id}\
  .end if
, ${sr_nm.Unnamed Attribute} );
.end for
.select many sr_cmrs from instances of SR_CMR
.for each sr_cmr in sr_cmrs
INSERT INTO SR_CMR VALUES (\
  .if ( "un-initialized" == "${sr_cmr.Id}" )
 0\
  .else
 ${sr_cmr.Id}\
  .end if
, ${sr_cmr.startPosition}, ${sr_cmr.length} );
.end for
.print "Search"
.print "Sequence"
.select many sq_ss from instances of SQ_S
.for each sq_s in sq_ss
INSERT INTO SQ_S VALUES (\
  .if ( "un-initialized" == "${sq_s.Package_ID}" )
 0\
  .else
 ${sq_s.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_s.Dom_ID}" )
, 0\
  .else
, ${sq_s.Dom_ID}\
  .end if
, '${sq_s.Name}'\
  .if ( "un-initialized" == "${sq_s.SS_ID}" )
, 0\
  .else
, ${sq_s.SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_s.Prev_Package_ID}" )
, 0\
  .else
, ${sq_s.Prev_Package_ID}\
  .end if
, ''\
\
  .if ( "un-initialized" == "${sq_s.Sys_ID}" )
, 0\
  .else
, ${sq_s.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_s.Component_Package_ID}" )
, 0\
  .else
, ${sq_s.Component_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_s.Component_Id}" )
, 0\
  .else
, ${sq_s.Component_Id}\
  .end if
 );
.end for
.select many sq_siss from instances of SQ_SIS
.for each sq_sis in sq_siss
INSERT INTO SQ_SIS VALUES (\
  .if ( "un-initialized" == "${sq_sis.Package_ID}" )
 0\
  .else
 ${sq_sis.Package_ID}\
  .end if
 );
.end for
.select many sq_miss from instances of SQ_MIS
.for each sq_mis in sq_miss
INSERT INTO SQ_MIS VALUES (\
  .if ( "un-initialized" == "${sq_mis.Msg_ID}" )
 0\
  .else
 ${sq_mis.Msg_ID}\
  .end if
\
  .if ( "un-initialized" == "${sq_mis.Package_ID}" )
, 0\
  .else
, ${sq_mis.Package_ID}\
  .end if
 );
.end for
.print "Signal Provisions and Requirements"
.select many spr_reps from instances of SPR_REP
.for each spr_rep in spr_reps
INSERT INTO SPR_REP VALUES (\
  .if ( "un-initialized" == "${spr_rep.Id}" )
 0\
  .else
 ${spr_rep.Id}\
  .end if
\
  .if ( "un-initialized" == "${spr_rep.ExecutableProperty_Id}" )
, 0\
  .else
, ${spr_rep.ExecutableProperty_Id}\
  .end if
\
  .if ( "un-initialized" == "${spr_rep.Requirement_Id}" )
, 0\
  .else
, ${spr_rep.Requirement_Id}\
  .end if
 );
.end for
.select many spr_peps from instances of SPR_PEP
.for each spr_pep in spr_peps
INSERT INTO SPR_PEP VALUES (\
  .if ( "un-initialized" == "${spr_pep.Id}" )
 0\
  .else
 ${spr_pep.Id}\
  .end if
\
  .if ( "un-initialized" == "${spr_pep.ExecutableProperty_Id}" )
, 0\
  .else
, ${spr_pep.ExecutableProperty_Id}\
  .end if
\
  .if ( "un-initialized" == "${spr_pep.Provision_Id}" )
, 0\
  .else
, ${spr_pep.Provision_Id}\
  .end if
 );
.end for
.select many spr_ros from instances of SPR_RO
.for each spr_ro in spr_ros
INSERT INTO SPR_RO VALUES (\
  .if ( "un-initialized" == "${spr_ro.Id}" )
 0\
  .else
 ${spr_ro.Id}\
  .end if
, '${spr_ro.Name}', ''\
, ''\
, ${spr_ro.Suc_Pars} );
.end for
.select many spr_rss from instances of SPR_RS
.for each spr_rs in spr_rss
INSERT INTO SPR_RS VALUES (\
  .if ( "un-initialized" == "${spr_rs.Id}" )
 0\
  .else
 ${spr_rs.Id}\
  .end if
, '${spr_rs.Name}', ''\
, ''\
, ${spr_rs.Suc_Pars} );
.end for
.select many spr_pos from instances of SPR_PO
.for each spr_po in spr_pos
INSERT INTO SPR_PO VALUES (\
  .if ( "un-initialized" == "${spr_po.Id}" )
 0\
  .else
 ${spr_po.Id}\
  .end if
, '${spr_po.Name}', ''\
, ''\
, ${spr_po.Suc_Pars} );
.end for
.select many spr_pss from instances of SPR_PS
.for each spr_ps in spr_pss
INSERT INTO SPR_PS VALUES (\
  .if ( "un-initialized" == "${spr_ps.Id}" )
 0\
  .else
 ${spr_ps.Id}\
  .end if
, '${spr_ps.Name}', ''\
, ''\
, ${spr_ps.Suc_Pars} );
.end for
.print "State Machine"
.select many sm_sms from instances of SM_SM
.for each sm_sm in sm_sms
INSERT INTO SM_SM VALUES (\
  .if ( "un-initialized" == "${sm_sm.SM_ID}" )
 0\
  .else
 ${sm_sm.SM_ID}\
  .end if
, ''\
, ${sm_sm.Config_ID} );
.end for
.select many sm_states from instances of SM_STATE
.for each sm_state in sm_states
INSERT INTO SM_STATE VALUES (\
  .if ( "un-initialized" == "${sm_state.SMstt_ID}" )
 0\
  .else
 ${sm_state.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_state.SM_ID}" )
, 0\
  .else
, ${sm_state.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_state.SMspd_ID}" )
, 0\
  .else
, ${sm_state.SMspd_ID}\
  .end if
, '${sm_state.Name}', ${sm_state.Numb}, ${sm_state.Final} );
.end for
.select many sm_evts from instances of SM_EVT
.for each sm_evt in sm_evts
INSERT INTO SM_EVT VALUES (\
  .if ( "un-initialized" == "${sm_evt.SMevt_ID}" )
 0\
  .else
 ${sm_evt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_evt.SM_ID}" )
, 0\
  .else
, ${sm_evt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_evt.SMspd_ID}" )
, 0\
  .else
, ${sm_evt.SMspd_ID}\
  .end if
, ${sm_evt.Numb}, '${sm_evt.Mning}', ${sm_evt.Is_Lbl_U}, '${sm_evt.Unq_Lbl}', '${sm_evt.Drv_Lbl}', ''\
 );
.end for
.select many sm_semes from instances of SM_SEME
.for each sm_seme in sm_semes
INSERT INTO SM_SEME VALUES (\
  .if ( "un-initialized" == "${sm_seme.SMstt_ID}" )
 0\
  .else
 ${sm_seme.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_seme.SMevt_ID}" )
, 0\
  .else
, ${sm_seme.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_seme.SM_ID}" )
, 0\
  .else
, ${sm_seme.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_seme.SMspd_ID}" )
, 0\
  .else
, ${sm_seme.SMspd_ID}\
  .end if
 );
.end for
.select many sm_nstxns from instances of SM_NSTXN
.for each sm_nstxn in sm_nstxns
INSERT INTO SM_NSTXN VALUES (\
  .if ( "un-initialized" == "${sm_nstxn.Trans_ID}" )
 0\
  .else
 ${sm_nstxn.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nstxn.SM_ID}" )
, 0\
  .else
, ${sm_nstxn.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nstxn.SMstt_ID}" )
, 0\
  .else
, ${sm_nstxn.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nstxn.SMevt_ID}" )
, 0\
  .else
, ${sm_nstxn.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nstxn.SMspd_ID}" )
, 0\
  .else
, ${sm_nstxn.SMspd_ID}\
  .end if
 );
.end for
.select many sm_eigns from instances of SM_EIGN
.for each sm_eign in sm_eigns
INSERT INTO SM_EIGN VALUES (\
  .if ( "un-initialized" == "${sm_eign.SMstt_ID}" )
 0\
  .else
 ${sm_eign.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_eign.SMevt_ID}" )
, 0\
  .else
, ${sm_eign.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_eign.SM_ID}" )
, 0\
  .else
, ${sm_eign.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_eign.SMspd_ID}" )
, 0\
  .else
, ${sm_eign.SMspd_ID}\
  .end if
, ''\
 );
.end for
.select many sm_chs from instances of SM_CH
.for each sm_ch in sm_chs
INSERT INTO SM_CH VALUES (\
  .if ( "un-initialized" == "${sm_ch.SMstt_ID}" )
 0\
  .else
 ${sm_ch.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_ch.SMevt_ID}" )
, 0\
  .else
, ${sm_ch.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_ch.SM_ID}" )
, 0\
  .else
, ${sm_ch.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_ch.SMspd_ID}" )
, 0\
  .else
, ${sm_ch.SMspd_ID}\
  .end if
, ''\
 );
.end for
.select many sm_txns from instances of SM_TXN
.for each sm_txn in sm_txns
INSERT INTO SM_TXN VALUES (\
  .if ( "un-initialized" == "${sm_txn.Trans_ID}" )
 0\
  .else
 ${sm_txn.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_txn.SM_ID}" )
, 0\
  .else
, ${sm_txn.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_txn.SMstt_ID}" )
, 0\
  .else
, ${sm_txn.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_txn.SMspd_ID}" )
, 0\
  .else
, ${sm_txn.SMspd_ID}\
  .end if
 );
.end for
.select many sm_netxns from instances of SM_NETXN
.for each sm_netxn in sm_netxns
INSERT INTO SM_NETXN VALUES (\
  .if ( "un-initialized" == "${sm_netxn.Trans_ID}" )
 0\
  .else
 ${sm_netxn.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_netxn.SM_ID}" )
, 0\
  .else
, ${sm_netxn.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_netxn.SMstt_ID}" )
, 0\
  .else
, ${sm_netxn.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_netxn.SMspd_ID}" )
, 0\
  .else
, ${sm_netxn.SMspd_ID}\
  .end if
 );
.end for
.select many sm_crtxns from instances of SM_CRTXN
.for each sm_crtxn in sm_crtxns
INSERT INTO SM_CRTXN VALUES (\
  .if ( "un-initialized" == "${sm_crtxn.Trans_ID}" )
 0\
  .else
 ${sm_crtxn.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_crtxn.SM_ID}" )
, 0\
  .else
, ${sm_crtxn.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_crtxn.SMevt_ID}" )
, 0\
  .else
, ${sm_crtxn.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_crtxn.SMspd_ID}" )
, 0\
  .else
, ${sm_crtxn.SMspd_ID}\
  .end if
 );
.end for
.select many sm_moores from instances of SM_MOORE
.for each sm_moore in sm_moores
INSERT INTO SM_MOORE VALUES (\
  .if ( "un-initialized" == "${sm_moore.SM_ID}" )
 0\
  .else
 ${sm_moore.SM_ID}\
  .end if
 );
.end for
.select many sm_mealys from instances of SM_MEALY
.for each sm_mealy in sm_mealys
INSERT INTO SM_MEALY VALUES (\
  .if ( "un-initialized" == "${sm_mealy.SM_ID}" )
 0\
  .else
 ${sm_mealy.SM_ID}\
  .end if
 );
.end for
.select many sm_moahs from instances of SM_MOAH
.for each sm_moah in sm_moahs
INSERT INTO SM_MOAH VALUES (\
  .if ( "un-initialized" == "${sm_moah.Act_ID}" )
 0\
  .else
 ${sm_moah.Act_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_moah.SM_ID}" )
, 0\
  .else
, ${sm_moah.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_moah.SMstt_ID}" )
, 0\
  .else
, ${sm_moah.SMstt_ID}\
  .end if
 );
.end for
.select many sm_meahs from instances of SM_MEAH
.for each sm_meah in sm_meahs
INSERT INTO SM_MEAH VALUES (\
  .if ( "un-initialized" == "${sm_meah.Act_ID}" )
 0\
  .else
 ${sm_meah.Act_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_meah.SM_ID}" )
, 0\
  .else
, ${sm_meah.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_meah.Trans_ID}" )
, 0\
  .else
, ${sm_meah.Trans_ID}\
  .end if
 );
.end for
.select many sm_ahs from instances of SM_AH
.for each sm_ah in sm_ahs
INSERT INTO SM_AH VALUES (\
  .if ( "un-initialized" == "${sm_ah.Act_ID}" )
 0\
  .else
 ${sm_ah.Act_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_ah.SM_ID}" )
, 0\
  .else
, ${sm_ah.SM_ID}\
  .end if
 );
.end for
.select many sm_acts from instances of SM_ACT
.for each sm_act in sm_acts
INSERT INTO SM_ACT VALUES (\
  .if ( "un-initialized" == "${sm_act.Act_ID}" )
 0\
  .else
 ${sm_act.Act_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_act.SM_ID}" )
, 0\
  .else
, ${sm_act.SM_ID}\
  .end if
, ${sm_act.Suc_Pars}, ''\
, ''\
 );
.end for
.select many sm_evtdis from instances of SM_EVTDI
.for each sm_evtdi in sm_evtdis
INSERT INTO SM_EVTDI VALUES (\
  .if ( "un-initialized" == "${sm_evtdi.SMedi_ID}" )
 0\
  .else
 ${sm_evtdi.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_evtdi.SM_ID}" )
, 0\
  .else
, ${sm_evtdi.SM_ID}\
  .end if
, '${sm_evtdi.Name}', ''\
\
  .if ( "un-initialized" == "${sm_evtdi.DT_ID}" )
, 0\
  .else
, ${sm_evtdi.DT_ID}\
  .end if
, '${sm_evtdi.Dimensions}'\
  .if ( "un-initialized" == "${sm_evtdi.SMevt_ID}" )
, 0\
  .else
, ${sm_evtdi.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_evtdi.Previous_SMedi_ID}" )
, 0\
  .else
, ${sm_evtdi.Previous_SMedi_ID}\
  .end if
 );
.end for
.select many sm_supdts from instances of SM_SUPDT
.for each sm_supdt in sm_supdts
INSERT INTO SM_SUPDT VALUES (\
  .if ( "un-initialized" == "${sm_supdt.SMspd_ID}" )
 0\
  .else
 ${sm_supdt.SMspd_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_supdt.SM_ID}" )
, 0\
  .else
, ${sm_supdt.SM_ID}\
  .end if
, ${sm_supdt.Non_Local} );
.end for
.select many sm_sdis from instances of SM_SDI
.for each sm_sdi in sm_sdis
INSERT INTO SM_SDI VALUES (\
  .if ( "un-initialized" == "${sm_sdi.SMedi_ID}" )
 0\
  .else
 ${sm_sdi.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sdi.SMspd_ID}" )
, 0\
  .else
, ${sm_sdi.SMspd_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sdi.SM_ID}" )
, 0\
  .else
, ${sm_sdi.SM_ID}\
  .end if
 );
.end for
.select many sm_isms from instances of SM_ISM
.for each sm_ism in sm_isms
INSERT INTO SM_ISM VALUES (\
  .if ( "un-initialized" == "${sm_ism.SM_ID}" )
 0\
  .else
 ${sm_ism.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_ism.Obj_ID}" )
, 0\
  .else
, ${sm_ism.Obj_ID}\
  .end if
 );
.end for
.select many sm_asms from instances of SM_ASM
.for each sm_asm in sm_asms
INSERT INTO SM_ASM VALUES (\
  .if ( "un-initialized" == "${sm_asm.SM_ID}" )
 0\
  .else
 ${sm_asm.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_asm.Obj_ID}" )
, 0\
  .else
, ${sm_asm.Obj_ID}\
  .end if
 );
.end for
.select many sm_pevts from instances of SM_PEVT
.for each sm_pevt in sm_pevts
INSERT INTO SM_PEVT VALUES (\
  .if ( "un-initialized" == "${sm_pevt.SMevt_ID}" )
 0\
  .else
 ${sm_pevt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_pevt.SM_ID}" )
, 0\
  .else
, ${sm_pevt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_pevt.SMspd_ID}" )
, 0\
  .else
, ${sm_pevt.SMspd_ID}\
  .end if
, '${sm_pevt.localClassName}', '${sm_pevt.localClassKL}', '${sm_pevt.localEventMning}' );
.end for
.select many sm_sevts from instances of SM_SEVT
.for each sm_sevt in sm_sevts
INSERT INTO SM_SEVT VALUES (\
  .if ( "un-initialized" == "${sm_sevt.SMevt_ID}" )
 0\
  .else
 ${sm_sevt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sevt.SM_ID}" )
, 0\
  .else
, ${sm_sevt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sevt.SMspd_ID}" )
, 0\
  .else
, ${sm_sevt.SMspd_ID}\
  .end if
 );
.end for
.select many sm_nlevts from instances of SM_NLEVT
.for each sm_nlevt in sm_nlevts
INSERT INTO SM_NLEVT VALUES (\
  .if ( "un-initialized" == "${sm_nlevt.SMevt_ID}" )
 0\
  .else
 ${sm_nlevt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nlevt.SM_ID}" )
, 0\
  .else
, ${sm_nlevt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nlevt.SMspd_ID}" )
, 0\
  .else
, ${sm_nlevt.SMspd_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nlevt.polySMevt_ID}" )
, 0\
  .else
, ${sm_nlevt.polySMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nlevt.polySM_ID}" )
, 0\
  .else
, ${sm_nlevt.polySM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_nlevt.polySMspd_ID}" )
, 0\
  .else
, ${sm_nlevt.polySMspd_ID}\
  .end if
, '${sm_nlevt.Local_Meaning}' );
.end for
.select many sm_levts from instances of SM_LEVT
.for each sm_levt in sm_levts
INSERT INTO SM_LEVT VALUES (\
  .if ( "un-initialized" == "${sm_levt.SMevt_ID}" )
 0\
  .else
 ${sm_levt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_levt.SM_ID}" )
, 0\
  .else
, ${sm_levt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_levt.SMspd_ID}" )
, 0\
  .else
, ${sm_levt.SMspd_ID}\
  .end if
 );
.end for
.select many sm_sgevts from instances of SM_SGEVT
.for each sm_sgevt in sm_sgevts
INSERT INTO SM_SGEVT VALUES (\
  .if ( "un-initialized" == "${sm_sgevt.SMevt_ID}" )
 0\
  .else
 ${sm_sgevt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sgevt.SM_ID}" )
, 0\
  .else
, ${sm_sgevt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sgevt.SMspd_ID}" )
, 0\
  .else
, ${sm_sgevt.SMspd_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_sgevt.Provided_Signal_Id}" )
, 0\
  .else
, ${sm_sgevt.Provided_Signal_Id}\
  .end if
\
  .if ( "un-initialized" == "${sm_sgevt.Required_Signal_Id}" )
, 0\
  .else
, ${sm_sgevt.Required_Signal_Id}\
  .end if
, '${sm_sgevt.signal_name}' );
.end for
.select many sm_tahs from instances of SM_TAH
.for each sm_tah in sm_tahs
INSERT INTO SM_TAH VALUES (\
  .if ( "un-initialized" == "${sm_tah.Act_ID}" )
 0\
  .else
 ${sm_tah.Act_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_tah.SM_ID}" )
, 0\
  .else
, ${sm_tah.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${sm_tah.Trans_ID}" )
, 0\
  .else
, ${sm_tah.Trans_ID}\
  .end if
 );
.end for
.print "Subsystem"
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
INSERT INTO O_OBJ VALUES (\
  .if ( "un-initialized" == "${o_obj.Obj_ID}" )
 0\
  .else
 ${o_obj.Obj_ID}\
  .end if
, '${o_obj.Name}', ${o_obj.Numb}, '${o_obj.Key_Lett}', ''\
\
  .if ( "un-initialized" == "${o_obj.SS_ID}" )
, 0\
  .else
, ${o_obj.SS_ID}\
  .end if
 );
.end for
.select many o_iobjs from instances of O_IOBJ
.for each o_iobj in o_iobjs
INSERT INTO O_IOBJ VALUES (\
  .if ( "un-initialized" == "${o_iobj.IObj_ID}" )
 0\
  .else
 ${o_iobj.IObj_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_iobj.Obj_ID}" )
, 0\
  .else
, ${o_iobj.Obj_ID}\
  .end if
, ${o_iobj.Modl_Typ}\
  .if ( "un-initialized" == "${o_iobj.SS_ID}" )
, 0\
  .else
, ${o_iobj.SS_ID}\
  .end if
, '${o_iobj.Obj_Name}', '${o_iobj.Obj_KL}' );
.end for
.select many o_attrs from instances of O_ATTR
.for each o_attr in o_attrs
INSERT INTO O_ATTR VALUES (\
  .if ( "un-initialized" == "${o_attr.Attr_ID}" )
 0\
  .else
 ${o_attr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_attr.Obj_ID}" )
, 0\
  .else
, ${o_attr.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_attr.PAttr_ID}" )
, 0\
  .else
, ${o_attr.PAttr_ID}\
  .end if
, '${o_attr.Name}', ''\
, '${o_attr.Prefix}', '${o_attr.Root_Nam}', ${o_attr.Pfx_Mode}\
  .if ( "un-initialized" == "${o_attr.DT_ID}" )
, 0\
  .else
, ${o_attr.DT_ID}\
  .end if
, '${o_attr.Dimensions}', '${o_attr.DefaultValue}' );
.end for
.select many o_ids from instances of O_ID
.for each o_id in o_ids
INSERT INTO O_ID VALUES ( ${o_id.Oid_ID}\
  .if ( "un-initialized" == "${o_id.Obj_ID}" )
, 0\
  .else
, ${o_id.Obj_ID}\
  .end if
 );
.end for
.select many o_oidas from instances of O_OIDA
.for each o_oida in o_oidas
INSERT INTO O_OIDA VALUES (\
  .if ( "un-initialized" == "${o_oida.Attr_ID}" )
 0\
  .else
 ${o_oida.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_oida.Obj_ID}" )
, 0\
  .else
, ${o_oida.Obj_ID}\
  .end if
, ${o_oida.Oid_ID}, '${o_oida.localAttributeName}' );
.end for
.select many o_battrs from instances of O_BATTR
.for each o_battr in o_battrs
INSERT INTO O_BATTR VALUES (\
  .if ( "un-initialized" == "${o_battr.Attr_ID}" )
 0\
  .else
 ${o_battr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_battr.Obj_ID}" )
, 0\
  .else
, ${o_battr.Obj_ID}\
  .end if
 );
.end for
.select many o_dbattrs from instances of O_DBATTR
.for each o_dbattr in o_dbattrs
INSERT INTO O_DBATTR VALUES (\
  .if ( "un-initialized" == "${o_dbattr.Attr_ID}" )
 0\
  .else
 ${o_dbattr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_dbattr.Obj_ID}" )
, 0\
  .else
, ${o_dbattr.Obj_ID}\
  .end if
, ''\
, ${o_dbattr.Suc_Pars} );
.end for
.select many o_nbattrs from instances of O_NBATTR
.for each o_nbattr in o_nbattrs
INSERT INTO O_NBATTR VALUES (\
  .if ( "un-initialized" == "${o_nbattr.Attr_ID}" )
 0\
  .else
 ${o_nbattr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_nbattr.Obj_ID}" )
, 0\
  .else
, ${o_nbattr.Obj_ID}\
  .end if
 );
.end for
.select many o_rattrs from instances of O_RATTR
.for each o_rattr in o_rattrs
INSERT INTO O_RATTR VALUES (\
  .if ( "un-initialized" == "${o_rattr.Attr_ID}" )
 0\
  .else
 ${o_rattr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_rattr.Obj_ID}" )
, 0\
  .else
, ${o_rattr.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_rattr.BAttr_ID}" )
, 0\
  .else
, ${o_rattr.BAttr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_rattr.BObj_ID}" )
, 0\
  .else
, ${o_rattr.BObj_ID}\
  .end if
, ${o_rattr.Ref_Mode}, '${o_rattr.BaseAttrName}' );
.end for
.select many o_refs from instances of O_REF
.for each o_ref in o_refs
INSERT INTO O_REF VALUES (\
  .if ( "un-initialized" == "${o_ref.Obj_ID}" )
 0\
  .else
 ${o_ref.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.RObj_ID}" )
, 0\
  .else
, ${o_ref.RObj_ID}\
  .end if
, ${o_ref.ROid_ID}\
  .if ( "un-initialized" == "${o_ref.RAttr_ID}" )
, 0\
  .else
, ${o_ref.RAttr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.Rel_ID}" )
, 0\
  .else
, ${o_ref.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.OIR_ID}" )
, 0\
  .else
, ${o_ref.OIR_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.ROIR_ID}" )
, 0\
  .else
, ${o_ref.ROIR_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.Attr_ID}" )
, 0\
  .else
, ${o_ref.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.ARef_ID}" )
, 0\
  .else
, ${o_ref.ARef_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_ref.PARef_ID}" )
, 0\
  .else
, ${o_ref.PARef_ID}\
  .end if
, ${o_ref.Is_Cstrd}, ''\
, '${o_ref.RObj_Name}', '${o_ref.RAttr_Name}', '${o_ref.Rel_Name}' );
.end for
.select many o_rtidas from instances of O_RTIDA
.for each o_rtida in o_rtidas
INSERT INTO O_RTIDA VALUES (\
  .if ( "un-initialized" == "${o_rtida.Attr_ID}" )
 0\
  .else
 ${o_rtida.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_rtida.Obj_ID}" )
, 0\
  .else
, ${o_rtida.Obj_ID}\
  .end if
, ${o_rtida.Oid_ID}\
  .if ( "un-initialized" == "${o_rtida.Rel_ID}" )
, 0\
  .else
, ${o_rtida.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_rtida.OIR_ID}" )
, 0\
  .else
, ${o_rtida.OIR_ID}\
  .end if
 );
.end for
.select many o_tfrs from instances of O_TFR
.for each o_tfr in o_tfrs
INSERT INTO O_TFR VALUES (\
  .if ( "un-initialized" == "${o_tfr.Tfr_ID}" )
 0\
  .else
 ${o_tfr.Tfr_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_tfr.Obj_ID}" )
, 0\
  .else
, ${o_tfr.Obj_ID}\
  .end if
, '${o_tfr.Name}', ''\
\
  .if ( "un-initialized" == "${o_tfr.DT_ID}" )
, 0\
  .else
, ${o_tfr.DT_ID}\
  .end if
, ${o_tfr.Instance_Based}, ''\
, ${o_tfr.Suc_Pars}, '${o_tfr.Return_Dimensions}'\
  .if ( "un-initialized" == "${o_tfr.Previous_Tfr_ID}" )
, 0\
  .else
, ${o_tfr.Previous_Tfr_ID}\
  .end if
 );
.end for
.select many o_tparms from instances of O_TPARM
.for each o_tparm in o_tparms
INSERT INTO O_TPARM VALUES (\
  .if ( "un-initialized" == "${o_tparm.TParm_ID}" )
 0\
  .else
 ${o_tparm.TParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${o_tparm.Tfr_ID}" )
, 0\
  .else
, ${o_tparm.Tfr_ID}\
  .end if
, '${o_tparm.Name}'\
  .if ( "un-initialized" == "${o_tparm.DT_ID}" )
, 0\
  .else
, ${o_tparm.DT_ID}\
  .end if
, ${o_tparm.By_Ref}, '${o_tparm.Dimensions}'\
  .if ( "un-initialized" == "${o_tparm.Previous_TParm_ID}" )
, 0\
  .else
, ${o_tparm.Previous_TParm_ID}\
  .end if
, ''\
 );
.end for
.select many o_ravrs from instances of O_RAVR
.for each o_ravr in o_ravrs
INSERT INTO O_RAVR VALUES ( );
.end for
.print "System Level Datatypes"
.select many sld_sdps from instances of SLD_SDP
.for each sld_sdp in sld_sdps
INSERT INTO SLD_SDP VALUES (\
  .if ( "un-initialized" == "${sld_sdp.Sys_ID}" )
 0\
  .else
 ${sld_sdp.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${sld_sdp.Package_ID}" )
, 0\
  .else
, ${sld_sdp.Package_ID}\
  .end if
 );
.end for
.select many sld_sdinps from instances of SLD_SDINP
.for each sld_sdinp in sld_sdinps
INSERT INTO SLD_SDINP VALUES (\
  .if ( "un-initialized" == "${sld_sdinp.Package_ID}" )
 0\
  .else
 ${sld_sdinp.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${sld_sdinp.DT_ID}" )
, 0\
  .else
, ${sld_sdinp.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${sld_sdinp.Sys_ID}" )
, 0\
  .else
, ${sld_sdinp.Sys_ID}\
  .end if
 );
.end for
.select many sld_scinps from instances of SLD_SCINP
.for each sld_scinp in sld_scinps
INSERT INTO SLD_SCINP VALUES (\
  .if ( "un-initialized" == "${sld_scinp.Sys_ID}" )
 0\
  .else
 ${sld_scinp.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${sld_scinp.Package_ID}" )
, 0\
  .else
, ${sld_scinp.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${sld_scinp.Constant_Spec_ID}" )
, 0\
  .else
, ${sld_scinp.Constant_Spec_ID}\
  .end if
 );
.end for
.print "Translation Extensions"
.select many te_swcs from instances of TE_SWC
.for each te_swc in te_swcs
INSERT INTO TE_SWC VALUES ( '${te_swc.Obj_Kl}', '${te_swc.Where_Spec}', '${te_swc.Key}', ${te_swc.Ret_Val}, ${te_swc.Built_In}, ${te_swc.Oid_ID}, '${te_swc.GeneratedName}' );
.end for
.select many te_cis from instances of TE_CI
.for each te_ci in te_cis
INSERT INTO TE_CI VALUES (\
  .if ( "un-initialized" == "${te_ci.ID}" )
 0\
  .else
 ${te_ci.ID}\
  .end if
, '${te_ci.Name}', '${te_ci.ClassifierName}', '${te_ci.template_parameter_values}'\
  .if ( "un-initialized" == "${te_ci.te_cID}" )
, 0\
  .else
, ${te_ci.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_ci.cl_icId}" )
, 0\
  .else
, ${te_ci.cl_icId}\
  .end if
 );
.end for
.select many te_oirs from instances of TE_OIR
.for each te_oir in te_oirs
INSERT INTO TE_OIR VALUES ( '${te_oir.data_member}', '${te_oir.assoc_type}', '${te_oir.object_id}', '${te_oir.rel_phrase}', ${te_oir.Mult}, ${te_oir.NavigatedTo}\
  .if ( "un-initialized" == "${te_oir.OIR_ID}" )
, 0\
  .else
, ${te_oir.OIR_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_oir.Obj_ID}" )
, 0\
  .else
, ${te_oir.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_oir.Rel_ID}" )
, 0\
  .else
, ${te_oir.Rel_ID}\
  .end if
 );
.end for
.select many te_syss from instances of TE_SYS
.for each te_sys in te_syss
INSERT INTO TE_SYS VALUES ( ${te_sys.SystemID}, '${te_sys.ModelCompilerName}', '${te_sys.ExecutableName}', ${te_sys.MaxStringLen}, ${te_sys.MaxObjExtent}, ${te_sys.MaxRelExtent}, ${te_sys.MaxSelectExtent}, ${te_sys.TotalContainers}, ${te_sys.MaxSelfEvents}, ${te_sys.MaxNonSelfEvents}, ${te_sys.MaxTimers}, ${te_sys.MaxInterleavedBridges}, ${te_sys.MaxInterleavedBridgeDataSize}, ${te_sys.CollectionsFlavor}, ${te_sys.ForcePriorityEvents}, ${te_sys.PEIClassCount}, ${te_sys.PersistentClassCount}, ${te_sys.PersistInstanceCacheDepth}, ${te_sys.PersistLinkCacheDepth}, ${te_sys.UnitsToDynamicallyAllocate}, ${te_sys.InstanceLoading}, '${te_sys.self_name}', '${te_sys.Name}', ${te_sys.AUTOSAR}, ${te_sys.VFB}, '${te_sys.SystemCPortsType}', ${te_sys.AllPortsPoly}, '${te_sys.DomainClassNumberName}'\
  .if ( "un-initialized" == "${te_sys.Sys_ID}" )
, 0\
  .else
, ${te_sys.Sys_ID}\
  .end if
 );
.end for
.select many te_disps from instances of TE_DISP
.for each te_disp in te_disps
INSERT INTO TE_DISP VALUES ( ${te_disp.Dispatcher_ID}, ${te_disp.SystemID}, '${te_disp.Name}', ''\
 );
.end for
.select many te_queues from instances of TE_QUEUE
.for each te_queue in te_queues
INSERT INTO TE_QUEUE VALUES ( ${te_queue.Queue_ID}, ${te_queue.Dispatcher_ID}, ${te_queue.Type}, ''\
, ${te_queue.RenderCode}, ${te_queue.MaxDepth} );
.end for
.select many te_abas from instances of TE_ABA
.for each te_aba in te_abas
INSERT INTO TE_ABA VALUES (\
  .if ( "un-initialized" == "${te_aba.AbaID}" )
 0\
  .else
 ${te_aba.AbaID}\
  .end if
, '${te_aba.subtypeKL}'\
  .if ( "un-initialized" == "${te_aba.te_cID}" )
, 0\
  .else
, ${te_aba.te_cID}\
  .end if
, ${te_aba.SelfEventCount}, ${te_aba.NonSelfEventCount}, '${te_aba.ParameterDeclaration}', '${te_aba.ParameterDefinition}', '${te_aba.ParameterStructure}', '${te_aba.ParameterTrace}', '${te_aba.ParameterFormat}', '${te_aba.ParameterInvocation}', '${te_aba.ParameterAssignment}', '${te_aba.ParameterAssignmentBase}', '${te_aba.scope}', '${te_aba.GeneratedName}', '${te_aba.ReturnDataType}', ${te_aba.dimensions}\
  .if ( "un-initialized" == "${te_aba.te_dimID}" )
, 0\
  .else
, ${te_aba.te_dimID}\
  .end if
, '${te_aba.array_spec}', '${te_aba.code}' );
.end for
.select many te_cs from instances of TE_C
.for each te_c in te_cs
INSERT INTO TE_C VALUES (\
  .if ( "un-initialized" == "${te_c.ID}" )
 0\
  .else
 ${te_c.ID}\
  .end if
, '${te_c.Name}', '${te_c.Descrip}'\
, ${te_c.number}, ${te_c.StateTrace}, ${te_c.StmtTrace}, ${te_c.DetectEmpty}, ${te_c.OptDisabled}, ${te_c.RawComments}, ${te_c.CodeComments}, ${te_c.CollectionsFlavor}, '${te_c.classes_file}', '${te_c.functions_file}', ${te_c.MaxObjExtent}, ${te_c.MaxRelExtent}, ${te_c.MaxSelectExtent}, ${te_c.MaxSelfEvents}, ${te_c.MaxNonSelfEvents}, ${te_c.MaxPriorityEvents}, ${te_c.MaxTimers}, ${te_c.InterleavedBridges}, ${te_c.PEIClassCount}, ${te_c.PersistentClassCount}, '${te_c.module_file}', '${te_c.port_file}', '${te_c.include_file}', ${te_c.included_in_build}, ${te_c.internal_behavior}, ${te_c.isRealized}, ${te_c.SystemID}\
  .if ( "un-initialized" == "${te_c.next_ID}" )
, 0\
  .else
, ${te_c.next_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_c.cId}" )
, 0\
  .else
, ${te_c.cId}\
  .end if
 );
.end for
.select many te_mbrs from instances of TE_MBR
.for each te_mbr in te_mbrs
INSERT INTO TE_MBR VALUES (\
  .if ( "un-initialized" == "${te_mbr.ID}" )
 0\
  .else
 ${te_mbr.ID}\
  .end if
, '${te_mbr.Name}', '${te_mbr.GeneratedName}', ${te_mbr.dimensions}\
  .if ( "un-initialized" == "${te_mbr.te_dimID}" )
, 0\
  .else
, ${te_mbr.te_dimID}\
  .end if
, '${te_mbr.array_spec}'\
  .if ( "un-initialized" == "${te_mbr.previousID}" )
, 0\
  .else
, ${te_mbr.previousID}\
  .end if
\
  .if ( "un-initialized" == "${te_mbr.te_dtID}" )
, 0\
  .else
, ${te_mbr.te_dtID}\
  .end if
\
  .if ( "un-initialized" == "${te_mbr.Member_ID}" )
, 0\
  .else
, ${te_mbr.Member_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_mbr.DT_ID}" )
, 0\
  .else
, ${te_mbr.DT_ID}\
  .end if
 );
.end for
.select many te_ees from instances of TE_EE
.for each te_ee in te_ees
INSERT INTO TE_EE VALUES ( '${te_ee.Name}', '${te_ee.RegisteredName}', '${te_ee.Key_Lett}', '${te_ee.Descrip}'\
, ${te_ee.Included}, '${te_ee.file}', '${te_ee.Include_File}', ${te_ee.Used}\
  .if ( "un-initialized" == "${te_ee.te_cID}" )
, 0\
  .else
, ${te_ee.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_ee.EE_ID}" )
, 0\
  .else
, ${te_ee.EE_ID}\
  .end if
 );
.end for
.select many te_dts from instances of TE_DT
.for each te_dt in te_dts
INSERT INTO TE_DT VALUES (\
  .if ( "un-initialized" == "${te_dt.ID}" )
 0\
  .else
 ${te_dt.ID}\
  .end if
, '${te_dt.Name}', ${te_dt.Core_Typ}, ${te_dt.Included}, '${te_dt.ExtName}', '${te_dt.Include_File}', '${te_dt.Initial_Value}', '${te_dt.Value}', ${te_dt.Is_Enum}, '${te_dt.Owning_Dom_Name}', '${te_dt.string_format}', ${te_dt.generated}\
  .if ( "un-initialized" == "${te_dt.te_cID}" )
, 0\
  .else
, ${te_dt.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_dt.DT_ID}" )
, 0\
  .else
, ${te_dt.DT_ID}\
  .end if
 );
.end for
.select many te_acts from instances of TE_ACT
.for each te_act in te_acts
INSERT INTO TE_ACT VALUES (\
  .if ( "un-initialized" == "${te_act.AbaID}" )
 0\
  .else
 ${te_act.AbaID}\
  .end if
, '${te_act.GeneratedName}', ${te_act.number}\
  .if ( "un-initialized" == "${te_act.SM_ID}" )
, 0\
  .else
, ${te_act.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_act.Act_ID}" )
, 0\
  .else
, ${te_act.Act_ID}\
  .end if
 );
.end for
.select many te_syncs from instances of TE_SYNC
.for each te_sync in te_syncs
INSERT INTO TE_SYNC VALUES ( '${te_sync.Name}', ${te_sync.Included}, ${te_sync.IsInitFunction}, ${te_sync.IsSafeForInterrupts}, ${te_sync.XlateSemantics}, ${te_sync.Order}\
  .if ( "un-initialized" == "${te_sync.AbaID}" )
, 0\
  .else
, ${te_sync.AbaID}\
  .end if
, '${te_sync.GeneratedName}', '${te_sync.intraface_method}', '${te_sync.deferred_method}'\
  .if ( "un-initialized" == "${te_sync.te_cID}" )
, 0\
  .else
, ${te_sync.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_sync.Sync_ID}" )
, 0\
  .else
, ${te_sync.Sync_ID}\
  .end if
 );
.end for
.select many te_tfrs from instances of TE_TFR
.for each te_tfr in te_tfrs
INSERT INTO TE_TFR VALUES ( ${te_tfr.Included}, ${te_tfr.XlateSemantics}, ${te_tfr.Instance_Based}, '${te_tfr.Key_Lett}', '${te_tfr.Name}', '${te_tfr.GeneratedName}'\
  .if ( "un-initialized" == "${te_tfr.AbaID}" )
, 0\
  .else
, ${te_tfr.AbaID}\
  .end if
\
  .if ( "un-initialized" == "${te_tfr.Tfr_ID}" )
, 0\
  .else
, ${te_tfr.Tfr_ID}\
  .end if
 );
.end for
.select many te_brgs from instances of TE_BRG
.for each te_brg in te_brgs
INSERT INTO TE_BRG VALUES ( '${te_brg.EEname}', '${te_brg.EEkeyletters}', '${te_brg.Name}', '${te_brg.GeneratedName}'\
  .if ( "un-initialized" == "${te_brg.AbaID}" )
, 0\
  .else
, ${te_brg.AbaID}\
  .end if
\
  .if ( "un-initialized" == "${te_brg.Brg_ID}" )
, 0\
  .else
, ${te_brg.Brg_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_brg.EE_ID}" )
, 0\
  .else
, ${te_brg.EE_ID}\
  .end if
 );
.end for
.select many te_dbattrs from instances of TE_DBATTR
.for each te_dbattr in te_dbattrs
INSERT INTO TE_DBATTR VALUES ( ${te_dbattr.Included}\
  .if ( "un-initialized" == "${te_dbattr.AbaID}" )
, 0\
  .else
, ${te_dbattr.AbaID}\
  .end if
, '${te_dbattr.GeneratedName}'\
  .if ( "un-initialized" == "${te_dbattr.Attr_ID}" )
, 0\
  .else
, ${te_dbattr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_dbattr.Obj_ID}" )
, 0\
  .else
, ${te_dbattr.Obj_ID}\
  .end if
 );
.end for
.select many te_enums from instances of TE_ENUM
.for each te_enum in te_enums
INSERT INTO TE_ENUM VALUES ( '${te_enum.Name}', '${te_enum.Value}', ${te_enum.Order}, '${te_enum.GeneratedName}'\
  .if ( "un-initialized" == "${te_enum.Enum_ID}" )
, 0\
  .else
, ${te_enum.Enum_ID}\
  .end if
 );
.end for
.select many te_parms from instances of TE_PARM
.for each te_parm in te_parms
INSERT INTO TE_PARM VALUES ( '${te_parm.Name}', ''\
, ${te_parm.Order}, '${te_parm.ParamBuffer}', '${te_parm.OALParamBuffer}'\
  .if ( "un-initialized" == "${te_parm.ID}" )
, 0\
  .else
, ${te_parm.ID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.nextID}" )
, 0\
  .else
, ${te_parm.nextID}\
  .end if
, '${te_parm.GeneratedName}', ${te_parm.By_Ref}\
  .if ( "un-initialized" == "${te_parm.te_dtID}" )
, 0\
  .else
, ${te_parm.te_dtID}\
  .end if
, ${te_parm.dimensions}\
  .if ( "un-initialized" == "${te_parm.te_dimID}" )
, 0\
  .else
, ${te_parm.te_dimID}\
  .end if
, '${te_parm.array_spec}'\
  .if ( "un-initialized" == "${te_parm.AbaID}" )
, 0\
  .else
, ${te_parm.AbaID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.SM_ID}" )
, 0\
  .else
, ${te_parm.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.SMedi_ID}" )
, 0\
  .else
, ${te_parm.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.SParm_ID}" )
, 0\
  .else
, ${te_parm.SParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.TParm_ID}" )
, 0\
  .else
, ${te_parm.TParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.PP_Id}" )
, 0\
  .else
, ${te_parm.PP_Id}\
  .end if
\
  .if ( "un-initialized" == "${te_parm.BParm_ID}" )
, 0\
  .else
, ${te_parm.BParm_ID}\
  .end if
 );
.end for
.select many te_wheres from instances of TE_WHERE
.for each te_where in te_wheres
INSERT INTO TE_WHERE VALUES ( ${te_where.WhereKey}, '${te_where.select_any_where}', ${te_where.Oid_ID}\
  .if ( "un-initialized" == "${te_where.Obj_ID}" )
, 0\
  .else
, ${te_where.Obj_ID}\
  .end if
 );
.end for
.select many te_attrs from instances of TE_ATTR
.for each te_attr in te_attrs
INSERT INTO TE_ATTR VALUES (\
  .if ( "un-initialized" == "${te_attr.ID}" )
 0\
  .else
 ${te_attr.ID}\
  .end if
, ${te_attr.Used}, ${te_attr.read}, ${te_attr.written}, ${te_attr.Included}, ${te_attr.Order}, '${te_attr.ParamBuffer}', '${te_attr.Name}', '${te_attr.GeneratedName}', '${te_attr.DefaultValue}', ${te_attr.translate}, ${te_attr.dimensions}\
  .if ( "un-initialized" == "${te_attr.te_dimID}" )
, 0\
  .else
, ${te_attr.te_dimID}\
  .end if
, '${te_attr.array_spec}', '${te_attr.te_classGeneratedName}', '${te_attr.GeneratedType}'\
  .if ( "un-initialized" == "${te_attr.prevID}" )
, 0\
  .else
, ${te_attr.prevID}\
  .end if
\
  .if ( "un-initialized" == "${te_attr.Attr_ID}" )
, 0\
  .else
, ${te_attr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_attr.Obj_ID}" )
, 0\
  .else
, ${te_attr.Obj_ID}\
  .end if
 );
.end for
.select many te_rels from instances of TE_REL
.for each te_rel in te_rels
INSERT INTO TE_REL VALUES ( ${te_rel.Numb}, ${te_rel.LinkNeeded}, ${te_rel.UnlinkNeeded}, ${te_rel.Navigated}, ${te_rel.Order}, ${te_rel.storage_needed}\
  .if ( "un-initialized" == "${te_rel.Rel_ID}" )
, 0\
  .else
, ${te_rel.Rel_ID}\
  .end if
 );
.end for
.select many te_evts from instances of TE_EVT
.for each te_evt in te_evts
INSERT INTO TE_EVT VALUES (\
  .if ( "un-initialized" == "${te_evt.ID}" )
 0\
  .else
 ${te_evt.ID}\
  .end if
, '${te_evt.Name}', ${te_evt.Numb}, '${te_evt.GeneratedName}', '${te_evt.Enumerator}', ${te_evt.Order}, ${te_evt.Used}, ${te_evt.UsedCount}, ${te_evt.Priority}\
  .if ( "un-initialized" == "${te_evt.SM_ID}" )
, 0\
  .else
, ${te_evt.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_evt.SMevt_ID}" )
, 0\
  .else
, ${te_evt.SMevt_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_evt.te_smID}" )
, 0\
  .else
, ${te_evt.te_smID}\
  .end if
 );
.end for
.select many te_states from instances of TE_STATE
.for each te_state in te_states
INSERT INTO TE_STATE VALUES ( '${te_state.Name}', '${te_state.enumerator}', ${te_state.Numb}, ${te_state.number}, ${te_state.Order}\
  .if ( "un-initialized" == "${te_state.SM_ID}" )
, 0\
  .else
, ${te_state.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_state.SMstt_ID}" )
, 0\
  .else
, ${te_state.SMstt_ID}\
  .end if
 );
.end for
.select many te_pos from instances of TE_PO
.for each te_po in te_pos
INSERT INTO TE_PO VALUES (\
  .if ( "un-initialized" == "${te_po.ID}" )
 0\
  .else
 ${te_po.ID}\
  .end if
, '${te_po.Name}', '${te_po.GeneratedName}', '${te_po.InterfaceName}', '${te_po.PackageName}', ${te_po.Provision}, ${te_po.polymorphic}, ${te_po.sibling}, ${te_po.Order}\
  .if ( "un-initialized" == "${te_po.te_cID}" )
, 0\
  .else
, ${te_po.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_po.c_iId}" )
, 0\
  .else
, ${te_po.c_iId}\
  .end if
\
  .if ( "un-initialized" == "${te_po.c_poId}" )
, 0\
  .else
, ${te_po.c_poId}\
  .end if
 );
.end for
.select many te_sms from instances of TE_SM
.for each te_sm in te_sms
INSERT INTO TE_SM VALUES (\
  .if ( "un-initialized" == "${te_sm.ID}" )
 0\
  .else
 ${te_sm.ID}\
  .end if
, ${te_sm.complete}, '${te_sm.initial_state}', '${te_sm.SEMname}', '${te_sm.action_array}', '${te_sm.action_type}', '${te_sm.events_union}', '${te_sm.txn_action_array}', ${te_sm.txn_action_count}, '${te_sm.state_names_array}', ${te_sm.num_states}, ${te_sm.num_events}\
  .if ( "un-initialized" == "${te_sm.SM_ID}" )
, 0\
  .else
, ${te_sm.SM_ID}\
  .end if
, '${te_sm.te_classGeneratedName}' );
.end for
.select many te_classs from instances of TE_CLASS
.for each te_class in te_classs
INSERT INTO TE_CLASS VALUES (\
  .if ( "un-initialized" == "${te_class.ID}" )
 0\
  .else
 ${te_class.ID}\
  .end if
, '${te_class.Name}', ${te_class.Numb}, '${te_class.Key_Lett}', '${te_class.GeneratedName}', '${te_class.CBGeneratedName}', ${te_class.Included}, ${te_class.PEIsDefinedInData}, ${te_class.IsFixedPopulation}, ${te_class.IsReadOnly}, ${te_class.ExcludeFromGen}, ${te_class.MaxExtentSize}, ${te_class.SelfCreated}, ${te_class.NonSelfCreated}, ${te_class.Persistent}, ${te_class.Order}, ${te_class.IsTrace}, ${te_class.ContainerIndex}, ${te_class.Task}, '${te_class.class_file}', '${te_class.system_class_number}', '${te_class.CBsystem_class_number}', '${te_class.persist_link}', '${te_class.dispatcher}', '${te_class.CBdispatcher}', '${te_class.attribute_format}', '${te_class.attribute_dump}'\
  .if ( "un-initialized" == "${te_class.te_cID}" )
, 0\
  .else
, ${te_class.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_class.Obj_ID}" )
, 0\
  .else
, ${te_class.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_class.nextID}" )
, 0\
  .else
, ${te_class.nextID}\
  .end if
 );
.end for
.select many te_prefixs from instances of TE_PREFIX
.for each te_prefix in te_prefixs
INSERT INTO TE_PREFIX VALUES ( '${te_prefix.symbol}', '${te_prefix.symbolsw}', '${te_prefix.type}', '${te_prefix.typesw}', '${te_prefix.define_u}', '${te_prefix.define_c}', '${te_prefix.define_csw}', '${te_prefix.define_usw}', '${te_prefix.file}', '${te_prefix.result}', '${te_prefix.provided_port}', '${te_prefix.required_port}', '${te_prefix.channel}' );
.end for
.select many te_sets from instances of TE_SET
.for each te_set in te_sets
INSERT INTO TE_SET VALUES ( '${te_set.number_of_containoids}', '${te_set.iterator_class_name}', '${te_set.factory}', '${te_set.init}', '${te_set.copy}', '${te_set.clear}', '${te_set.insert_element}', '${te_set.insert_instance}', '${te_set.insert_block}', '${te_set.remove_element}', '${te_set.remove_instance}', '${te_set.element_count}', '${te_set.contains}', '${te_set.equality}', '${te_set.emptiness}', '${te_set.get_any}', '${te_set.iterator_reset}', '${te_set.iterator_next}', '${te_set.base_class}', '${te_set.element_type}', '${te_set.scope}', '${te_set.module}' );
.end for
.select many te_persists from instances of TE_PERSIST
.for each te_persist in te_persists
INSERT INTO TE_PERSIST VALUES ( '${te_persist.persist_file}', '${te_persist.class_union}', '${te_persist.instance_cache_depth}', '${te_persist.link_cache_depth}', '${te_persist.check_mark}', '${te_persist.post_link}', '${te_persist.link_type_name}', '${te_persist.link_type_type}', '${te_persist.factory_init}', '${te_persist.commit}', '${te_persist.restore}', '${te_persist.remove}', '${te_persist.domainnum_name}', '${te_persist.domainnum_type}', '${te_persist.classnum_name}', '${te_persist.classnum_type}', '${te_persist.index_name}', '${te_persist.index_type}', '${te_persist.instid_type}', '${te_persist.instid_name}', '${te_persist.dirty_type}', '${te_persist.dirty_name}', ${te_persist.dirty_dirty}, ${te_persist.dirty_clean} );
.end for
.select many te_eqs from instances of TE_EQ
.for each te_eq in te_eqs
INSERT INTO TE_EQ VALUES ( '${te_eq.ignored}', '${te_eq.cant_happen}', '${te_eq.system_events_union}', '${te_eq.system_event_pool}', '${te_eq.constant_type}', '${te_eq.base_event_type}', '${te_eq.base_variable}', '${te_eq.max_events}', '${te_eq.max_self_events}', '${te_eq.max_nonself_events}', '${te_eq.new}', '${te_eq.allocate}', '${te_eq.delete}', '${te_eq.modify}', '${te_eq.self}', '${te_eq.non_self}', '${te_eq.search_and_destroy}', '${te_eq.run_flag}', '${te_eq.event_message_variable}', '${te_eq.scope}' );
.end for
.select many te_ilbs from instances of TE_ILB
.for each te_ilb in te_ilbs
INSERT INTO TE_ILB VALUES ( '${te_ilb.file}', '${te_ilb.define_name}', '${te_ilb.data_define_name}', '${te_ilb.interleave_bridge}', '${te_ilb.interleave_bridge_done}', '${te_ilb.get_data}', '${te_ilb.dispatch}' );
.end for
.select many te_threads from instances of TE_THREAD
.for each te_thread in te_threads
INSERT INTO TE_THREAD VALUES ( '${te_thread.file}', '${te_thread.create}', '${te_thread.mutex_lock}', '${te_thread.mutex_unlock}', '${te_thread.nonbusy_wait}', '${te_thread.nonbusy_wake}', '${te_thread.shutdown}', ${te_thread.enabled}, '${te_thread.flavor}', ${te_thread.serialize}, ${te_thread.number_of_threads}, '${te_thread.extra_initialization}', '${te_thread.AUTOSAR_enabled}' );
.end for
.select many te_files from instances of TE_FILE
.for each te_file in te_files
INSERT INTO TE_FILE VALUES ( '${te_file.hdr_file_ext}', '${te_file.src_file_ext}', '${te_file.obj_file_ext}', '${te_file.sys_main}', '${te_file.factory}', '${te_file.events}', '${te_file.nvs}', '${te_file.nvs_bridge}', '${te_file.sets}', '${te_file.types}', '${te_file.thread}', '${te_file.trace}', '${te_file.tim}', '${te_file.callout}', '${te_file.ilb}', '${te_file.persist}', '${te_file.xtumlload}', '${te_file.interfaces}', '${te_file.registers}', '${te_file.domain_color_path}', '${te_file.domain_source_path}', '${te_file.domain_include_path}', '${te_file.system_source_path}', '${te_file.system_include_path}', '${te_file.system_color_path}', '${te_file.bridge_mark}', '${te_file.system_mark}', '${te_file.datatype_mark}', '${te_file.event_mark}', '${te_file.class_mark}', '${te_file.domain_mark}', '${te_file.system_functions_mark}', '${te_file.arc_path}', '${te_file.root_path}' );
.end for
.select many te_callouts from instances of TE_CALLOUT
.for each te_callout in te_callouts
INSERT INTO TE_CALLOUT VALUES ( '${te_callout.file}', '${te_callout.initialization}', '${te_callout.pre_xtUML_initialization}', '${te_callout.post_xtUML_initialization}', '${te_callout.background_processing}', '${te_callout.event_cant_happen}', '${te_callout.pre_shutdown}', '${te_callout.post_shutdown}', '${te_callout.event_no_instance}', '${te_callout.event_free_list_empty}', '${te_callout.empty_handle_detected}', '${te_callout.object_pool_empty}', '${te_callout.node_list_empty}', '${te_callout.interleaved_bridge_overflow}', '${te_callout.self_event_queue_empty}', '${te_callout.non_self_event_queue_empty}', '${te_callout.persistence_error}' );
.end for
.select many te_strings from instances of TE_STRING
.for each te_string in te_strings
INSERT INTO TE_STRING VALUES ( '${te_string.memset}', '${te_string.memmove}', '${te_string.strcpy}', '${te_string.stradd}', '${te_string.strlen}', '${te_string.strcmp}', '${te_string.strget}', '${te_string.itoa}', '${te_string.atoi}', '${te_string.max_string_length}', '${te_string.debug_buffer_depth}' );
.end for
.select many te_traces from instances of TE_TRACE
.for each te_trace in te_traces
INSERT INTO TE_TRACE VALUES ( '${te_trace.component_msg_start}', '${te_trace.component_msg_end}', '${te_trace.state_txn_start}', '${te_trace.state_txn_end}', '${te_trace.state_txn_event_ignored}', '${te_trace.state_txn_cant_happen}', '${te_trace.oal_trace}' );
.end for
.select many te_copyrights from instances of TE_COPYRIGHT
.for each te_copyright in te_copyrights
INSERT INTO TE_COPYRIGHT VALUES ( '${te_copyright.body}' );
.end for
.select many te_dmas from instances of TE_DMA
.for each te_dma in te_dmas
INSERT INTO TE_DMA VALUES ( '${te_dma.file}', '${te_dma.allocate}', '${te_dma.release}', ${te_dma.debugging_heap} );
.end for
.select many te_containers from instances of TE_CONTAINER
.for each te_container in te_containers
INSERT INTO TE_CONTAINER VALUES ( '${te_container.flavor}' );
.end for
.select many te_dlists from instances of TE_DLIST
.for each te_dlist in te_dlists
INSERT INTO TE_DLIST VALUES ( '${te_dlist.flavor}', '${te_dlist.remove_node}' );
.end for
.select many te_slists from instances of TE_SLIST
.for each te_slist in te_slists
INSERT INTO TE_SLIST VALUES ( '${te_slist.flavor}', '${te_slist.remove_node}' );
.end for
.select many te_targets from instances of TE_TARGET
.for each te_target in te_targets
INSERT INTO TE_TARGET VALUES ( '${te_target.language}', '${te_target.c2cplusplus_linkage_begin}', '${te_target.c2cplusplus_linkage_end}', '${te_target.main}' );
.end for
.select many te_relinfos from instances of TE_RELINFO
.for each te_relinfo in te_relinfos
INSERT INTO TE_RELINFO VALUES (\
  .if ( "un-initialized" == "${te_relinfo.obj}" )
 0\
  .else
 ${te_relinfo.obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relinfo.related_obj}" )
, 0\
  .else
, ${te_relinfo.related_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relinfo.rel}" )
, 0\
  .else
, ${te_relinfo.rel}\
  .end if
\
  .if ( "un-initialized" == "${te_relinfo.rto}" )
, 0\
  .else
, ${te_relinfo.rto}\
  .end if
\
  .if ( "un-initialized" == "${te_relinfo.rgo}" )
, 0\
  .else
, ${te_relinfo.rgo}\
  .end if
\
  .if ( "un-initialized" == "${te_relinfo.oir}" )
, 0\
  .else
, ${te_relinfo.oir}\
  .end if
, ${te_relinfo.multiplicity}, ${te_relinfo.gen_link_methods}, '${te_relinfo.rel_phrase}', ${te_relinfo.is_formalizer}, ${te_relinfo.is_supertype}, ${te_relinfo.generate_subtype}, ${te_relinfo.gen_declaration} );
.end for
.select many te_relstores from instances of TE_RELSTORE
.for each te_relstore in te_relstores
INSERT INTO TE_RELSTORE VALUES ( '${te_relstore.data_declare}', '${te_relstore.data_init}', '${te_relstore.link_calls}', ${te_relstore.link_index}, '${te_relstore.data_fini}', '${te_relstore.self_name}' );
.end for
.select many te_instances from instances of TE_INSTANCE
.for each te_instance in te_instances
INSERT INTO TE_INSTANCE VALUES ( '${te_instance.create}', '${te_instance.create_persistent}', '${te_instance.delete}', '${te_instance.delete_persistent}', '${te_instance.self}', '${te_instance.global_self}', '${te_instance.base}', '${te_instance.handle}', '${te_instance.factory_init}', '${te_instance.base_class}', '${te_instance.max_extent}', '${te_instance.max_association_extent}', '${te_instance.max_transient_extent}', '${te_instance.current_state}', '${te_instance.scope}', '${te_instance.get_dci}', '${te_instance.get_event_dispatcher}', '${te_instance.get_thread_assignment}', '${te_instance.module}' );
.end for
.select many te_tims from instances of TE_TIM
.for each te_tim in te_tims
INSERT INTO TE_TIM VALUES ( '${te_tim.max_timers}', ${te_tim.keyed_timer_support}, ${te_tim.recurring_timer_support}, ${te_tim.timer_event_search_and_destroy}, '${te_tim.internal_type}', '${te_tim.scope}', '${te_tim.event_name}' );
.end for
.select many te_typemaps from instances of TE_TYPEMAP
.for each te_typemap in te_typemaps
INSERT INTO TE_TYPEMAP VALUES ( '${te_typemap.instance_index_name}', '${te_typemap.instance_index_type}', '${te_typemap.object_size_name}', '${te_typemap.object_size_type}', '${te_typemap.object_number_name}', '${te_typemap.object_number_type}', '${te_typemap.state_number_name}', '${te_typemap.state_number_type}', '${te_typemap.domain_number_name}', '${te_typemap.domain_number_type}', '${te_typemap.event_number_name}', '${te_typemap.event_number_type}', '${te_typemap.event_priority_name}', '${te_typemap.event_priority_type}', '${te_typemap.event_flags_name}', '${te_typemap.event_flags_type}', '${te_typemap.poly_return_name}', '${te_typemap.poly_return_type}', '${te_typemap.SEM_cell_name}', '${te_typemap.SEM_cell_type}', '${te_typemap.structured_data_types}', '${te_typemap.enumeration_info}', '${te_typemap.user_supplied_data_types}' );
.end for
.select many te_extents from instances of TE_EXTENT
.for each te_extent in te_extents
INSERT INTO TE_EXTENT VALUES ( '${te_extent.sets_type}', '${te_extent.type}', '${te_extent.active}', '${te_extent.inactive}', '${te_extent.initializer}', '${te_extent.size_type}', '${te_extent.size_name}', '${te_extent.istate_type}', '${te_extent.istate_name}', '${te_extent.container_type}', '${te_extent.container_name}', '${te_extent.pool_type}', '${te_extent.pool_name}', '${te_extent.population_type}', '${te_extent.population_name}', '${te_extent.rstorsize_type}', '${te_extent.rstorsize_name}', '${te_extent.linkfunc_name}' );
.end for
.select many te_dims from instances of TE_DIM
.for each te_dim in te_dims
INSERT INTO TE_DIM VALUES (\
  .if ( "un-initialized" == "${te_dim.te_dimID}" )
 0\
  .else
 ${te_dim.te_dimID}\
  .end if
, ${te_dim.elementCount}, ${te_dim.dimensionCount}\
  .if ( "un-initialized" == "${te_dim.next_te_dimID}" )
, 0\
  .else
, ${te_dim.next_te_dimID}\
  .end if
 );
.end for
.select many te_pars from instances of TE_PAR
.for each te_par in te_pars
INSERT INTO TE_PAR VALUES ( '${te_par.Name}', ${te_par.By_Ref}, '${te_par.buffer}', ${te_par.Order}\
  .if ( "un-initialized" == "${te_par.Value_ID}" )
, 0\
  .else
, ${te_par.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_par.te_parmID}" )
, 0\
  .else
, ${te_par.te_parmID}\
  .end if
 );
.end for
.select many te_macts from instances of TE_MACT
.for each te_mact in te_macts
INSERT INTO TE_MACT VALUES (\
  .if ( "un-initialized" == "${te_mact.AbaID}" )
 0\
  .else
 ${te_mact.AbaID}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.ID}" )
, 0\
  .else
, ${te_mact.ID}\
  .end if
, '${te_mact.Name}', ''\
, '${te_mact.GeneratedName}', '${te_mact.ComponentName}', '${te_mact.OALParamBuffer}', '${te_mact.PortName}', '${te_mact.InterfaceName}', '${te_mact.MessageName}', ${te_mact.Direction}, ${te_mact.Provision}, '${te_mact.subtypeKL}', ${te_mact.polymorphic}, ${te_mact.trace}, ${te_mact.Order}\
  .if ( "un-initialized" == "${te_mact.SPR_POId}" )
, 0\
  .else
, ${te_mact.SPR_POId}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.SPR_PSId}" )
, 0\
  .else
, ${te_mact.SPR_PSId}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.SPR_ROId}" )
, 0\
  .else
, ${te_mact.SPR_ROId}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.SPR_RSId}" )
, 0\
  .else
, ${te_mact.SPR_RSId}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.te_cID}" )
, 0\
  .else
, ${te_mact.te_cID}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.te_poID}" )
, 0\
  .else
, ${te_mact.te_poID}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.te_evtID}" )
, 0\
  .else
, ${te_mact.te_evtID}\
  .end if
\
  .if ( "un-initialized" == "${te_mact.nextID}" )
, 0\
  .else
, ${te_mact.nextID}\
  .end if
 );
.end for
.select many te_iirs from instances of TE_IIR
.for each te_iir in te_iirs
INSERT INTO TE_IIR VALUES (\
  .if ( "un-initialized" == "${te_iir.ID}" )
 0\
  .else
 ${te_iir.ID}\
  .end if
, '${te_iir.component_name}', '${te_iir.port_name}', '${te_iir.interface_name}', ${te_iir.polymorphic}, '${te_iir.template_parameter_values}', '${te_iir.C2C}'\
  .if ( "un-initialized" == "${te_iir.cl_iirId}" )
, 0\
  .else
, ${te_iir.cl_iirId}\
  .end if
\
  .if ( "un-initialized" == "${te_iir.c_irId}" )
, 0\
  .else
, ${te_iir.c_irId}\
  .end if
\
  .if ( "un-initialized" == "${te_iir.te_poID}" )
, 0\
  .else
, ${te_iir.te_poID}\
  .end if
\
  .if ( "un-initialized" == "${te_iir.provider_te_iirID}" )
, 0\
  .else
, ${te_iir.provider_te_iirID}\
  .end if
 );
.end for
.select many te_dcis from instances of TE_DCI
.for each te_dci in te_dcis
INSERT INTO TE_DCI VALUES (\
  .if ( "un-initialized" == "${te_dci.te_cID}" )
 0\
  .else
 ${te_dci.te_cID}\
  .end if
, '${te_dci.class_numbers}', '${te_dci.persist_union}', '${te_dci.task_list}', '${te_dci.task_numbers}', '${te_dci.max}', '${te_dci.max_models}', '${te_dci.init}', '${te_dci.array_name}' );
.end for
.select many te_cias from instances of TE_CIA
.for each te_cia in te_cias
INSERT INTO TE_CIA VALUES ( '${te_cia.class_info_name}', '${te_cia.class_info_type}', '${te_cia.active_count}', '${te_cia.class_count}', '${te_cia.count_type}' );
.end for
.select many te_outfiles from instances of TE_OUTFILE
.for each te_outfile in te_outfiles
INSERT INTO TE_OUTFILE VALUES (\
  .if ( "un-initialized" == "${te_outfile.ID}" )
 0\
  .else
 ${te_outfile.ID}\
  .end if
, '${te_outfile.Name}', '${te_outfile.body}', ${te_outfile.Order} );
.end for
.print "Translation Marking"
.select many tm_cs from instances of TM_C
.for each tm_c in tm_cs
INSERT INTO TM_C VALUES ( '${tm_c.Package}', '${tm_c.Name}', '${tm_c.xName}', '${tm_c.include_file}', ${tm_c.isChannel}, ${tm_c.isRealized}\
  .if ( "un-initialized" == "${tm_c.te_cID}" )
, 0\
  .else
, ${tm_c.te_cID}\
  .end if
 );
.end for
.select many tm_syncs from instances of TM_SYNC
.for each tm_sync in tm_syncs
INSERT INTO TM_SYNC VALUES ( '${tm_sync.RegisteredDomain}', '${tm_sync.Name}', ${tm_sync.IsSafeForInterrupts}, ${tm_sync.IsInitFunction} );
.end for
.select many tm_pointers from instances of TM_POINTER
.for each tm_pointer in tm_pointers
INSERT INTO TM_POINTER VALUES ( '${tm_pointer.Domain}', '${tm_pointer.DT_name}', '${tm_pointer.pointer_type}', '${tm_pointer.include_file}' );
.end for
.select many tm_precisions from instances of TM_PRECISION
.for each tm_precision in tm_precisions
INSERT INTO TM_PRECISION VALUES ( '${tm_precision.Domain}', '${tm_precision.DT_name}', '${tm_precision.xName}', '${tm_precision.initial_value}' );
.end for
.select many tm_enumvals from instances of TM_ENUMVAL
.for each tm_enumval in tm_enumvals
INSERT INTO TM_ENUMVAL VALUES ( '${tm_enumval.Domain}', '${tm_enumval.enumeration}', '${tm_enumval.enumerator}', '${tm_enumval.value}' );
.end for
.select many tm_enuminits from instances of TM_ENUMINIT
.for each tm_enuminit in tm_enuminits
INSERT INTO TM_ENUMINIT VALUES ( '${tm_enuminit.Domain}', '${tm_enuminit.enumeration}', '${tm_enuminit.value}' );
.end for
.select many tm_threads from instances of TM_THREAD
.for each tm_thread in tm_threads
INSERT INTO TM_THREAD VALUES ( ${tm_thread.enabled}, '${tm_thread.flavor}', ${tm_thread.serialize}, ${tm_thread.number_of_threads}, '${tm_thread.extra_initialization}' );
.end for
.select many tm_systags from instances of TM_SYSTAG
.for each tm_systag in tm_systags
INSERT INTO TM_SYSTAG VALUES ( ${tm_systag.MaxStringLen}, ${tm_systag.MaxRelExtent}, ${tm_systag.MaxSelectExtent}, ${tm_systag.MaxSelfEvents}, ${tm_systag.MaxNonSelfEvents}, ${tm_systag.MaxTimers}, ${tm_systag.MaxInterleavedBridges}, ${tm_systag.MaxInterleavedBridgeDataSize}, ${tm_systag.CollectionsFlavor}, ${tm_systag.PersistInstanceCacheDepth}, ${tm_systag.PersistLinkCacheDepth}, ${tm_systag.UnitsToDynamicallyAllocate}, ${tm_systag.VFB}, ${tm_systag.InstanceLoading}, '${tm_systag.SystemCPortsType}', ${tm_systag.AllPortsPoly} );
.end for
.select many tm_builds from instances of TM_BUILD
.for each tm_build in tm_builds
INSERT INTO TM_BUILD VALUES ( '${tm_build.package_to_build}', '${tm_build.package_obj_name}', '${tm_build.package_inst_name}' );
.end for
.select many tm_templates from instances of TM_TEMPLATE
.for each tm_template in tm_templates
INSERT INTO TM_TEMPLATE VALUES (\
  .if ( "un-initialized" == "${tm_template.ID}" )
 0\
  .else
 ${tm_template.ID}\
  .end if
, '${tm_template.tm_cPackage}', '${tm_template.tm_cName}', '${tm_template.tm_ifPackage}', '${tm_template.tm_ifName}', ${tm_template.current}, '${tm_template.template_parameters}', '${tm_template.template_parameters_default}', '${tm_template.template_actual_parameters}', '${tm_template.template_default_instantiation}' );
.end for
.select many tm_tps from instances of TM_TP
.for each tm_tp in tm_tps
INSERT INTO TM_TP VALUES (\
  .if ( "un-initialized" == "${tm_tp.ID}" )
 0\
  .else
 ${tm_tp.ID}\
  .end if
, '${tm_tp.typename}', '${tm_tp.Name}', '${tm_tp.DefaultValue}'\
  .if ( "un-initialized" == "${tm_tp.tm_templateID}" )
, 0\
  .else
, ${tm_tp.tm_templateID}\
  .end if
 );
.end for
.select many tm_ifs from instances of TM_IF
.for each tm_if in tm_ifs
INSERT INTO TM_IF VALUES ( '${tm_if.Package}', '${tm_if.Name}'\
  .if ( "un-initialized" == "${tm_if.c_iId}" )
, 0\
  .else
, ${tm_if.c_iId}\
  .end if
 );
.end for
.select many tm_tpvs from instances of TM_TPV
.for each tm_tpv in tm_tpvs
INSERT INTO TM_TPV VALUES (\
  .if ( "un-initialized" == "${tm_tpv.ID}" )
 0\
  .else
 ${tm_tpv.ID}\
  .end if
, '${tm_tpv.instance}', '${tm_tpv.value}'\
  .if ( "un-initialized" == "${tm_tpv.tm_tpID}" )
, 0\
  .else
, ${tm_tpv.tm_tpID}\
  .end if
\
  .if ( "un-initialized" == "${tm_tpv.te_iirID}" )
, 0\
  .else
, ${tm_tpv.te_iirID}\
  .end if
\
  .if ( "un-initialized" == "${tm_tpv.te_ciID}" )
, 0\
  .else
, ${tm_tpv.te_ciID}\
  .end if
 );
.end for
.print "Use Case"
.select many uc_uccs from instances of UC_UCC
.for each uc_ucc in uc_uccs
INSERT INTO UC_UCC VALUES (\
  .if ( "un-initialized" == "${uc_ucc.Package_ID}" )
 0\
  .else
 ${uc_ucc.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_ucc.Dom_ID}" )
, 0\
  .else
, ${uc_ucc.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_ucc.SS_ID}" )
, 0\
  .else
, ${uc_ucc.SS_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_ucc.Parent_Package_ID}" )
, 0\
  .else
, ${uc_ucc.Parent_Package_ID}\
  .end if
, '${uc_ucc.Name}', ''\
\
  .if ( "un-initialized" == "${uc_ucc.Sys_ID}" )
, 0\
  .else
, ${uc_ucc.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_ucc.Component_Package_ID}" )
, 0\
  .else
, ${uc_ucc.Component_Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_ucc.Component_Id}" )
, 0\
  .else
, ${uc_ucc.Component_Id}\
  .end if
 );
.end for
.select many uc_ucas from instances of UC_UCA
.for each uc_uca in uc_ucas
INSERT INTO UC_UCA VALUES (\
  .if ( "un-initialized" == "${uc_uca.Assoc_ID}" )
 0\
  .else
 ${uc_uca.Assoc_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_uca.Source_Part_ID}" )
, 0\
  .else
, ${uc_uca.Source_Part_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_uca.Destination_Part_ID}" )
, 0\
  .else
, ${uc_uca.Destination_Part_ID}\
  .end if
 );
.end for
.select many uc_piucs from instances of UC_PIUC
.for each uc_piuc in uc_piucs
INSERT INTO UC_PIUC VALUES (\
  .if ( "un-initialized" == "${uc_piuc.Package_ID}" )
 0\
  .else
 ${uc_piuc.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_piuc.Part_ID}" )
, 0\
  .else
, ${uc_piuc.Part_ID}\
  .end if
 );
.end for
.select many uc_uius from instances of UC_UIU
.for each uc_uiu in uc_uius
INSERT INTO UC_UIU VALUES (\
  .if ( "un-initialized" == "${uc_uiu.Package_ID}" )
 0\
  .else
 ${uc_uiu.Package_ID}\
  .end if
 );
.end for
.select many uc_bas from instances of UC_BA
.for each uc_ba in uc_bas
INSERT INTO UC_BA VALUES (\
  .if ( "un-initialized" == "${uc_ba.Assoc_ID}" )
 0\
  .else
 ${uc_ba.Assoc_ID}\
  .end if
, ''\
 );
.end for
.select many uc_gs from instances of UC_G
.for each uc_g in uc_gs
INSERT INTO UC_G VALUES (\
  .if ( "un-initialized" == "${uc_g.Assoc_ID}" )
 0\
  .else
 ${uc_g.Assoc_ID}\
  .end if
, ''\
 );
.end for
.select many uc_is from instances of UC_I
.for each uc_i in uc_is
INSERT INTO UC_I VALUES (\
  .if ( "un-initialized" == "${uc_i.Assoc_ID}" )
 0\
  .else
 ${uc_i.Assoc_ID}\
  .end if
, ''\
 );
.end for
.select many uc_es from instances of UC_E
.for each uc_e in uc_es
INSERT INTO UC_E VALUES (\
  .if ( "un-initialized" == "${uc_e.Assoc_ID}" )
 0\
  .else
 ${uc_e.Assoc_ID}\
  .end if
, ''\
 );
.end for
.select many uc_aiucs from instances of UC_AIUC
.for each uc_aiuc in uc_aiucs
INSERT INTO UC_AIUC VALUES (\
  .if ( "un-initialized" == "${uc_aiuc.Assoc_ID}" )
 0\
  .else
 ${uc_aiuc.Assoc_ID}\
  .end if
\
  .if ( "un-initialized" == "${uc_aiuc.Package_ID}" )
, 0\
  .else
, ${uc_aiuc.Package_ID}\
  .end if
 );
.end for
.print "Wiring"
.select many s_aws from instances of S_AW
.for each s_aw in s_aws
INSERT INTO S_AW VALUES (\
  .if ( "un-initialized" == "${s_aw.Brg_ID}" )
 0\
  .else
 ${s_aw.Brg_ID}\
  .end if
\
  .if ( "un-initialized" == "${s_aw.Sync_ID}" )
, 0\
  .else
, ${s_aw.Sync_ID}\
  .end if
 );
.end for
.emit to file "_system.sql"
.exit 508

