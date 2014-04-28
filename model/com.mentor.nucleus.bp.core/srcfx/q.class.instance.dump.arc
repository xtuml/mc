


  .print "dumping class instances into SQL format..."
.print "Activity"
.select many a_as from instances of A_A
.for each a_a in a_as
INSERT INTO A_A VALUES ( ${a_a.Package_ID}, ${a_a.Name}, ${a_a.Descrip}, ${a_a.Dom_ID}, ${a_a.SS_ID}, ${a_a.Parent_Package_ID}, ${a_a.Sys_ID}, ${a_a.Component_Package_ID}, ${a_a.Component_Id} );
.end for
.select many a_ns from instances of A_N
.for each a_n in a_ns
INSERT INTO A_N VALUES ( ${a_n.Id}, ${a_n.Package_ID} );
.end for
.select many a_es from instances of A_E
.for each a_e in a_es
INSERT INTO A_E VALUES ( ${a_e.Id}, ${a_e.Package_ID}, ${a_e.Guard}, ${a_e.Descrip}, ${a_e.TargetId}, ${a_e.SourceId} );
.end for
.select many a_acts from instances of A_ACT
.for each a_act in a_acts
INSERT INTO A_ACT VALUES ( ${a_act.Id} );
.end for
.select many a_objs from instances of A_OBJ
.for each a_obj in a_objs
INSERT INTO A_OBJ VALUES ( ${a_obj.Id}, ${a_obj.Name}, ${a_obj.Descrip} );
.end for
.select many a_ctls from instances of A_CTL
.for each a_ctl in a_ctls
INSERT INTO A_CTL VALUES ( ${a_ctl.Id} );
.end for
.select many a_inis from instances of A_INI
.for each a_ini in a_inis
INSERT INTO A_INI VALUES ( ${a_ini.Id}, ${a_ini.Descrip} );
.end for
.select many a_afs from instances of A_AF
.for each a_af in a_afs
INSERT INTO A_AF VALUES ( ${a_af.Id}, ${a_af.Descrip} );
.end for
.select many a_ffs from instances of A_FF
.for each a_ff in a_ffs
INSERT INTO A_FF VALUES ( ${a_ff.Id}, ${a_ff.Descrip} );
.end for
.select many a_dms from instances of A_DM
.for each a_dm in a_dms
INSERT INTO A_DM VALUES ( ${a_dm.Id}, ${a_dm.Name}, ${a_dm.Descrip} );
.end for
.select many a_fjs from instances of A_FJ
.for each a_fj in a_fjs
INSERT INTO A_FJ VALUES ( ${a_fj.Id}, ${a_fj.Descrip}, ${a_fj.GuardCondition} );
.end for
.select many a_gas from instances of A_GA
.for each a_ga in a_gas
INSERT INTO A_GA VALUES ( ${a_ga.Id}, ${a_ga.Name}, ${a_ga.Descrip} );
.end for
.select many a_aes from instances of A_AE
.for each a_ae in a_aes
INSERT INTO A_AE VALUES ( ${a_ae.Id} );
.end for
.select many a_sss from instances of A_SS
.for each a_ss in a_sss
INSERT INTO A_SS VALUES ( ${a_ss.Id}, ${a_ss.Name}, ${a_ss.Descrip} );
.end for
.select many a_aias from instances of A_AIA
.for each a_aia in a_aias
INSERT INTO A_AIA VALUES ( ${a_aia.Package_ID} );
.end for
.select many a_aps from instances of A_AP
.for each a_ap in a_aps
INSERT INTO A_AP VALUES ( ${a_ap.Id}, ${a_ap.Package_ID}, ${a_ap.Name}, ${a_ap.Descrip} );
.end for
.select many a_ates from instances of A_ATE
.for each a_ate in a_ates
INSERT INTO A_ATE VALUES ( ${a_ate.Id}, ${a_ate.Name}, ${a_ate.Descrip} );
.end for
.select many a_aeas from instances of A_AEA
.for each a_aea in a_aeas
INSERT INTO A_AEA VALUES ( ${a_aea.Id}, ${a_aea.Name}, ${a_aea.Descrip} );
.end for
.print "Association"
.select many r_rels from instances of R_REL
.for each r_rel in r_rels
INSERT INTO R_REL VALUES ( ${r_rel.Rel_ID}, ${r_rel.Numb}, ${r_rel.Descrip}, ${r_rel.SS_ID} );
.end for
.select many r_oirs from instances of R_OIR
.for each r_oir in r_oirs
INSERT INTO R_OIR VALUES ( ${r_oir.Obj_ID}, ${r_oir.Rel_ID}, ${r_oir.OIR_ID}, ${r_oir.IObj_ID} );
.end for
.select many r_rtos from instances of R_RTO
.for each r_rto in r_rtos
INSERT INTO R_RTO VALUES ( ${r_rto.Obj_ID}, ${r_rto.Rel_ID}, ${r_rto.OIR_ID}, ${r_rto.Oid_ID} );
.end for
.select many r_rgos from instances of R_RGO
.for each r_rgo in r_rgos
INSERT INTO R_RGO VALUES ( ${r_rgo.Obj_ID}, ${r_rgo.Rel_ID}, ${r_rgo.OIR_ID} );
.end for
.select many r_simps from instances of R_SIMP
.for each r_simp in r_simps
INSERT INTO R_SIMP VALUES ( ${r_simp.Rel_ID} );
.end for
.select many r_parts from instances of R_PART
.for each r_part in r_parts
INSERT INTO R_PART VALUES ( ${r_part.Obj_ID}, ${r_part.Rel_ID}, ${r_part.OIR_ID}, ${r_part.Mult}, ${r_part.Cond}, ${r_part.Txt_Phrs} );
.end for
.select many r_forms from instances of R_FORM
.for each r_form in r_forms
INSERT INTO R_FORM VALUES ( ${r_form.Obj_ID}, ${r_form.Rel_ID}, ${r_form.OIR_ID}, ${r_form.Mult}, ${r_form.Cond}, ${r_form.Txt_Phrs} );
.end for
.select many r_assocs from instances of R_ASSOC
.for each r_assoc in r_assocs
INSERT INTO R_ASSOC VALUES ( ${r_assoc.Rel_ID} );
.end for
.select many r_aones from instances of R_AONE
.for each r_aone in r_aones
INSERT INTO R_AONE VALUES ( ${r_aone.Obj_ID}, ${r_aone.Rel_ID}, ${r_aone.OIR_ID}, ${r_aone.Mult}, ${r_aone.Cond}, ${r_aone.Txt_Phrs} );
.end for
.select many r_aoths from instances of R_AOTH
.for each r_aoth in r_aoths
INSERT INTO R_AOTH VALUES ( ${r_aoth.Obj_ID}, ${r_aoth.Rel_ID}, ${r_aoth.OIR_ID}, ${r_aoth.Mult}, ${r_aoth.Cond}, ${r_aoth.Txt_Phrs} );
.end for
.select many r_assrs from instances of R_ASSR
.for each r_assr in r_assrs
INSERT INTO R_ASSR VALUES ( ${r_assr.Obj_ID}, ${r_assr.Rel_ID}, ${r_assr.OIR_ID}, ${r_assr.Mult} );
.end for
.select many r_subsups from instances of R_SUBSUP
.for each r_subsup in r_subsups
INSERT INTO R_SUBSUP VALUES ( ${r_subsup.Rel_ID} );
.end for
.select many r_supers from instances of R_SUPER
.for each r_super in r_supers
INSERT INTO R_SUPER VALUES ( ${r_super.Obj_ID}, ${r_super.Rel_ID}, ${r_super.OIR_ID} );
.end for
.select many r_subs from instances of R_SUB
.for each r_sub in r_subs
INSERT INTO R_SUB VALUES ( ${r_sub.Obj_ID}, ${r_sub.Rel_ID}, ${r_sub.OIR_ID} );
.end for
.select many r_comps from instances of R_COMP
.for each r_comp in r_comps
INSERT INTO R_COMP VALUES ( ${r_comp.Rel_ID}, ${r_comp.Rel_Chn} );
.end for
.select many r_cones from instances of R_CONE
.for each r_cone in r_cones
INSERT INTO R_CONE VALUES ( ${r_cone.Obj_ID}, ${r_cone.Rel_ID}, ${r_cone.OIR_ID}, ${r_cone.Mult}, ${r_cone.Cond}, ${r_cone.Txt_Phrs} );
.end for
.select many r_coths from instances of R_COTH
.for each r_coth in r_coths
INSERT INTO R_COTH VALUES ( ${r_coth.Obj_ID}, ${r_coth.Rel_ID}, ${r_coth.OIR_ID}, ${r_coth.Mult}, ${r_coth.Cond}, ${r_coth.Txt_Phrs} );
.end for
.print "Breakpoint"
.select many bp_bps from instances of BP_BP
.for each bp_bp in bp_bps
INSERT INTO BP_BP VALUES ( ${bp_bp.Breakpoint_ID}, ${bp_bp.enabled}, ${bp_bp.condition_enabled}, ${bp_bp.hit_count}, ${bp_bp.target_hit_count}, ${bp_bp.for_step} );
.end for
.select many bp_oals from instances of BP_OAL
.for each bp_oal in bp_oals
INSERT INTO BP_OAL VALUES ( ${bp_oal.Statement_ID}, ${bp_oal.Breakpoint_ID} );
.end for
.select many bp_evs from instances of BP_EV
.for each bp_ev in bp_evs
INSERT INTO BP_EV VALUES ( ${bp_ev.Breakpoint_ID}, ${bp_ev.onEnqueue}, ${bp_ev.onDequeue}, ${bp_ev.onEventIgnored}, ${bp_ev.onCantHappen}, ${bp_ev.SMevt_ID} );
.end for
.select many bp_cons from instances of BP_CON
.for each bp_con in bp_cons
INSERT INTO BP_CON VALUES ( ${bp_con.Breakpoint_ID}, ${bp_con.Expression} );
.end for
.select many bp_sts from instances of BP_ST
.for each bp_st in bp_sts
INSERT INTO BP_ST VALUES ( ${bp_st.Breakpoint_ID}, ${bp_st.onEntry}, ${bp_st.onExit}, ${bp_st.SM_ID}, ${bp_st.SMstt_ID} );
.end for
.print "Communication"
.select many comm_comms from instances of COMM_COMM
.for each comm_comm in comm_comms
INSERT INTO COMM_COMM VALUES ( ${comm_comm.Package_ID}, ${comm_comm.Dom_ID}, ${comm_comm.SS_ID}, ${comm_comm.CIC_Package_ID}, ${comm_comm.Name}, ${comm_comm.Descrip}, ${comm_comm.Sys_ID}, ${comm_comm.Component_Package_ID}, ${comm_comm.Component_Id} );
.end for
.select many comm_lnks from instances of COMM_LNK
.for each comm_lnk in comm_lnks
INSERT INTO COMM_LNK VALUES ( ${comm_lnk.Link_ID}, ${comm_lnk.Rel_ID}, ${comm_lnk.Numb}, ${comm_lnk.Descrip}, ${comm_lnk.StartText}, ${comm_lnk.EndText}, ${comm_lnk.isFormal}, ${comm_lnk.StartVisibility}, ${comm_lnk.EndVisibility}, ${comm_lnk.Start_Part_ID}, ${comm_lnk.Destination_Part_ID} );
.end for
.select many comm_cics from instances of COMM_CIC
.for each comm_cic in comm_cics
INSERT INTO COMM_CIC VALUES ( ${comm_cic.Package_ID} );
.end for
.select many comm_mics from instances of COMM_MIC
.for each comm_mic in comm_mics
INSERT INTO COMM_MIC VALUES ( ${comm_mic.Package_ID}, ${comm_mic.Msg_ID} );
.end for
.select many comm_pics from instances of COMM_PIC
.for each comm_pic in comm_pics
INSERT INTO COMM_PIC VALUES ( ${comm_pic.Package_ID}, ${comm_pic.Part_ID} );
.end for
.print "Communication And Access"
.select many ca_comms from instances of CA_COMM
.for each ca_comm in ca_comms
INSERT INTO CA_COMM VALUES ( ${ca_comm.CPath_ID}, ${ca_comm.SS_ID} );
.end for
.select many ca_eesmcs from instances of CA_EESMC
.for each ca_eesmc in ca_eesmcs
INSERT INTO CA_EESMC VALUES ( ${ca_eesmc.CPath_ID}, ${ca_eesmc.EEmod_ID}, ${ca_eesmc.EE_ID}, ${ca_eesmc.SM_ID} );
.end for
.select many ca_smsmcs from instances of CA_SMSMC
.for each ca_smsmc in ca_smsmcs
INSERT INTO CA_SMSMC VALUES ( ${ca_smsmc.CPath_ID}, ${ca_smsmc.OSM_ID}, ${ca_smsmc.DSM_ID}, ${ca_smsmc.OIObj_ID}, ${ca_smsmc.DIObj_ID} );
.end for
.select many ca_smeecs from instances of CA_SMEEC
.for each ca_smeec in ca_smeecs
INSERT INTO CA_SMEEC VALUES ( ${ca_smeec.CPath_ID}, ${ca_smeec.SM_ID}, ${ca_smeec.EE_ID}, ${ca_smeec.EEmod_ID} );
.end for
.select many ca_eesmes from instances of CA_EESME
.for each ca_eesme in ca_eesmes
INSERT INTO CA_EESME VALUES ( ${ca_eesme.CPath_ID}, ${ca_eesme.SMevt_ID} );
.end for
.select many ca_smsmes from instances of CA_SMSME
.for each ca_smsme in ca_smsmes
INSERT INTO CA_SMSME VALUES ( ${ca_smsme.CPath_ID}, ${ca_smsme.SMevt_ID} );
.end for
.select many ca_smeees from instances of CA_SMEEE
.for each ca_smeee in ca_smeees
INSERT INTO CA_SMEEE VALUES ( ${ca_smeee.CPath_ID}, ${ca_smeee.EE_ID}, ${ca_smeee.EEevt_ID} );
.end for
.select many ca_accs from instances of CA_ACC
.for each ca_acc in ca_accs
INSERT INTO CA_ACC VALUES ( ${ca_acc.APath_ID}, ${ca_acc.SS_ID}, ${ca_acc.SM_ID}, ${ca_acc.IObj_ID} );
.end for
.select many ca_smoas from instances of CA_SMOA
.for each ca_smoa in ca_smoas
INSERT INTO CA_SMOA VALUES ( ${ca_smoa.APath_ID}, ${ca_smoa.Obj_ID}, ${ca_smoa.IObj_ID} );
.end for
.select many ca_smeeas from instances of CA_SMEEA
.for each ca_smeea in ca_smeeas
INSERT INTO CA_SMEEA VALUES ( ${ca_smeea.APath_ID}, ${ca_smeea.EE_ID}, ${ca_smeea.EEmod_ID} );
.end for
.select many ca_smoaas from instances of CA_SMOAA
.for each ca_smoaa in ca_smoaas
INSERT INTO CA_SMOAA VALUES ( ${ca_smoaa.APath_ID}, ${ca_smoaa.Attr_ID}, ${ca_smoaa.Obj_ID} );
.end for
.select many ca_smeeds from instances of CA_SMEED
.for each ca_smeed in ca_smeeds
INSERT INTO CA_SMEED VALUES ( ${ca_smeed.APath_ID}, ${ca_smeed.EEdi_ID}, ${ca_smeed.EE_ID} );
.end for
.print "Component"
.select many c_cs from instances of C_C
.for each c_c in c_cs
INSERT INTO C_C VALUES ( ${c_c.Id}, ${c_c.Package_ID}, ${c_c.NestedComponent_Id}, ${c_c.Name}, ${c_c.Descrip}, ${c_c.Mult}, ${c_c.Root_Package_ID}, ${c_c.isRealized}, ${c_c.Realized_Class_Path} );
.end for
.select many c_is from instances of C_I
.for each c_i in c_is
INSERT INTO C_I VALUES ( ${c_i.Id}, ${c_i.Package_ID}, ${c_i.Name}, ${c_i.Descrip} );
.end for
.select many c_ps from instances of C_P
.for each c_p in c_ps
INSERT INTO C_P VALUES ( ${c_p.Provision_Id}, ${c_p.Name}, ${c_p.InformalName}, ${c_p.Descrip}, ${c_p.pathFromComponent} );
.end for
.select many c_rs from instances of C_R
.for each c_r in c_rs
INSERT INTO C_R VALUES ( ${c_r.Requirement_Id}, ${c_r.Name}, ${c_r.Descrip}, ${c_r.InformalName}, ${c_r.reversePathFromComponent} );
.end for
.select many c_eps from instances of C_EP
.for each c_ep in c_eps
INSERT INTO C_EP VALUES ( ${c_ep.Id}, ${c_ep.Interface_Id}, ${c_ep.Direction}, ${c_ep.Name}, ${c_ep.Descrip} );
.end for
.select many c_ass from instances of C_AS
.for each c_as in c_ass
INSERT INTO C_AS VALUES ( ${c_as.Id}, ${c_as.Name}, ${c_as.Descrip}, ${c_as.Direction}, ${c_as.Previous_Id} );
.end for
.select many c_ios from instances of C_IO
.for each c_io in c_ios
INSERT INTO C_IO VALUES ( ${c_io.Id}, ${c_io.DT_ID}, ${c_io.Name}, ${c_io.Descrip}, ${c_io.Direction}, ${c_io.Return_Dimensions}, ${c_io.Previous_Id} );
.end for
.select many c_sfs from instances of C_SF
.for each c_sf in c_sfs
INSERT INTO C_SF VALUES ( ${c_sf.Id}, ${c_sf.Requirement_Id}, ${c_sf.Provision_Id}, ${c_sf.Descrip}, ${c_sf.Label} );
.end for
.select many c_pps from instances of C_PP
.for each c_pp in c_pps
INSERT INTO C_PP VALUES ( ${c_pp.PP_Id}, ${c_pp.Signal_Id}, ${c_pp.DT_ID}, ${c_pp.Name}, ${c_pp.Descrip}, ${c_pp.By_Ref}, ${c_pp.Dimensions}, ${c_pp.Previous_PP_Id} );
.end for
.select many c_irs from instances of C_IR
.for each c_ir in c_irs
INSERT INTO C_IR VALUES ( ${c_ir.Id}, ${c_ir.Formal_Interface_Id}, ${c_ir.Delegation_Id}, ${c_ir.Port_Id} );
.end for
.select many c_dgs from instances of C_DG
.for each c_dg in c_dgs
INSERT INTO C_DG VALUES ( ${c_dg.Id}, ${c_dg.Name} );
.end for
.select many c_pos from instances of C_PO
.for each c_po in c_pos
INSERT INTO C_PO VALUES ( ${c_po.Id}, ${c_po.Component_Id}, ${c_po.Name}, ${c_po.Mult}, ${c_po.DoNotShowPortOnCanvas} );
.end for
.select many c_rids from instances of C_RID
.for each c_rid in c_rids
INSERT INTO C_RID VALUES ( ${c_rid.Reference_Id}, ${c_rid.Delegation_Id} );
.end for
.print "Constants"
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
INSERT INTO CNST_CSP VALUES ( ${cnst_csp.Constant_Spec_ID}, ${cnst_csp.InformalGroupName}, ${cnst_csp.Descrip} );
.end for
.select many cnst_sycs from instances of CNST_SYC
.for each cnst_syc in cnst_sycs
INSERT INTO CNST_SYC VALUES ( ${cnst_syc.Const_ID}, ${cnst_syc.Name}, ${cnst_syc.Descrip}, ${cnst_syc.DT_ID}, ${cnst_syc.Constant_Spec_ID}, ${cnst_syc.Previous_Const_ID}, ${cnst_syc.Previous_DT_DT_ID} );
.end for
.select many cnst_lfscs from instances of CNST_LFSC
.for each cnst_lfsc in cnst_lfscs
INSERT INTO CNST_LFSC VALUES ( ${cnst_lfsc.Const_ID}, ${cnst_lfsc.DT_ID} );
.end for
.select many cnst_lscs from instances of CNST_LSC
.for each cnst_lsc in cnst_lscs
INSERT INTO CNST_LSC VALUES ( ${cnst_lsc.Const_ID}, ${cnst_lsc.DT_ID}, ${cnst_lsc.Value} );
.end for
.select many cnst_cips from instances of CNST_CIP
.for each cnst_cip in cnst_cips
INSERT INTO CNST_CIP VALUES ( ${cnst_cip.Constant_Spec_ID}, ${cnst_cip.Package_ID} );
.end for
.print "Datatypes"
.print "DocGen"
.print "Document"
.select many doc_docs from instances of DOC_DOC
.for each doc_doc in doc_docs
INSERT INTO DOC_DOC VALUES ( ${doc_doc.title}, ${doc_doc.subtitle}, ${doc_doc.author}, ${doc_doc.font_family}, ${doc_doc.company}, ${doc_doc.copyright}, ${doc_doc.filename}, ${doc_doc.model_image_ext} );
.end for
.select many doc_secs from instances of DOC_SEC
.for each doc_sec in doc_secs
INSERT INTO DOC_SEC VALUES ( ${doc_sec.ID}, ${doc_sec.nextID}, ${doc_sec.title}, ${doc_sec.subtitle}, ${doc_sec.level}, ${doc_sec.abstract} );
.end for
.select many doc_dates from instances of DOC_DATE
.for each doc_date in doc_dates
INSERT INTO DOC_DATE VALUES ( ${doc_date.year}, ${doc_date.month}, ${doc_date.day}, ${doc_date.time} );
.end for
.select many doc_heads from instances of DOC_HEAD
.for each doc_head in doc_heads
INSERT INTO DOC_HEAD VALUES ( ${doc_head.text} );
.end for
.select many doc_foots from instances of DOC_FOOT
.for each doc_foot in doc_foots
INSERT INTO DOC_FOOT VALUES ( ${doc_foot.text} );
.end for
.select many doc_addrs from instances of DOC_ADDR
.for each doc_addr in doc_addrs
INSERT INTO DOC_ADDR VALUES ( ${doc_addr.street}, ${doc_addr.city}, ${doc_addr.state}, ${doc_addr.postcode} );
.end for
.select many doc_pars from instances of DOC_PAR
.for each doc_par in doc_pars
INSERT INTO DOC_PAR VALUES ( ${doc_par.ID}, ${doc_par.sectionID}, ${doc_par.text}, ${doc_par.ptext}, ${doc_par.formatted} );
.end for
.select many doc_figs from instances of DOC_FIG
.for each doc_fig in doc_figs
INSERT INTO DOC_FIG VALUES ( ${doc_fig.title}, ${doc_fig.ident} );
.end for
.select many doc_links from instances of DOC_LINK
.for each doc_link in doc_links
INSERT INTO DOC_LINK VALUES ( ${doc_link.target}, ${doc_link.text} );
.end for
.select many doc_tbls from instances of DOC_TBL
.for each doc_tbl in doc_tbls
INSERT INTO DOC_TBL VALUES ( ${doc_tbl.title}, ${doc_tbl.num_cols} );
.end for
.select many doc_imgs from instances of DOC_IMG
.for each doc_img in doc_imgs
INSERT INTO DOC_IMG VALUES ( ${doc_img.target} );
.end for
.select many doc_cells from instances of DOC_CELL
.for each doc_cell in doc_cells
INSERT INTO DOC_CELL VALUES ( ${doc_cell.text} );
.end for
.select many doc_rows from instances of DOC_ROW
.for each doc_row in doc_rows
INSERT INTO DOC_ROW VALUES ( ${doc_row.head} );
.end for
.print "Document Data Types"
.print "Domain"
.select many s_doms from instances of S_DOM
.for each s_dom in s_doms
INSERT INTO S_DOM VALUES ( ${s_dom.Dom_ID}, ${s_dom.Name}, ${s_dom.Descrip}, ${s_dom.Full_Der}, ${s_dom.Config_ID}, ${s_dom.Sys_ID} );
.end for
.select many s_sss from instances of S_SS
.for each s_ss in s_sss
INSERT INTO S_SS VALUES ( ${s_ss.SS_ID}, ${s_ss.Name}, ${s_ss.Descrip}, ${s_ss.Prefix}, ${s_ss.Num_Rng}, ${s_ss.Dom_ID}, ${s_ss.Config_ID} );
.end for
.select many s_ees from instances of S_EE
.for each s_ee in s_ees
INSERT INTO S_EE VALUES ( ${s_ee.EE_ID}, ${s_ee.Name}, ${s_ee.Descrip}, ${s_ee.Key_Lett}, ${s_ee.Dom_ID}, ${s_ee.Realized_Class_Path}, ${s_ee.Label} );
.end for
.select many s_eems from instances of S_EEM
.for each s_eem in s_eems
INSERT INTO S_EEM VALUES ( ${s_eem.EEmod_ID}, ${s_eem.EE_ID}, ${s_eem.Modl_Typ}, ${s_eem.SS_ID} );
.end for
.select many s_eedis from instances of S_EEDI
.for each s_eedi in s_eedis
INSERT INTO S_EEDI VALUES ( ${s_eedi.EEdi_ID}, ${s_eedi.EE_ID}, ${s_eedi.Name}, ${s_eedi.Descrip}, ${s_eedi.DT_ID} );
.end for
.select many s_eeevts from instances of S_EEEVT
.for each s_eeevt in s_eeevts
INSERT INTO S_EEEVT VALUES ( ${s_eeevt.EEevt_ID}, ${s_eeevt.EE_ID}, ${s_eeevt.Numb}, ${s_eeevt.Mning}, ${s_eeevt.Is_Lbl_U}, ${s_eeevt.Unq_Lbl}, ${s_eeevt.Drv_Lbl}, ${s_eeevt.Descrip} );
.end for
.select many s_eeedis from instances of S_EEEDI
.for each s_eeedi in s_eeedis
INSERT INTO S_EEEDI VALUES ( ${s_eeedi.EEedi_ID}, ${s_eeedi.EE_ID}, ${s_eeedi.Name}, ${s_eeedi.Descrip}, ${s_eeedi.DT_ID} );
.end for
.select many s_eeedts from instances of S_EEEDT
.for each s_eeedt in s_eeedts
INSERT INTO S_EEEDT VALUES ( ${s_eeedt.EE_ID}, ${s_eeedt.EEevt_ID}, ${s_eeedt.EEedi_ID} );
.end for
.select many s_dts from instances of S_DT
.for each s_dt in s_dts
INSERT INTO S_DT VALUES ( ${s_dt.DT_ID}, ${s_dt.Dom_ID}, ${s_dt.Name}, ${s_dt.Descrip}, ${s_dt.DefaultValue} );
.end for
.select many s_cdts from instances of S_CDT
.for each s_cdt in s_cdts
INSERT INTO S_CDT VALUES ( ${s_cdt.DT_ID}, ${s_cdt.Core_Typ} );
.end for
.select many s_udts from instances of S_UDT
.for each s_udt in s_udts
INSERT INTO S_UDT VALUES ( ${s_udt.DT_ID}, ${s_udt.CDT_DT_ID}, ${s_udt.Gen_Type} );
.end for
.select many s_brgs from instances of S_BRG
.for each s_brg in s_brgs
INSERT INTO S_BRG VALUES ( ${s_brg.Brg_ID}, ${s_brg.EE_ID}, ${s_brg.Name}, ${s_brg.Descrip}, ${s_brg.Brg_Typ}, ${s_brg.DT_ID}, ${s_brg.Action_Semantics_internal}, ${s_brg.Suc_Pars}, ${s_brg.Return_Dimensions} );
.end for
.select many s_bparms from instances of S_BPARM
.for each s_bparm in s_bparms
INSERT INTO S_BPARM VALUES ( ${s_bparm.BParm_ID}, ${s_bparm.Brg_ID}, ${s_bparm.Name}, ${s_bparm.DT_ID}, ${s_bparm.By_Ref}, ${s_bparm.Dimensions}, ${s_bparm.Previous_BParm_ID}, ${s_bparm.Descrip} );
.end for
.select many s_edts from instances of S_EDT
.for each s_edt in s_edts
INSERT INTO S_EDT VALUES ( ${s_edt.DT_ID} );
.end for
.select many s_enums from instances of S_ENUM
.for each s_enum in s_enums
INSERT INTO S_ENUM VALUES ( ${s_enum.Enum_ID}, ${s_enum.Name}, ${s_enum.Descrip}, ${s_enum.EDT_DT_ID}, ${s_enum.Previous_Enum_ID} );
.end for
.select many s_syncs from instances of S_SYNC
.for each s_sync in s_syncs
INSERT INTO S_SYNC VALUES ( ${s_sync.Sync_ID}, ${s_sync.Dom_ID}, ${s_sync.Name}, ${s_sync.Descrip}, ${s_sync.Action_Semantics_internal}, ${s_sync.DT_ID}, ${s_sync.Suc_Pars}, ${s_sync.Return_Dimensions} );
.end for
.select many s_sparms from instances of S_SPARM
.for each s_sparm in s_sparms
INSERT INTO S_SPARM VALUES ( ${s_sparm.SParm_ID}, ${s_sparm.Sync_ID}, ${s_sparm.Name}, ${s_sparm.DT_ID}, ${s_sparm.By_Ref}, ${s_sparm.Dimensions}, ${s_sparm.Previous_SParm_ID}, ${s_sparm.Descrip} );
.end for
.select many s_syss from instances of S_SYS
.for each s_sys in s_syss
INSERT INTO S_SYS VALUES ( ${s_sys.Sys_ID}, ${s_sys.Name}, ${s_sys.useGlobals} );
.end for
.select many s_fpks from instances of S_FPK
.for each s_fpk in s_fpks
INSERT INTO S_FPK VALUES ( ${s_fpk.FunPack_ID}, ${s_fpk.Name}, ${s_fpk.Dom_ID}, ${s_fpk.Parent_FunPack_ID} );
.end for
.select many s_fips from instances of S_FIP
.for each s_fip in s_fips
INSERT INTO S_FIP VALUES ( ${s_fip.FunPack_ID}, ${s_fip.Sync_ID} );
.end for
.select many s_fpips from instances of S_FPIP
.for each s_fpip in s_fpips
INSERT INTO S_FPIP VALUES ( ${s_fpip.FunPack_ID} );
.end for
.select many s_eepks from instances of S_EEPK
.for each s_eepk in s_eepks
INSERT INTO S_EEPK VALUES ( ${s_eepk.EEPack_ID}, ${s_eepk.Name}, ${s_eepk.Dom_ID}, ${s_eepk.Parent_EEPack_ID} );
.end for
.select many s_eeips from instances of S_EEIP
.for each s_eeip in s_eeips
INSERT INTO S_EEIP VALUES ( ${s_eeip.EEPack_ID}, ${s_eeip.EE_ID} );
.end for
.select many s_eepips from instances of S_EEPIP
.for each s_eepip in s_eepips
INSERT INTO S_EEPIP VALUES ( ${s_eepip.EEPack_ID} );
.end for
.select many s_dpks from instances of S_DPK
.for each s_dpk in s_dpks
INSERT INTO S_DPK VALUES ( ${s_dpk.Package_ID}, ${s_dpk.Name}, ${s_dpk.Dom_ID}, ${s_dpk.Parent_Package_ID} );
.end for
.select many s_dips from instances of S_DIP
.for each s_dip in s_dips
INSERT INTO S_DIP VALUES ( ${s_dip.Package_ID}, ${s_dip.DT_ID} );
.end for
.select many s_dpips from instances of S_DPIP
.for each s_dpip in s_dpips
INSERT INTO S_DPIP VALUES ( ${s_dpip.Package_ID} );
.end for
.select many s_siss from instances of S_SIS
.for each s_sis in s_siss
INSERT INTO S_SIS VALUES ( ${s_sis.Parent_SS_ID}, ${s_sis.Child_SS_ID} );
.end for
.select many s_sids from instances of S_SID
.for each s_sid in s_sids
INSERT INTO S_SID VALUES ( ${s_sid.Dom_ID}, ${s_sid.SS_ID} );
.end for
.select many s_irdts from instances of S_IRDT
.for each s_irdt in s_irdts
INSERT INTO S_IRDT VALUES ( ${s_irdt.DT_ID}, ${s_irdt.isSet}, ${s_irdt.Obj_ID} );
.end for
.select many s_sdts from instances of S_SDT
.for each s_sdt in s_sdts
INSERT INTO S_SDT VALUES ( ${s_sdt.DT_ID} );
.end for
.select many s_mbrs from instances of S_MBR
.for each s_mbr in s_mbrs
INSERT INTO S_MBR VALUES ( ${s_mbr.Member_ID}, ${s_mbr.Name}, ${s_mbr.Descrip}, ${s_mbr.Parent_DT_DT_ID}, ${s_mbr.DT_ID}, ${s_mbr.Previous_Member_ID}, ${s_mbr.Dimensions} );
.end for
.select many s_diss from instances of S_DIS
.for each s_dis in s_diss
INSERT INTO S_DIS VALUES ( ${s_dis.Dom_ID}, ${s_dis.DT_ID} );
.end for
.select many s_dims from instances of S_DIM
.for each s_dim in s_dims
INSERT INTO S_DIM VALUES ( ${s_dim.elementCount}, ${s_dim.dimensionCount}, ${s_dim.Sync_ID}, ${s_dim.SParm_ID}, ${s_dim.BParm_ID}, ${s_dim.Brg_ID}, ${s_dim.Id}, ${s_dim.Obj_ID}, ${s_dim.Attr_ID}, ${s_dim.TParm_ID}, ${s_dim.Tfr_ID}, ${s_dim.Member_ID}, ${s_dim.DT_ID}, ${s_dim.PP_Id}, ${s_dim.SM_ID}, ${s_dim.SMedi_ID}, ${s_dim.DIM_ID}, ${s_dim.Var_ID} );
.end for
.print "Element Packaging"
.select many ep_pkgs from instances of EP_PKG
.for each ep_pkg in ep_pkgs
INSERT INTO EP_PKG VALUES ( ${ep_pkg.Package_ID}, ${ep_pkg.Sys_ID}, ${ep_pkg.Direct_Sys_ID}, ${ep_pkg.Name}, ${ep_pkg.Descrip}, ${ep_pkg.Num_Rng} );
.end for
.select many ep_spkgs from instances of EP_SPKG
.for each ep_spkg in ep_spkgs
INSERT INTO EP_SPKG VALUES ( ${ep_spkg.Package_ID}, ${ep_spkg.Container_Package_ID} );
.end for
.select many ep_pips from instances of EP_PIP
.for each ep_pip in ep_pips
INSERT INTO EP_PIP VALUES ( ${ep_pip.Parent_Package_ID}, ${ep_pip.Child_Package_ID} );
.end for
.print "External Entities"
.print "Functions"
.print "Globals"
.select many g_eiss from instances of G_EIS
.for each g_eis in g_eiss
INSERT INTO G_EIS VALUES ( ${g_eis.Element_ID}, ${g_eis.Sys_ID} );
.end for
.print "Instance"
.select many i_lnks from instances of I_LNK
.for each i_lnk in i_lnks
INSERT INTO I_LNK VALUES ( ${i_lnk.Link_ID}, ${i_lnk.Rel_ID}, ${i_lnk.fromInst_ID}, ${i_lnk.toInst_ID}, ${i_lnk.assocInst_ID} );
.end for
.select many i_evis from instances of I_EVI
.for each i_evi in i_evis
INSERT INTO I_EVI VALUES ( ${i_evi.Event_ID}, ${i_evi.isExecuting}, ${i_evi.isCreation}, ${i_evi.SMevt_ID}, ${i_evi.Target_Inst_ID}, ${i_evi.nextEvent_ID}, ${i_evi.Sent_By_Inst_ID}, ${i_evi.next_self_Event_ID}, ${i_evi.Sent_By_CIE_ID}, ${i_evi.CIE_ID}, ${i_evi.Execution_Engine_ID}, ${i_evi.Originating_Execution_Engine_ID}, ${i_evi.Label} );
.end for
.select many i_avls from instances of I_AVL
.for each i_avl in i_avls
INSERT INTO I_AVL VALUES ( ${i_avl.Inst_ID}, ${i_avl.Obj_ID}, ${i_avl.Attr_ID}, ${i_avl.Value}, ${i_avl.Label} );
.end for
.select many i_inss from instances of I_INS
.for each i_ins in i_inss
INSERT INTO I_INS VALUES ( ${i_ins.Inst_ID}, ${i_ins.Name}, ${i_ins.SM_ID}, ${i_ins.SMstt_ID}, ${i_ins.Execution_Engine_ID}, ${i_ins.Trans_ID}, ${i_ins.CIE_ID}, ${i_ins.Label}, ${i_ins.Default_Name} );
.end for
.select many i_exes from instances of I_EXE
.for each i_exe in i_exes
INSERT INTO I_EXE VALUES ( ${i_exe.Running}, ${i_exe.Execution_Engine_ID}, ${i_exe.Dom_ID}, ${i_exe.Component_Id}, ${i_exe.Package_ID}, ${i_exe.Next_Unique_ID}, ${i_exe.Next_Instance_ID}, ${i_exe.ImportedComponent_Id}, ${i_exe.Label}, ${i_exe.EQE_Lock}, ${i_exe.SQE_Lock}, ${i_exe.Container_ID}, ${i_exe.RealizedBy} );
.end for
.select many i_stfs from instances of I_STF
.for each i_stf in i_stfs
INSERT INTO I_STF VALUES ( ${i_stf.Stack_Frame_ID}, ${i_stf.Created_For_Wired_Bridge}, ${i_stf.readyForInterrupt}, ${i_stf.Bridge_Caller_Stack_Frame_ID}, ${i_stf.Child_Stack_Frame_ID}, ${i_stf.Top_Stack_Frame_Stack_ID}, ${i_stf.Stack_ID}, ${i_stf.Inst_ID}, ${i_stf.Value_Q_Stack_ID}, ${i_stf.Blocking_Stack_Frame_ID} );
.end for
.select many i_bsfs from instances of I_BSF
.for each i_bsf in i_bsfs
INSERT INTO I_BSF VALUES ( ${i_bsf.Block_ID}, ${i_bsf.Stack_Frame_ID}, ${i_bsf.Statement_ID}, ${i_bsf.isExecuting} );
.end for
.select many i_stacks from instances of I_STACK
.for each i_stack in i_stacks
INSERT INTO I_STACK VALUES ( ${i_stack.Stack_ID}, ${i_stack.Execution_Engine_ID}, ${i_stack.runState}, ${i_stack.suspendReason} );
.end for
.select many i_divs from instances of I_DIV
.for each i_div in i_divs
INSERT INTO I_DIV VALUES ( ${i_div.DIV_ID}, ${i_div.Event_ID}, ${i_div.SM_ID}, ${i_div.SMedi_ID}, ${i_div.PP_Id} );
.end for
.select many i_tims from instances of I_TIM
.for each i_tim in i_tims
INSERT INTO I_TIM VALUES ( ${i_tim.Timer_ID}, ${i_tim.delay}, ${i_tim.running}, ${i_tim.recurring}, ${i_tim.Event_ID}, ${i_tim.Label}, ${i_tim.expiration} );
.end for
.select many i_eqes from instances of I_EQE
.for each i_eqe in i_eqes
INSERT INTO I_EQE VALUES ( ${i_eqe.Event_Queue_Entry_ID}, ${i_eqe.Execution_Engine_ID}, ${i_eqe.Event_ID}, ${i_eqe.Next_Event_Queue_Entry_ID} );
.end for
.select many i_sqes from instances of I_SQE
.for each i_sqe in i_sqes
INSERT INTO I_SQE VALUES ( ${i_sqe.Self_Queue_Entry_ID}, ${i_sqe.Execution_Engine_ID}, ${i_sqe.Event_ID}, ${i_sqe.Next_Self_Queue_Entry_ID} );
.end for
.select many i_mons from instances of I_MON
.for each i_mon in i_mons
INSERT INTO I_MON VALUES ( ${i_mon.Execution_Engine_ID}, ${i_mon.Inst_ID}, ${i_mon.enabled} );
.end for
.select many i_vsfs from instances of I_VSF
.for each i_vsf in i_vsfs
INSERT INTO I_VSF VALUES ( ${i_vsf.ValueInStackFrame_ID}, ${i_vsf.Value_ID}, ${i_vsf.Stack_Frame_ID} );
.end for
.select many i_lips from instances of I_LIP
.for each i_lip in i_lips
INSERT INTO I_LIP VALUES ( ${i_lip.Rel_ID}, ${i_lip.Inst_ID}, ${i_lip.Label} );
.end for
.select many i_rchs from instances of I_RCH
.for each i_rch in i_rchs
INSERT INTO I_RCH VALUES ( ${i_rch.Channel_Id}, ${i_rch.Execution_Engine_ID}, ${i_rch.other_Execution_Engine_ID}, ${i_rch.Satisfaction_Id}, ${i_rch.Delegation_Id}, ${i_rch.Next_provider_Channel_Id} );
.end for
.select many i_cins from instances of I_CIN
.for each i_cin in i_cins
INSERT INTO I_CIN VALUES ( ${i_cin.Container_ID} );
.end for
.select many i_icqes from instances of I_ICQE
.for each i_icqe in i_icqes
INSERT INTO I_ICQE VALUES ( ${i_icqe.Stack_ID}, ${i_icqe.Stack_Frame_ID}, ${i_icqe.Execution_Engine_ID} );
.end for
.print "Instance Reference Data Types"
.print "Interaction"
.select many sq_lss from instances of SQ_LS
.for each sq_ls in sq_lss
INSERT INTO SQ_LS VALUES ( ${sq_ls.Part_ID}, ${sq_ls.Source_Part_ID}, ${sq_ls.Descrip}, ${sq_ls.Destroyed} );
.end for
.select many sq_cips from instances of SQ_CIP
.for each sq_cip in sq_cips
INSERT INTO SQ_CIP VALUES ( ${sq_cip.Part_ID}, ${sq_cip.Obj_ID}, ${sq_cip.Name}, ${sq_cip.InformalClassName}, ${sq_cip.Label}, ${sq_cip.Descrip}, ${sq_cip.isFormal} );
.end for
.select many sq_cops from instances of SQ_COP
.for each sq_cop in sq_cops
INSERT INTO SQ_COP VALUES ( ${sq_cop.Part_ID}, ${sq_cop.Component_Id}, ${sq_cop.Label}, ${sq_cop.InformalComponentName}, ${sq_cop.Descrip}, ${sq_cop.isFormal} );
.end for
.select many sq_tms from instances of SQ_TM
.for each sq_tm in sq_tms
INSERT INTO SQ_TM VALUES ( ${sq_tm.Mark_ID}, ${sq_tm.Name}, ${sq_tm.Part_ID}, ${sq_tm.Descrip} );
.end for
.select many sq_tss from instances of SQ_TS
.for each sq_ts in sq_tss
INSERT INTO SQ_TS VALUES ( ${sq_ts.Span_ID}, ${sq_ts.Mark_ID}, ${sq_ts.Prev_Mark_ID}, ${sq_ts.Name}, ${sq_ts.Descrip} );
.end for
.select many sq_cps from instances of SQ_CP
.for each sq_cp in sq_cps
INSERT INTO SQ_CP VALUES ( ${sq_cp.Part_ID}, ${sq_cp.Obj_ID}, ${sq_cp.Label}, ${sq_cp.InformalName}, ${sq_cp.Descrip}, ${sq_cp.isFormal} );
.end for
.select many sq_ps from instances of SQ_P
.for each sq_p in sq_ps
INSERT INTO SQ_P VALUES ( ${sq_p.Part_ID}, ${sq_p.Sequence_Package_ID} );
.end for
.select many sq_eeps from instances of SQ_EEP
.for each sq_eep in sq_eeps
INSERT INTO SQ_EEP VALUES ( ${sq_eep.Part_ID}, ${sq_eep.EE_ID}, ${sq_eep.Label}, ${sq_eep.InformalName}, ${sq_eep.Descrip}, ${sq_eep.isFormal} );
.end for
.select many sq_fpps from instances of SQ_FPP
.for each sq_fpp in sq_fpps
INSERT INTO SQ_FPP VALUES ( ${sq_fpp.Part_ID}, ${sq_fpp.FunPack_ID}, ${sq_fpp.Label}, ${sq_fpp.InformalName}, ${sq_fpp.Descrip}, ${sq_fpp.isFormal} );
.end for
.select many sq_cpas from instances of SQ_CPA
.for each sq_cpa in sq_cpas
INSERT INTO SQ_CPA VALUES ( ${sq_cpa.Ia_ID}, ${sq_cpa.Name}, ${sq_cpa.Type}, ${sq_cpa.Part_ID}, ${sq_cpa.Descrip} );
.end for
.select many sq_avs from instances of SQ_AV
.for each sq_av in sq_avs
INSERT INTO SQ_AV VALUES ( ${sq_av.Av_ID}, ${sq_av.Obj_ID}, ${sq_av.Attr_ID}, ${sq_av.Label}, ${sq_av.Value}, ${sq_av.InformalName}, ${sq_av.Informal_Part_ID}, ${sq_av.Formal_Part_ID}, ${sq_av.Descrip}, ${sq_av.isFormal} );
.end for
.select many sq_aps from instances of SQ_AP
.for each sq_ap in sq_aps
INSERT INTO SQ_AP VALUES ( ${sq_ap.Part_ID}, ${sq_ap.Name}, ${sq_ap.Descrip}, ${sq_ap.LS_Part_ID} );
.end for
.select many sq_ias from instances of SQ_IA
.for each sq_ia in sq_ias
INSERT INTO SQ_IA VALUES ( ${sq_ia.Ia_ID} );
.end for
.select many sq_fas from instances of SQ_FA
.for each sq_fa in sq_fas
INSERT INTO SQ_FA VALUES ( ${sq_fa.Ia_ID} );
.end for
.select many sq_favs from instances of SQ_FAV
.for each sq_fav in sq_favs
INSERT INTO SQ_FAV VALUES ( ${sq_fav.Av_ID} );
.end for
.select many sq_iavs from instances of SQ_IAV
.for each sq_iav in sq_iavs
INSERT INTO SQ_IAV VALUES ( ${sq_iav.Av_ID} );
.end for
.select many ia_ucps from instances of IA_UCP
.for each ia_ucp in ia_ucps
INSERT INTO IA_UCP VALUES ( ${ia_ucp.Part_ID}, ${ia_ucp.Name}, ${ia_ucp.Descrip} );
.end for
.select many sq_pps from instances of SQ_PP
.for each sq_pp in sq_pps
INSERT INTO SQ_PP VALUES ( ${sq_pp.Part_ID}, ${sq_pp.Package_ID}, ${sq_pp.Label}, ${sq_pp.InformalName}, ${sq_pp.Descrip}, ${sq_pp.isFormal} );
.end for
.print "Interface Package"
.select many ip_ips from instances of IP_IP
.for each ip_ip in ip_ips
INSERT INTO IP_IP VALUES ( ${ip_ip.Package_ID}, ${ip_ip.Parent_Package_ID}, ${ip_ip.Direct_Sys_ID}, ${ip_ip.Sys_ID}, ${ip_ip.Component_Id}, ${ip_ip.Component_Package_ID}, ${ip_ip.Name}, ${ip_ip.Descrip} );
.end for
.select many ip_ipinips from instances of IP_IPINIP
.for each ip_ipinip in ip_ipinips
INSERT INTO IP_IPINIP VALUES ( ${ip_ipinip.Package_ID} );
.end for
.print "Invocation"
.select many act_tfms from instances of ACT_TFM
.for each act_tfm in act_tfms
INSERT INTO ACT_TFM VALUES ( ${act_tfm.Statement_ID}, ${act_tfm.Tfr_ID}, ${act_tfm.Var_ID}, ${act_tfm.operationNameLineNumber}, ${act_tfm.operationNameColumn}, ${act_tfm.modelClassKeyLettersLineNumber}, ${act_tfm.modelClassKeyLettersColumn} );
.end for
.select many act_brgs from instances of ACT_BRG
.for each act_brg in act_brgs
INSERT INTO ACT_BRG VALUES ( ${act_brg.Statement_ID}, ${act_brg.Brg_ID}, ${act_brg.bridgeNameLineNumber}, ${act_brg.bridgeNameColumn}, ${act_brg.externalEntityKeyLettersLineNumber}, ${act_brg.externalEntityKeyLettersColumn} );
.end for
.select many act_rets from instances of ACT_RET
.for each act_ret in act_rets
INSERT INTO ACT_RET VALUES ( ${act_ret.Statement_ID}, ${act_ret.Value_ID} );
.end for
.select many act_fncs from instances of ACT_FNC
.for each act_fnc in act_fncs
INSERT INTO ACT_FNC VALUES ( ${act_fnc.Statement_ID}, ${act_fnc.Sync_ID}, ${act_fnc.functionNameLineNumber}, ${act_fnc.functionNameColumn} );
.end for
.select many act_iops from instances of ACT_IOP
.for each act_iop in act_iops
INSERT INTO ACT_IOP VALUES ( ${act_iop.Statement_ID}, ${act_iop.opNameLineNumber}, ${act_iop.opNameColumn}, ${act_iop.ownerNameLineNumber}, ${act_iop.ownerNameColumn}, ${act_iop.ProvidedOp_Id}, ${act_iop.RequiredOp_Id}, ${act_iop.Value_ID} );
.end for
.select many act_sgns from instances of ACT_SGN
.for each act_sgn in act_sgns
INSERT INTO ACT_SGN VALUES ( ${act_sgn.Statement_ID}, ${act_sgn.sigNameLineNumber}, ${act_sgn.sigNameColumn}, ${act_sgn.ownerNameLineNumber}, ${act_sgn.ownerNameColumn}, ${act_sgn.ProvidedSig_Id}, ${act_sgn.RequiredSig_Id}, ${act_sgn.Value_ID} );
.end for
.print "Message"
.select many msg_ms from instances of MSG_M
.for each msg_m in msg_ms
INSERT INTO MSG_M VALUES ( ${msg_m.Msg_ID}, ${msg_m.Receiver_Part_ID}, ${msg_m.Sender_Part_ID}, ${msg_m.participatesInCommunication} );
.end for
.select many msg_as from instances of MSG_A
.for each msg_a in msg_as
INSERT INTO MSG_A VALUES ( ${msg_a.Arg_ID}, ${msg_a.Informal_Msg_ID}, ${msg_a.Formal_Msg_ID}, ${msg_a.Label}, ${msg_a.Value}, ${msg_a.InformalName}, ${msg_a.Descrip}, ${msg_a.isFormal} );
.end for
.select many msg_os from instances of MSG_O
.for each msg_o in msg_os
INSERT INTO MSG_O VALUES ( ${msg_o.Msg_ID}, ${msg_o.Tfr_ID} );
.end for
.select many msg_bs from instances of MSG_B
.for each msg_b in msg_bs
INSERT INTO MSG_B VALUES ( ${msg_b.Msg_ID}, ${msg_b.Brg_ID} );
.end for
.select many msg_es from instances of MSG_E
.for each msg_e in msg_es
INSERT INTO MSG_E VALUES ( ${msg_e.Msg_ID}, ${msg_e.SMevt_ID} );
.end for
.select many msg_fs from instances of MSG_F
.for each msg_f in msg_fs
INSERT INTO MSG_F VALUES ( ${msg_f.Msg_ID}, ${msg_f.Sync_ID} );
.end for
.select many msg_bas from instances of MSG_BA
.for each msg_ba in msg_bas
INSERT INTO MSG_BA VALUES ( ${msg_ba.Arg_ID}, ${msg_ba.BParm_ID} );
.end for
.select many msg_oas from instances of MSG_OA
.for each msg_oa in msg_oas
INSERT INTO MSG_OA VALUES ( ${msg_oa.Arg_ID}, ${msg_oa.TParm_ID} );
.end for
.select many msg_fas from instances of MSG_FA
.for each msg_fa in msg_fas
INSERT INTO MSG_FA VALUES ( ${msg_fa.Arg_ID}, ${msg_fa.SParm_ID} );
.end for
.select many msg_eas from instances of MSG_EA
.for each msg_ea in msg_eas
INSERT INTO MSG_EA VALUES ( ${msg_ea.Arg_ID}, ${msg_ea.SM_ID}, ${msg_ea.SMedi_ID} );
.end for
.select many msg_rs from instances of MSG_R
.for each msg_r in msg_rs
INSERT INTO MSG_R VALUES ( ${msg_r.Msg_ID}, ${msg_r.Name}, ${msg_r.Descrip}, ${msg_r.GuardCondition}, ${msg_r.ResultTarget}, ${msg_r.ReturnValue}, ${msg_r.SequenceNumb} );
.end for
.select many msg_sms from instances of MSG_SM
.for each msg_sm in msg_sms
INSERT INTO MSG_SM VALUES ( ${msg_sm.Msg_ID}, ${msg_sm.InformalName}, ${msg_sm.Descrip}, ${msg_sm.GuardCondition}, ${msg_sm.ResultTarget}, ${msg_sm.ReturnValue}, ${msg_sm.isFormal}, ${msg_sm.Label}, ${msg_sm.SequenceNumb} );
.end for
.select many msg_ams from instances of MSG_AM
.for each msg_am in msg_ams
INSERT INTO MSG_AM VALUES ( ${msg_am.Msg_ID}, ${msg_am.InformalName}, ${msg_am.Descrip}, ${msg_am.GuardCondition}, ${msg_am.DurationObservation}, ${msg_am.DurationConstraint}, ${msg_am.isFormal}, ${msg_am.Label}, ${msg_am.SequenceNumb} );
.end for
.select many msg_isms from instances of MSG_ISM
.for each msg_ism in msg_isms
INSERT INTO MSG_ISM VALUES ( ${msg_ism.Msg_ID} );
.end for
.select many msg_iams from instances of MSG_IAM
.for each msg_iam in msg_iams
INSERT INTO MSG_IAM VALUES ( ${msg_iam.Msg_ID} );
.end for
.select many msg_ias from instances of MSG_IA
.for each msg_ia in msg_ias
INSERT INTO MSG_IA VALUES ( ${msg_ia.Arg_ID} );
.end for
.select many msg_sigs from instances of MSG_SIG
.for each msg_sig in msg_sigs
INSERT INTO MSG_SIG VALUES ( ${msg_sig.Msg_ID}, ${msg_sig.Id} );
.end for
.select many msg_iops from instances of MSG_IOP
.for each msg_iop in msg_iops
INSERT INTO MSG_IOP VALUES ( ${msg_iop.Msg_ID}, ${msg_iop.Id} );
.end for
.select many msg_epas from instances of MSG_EPA
.for each msg_epa in msg_epas
INSERT INTO MSG_EPA VALUES ( ${msg_epa.Arg_ID}, ${msg_epa.PP_Id} );
.end for
.print "Packageable Element"
.select many pe_pes from instances of PE_PE
.for each pe_pe in pe_pes
INSERT INTO PE_PE VALUES ( ${pe_pe.Element_ID}, ${pe_pe.Visibility}, ${pe_pe.Package_ID}, ${pe_pe.Component_ID}, ${pe_pe.type} );
.end for
.select many pe_viss from instances of PE_VIS
.for each pe_vis in pe_viss
INSERT INTO PE_VIS VALUES ( ${pe_vis.Visibility_ID}, ${pe_vis.Element_ID}, ${pe_vis.Package_ID}, ${pe_vis.Name}, ${pe_vis.Type} );
.end for
.select many pe_cvss from instances of PE_CVS
.for each pe_cvs in pe_cvss
INSERT INTO PE_CVS VALUES ( ${pe_cvs.Visibility_ID}, ${pe_cvs.Element_ID}, ${pe_cvs.Id}, ${pe_cvs.Name}, ${pe_cvs.Type} );
.end for
.select many pe_srss from instances of PE_SRS
.for each pe_srs in pe_srss
INSERT INTO PE_SRS VALUES ( ${pe_srs.Package_ID}, ${pe_srs.Name}, ${pe_srs.Type} );
.end for
.select many pe_crss from instances of PE_CRS
.for each pe_crs in pe_crss
INSERT INTO PE_CRS VALUES ( ${pe_crs.Id}, ${pe_crs.Name}, ${pe_crs.Type} );
.end for
.print "Persistence Associations"
.select many pa_sics from instances of PA_SIC
.for each pa_sic in pa_sics
INSERT INTO PA_SIC VALUES ( ${pa_sic.Component_Id}, ${pa_sic.Satisfaction_Id} );
.end for
.select many pa_sicps from instances of PA_SICP
.for each pa_sicp in pa_sicps
INSERT INTO PA_SICP VALUES ( ${pa_sicp.ComponentPackage_ID}, ${pa_sicp.Satisfaction_Id} );
.end for
.select many pa_dics from instances of PA_DIC
.for each pa_dic in pa_dics
INSERT INTO PA_DIC VALUES ( ${pa_dic.Component_Id}, ${pa_dic.Delegation_Id} );
.end for
.print "Relate And Unrelate"
.select many act_rels from instances of ACT_REL
.for each act_rel in act_rels
INSERT INTO ACT_REL VALUES ( ${act_rel.Statement_ID}, ${act_rel.One_Side_Var_ID}, ${act_rel.Other_Side_Var_ID}, ${act_rel.relationship_phrase}, ${act_rel.Rel_ID}, ${act_rel.associationNumberLineNumber}, ${act_rel.associationNumberColumn}, ${act_rel.associationPhraseLineNumber}, ${act_rel.associationPhraseColumn} );
.end for
.select many act_unrs from instances of ACT_UNR
.for each act_unr in act_unrs
INSERT INTO ACT_UNR VALUES ( ${act_unr.Statement_ID}, ${act_unr.One_Side_Var_ID}, ${act_unr.Other_Side_Var_ID}, ${act_unr.relationship_phrase}, ${act_unr.Rel_ID}, ${act_unr.associationNumberLineNumber}, ${act_unr.associationNumberColumn}, ${act_unr.associationPhraseLineNumber}, ${act_unr.associationPhraseColumn} );
.end for
.select many act_rus from instances of ACT_RU
.for each act_ru in act_rus
INSERT INTO ACT_RU VALUES ( ${act_ru.Statement_ID}, ${act_ru.One_Side_Var_ID}, ${act_ru.Other_Side_Var_ID}, ${act_ru.Associative_Var_ID}, ${act_ru.relationship_phrase}, ${act_ru.Rel_ID}, ${act_ru.associationNumberLineNumber}, ${act_ru.associationNumberColumn}, ${act_ru.associationPhraseLineNumber}, ${act_ru.associationPhraseColumn} );
.end for
.select many act_urus from instances of ACT_URU
.for each act_uru in act_urus
INSERT INTO ACT_URU VALUES ( ${act_uru.Statement_ID}, ${act_uru.One_Side_Var_ID}, ${act_uru.Other_Side_Var_ID}, ${act_uru.Associative_Var_ID}, ${act_uru.relationship_phrase}, ${act_uru.Rel_ID}, ${act_uru.associationNumberLineNumber}, ${act_uru.associationNumberColumn}, ${act_uru.associationPhraseLineNumber}, ${act_uru.associationPhraseColumn} );
.end for
.print "Search"
.print "Sequence"
.select many sq_ss from instances of SQ_S
.for each sq_s in sq_ss
INSERT INTO SQ_S VALUES ( ${sq_s.Package_ID}, ${sq_s.Dom_ID}, ${sq_s.Name}, ${sq_s.SS_ID}, ${sq_s.Prev_Package_ID}, ${sq_s.Descrip}, ${sq_s.Sys_ID}, ${sq_s.Component_Package_ID}, ${sq_s.Component_Id} );
.end for
.select many sq_siss from instances of SQ_SIS
.for each sq_sis in sq_siss
INSERT INTO SQ_SIS VALUES ( ${sq_sis.Package_ID} );
.end for
.select many sq_miss from instances of SQ_MIS
.for each sq_mis in sq_miss
INSERT INTO SQ_MIS VALUES ( ${sq_mis.Msg_ID}, ${sq_mis.Package_ID} );
.end for
.print "State Machine"
.select many sm_sms from instances of SM_SM
.for each sm_sm in sm_sms
INSERT INTO SM_SM VALUES ( ${sm_sm.SM_ID}, ${sm_sm.Descrip}, ${sm_sm.Config_ID} );
.end for
.select many sm_states from instances of SM_STATE
.for each sm_state in sm_states
INSERT INTO SM_STATE VALUES ( ${sm_state.SMstt_ID}, ${sm_state.SM_ID}, ${sm_state.SMspd_ID}, ${sm_state.Name}, ${sm_state.Numb}, ${sm_state.Final} );
.end for
.select many sm_evts from instances of SM_EVT
.for each sm_evt in sm_evts
INSERT INTO SM_EVT VALUES ( ${sm_evt.SMevt_ID}, ${sm_evt.SM_ID}, ${sm_evt.SMspd_ID}, ${sm_evt.Numb}, ${sm_evt.Mning}, ${sm_evt.Is_Lbl_U}, ${sm_evt.Unq_Lbl}, ${sm_evt.Drv_Lbl}, ${sm_evt.Descrip} );
.end for
.select many sm_semes from instances of SM_SEME
.for each sm_seme in sm_semes
INSERT INTO SM_SEME VALUES ( ${sm_seme.SMstt_ID}, ${sm_seme.SMevt_ID}, ${sm_seme.SM_ID}, ${sm_seme.SMspd_ID} );
.end for
.select many sm_nstxns from instances of SM_NSTXN
.for each sm_nstxn in sm_nstxns
INSERT INTO SM_NSTXN VALUES ( ${sm_nstxn.Trans_ID}, ${sm_nstxn.SM_ID}, ${sm_nstxn.SMstt_ID}, ${sm_nstxn.SMevt_ID}, ${sm_nstxn.SMspd_ID} );
.end for
.select many sm_eigns from instances of SM_EIGN
.for each sm_eign in sm_eigns
INSERT INTO SM_EIGN VALUES ( ${sm_eign.SMstt_ID}, ${sm_eign.SMevt_ID}, ${sm_eign.SM_ID}, ${sm_eign.SMspd_ID}, ${sm_eign.Descrip} );
.end for
.select many sm_chs from instances of SM_CH
.for each sm_ch in sm_chs
INSERT INTO SM_CH VALUES ( ${sm_ch.SMstt_ID}, ${sm_ch.SMevt_ID}, ${sm_ch.SM_ID}, ${sm_ch.SMspd_ID}, ${sm_ch.Descrip} );
.end for
.select many sm_txns from instances of SM_TXN
.for each sm_txn in sm_txns
INSERT INTO SM_TXN VALUES ( ${sm_txn.Trans_ID}, ${sm_txn.SM_ID}, ${sm_txn.SMstt_ID}, ${sm_txn.SMspd_ID} );
.end for
.select many sm_netxns from instances of SM_NETXN
.for each sm_netxn in sm_netxns
INSERT INTO SM_NETXN VALUES ( ${sm_netxn.Trans_ID}, ${sm_netxn.SM_ID}, ${sm_netxn.SMstt_ID}, ${sm_netxn.SMspd_ID} );
.end for
.select many sm_crtxns from instances of SM_CRTXN
.for each sm_crtxn in sm_crtxns
INSERT INTO SM_CRTXN VALUES ( ${sm_crtxn.Trans_ID}, ${sm_crtxn.SM_ID}, ${sm_crtxn.SMevt_ID}, ${sm_crtxn.SMspd_ID} );
.end for
.select many sm_moores from instances of SM_MOORE
.for each sm_moore in sm_moores
INSERT INTO SM_MOORE VALUES ( ${sm_moore.SM_ID} );
.end for
.select many sm_mealys from instances of SM_MEALY
.for each sm_mealy in sm_mealys
INSERT INTO SM_MEALY VALUES ( ${sm_mealy.SM_ID} );
.end for
.select many sm_moahs from instances of SM_MOAH
.for each sm_moah in sm_moahs
INSERT INTO SM_MOAH VALUES ( ${sm_moah.Act_ID}, ${sm_moah.SM_ID}, ${sm_moah.SMstt_ID} );
.end for
.select many sm_meahs from instances of SM_MEAH
.for each sm_meah in sm_meahs
INSERT INTO SM_MEAH VALUES ( ${sm_meah.Act_ID}, ${sm_meah.SM_ID}, ${sm_meah.Trans_ID} );
.end for
.select many sm_ahs from instances of SM_AH
.for each sm_ah in sm_ahs
INSERT INTO SM_AH VALUES ( ${sm_ah.Act_ID}, ${sm_ah.SM_ID} );
.end for
.select many sm_acts from instances of SM_ACT
.for each sm_act in sm_acts
INSERT INTO SM_ACT VALUES ( ${sm_act.Act_ID}, ${sm_act.SM_ID}, ${sm_act.Suc_Pars}, ${sm_act.Action_Semantics_internal}, ${sm_act.Descrip} );
.end for
.select many sm_evtdis from instances of SM_EVTDI
.for each sm_evtdi in sm_evtdis
INSERT INTO SM_EVTDI VALUES ( ${sm_evtdi.SMedi_ID}, ${sm_evtdi.SM_ID}, ${sm_evtdi.Name}, ${sm_evtdi.Descrip}, ${sm_evtdi.DT_ID}, ${sm_evtdi.Dimensions}, ${sm_evtdi.SMevt_ID}, ${sm_evtdi.Previous_SMedi_ID} );
.end for
.select many sm_supdts from instances of SM_SUPDT
.for each sm_supdt in sm_supdts
INSERT INTO SM_SUPDT VALUES ( ${sm_supdt.SMspd_ID}, ${sm_supdt.SM_ID}, ${sm_supdt.Non_Local} );
.end for
.select many sm_sdis from instances of SM_SDI
.for each sm_sdi in sm_sdis
INSERT INTO SM_SDI VALUES ( ${sm_sdi.SMedi_ID}, ${sm_sdi.SMspd_ID}, ${sm_sdi.SM_ID} );
.end for
.select many sm_isms from instances of SM_ISM
.for each sm_ism in sm_isms
INSERT INTO SM_ISM VALUES ( ${sm_ism.SM_ID}, ${sm_ism.Obj_ID} );
.end for
.select many sm_asms from instances of SM_ASM
.for each sm_asm in sm_asms
INSERT INTO SM_ASM VALUES ( ${sm_asm.SM_ID}, ${sm_asm.Obj_ID} );
.end for
.select many sm_pevts from instances of SM_PEVT
.for each sm_pevt in sm_pevts
INSERT INTO SM_PEVT VALUES ( ${sm_pevt.SMevt_ID}, ${sm_pevt.SM_ID}, ${sm_pevt.SMspd_ID}, ${sm_pevt.localClassName}, ${sm_pevt.localClassKL}, ${sm_pevt.localEventMning} );
.end for
.select many sm_sevts from instances of SM_SEVT
.for each sm_sevt in sm_sevts
INSERT INTO SM_SEVT VALUES ( ${sm_sevt.SMevt_ID}, ${sm_sevt.SM_ID}, ${sm_sevt.SMspd_ID} );
.end for
.select many sm_nlevts from instances of SM_NLEVT
.for each sm_nlevt in sm_nlevts
INSERT INTO SM_NLEVT VALUES ( ${sm_nlevt.SMevt_ID}, ${sm_nlevt.SM_ID}, ${sm_nlevt.SMspd_ID}, ${sm_nlevt.polySMevt_ID}, ${sm_nlevt.polySM_ID}, ${sm_nlevt.polySMspd_ID}, ${sm_nlevt.Local_Meaning} );
.end for
.select many sm_levts from instances of SM_LEVT
.for each sm_levt in sm_levts
INSERT INTO SM_LEVT VALUES ( ${sm_levt.SMevt_ID}, ${sm_levt.SM_ID}, ${sm_levt.SMspd_ID} );
.end for
.select many sm_sgevts from instances of SM_SGEVT
.for each sm_sgevt in sm_sgevts
INSERT INTO SM_SGEVT VALUES ( ${sm_sgevt.SMevt_ID}, ${sm_sgevt.SM_ID}, ${sm_sgevt.SMspd_ID}, ${sm_sgevt.Provided_Signal_Id}, ${sm_sgevt.Required_Signal_Id}, ${sm_sgevt.signal_name} );
.end for
.select many sm_tahs from instances of SM_TAH
.for each sm_tah in sm_tahs
INSERT INTO SM_TAH VALUES ( ${sm_tah.Act_ID}, ${sm_tah.SM_ID}, ${sm_tah.Trans_ID} );
.end for
.print "Subsystem"
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
INSERT INTO O_OBJ VALUES ( ${o_obj.Obj_ID}, ${o_obj.Name}, ${o_obj.Numb}, ${o_obj.Key_Lett}, ${o_obj.Descrip}, ${o_obj.SS_ID} );
.end for
.select many o_iobjs from instances of O_IOBJ
.for each o_iobj in o_iobjs
INSERT INTO O_IOBJ VALUES ( ${o_iobj.IObj_ID}, ${o_iobj.Obj_ID}, ${o_iobj.Modl_Typ}, ${o_iobj.SS_ID}, ${o_iobj.Obj_Name}, ${o_iobj.Obj_KL} );
.end for
.select many o_attrs from instances of O_ATTR
.for each o_attr in o_attrs
INSERT INTO O_ATTR VALUES ( ${o_attr.Attr_ID}, ${o_attr.Obj_ID}, ${o_attr.PAttr_ID}, ${o_attr.Name}, ${o_attr.Descrip}, ${o_attr.Prefix}, ${o_attr.Root_Nam}, ${o_attr.Pfx_Mode}, ${o_attr.DT_ID}, ${o_attr.Dimensions}, ${o_attr.DefaultValue} );
.end for
.select many o_ids from instances of O_ID
.for each o_id in o_ids
INSERT INTO O_ID VALUES ( ${o_id.Oid_ID}, ${o_id.Obj_ID} );
.end for
.select many o_oidas from instances of O_OIDA
.for each o_oida in o_oidas
INSERT INTO O_OIDA VALUES ( ${o_oida.Attr_ID}, ${o_oida.Obj_ID}, ${o_oida.Oid_ID}, ${o_oida.localAttributeName} );
.end for
.select many o_battrs from instances of O_BATTR
.for each o_battr in o_battrs
INSERT INTO O_BATTR VALUES ( ${o_battr.Attr_ID}, ${o_battr.Obj_ID} );
.end for
.select many o_dbattrs from instances of O_DBATTR
.for each o_dbattr in o_dbattrs
INSERT INTO O_DBATTR VALUES ( ${o_dbattr.Attr_ID}, ${o_dbattr.Obj_ID}, ${o_dbattr.Action_Semantics_internal}, ${o_dbattr.Suc_Pars} );
.end for
.select many o_nbattrs from instances of O_NBATTR
.for each o_nbattr in o_nbattrs
INSERT INTO O_NBATTR VALUES ( ${o_nbattr.Attr_ID}, ${o_nbattr.Obj_ID} );
.end for
.select many o_rattrs from instances of O_RATTR
.for each o_rattr in o_rattrs
INSERT INTO O_RATTR VALUES ( ${o_rattr.Attr_ID}, ${o_rattr.Obj_ID}, ${o_rattr.BAttr_ID}, ${o_rattr.BObj_ID}, ${o_rattr.Ref_Mode}, ${o_rattr.BaseAttrName} );
.end for
.select many o_refs from instances of O_REF
.for each o_ref in o_refs
INSERT INTO O_REF VALUES ( ${o_ref.Obj_ID}, ${o_ref.RObj_ID}, ${o_ref.ROid_ID}, ${o_ref.RAttr_ID}, ${o_ref.Rel_ID}, ${o_ref.OIR_ID}, ${o_ref.ROIR_ID}, ${o_ref.Attr_ID}, ${o_ref.ARef_ID}, ${o_ref.PARef_ID}, ${o_ref.Is_Cstrd}, ${o_ref.Descrip}, ${o_ref.RObj_Name}, ${o_ref.RAttr_Name}, ${o_ref.Rel_Name} );
.end for
.select many o_rtidas from instances of O_RTIDA
.for each o_rtida in o_rtidas
INSERT INTO O_RTIDA VALUES ( ${o_rtida.Attr_ID}, ${o_rtida.Obj_ID}, ${o_rtida.Oid_ID}, ${o_rtida.Rel_ID}, ${o_rtida.OIR_ID} );
.end for
.select many o_tfrs from instances of O_TFR
.for each o_tfr in o_tfrs
INSERT INTO O_TFR VALUES ( ${o_tfr.Tfr_ID}, ${o_tfr.Obj_ID}, ${o_tfr.Name}, ${o_tfr.Descrip}, ${o_tfr.DT_ID}, ${o_tfr.Instance_Based}, ${o_tfr.Action_Semantics_internal}, ${o_tfr.Suc_Pars}, ${o_tfr.Return_Dimensions}, ${o_tfr.Previous_Tfr_ID} );
.end for
.select many o_tparms from instances of O_TPARM
.for each o_tparm in o_tparms
INSERT INTO O_TPARM VALUES ( ${o_tparm.TParm_ID}, ${o_tparm.Tfr_ID}, ${o_tparm.Name}, ${o_tparm.DT_ID}, ${o_tparm.By_Ref}, ${o_tparm.Dimensions}, ${o_tparm.Previous_TParm_ID}, ${o_tparm.Descrip} );
.end for
.select many o_ravrs from instances of O_RAVR
.for each o_ravr in o_ravrs
INSERT INTO O_RAVR VALUES ( );
.end for
.print "System Level Datatypes"
.select many sld_sdps from instances of SLD_SDP
.for each sld_sdp in sld_sdps
INSERT INTO SLD_SDP VALUES ( ${sld_sdp.Sys_ID}, ${sld_sdp.Package_ID} );
.end for
.select many sld_sdinps from instances of SLD_SDINP
.for each sld_sdinp in sld_sdinps
INSERT INTO SLD_SDINP VALUES ( ${sld_sdinp.Package_ID}, ${sld_sdinp.DT_ID}, ${sld_sdinp.Sys_ID} );
.end for
.select many sld_scinps from instances of SLD_SCINP
.for each sld_scinp in sld_scinps
INSERT INTO SLD_SCINP VALUES ( ${sld_scinp.Sys_ID}, ${sld_scinp.Package_ID}, ${sld_scinp.Constant_Spec_ID} );
.end for
.print "Translation Extensions"
.select many te_swcs from instances of TE_SWC
.for each te_swc in te_swcs
INSERT INTO TE_SWC VALUES ( ${te_swc.Obj_Kl}, ${te_swc.Where_Spec}, ${te_swc.Key}, ${te_swc.Ret_Val}, ${te_swc.Built_In}, ${te_swc.Oid_ID}, ${te_swc.GeneratedName} );
.end for
.select many te_cis from instances of TE_CI
.for each te_ci in te_cis
INSERT INTO TE_CI VALUES ( ${te_ci.ID}, ${te_ci.Name}, ${te_ci.ClassifierName}, ${te_ci.template_parameter_values}, ${te_ci.te_cID}, ${te_ci.cl_icId} );
.end for
.select many te_oirs from instances of TE_OIR
.for each te_oir in te_oirs
INSERT INTO TE_OIR VALUES ( ${te_oir.data_member}, ${te_oir.assoc_type}, ${te_oir.object_id}, ${te_oir.rel_phrase}, ${te_oir.Mult}, ${te_oir.NavigatedTo}, ${te_oir.OIR_ID}, ${te_oir.Obj_ID}, ${te_oir.Rel_ID} );
.end for
.select many te_syss from instances of TE_SYS
.for each te_sys in te_syss
INSERT INTO TE_SYS VALUES ( ${te_sys.SystemID}, ${te_sys.ModelCompilerName}, ${te_sys.ExecutableName}, ${te_sys.MaxStringLen}, ${te_sys.MaxObjExtent}, ${te_sys.MaxRelExtent}, ${te_sys.MaxSelectExtent}, ${te_sys.TotalContainers}, ${te_sys.MaxSelfEvents}, ${te_sys.MaxNonSelfEvents}, ${te_sys.MaxTimers}, ${te_sys.MaxInterleavedBridges}, ${te_sys.MaxInterleavedBridgeDataSize}, ${te_sys.CollectionsFlavor}, ${te_sys.ForcePriorityEvents}, ${te_sys.PEIClassCount}, ${te_sys.PersistentClassCount}, ${te_sys.PersistInstanceCacheDepth}, ${te_sys.PersistLinkCacheDepth}, ${te_sys.UnitsToDynamicallyAllocate}, ${te_sys.InstanceLoading}, ${te_sys.self_name}, ${te_sys.Name}, ${te_sys.AUTOSAR}, ${te_sys.VFB}, ${te_sys.SystemCPortsType}, ${te_sys.AllPortsPoly}, ${te_sys.DomainClassNumberName}, ${te_sys.Sys_ID} );
.end for
.select many te_disps from instances of TE_DISP
.for each te_disp in te_disps
INSERT INTO TE_DISP VALUES ( ${te_disp.Dispatcher_ID}, ${te_disp.SystemID}, ${te_disp.Name}, ${te_disp.Descrip} );
.end for
.select many te_queues from instances of TE_QUEUE
.for each te_queue in te_queues
INSERT INTO TE_QUEUE VALUES ( ${te_queue.Queue_ID}, ${te_queue.Dispatcher_ID}, ${te_queue.Type}, ${te_queue.Descrip}, ${te_queue.RenderCode}, ${te_queue.MaxDepth} );
.end for
.select many te_abas from instances of TE_ABA
.for each te_aba in te_abas
INSERT INTO TE_ABA VALUES ( ${te_aba.AbaID}, ${te_aba.subtypeKL}, ${te_aba.te_cID}, ${te_aba.SelfEventCount}, ${te_aba.NonSelfEventCount}, ${te_aba.ParameterDeclaration}, ${te_aba.ParameterDefinition}, ${te_aba.ParameterStructure}, ${te_aba.ParameterTrace}, ${te_aba.ParameterFormat}, ${te_aba.ParameterInvocation}, ${te_aba.ParameterAssignment}, ${te_aba.ParameterAssignmentBase}, ${te_aba.scope}, ${te_aba.GeneratedName}, ${te_aba.ReturnDataType}, ${te_aba.dimensions}, ${te_aba.te_dimID}, ${te_aba.array_spec}, ${te_aba.code} );
.end for
.select many te_cs from instances of TE_C
.for each te_c in te_cs
INSERT INTO TE_C VALUES ( ${te_c.ID}, ${te_c.Name}, ${te_c.Descrip}, ${te_c.number}, ${te_c.StateTrace}, ${te_c.StmtTrace}, ${te_c.DetectEmpty}, ${te_c.OptDisabled}, ${te_c.RawComments}, ${te_c.CodeComments}, ${te_c.CollectionsFlavor}, ${te_c.classes_file}, ${te_c.functions_file}, ${te_c.MaxObjExtent}, ${te_c.MaxRelExtent}, ${te_c.MaxSelectExtent}, ${te_c.MaxSelfEvents}, ${te_c.MaxNonSelfEvents}, ${te_c.MaxPriorityEvents}, ${te_c.MaxTimers}, ${te_c.InterleavedBridges}, ${te_c.PEIClassCount}, ${te_c.PersistentClassCount}, ${te_c.module_file}, ${te_c.port_file}, ${te_c.include_file}, ${te_c.included_in_build}, ${te_c.internal_behavior}, ${te_c.isRealized}, ${te_c.SystemID}, ${te_c.next_ID}, ${te_c.cId}, ${te_c.first_eeID}, ${te_c.first_syncID}, ${te_c.MaxInternalEvents}, ${te_c.MaxExternalEvents}, ${te_c.MaxRelationExtents}, ${te_c.MaxSelectionNodeExtents}, ${te_c.isUseMutexLock}, ${te_c.isUseFacadeMaxDef} );
.end for
.select many te_mbrs from instances of TE_MBR
.for each te_mbr in te_mbrs
INSERT INTO TE_MBR VALUES ( ${te_mbr.ID}, ${te_mbr.Name}, ${te_mbr.GeneratedName}, ${te_mbr.dimensions}, ${te_mbr.te_dimID}, ${te_mbr.array_spec}, ${te_mbr.previousID}, ${te_mbr.te_dtID}, ${te_mbr.Member_ID}, ${te_mbr.DT_ID} );
.end for
.select many te_ees from instances of TE_EE
.for each te_ee in te_ees
INSERT INTO TE_EE VALUES ( ${te_ee.Name}, ${te_ee.RegisteredName}, ${te_ee.Key_Lett}, ${te_ee.Descrip}, ${te_ee.Included}, ${te_ee.file}, ${te_ee.Include_File}, ${te_ee.Used}, ${te_ee.te_cID}, ${te_ee.EE_ID}, ${te_ee.ID}, ${te_ee.nextID}, ${te_ee.RealizedIncludeFile}, ${te_ee.IsMarkAsRealized} );
.end for
.select many te_dts from instances of TE_DT
.for each te_dt in te_dts
INSERT INTO TE_DT VALUES ( ${te_dt.ID}, ${te_dt.Name}, ${te_dt.Core_Typ}, ${te_dt.Included}, ${te_dt.ExtName}, ${te_dt.Include_File}, ${te_dt.Initial_Value}, ${te_dt.Value}, ${te_dt.Is_Enum}, ${te_dt.Owning_Dom_Name}, ${te_dt.string_format}, ${te_dt.generated}, ${te_dt.te_cID}, ${te_dt.DT_ID}, ${te_dt.IsExternalMacro} );
.end for
.select many te_acts from instances of TE_ACT
.for each te_act in te_acts
INSERT INTO TE_ACT VALUES ( ${te_act.AbaID}, ${te_act.GeneratedName}, ${te_act.number}, ${te_act.SM_ID}, ${te_act.Act_ID} );
.end for
.select many te_syncs from instances of TE_SYNC
.for each te_sync in te_syncs
INSERT INTO TE_SYNC VALUES ( ${te_sync.Name}, ${te_sync.Included}, ${te_sync.IsInitFunction}, ${te_sync.IsSafeForInterrupts}, ${te_sync.XlateSemantics}, ${te_sync.Order}, ${te_sync.AbaID}, ${te_sync.GeneratedName}, ${te_sync.intraface_method}, ${te_sync.deferred_method}, ${te_sync.te_cID}, ${te_sync.Sync_ID}, ${te_sync.ID}, ${te_sync.nextID} );
.end for
.select many te_tfrs from instances of TE_TFR
.for each te_tfr in te_tfrs
INSERT INTO TE_TFR VALUES ( ${te_tfr.Included}, ${te_tfr.XlateSemantics}, ${te_tfr.Instance_Based}, ${te_tfr.Key_Lett}, ${te_tfr.Name}, ${te_tfr.GeneratedName}, ${te_tfr.AbaID}, ${te_tfr.Tfr_ID} );
.end for
.select many te_brgs from instances of TE_BRG
.for each te_brg in te_brgs
INSERT INTO TE_BRG VALUES ( ${te_brg.EEname}, ${te_brg.EEkeyletters}, ${te_brg.Name}, ${te_brg.GeneratedName}, ${te_brg.AbaID}, ${te_brg.Brg_ID}, ${te_brg.EE_ID}, ${te_brg.NotGenerateInvocation}, ${te_brg.RealFuncName}, ${te_brg.IsRealFunc} );
.end for
.select many te_dbattrs from instances of TE_DBATTR
.for each te_dbattr in te_dbattrs
INSERT INTO TE_DBATTR VALUES ( ${te_dbattr.Included}, ${te_dbattr.AbaID}, ${te_dbattr.GeneratedName}, ${te_dbattr.Attr_ID}, ${te_dbattr.Obj_ID} );
.end for
.select many te_enums from instances of TE_ENUM
.for each te_enum in te_enums
INSERT INTO TE_ENUM VALUES ( ${te_enum.Name}, ${te_enum.Value}, ${te_enum.Order}, ${te_enum.GeneratedName}, ${te_enum.Enum_ID} );
.end for
.select many te_parms from instances of TE_PARM
.for each te_parm in te_parms
INSERT INTO TE_PARM VALUES ( ${te_parm.Name}, ${te_parm.Descrip}, ${te_parm.Order}, ${te_parm.ParamBuffer}, ${te_parm.OALParamBuffer}, ${te_parm.ID}, ${te_parm.nextID}, ${te_parm.GeneratedName}, ${te_parm.By_Ref}, ${te_parm.te_dtID}, ${te_parm.dimensions}, ${te_parm.te_dimID}, ${te_parm.array_spec}, ${te_parm.AbaID}, ${te_parm.SM_ID}, ${te_parm.SMedi_ID}, ${te_parm.SParm_ID}, ${te_parm.TParm_ID}, ${te_parm.PP_Id}, ${te_parm.BParm_ID} );
.end for
.select many te_wheres from instances of TE_WHERE
.for each te_where in te_wheres
INSERT INTO TE_WHERE VALUES ( ${te_where.WhereKey}, ${te_where.select_any_where}, ${te_where.Oid_ID}, ${te_where.Obj_ID} );
.end for
.select many te_attrs from instances of TE_ATTR
.for each te_attr in te_attrs
INSERT INTO TE_ATTR VALUES ( ${te_attr.ID}, ${te_attr.Used}, ${te_attr.read}, ${te_attr.written}, ${te_attr.Included}, ${te_attr.Order}, ${te_attr.ParamBuffer}, ${te_attr.Name}, ${te_attr.GeneratedName}, ${te_attr.DefaultValue}, ${te_attr.translate}, ${te_attr.dimensions}, ${te_attr.te_dimID}, ${te_attr.array_spec}, ${te_attr.te_classGeneratedName}, ${te_attr.GeneratedType}, ${te_attr.prevID}, ${te_attr.Attr_ID}, ${te_attr.Obj_ID}, ${te_attr.isAutoInc}, ${te_attr.AutoIncDataSize}, ${te_attr.AutoIncLowLimit}, ${te_attr.AutoIncHighLimit}, ${te_attr.AutoIncDirection}, ${te_attr.AutoIncUndefValue} );
.end for
.select many te_rels from instances of TE_REL
.for each te_rel in te_rels
INSERT INTO TE_REL VALUES ( ${te_rel.Numb}, ${te_rel.LinkNeeded}, ${te_rel.UnlinkNeeded}, ${te_rel.Navigated}, ${te_rel.Order}, ${te_rel.storage_needed}, ${te_rel.Rel_ID} );
.end for
.select many te_evts from instances of TE_EVT
.for each te_evt in te_evts
INSERT INTO TE_EVT VALUES ( ${te_evt.ID}, ${te_evt.Name}, ${te_evt.Numb}, ${te_evt.GeneratedName}, ${te_evt.Enumerator}, ${te_evt.Order}, ${te_evt.Used}, ${te_evt.UsedCount}, ${te_evt.Priority}, ${te_evt.SM_ID}, ${te_evt.SMevt_ID}, ${te_evt.te_smID} );
.end for
.select many te_states from instances of TE_STATE
.for each te_state in te_states
INSERT INTO TE_STATE VALUES ( ${te_state.Name}, ${te_state.enumerator}, ${te_state.Numb}, ${te_state.number}, ${te_state.Order}, ${te_state.SM_ID}, ${te_state.SMstt_ID} );
.end for
.select many te_pos from instances of TE_PO
.for each te_po in te_pos
INSERT INTO TE_PO VALUES ( ${te_po.ID}, ${te_po.Name}, ${te_po.GeneratedName}, ${te_po.InterfaceName}, ${te_po.PackageName}, ${te_po.Provision}, ${te_po.polymorphic}, ${te_po.sibling}, ${te_po.Order}, ${te_po.te_cID}, ${te_po.c_iId}, ${te_po.c_poId}, ${te_po.realizeEE_ID} );
.end for
.select many te_sms from instances of TE_SM
.for each te_sm in te_sms
INSERT INTO TE_SM VALUES ( ${te_sm.ID}, ${te_sm.complete}, ${te_sm.initial_state}, ${te_sm.SEMname}, ${te_sm.action_array}, ${te_sm.action_type}, ${te_sm.events_union}, ${te_sm.txn_action_array}, ${te_sm.txn_action_count}, ${te_sm.state_names_array}, ${te_sm.num_states}, ${te_sm.num_events}, ${te_sm.SM_ID}, ${te_sm.te_classGeneratedName} );
.end for
.select many te_classs from instances of TE_CLASS
.for each te_class in te_classs
INSERT INTO TE_CLASS VALUES ( ${te_class.ID}, ${te_class.Name}, ${te_class.Numb}, ${te_class.Key_Lett}, ${te_class.scope}, ${te_class.GeneratedName}, ${te_class.CBGeneratedName}, ${te_class.Included}, ${te_class.PEIsDefinedInData}, ${te_class.IsFixedPopulation}, ${te_class.IsReadOnly}, ${te_class.ExcludeFromGen}, ${te_class.MaxExtentSize}, ${te_class.SelfCreated}, ${te_class.NonSelfCreated}, ${te_class.Persistent}, ${te_class.Order}, ${te_class.IsTrace}, ${te_class.ContainerIndex}, ${te_class.Task}, ${te_class.class_file}, ${te_class.system_class_number}, ${te_class.CBsystem_class_number}, ${te_class.persist_link}, ${te_class.dispatcher}, ${te_class.CBdispatcher}, ${te_class.attribute_format}, ${te_class.attribute_dump}, ${te_class.te_cID}, ${te_class.Obj_ID}, ${te_class.nextID}, ${te_class.InstanceMaxNo}, ${te_class.InstanceMaxNoDefIncludeFile} );
.end for
.select many te_prefixs from instances of TE_PREFIX
.for each te_prefix in te_prefixs
INSERT INTO TE_PREFIX VALUES ( ${te_prefix.symbol}, ${te_prefix.symbolsw}, ${te_prefix.type}, ${te_prefix.typesw}, ${te_prefix.define_u}, ${te_prefix.define_c}, ${te_prefix.define_csw}, ${te_prefix.define_usw}, ${te_prefix.file}, ${te_prefix.result}, ${te_prefix.provided_port}, ${te_prefix.required_port}, ${te_prefix.channel} );
.end for
.select many te_sets from instances of TE_SET
.for each te_set in te_sets
INSERT INTO TE_SET VALUES ( ${te_set.number_of_containoids}, ${te_set.iterator_class_name}, ${te_set.factory}, ${te_set.init}, ${te_set.copy}, ${te_set.clear}, ${te_set.insert_element}, ${te_set.insert_instance}, ${te_set.insert_block}, ${te_set.remove_element}, ${te_set.remove_instance}, ${te_set.element_count}, ${te_set.contains}, ${te_set.equality}, ${te_set.emptiness}, ${te_set.get_any}, ${te_set.iterator_reset}, ${te_set.iterator_next}, ${te_set.base_class}, ${te_set.element_type}, ${te_set.scope}, ${te_set.module} );
.end for
.select many te_persists from instances of TE_PERSIST
.for each te_persist in te_persists
INSERT INTO TE_PERSIST VALUES ( ${te_persist.persist_file}, ${te_persist.class_union}, ${te_persist.instance_cache_depth}, ${te_persist.link_cache_depth}, ${te_persist.check_mark}, ${te_persist.post_link}, ${te_persist.link_type_name}, ${te_persist.link_type_type}, ${te_persist.factory_init}, ${te_persist.commit}, ${te_persist.restore}, ${te_persist.remove}, ${te_persist.domainnum_name}, ${te_persist.domainnum_type}, ${te_persist.classnum_name}, ${te_persist.classnum_type}, ${te_persist.index_name}, ${te_persist.index_type}, ${te_persist.instid_type}, ${te_persist.instid_name}, ${te_persist.dirty_type}, ${te_persist.dirty_name}, ${te_persist.dirty_dirty}, ${te_persist.dirty_clean} );
.end for
.select many te_eqs from instances of TE_EQ
.for each te_eq in te_eqs
INSERT INTO TE_EQ VALUES ( ${te_eq.ignored}, ${te_eq.cant_happen}, ${te_eq.system_events_union}, ${te_eq.system_event_pool}, ${te_eq.constant_type}, ${te_eq.base_event_type}, ${te_eq.base_variable}, ${te_eq.max_events}, ${te_eq.max_self_events}, ${te_eq.max_nonself_events}, ${te_eq.new}, ${te_eq.allocate}, ${te_eq.delete}, ${te_eq.modify}, ${te_eq.self}, ${te_eq.non_self}, ${te_eq.search_and_destroy}, ${te_eq.run_flag}, ${te_eq.event_message_variable}, ${te_eq.scope} );
.end for
.select many te_ilbs from instances of TE_ILB
.for each te_ilb in te_ilbs
INSERT INTO TE_ILB VALUES ( ${te_ilb.file}, ${te_ilb.define_name}, ${te_ilb.data_define_name}, ${te_ilb.interleave_bridge}, ${te_ilb.interleave_bridge_done}, ${te_ilb.get_data}, ${te_ilb.dispatch} );
.end for
.select many te_threads from instances of TE_THREAD
.for each te_thread in te_threads
INSERT INTO TE_THREAD VALUES ( ${te_thread.file}, ${te_thread.create}, ${te_thread.mutex_lock}, ${te_thread.mutex_unlock}, ${te_thread.nonbusy_wait}, ${te_thread.nonbusy_wake}, ${te_thread.shutdown}, ${te_thread.enabled}, ${te_thread.flavor}, ${te_thread.serialize}, ${te_thread.number_of_threads}, ${te_thread.extra_initialization}, ${te_thread.AUTOSAR_enabled} );
.end for
.select many te_files from instances of TE_FILE
.for each te_file in te_files
INSERT INTO TE_FILE VALUES ( ${te_file.hdr_file_ext}, ${te_file.src_file_ext}, ${te_file.obj_file_ext}, ${te_file.sys_main}, ${te_file.factory}, ${te_file.events}, ${te_file.nvs}, ${te_file.nvs_bridge}, ${te_file.sets}, ${te_file.types}, ${te_file.thread}, ${te_file.trace}, ${te_file.tim}, ${te_file.callout}, ${te_file.ilb}, ${te_file.persist}, ${te_file.xtumlload}, ${te_file.interfaces}, ${te_file.registers}, ${te_file.domain_color_path}, ${te_file.domain_source_path}, ${te_file.domain_include_path}, ${te_file.system_source_path}, ${te_file.system_include_path}, ${te_file.system_color_path}, ${te_file.mc3020sys_path}, ${te_file.bridge_mark}, ${te_file.system_mark}, ${te_file.datatype_mark}, ${te_file.event_mark}, ${te_file.class_mark}, ${te_file.domain_mark}, ${te_file.system_functions_mark}, ${te_file.arc_path}, ${te_file.root_path} );
.end for
.select many te_callouts from instances of TE_CALLOUT
.for each te_callout in te_callouts
INSERT INTO TE_CALLOUT VALUES ( ${te_callout.file}, ${te_callout.initialization}, ${te_callout.pre_xtUML_initialization}, ${te_callout.post_xtUML_initialization}, ${te_callout.background_processing}, ${te_callout.event_cant_happen}, ${te_callout.pre_shutdown}, ${te_callout.post_shutdown}, ${te_callout.event_no_instance}, ${te_callout.event_free_list_empty}, ${te_callout.empty_handle_detected}, ${te_callout.object_pool_empty}, ${te_callout.node_list_empty}, ${te_callout.interleaved_bridge_overflow}, ${te_callout.self_event_queue_empty}, ${te_callout.non_self_event_queue_empty}, ${te_callout.persistence_error} );
.end for
.select many te_strings from instances of TE_STRING
.for each te_string in te_strings
INSERT INTO TE_STRING VALUES ( ${te_string.memset}, ${te_string.memmove}, ${te_string.strcpy}, ${te_string.stradd}, ${te_string.strlen}, ${te_string.strcmp}, ${te_string.strget}, ${te_string.itoa}, ${te_string.atoi}, ${te_string.max_string_length}, ${te_string.debug_buffer_depth} );
.end for
.select many te_traces from instances of TE_TRACE
.for each te_trace in te_traces
INSERT INTO TE_TRACE VALUES ( ${te_trace.component_msg_start}, ${te_trace.component_msg_end}, ${te_trace.state_txn_start}, ${te_trace.state_txn_end}, ${te_trace.state_txn_event_ignored}, ${te_trace.state_txn_cant_happen}, ${te_trace.oal_trace} );
.end for
.select many te_copyrights from instances of TE_COPYRIGHT
.for each te_copyright in te_copyrights
INSERT INTO TE_COPYRIGHT VALUES ( ${te_copyright.body} );
.end for
.select many te_dmas from instances of TE_DMA
.for each te_dma in te_dmas
INSERT INTO TE_DMA VALUES ( ${te_dma.file}, ${te_dma.allocate}, ${te_dma.release}, ${te_dma.debugging_heap} );
.end for
.select many te_containers from instances of TE_CONTAINER
.for each te_container in te_containers
INSERT INTO TE_CONTAINER VALUES ( ${te_container.flavor} );
.end for
.select many te_dlists from instances of TE_DLIST
.for each te_dlist in te_dlists
INSERT INTO TE_DLIST VALUES ( ${te_dlist.flavor}, ${te_dlist.remove_node} );
.end for
.select many te_slists from instances of TE_SLIST
.for each te_slist in te_slists
INSERT INTO TE_SLIST VALUES ( ${te_slist.flavor}, ${te_slist.remove_node} );
.end for
.select many te_targets from instances of TE_TARGET
.for each te_target in te_targets
INSERT INTO TE_TARGET VALUES ( ${te_target.language}, ${te_target.c2cplusplus_linkage_begin}, ${te_target.c2cplusplus_linkage_end}, ${te_target.main} );
.end for
.select many te_relinfos from instances of TE_RELINFO
.for each te_relinfo in te_relinfos
INSERT INTO TE_RELINFO VALUES ( ${te_relinfo.obj}, ${te_relinfo.related_obj}, ${te_relinfo.rel}, ${te_relinfo.rto}, ${te_relinfo.rgo}, ${te_relinfo.oir}, ${te_relinfo.multiplicity}, ${te_relinfo.gen_link_methods}, ${te_relinfo.rel_phrase}, ${te_relinfo.is_formalizer}, ${te_relinfo.is_supertype}, ${te_relinfo.generate_subtype}, ${te_relinfo.gen_declaration} );
.end for
.select many te_relstores from instances of TE_RELSTORE
.for each te_relstore in te_relstores
INSERT INTO TE_RELSTORE VALUES ( ${te_relstore.data_declare}, ${te_relstore.data_init}, ${te_relstore.link_calls}, ${te_relstore.link_index}, ${te_relstore.data_fini}, ${te_relstore.self_name} );
.end for
.select many te_instances from instances of TE_INSTANCE
.for each te_instance in te_instances
INSERT INTO TE_INSTANCE VALUES ( ${te_instance.create}, ${te_instance.create_persistent}, ${te_instance.delete}, ${te_instance.delete_persistent}, ${te_instance.self}, ${te_instance.global_self}, ${te_instance.base}, ${te_instance.handle}, ${te_instance.factory_init}, ${te_instance.base_class}, ${te_instance.max_extent}, ${te_instance.max_association_extent}, ${te_instance.max_transient_extent}, ${te_instance.current_state}, ${te_instance.scope}, ${te_instance.get_dci}, ${te_instance.get_event_dispatcher}, ${te_instance.get_thread_assignment}, ${te_instance.module} );
.end for
.select many te_tims from instances of TE_TIM
.for each te_tim in te_tims
INSERT INTO TE_TIM VALUES ( ${te_tim.max_timers}, ${te_tim.keyed_timer_support}, ${te_tim.recurring_timer_support}, ${te_tim.timer_event_search_and_destroy}, ${te_tim.internal_type}, ${te_tim.scope}, ${te_tim.event_name} );
.end for
.select many te_typemaps from instances of TE_TYPEMAP
.for each te_typemap in te_typemaps
INSERT INTO TE_TYPEMAP VALUES ( ${te_typemap.instance_index_name}, ${te_typemap.instance_index_type}, ${te_typemap.object_size_name}, ${te_typemap.object_size_type}, ${te_typemap.object_number_name}, ${te_typemap.object_number_type}, ${te_typemap.state_number_name}, ${te_typemap.state_number_type}, ${te_typemap.domain_number_name}, ${te_typemap.domain_number_type}, ${te_typemap.event_number_name}, ${te_typemap.event_number_type}, ${te_typemap.event_priority_name}, ${te_typemap.event_priority_type}, ${te_typemap.event_flags_name}, ${te_typemap.event_flags_type}, ${te_typemap.poly_return_name}, ${te_typemap.poly_return_type}, ${te_typemap.SEM_cell_name}, ${te_typemap.SEM_cell_type}, ${te_typemap.structured_data_types}, ${te_typemap.enumeration_info}, ${te_typemap.user_supplied_data_types} );
.end for
.select many te_extents from instances of TE_EXTENT
.for each te_extent in te_extents
INSERT INTO TE_EXTENT VALUES ( ${te_extent.sets_type}, ${te_extent.type}, ${te_extent.active}, ${te_extent.inactive}, ${te_extent.initializer}, ${te_extent.size_type}, ${te_extent.size_name}, ${te_extent.istate_type}, ${te_extent.istate_name}, ${te_extent.container_type}, ${te_extent.container_name}, ${te_extent.pool_type}, ${te_extent.pool_name}, ${te_extent.population_type}, ${te_extent.population_name}, ${te_extent.rstorsize_type}, ${te_extent.rstorsize_name}, ${te_extent.linkfunc_name} );
.end for
.select many te_dims from instances of TE_DIM
.for each te_dim in te_dims
INSERT INTO TE_DIM VALUES ( ${te_dim.te_dimID}, ${te_dim.elementCount}, ${te_dim.dimensionCount}, ${te_dim.next_te_dimID} );
.end for
.select many te_pars from instances of TE_PAR
.for each te_par in te_pars
INSERT INTO TE_PAR VALUES ( ${te_par.Name}, ${te_par.By_Ref}, ${te_par.buffer}, ${te_par.Order}, ${te_par.Value_ID}, ${te_par.te_parmID} );
.end for
.select many te_macts from instances of TE_MACT
.for each te_mact in te_macts
INSERT INTO TE_MACT VALUES ( ${te_mact.AbaID}, ${te_mact.ID}, ${te_mact.Name}, ${te_mact.Descrip}, ${te_mact.GeneratedName}, ${te_mact.ComponentName}, ${te_mact.OALParamBuffer}, ${te_mact.PortName}, ${te_mact.InterfaceName}, ${te_mact.MessageName}, ${te_mact.Direction}, ${te_mact.Provision}, ${te_mact.subtypeKL}, ${te_mact.polymorphic}, ${te_mact.trace}, ${te_mact.Order}, ${te_mact.SPR_POId}, ${te_mact.SPR_PSId}, ${te_mact.SPR_ROId}, ${te_mact.SPR_RSId}, ${te_mact.te_cID}, ${te_mact.te_poID}, ${te_mact.te_evtID}, ${te_mact.nextID} );
.end for
.select many te_iirs from instances of TE_IIR
.for each te_iir in te_iirs
INSERT INTO TE_IIR VALUES ( ${te_iir.ID}, ${te_iir.component_name}, ${te_iir.port_name}, ${te_iir.interface_name}, ${te_iir.polymorphic}, ${te_iir.template_parameter_values}, ${te_iir.C2C}, ${te_iir.cl_iirId}, ${te_iir.c_irId}, ${te_iir.te_poID}, ${te_iir.provider_te_iirID} );
.end for
.select many te_dcis from instances of TE_DCI
.for each te_dci in te_dcis
INSERT INTO TE_DCI VALUES ( ${te_dci.te_cID}, ${te_dci.class_numbers}, ${te_dci.persist_union}, ${te_dci.task_list}, ${te_dci.task_numbers}, ${te_dci.max}, ${te_dci.max_models}, ${te_dci.init}, ${te_dci.array_name} );
.end for
.select many te_cias from instances of TE_CIA
.for each te_cia in te_cias
INSERT INTO TE_CIA VALUES ( ${te_cia.class_info_name}, ${te_cia.class_info_type}, ${te_cia.active_count}, ${te_cia.class_count}, ${te_cia.count_type} );
.end for
.select many te_stis from instances of TE_STI
.for each te_sti in te_stis
INSERT INTO TE_STI VALUES ( ${te_sti.ID}, ${te_sti.Name_key}, ${te_sti.PID}, ${te_sti.IsFirst} );
.end for
.select many te_stidescrips from instances of TE_STIDESCRIP
.for each te_stidescrip in te_stidescrips
INSERT INTO TE_STIDESCRIP VALUES ( ${te_stidescrip.Descrip} );
.end for
.select many te_outfiles from instances of TE_OUTFILE
.for each te_outfile in te_outfiles
INSERT INTO TE_OUTFILE VALUES ( ${te_outfile.ID}, ${te_outfile.Name}, ${te_outfile.body}, ${te_outfile.Order} );
.end for
.print "Translation Marking"
.select many tm_cs from instances of TM_C
.for each tm_c in tm_cs
INSERT INTO TM_C VALUES ( ${tm_c.Package}, ${tm_c.Name}, ${tm_c.xName}, ${tm_c.include_file}, ${tm_c.isChannel}, ${tm_c.isRealized}, ${tm_c.te_cID} );
.end for
.select many tm_syncs from instances of TM_SYNC
.for each tm_sync in tm_syncs
INSERT INTO TM_SYNC VALUES ( ${tm_sync.RegisteredDomain}, ${tm_sync.Name}, ${tm_sync.IsSafeForInterrupts}, ${tm_sync.IsInitFunction} );
.end for
.select many tm_pointers from instances of TM_POINTER
.for each tm_pointer in tm_pointers
INSERT INTO TM_POINTER VALUES ( ${tm_pointer.Domain}, ${tm_pointer.DT_name}, ${tm_pointer.pointer_type}, ${tm_pointer.include_file} );
.end for
.select many tm_precisions from instances of TM_PRECISION
.for each tm_precision in tm_precisions
INSERT INTO TM_PRECISION VALUES ( ${tm_precision.Domain}, ${tm_precision.DT_name}, ${tm_precision.xName}, ${tm_precision.initial_value} );
.end for
.select many tm_enumvals from instances of TM_ENUMVAL
.for each tm_enumval in tm_enumvals
INSERT INTO TM_ENUMVAL VALUES ( ${tm_enumval.Domain}, ${tm_enumval.enumeration}, ${tm_enumval.enumerator}, ${tm_enumval.value} );
.end for
.select many tm_enuminits from instances of TM_ENUMINIT
.for each tm_enuminit in tm_enuminits
INSERT INTO TM_ENUMINIT VALUES ( ${tm_enuminit.Domain}, ${tm_enuminit.enumeration}, ${tm_enuminit.value} );
.end for
.select many tm_threads from instances of TM_THREAD
.for each tm_thread in tm_threads
INSERT INTO TM_THREAD VALUES ( ${tm_thread.enabled}, ${tm_thread.flavor}, ${tm_thread.serialize}, ${tm_thread.number_of_threads}, ${tm_thread.extra_initialization} );
.end for
.select many tm_systags from instances of TM_SYSTAG
.for each tm_systag in tm_systags
INSERT INTO TM_SYSTAG VALUES ( ${tm_systag.MaxStringLen}, ${tm_systag.MaxRelExtent}, ${tm_systag.MaxSelectExtent}, ${tm_systag.MaxSelfEvents}, ${tm_systag.MaxNonSelfEvents}, ${tm_systag.MaxTimers}, ${tm_systag.MaxInterleavedBridges}, ${tm_systag.MaxInterleavedBridgeDataSize}, ${tm_systag.CollectionsFlavor}, ${tm_systag.PersistInstanceCacheDepth}, ${tm_systag.PersistLinkCacheDepth}, ${tm_systag.UnitsToDynamicallyAllocate}, ${tm_systag.VFB}, ${tm_systag.InstanceLoading}, ${tm_systag.SystemCPortsType}, ${tm_systag.AllPortsPoly} );
.end for
.select many tm_builds from instances of TM_BUILD
.for each tm_build in tm_builds
INSERT INTO TM_BUILD VALUES ( ${tm_build.package_to_build}, ${tm_build.package_obj_name}, ${tm_build.package_inst_name} );
.end for
.select many tm_templates from instances of TM_TEMPLATE
.for each tm_template in tm_templates
INSERT INTO TM_TEMPLATE VALUES ( ${tm_template.ID}, ${tm_template.tm_cPackage}, ${tm_template.tm_cName}, ${tm_template.tm_ifPackage}, ${tm_template.tm_ifName}, ${tm_template.current}, ${tm_template.template_parameters}, ${tm_template.template_parameters_default}, ${tm_template.template_actual_parameters}, ${tm_template.template_default_instantiation} );
.end for
.select many tm_tps from instances of TM_TP
.for each tm_tp in tm_tps
INSERT INTO TM_TP VALUES ( ${tm_tp.ID}, ${tm_tp.typename}, ${tm_tp.Name}, ${tm_tp.DefaultValue}, ${tm_tp.tm_templateID} );
.end for
.select many tm_ifs from instances of TM_IF
.for each tm_if in tm_ifs
INSERT INTO TM_IF VALUES ( ${tm_if.Package}, ${tm_if.Name}, ${tm_if.c_iId} );
.end for
.select many tm_tpvs from instances of TM_TPV
.for each tm_tpv in tm_tpvs
INSERT INTO TM_TPV VALUES ( ${tm_tpv.ID}, ${tm_tpv.instance}, ${tm_tpv.value}, ${tm_tpv.tm_tpID}, ${tm_tpv.te_iirID}, ${tm_tpv.te_ciID} );
.end for
.select many tm_dtmacros from instances of TM_DTMACRO
.for each tm_dtmacro in tm_dtmacros
INSERT INTO TM_DTMACRO VALUES ( ${tm_dtmacro.component}, ${tm_dtmacro.DT_name}, ${tm_dtmacro.IsExternalMacro}, ${tm_dtmacro.genName}, ${tm_dtmacro.Initial_Value}, ${tm_dtmacro.Include_File} );
.end for
.print "Use Case"
.select many uc_uccs from instances of UC_UCC
.for each uc_ucc in uc_uccs
INSERT INTO UC_UCC VALUES ( ${uc_ucc.Package_ID}, ${uc_ucc.Dom_ID}, ${uc_ucc.SS_ID}, ${uc_ucc.Parent_Package_ID}, ${uc_ucc.Name}, ${uc_ucc.Descrip}, ${uc_ucc.Sys_ID}, ${uc_ucc.Component_Package_ID}, ${uc_ucc.Component_Id} );
.end for
.select many uc_ucas from instances of UC_UCA
.for each uc_uca in uc_ucas
INSERT INTO UC_UCA VALUES ( ${uc_uca.Assoc_ID}, ${uc_uca.Source_Part_ID}, ${uc_uca.Destination_Part_ID} );
.end for
.select many uc_piucs from instances of UC_PIUC
.for each uc_piuc in uc_piucs
INSERT INTO UC_PIUC VALUES ( ${uc_piuc.Package_ID}, ${uc_piuc.Part_ID} );
.end for
.select many uc_uius from instances of UC_UIU
.for each uc_uiu in uc_uius
INSERT INTO UC_UIU VALUES ( ${uc_uiu.Package_ID} );
.end for
.select many uc_bas from instances of UC_BA
.for each uc_ba in uc_bas
INSERT INTO UC_BA VALUES ( ${uc_ba.Assoc_ID}, ${uc_ba.Descrip} );
.end for
.select many uc_gs from instances of UC_G
.for each uc_g in uc_gs
INSERT INTO UC_G VALUES ( ${uc_g.Assoc_ID}, ${uc_g.Descrip} );
.end for
.select many uc_is from instances of UC_I
.for each uc_i in uc_is
INSERT INTO UC_I VALUES ( ${uc_i.Assoc_ID}, ${uc_i.Descrip} );
.end for
.select many uc_es from instances of UC_E
.for each uc_e in uc_es
INSERT INTO UC_E VALUES ( ${uc_e.Assoc_ID}, ${uc_e.Descrip} );
.end for
.select many uc_aiucs from instances of UC_AIUC
.for each uc_aiuc in uc_aiucs
INSERT INTO UC_AIUC VALUES ( ${uc_aiuc.Assoc_ID}, ${uc_aiuc.Package_ID} );
.end for
.print "Wiring"
.select many s_aws from instances of S_AW
.for each s_aw in s_aws
INSERT INTO S_AW VALUES ( ${s_aw.Brg_ID}, ${s_aw.Sync_ID} );
.end for
.print "afun"
.print "afunmark"
.print "afunsmt"
.print "afunval"
.print "afunx"
.emit to file "_system.sql"
.exit 508

