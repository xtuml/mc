.print "dumping class instances into SQL format..."
.print "Accept Event Action (A_AEA)"
.select many a_aeas from instances of A_AEA
.for each a_aea in a_aeas
INSERT INTO A_AEA VALUES (\
  .if ( "un-initialized" == "${a_aea.Id}" )
 0\
  .else
 ${a_aea.Id}\
  .end if
, '${a_aea.Name}', '${a_aea.Descrip}' );
.end for
.print "Accept Event (A_AE)"
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
.print "Accept Time Event Action (A_ATE)"
.select many a_ates from instances of A_ATE
.for each a_ate in a_ates
INSERT INTO A_ATE VALUES (\
  .if ( "un-initialized" == "${a_ate.Id}" )
 0\
  .else
 ${a_ate.Id}\
  .end if
, '${a_ate.Name}', '${a_ate.Descrip}' );
.end for
.print "Action Node (A_ACT)"
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
.print "Activity Diagram Action (A_GA)"
.select many a_gas from instances of A_GA
.for each a_ga in a_gas
INSERT INTO A_GA VALUES (\
  .if ( "un-initialized" == "${a_ga.Id}" )
 0\
  .else
 ${a_ga.Id}\
  .end if
, '${a_ga.Name}', '${a_ga.Descrip}' );
.end for
.print "Activity Edge (A_E)"
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
, '${a_e.Guard}', '${a_e.Descrip}'\
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
.print "Activity Final Node (A_AF)"
.select many a_afs from instances of A_AF
.for each a_af in a_afs
INSERT INTO A_AF VALUES (\
  .if ( "un-initialized" == "${a_af.Id}" )
 0\
  .else
 ${a_af.Id}\
  .end if
, '${a_af.Descrip}' );
.end for
.print "Activity In Activity (A_AIA)"
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
.print "Activity Node (A_N)"
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
.print "Activity Partition (A_AP)"
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
, '${a_ap.Name}', '${a_ap.Descrip}' );
.end for
.print "Activity (A_A)"
.select many a_as from instances of A_A
.for each a_a in a_as
INSERT INTO A_A VALUES (\
  .if ( "un-initialized" == "${a_a.Package_ID}" )
 0\
  .else
 ${a_a.Package_ID}\
  .end if
, '${a_a.Name}', '${a_a.Descrip}'\
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
.print "Control Node (A_CTL)"
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
.print "Decision Merge Node (A_DM)"
.select many a_dms from instances of A_DM
.for each a_dm in a_dms
INSERT INTO A_DM VALUES (\
  .if ( "un-initialized" == "${a_dm.Id}" )
 0\
  .else
 ${a_dm.Id}\
  .end if
, '${a_dm.Name}', '${a_dm.Descrip}' );
.end for
.print "Flow Final Node (A_FF)"
.select many a_ffs from instances of A_FF
.for each a_ff in a_ffs
INSERT INTO A_FF VALUES (\
  .if ( "un-initialized" == "${a_ff.Id}" )
 0\
  .else
 ${a_ff.Id}\
  .end if
, '${a_ff.Descrip}' );
.end for
.print "Fork Join Node (A_FJ)"
.select many a_fjs from instances of A_FJ
.for each a_fj in a_fjs
INSERT INTO A_FJ VALUES (\
  .if ( "un-initialized" == "${a_fj.Id}" )
 0\
  .else
 ${a_fj.Id}\
  .end if
, '${a_fj.Descrip}', '${a_fj.GuardCondition}' );
.end for
.print "Initial Node (A_INI)"
.select many a_inis from instances of A_INI
.for each a_ini in a_inis
INSERT INTO A_INI VALUES (\
  .if ( "un-initialized" == "${a_ini.Id}" )
 0\
  .else
 ${a_ini.Id}\
  .end if
, '${a_ini.Descrip}' );
.end for
.print "Object Node (A_OBJ)"
.select many a_objs from instances of A_OBJ
.for each a_obj in a_objs
INSERT INTO A_OBJ VALUES (\
  .if ( "un-initialized" == "${a_obj.Id}" )
 0\
  .else
 ${a_obj.Id}\
  .end if
, '${a_obj.Name}', '${a_obj.Descrip}' );
.end for
.print "Send Signal (A_SS)"
.select many a_sss from instances of A_SS
.for each a_ss in a_sss
INSERT INTO A_SS VALUES (\
  .if ( "un-initialized" == "${a_ss.Id}" )
 0\
  .else
 ${a_ss.Id}\
  .end if
, '${a_ss.Name}', '${a_ss.Descrip}' );
.end for
.print "Association (R_REL)"
.select many r_rels from instances of R_REL
.for each r_rel in r_rels
INSERT INTO R_REL VALUES (\
  .if ( "un-initialized" == "${r_rel.Rel_ID}" )
 0\
  .else
 ${r_rel.Rel_ID}\
  .end if
, ${r_rel.Numb}, '${r_rel.Descrip}'\
  .if ( "un-initialized" == "${r_rel.SS_ID}" )
, 0\
  .else
, ${r_rel.SS_ID}\
  .end if
 );
.end for
.print "Class As Associated One Side (R_AONE)"
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
.print "Class As Associated Other Side (R_AOTH)"
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
.print "Class As Derived One Side (R_CONE)"
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
.print "Class As Derived Other Side (R_COTH)"
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
.print "Class As Link (R_ASSR)"
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
.print "Class As Simple Formalizer (R_FORM)"
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
.print "Class As Simple Participant (R_PART)"
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
.print "Class As Subtype (R_SUB)"
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
.print "Class As Supertype (R_SUPER)"
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
.print "Class In Association (R_OIR)"
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
.print "Derived Association (R_COMP)"
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
.print "Linked Association (R_ASSOC)"
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
.print "Referred To Class in Assoc (R_RTO)"
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
.print "Referring Class In Assoc (R_RGO)"
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
.print "Simple Association (R_SIMP)"
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
.print "Subtype Supertype Association (R_SUBSUP)"
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
.print "Block (ACT_BLK)"
.select many act_blks from instances of ACT_BLK
.for each act_blk in act_blks
INSERT INTO ACT_BLK VALUES (\
  .if ( "un-initialized" == "${act_blk.Block_ID}" )
 0\
  .else
 ${act_blk.Block_ID}\
  .end if
, ${act_blk.WhereSpecOK}, ${act_blk.InWhereSpec}, ${act_blk.SelectedFound}, '${act_blk.TempBuffer}', '${act_blk.SupData1}', '${act_blk.SupData2}', ${act_blk.CurrentLine}, ${act_blk.CurrentCol}, ${act_blk.currentKeyLettersLineNumber}, ${act_blk.currentKeyLettersColumn}, ${act_blk.currentParameterAssignmentNameLineNumber}, ${act_blk.currentParameterAssignmentNameColumn}, ${act_blk.currentAssociationNumberLineNumber}, ${act_blk.currentAssociationNumberColumn}, ${act_blk.currentAssociationPhraseLineNumber}, ${act_blk.currentAssociationPhraseColumn}, ${act_blk.currentDataTypeNameLineNumber}, ${act_blk.currentDataTypeNameColumn}, ${act_blk.blockInStackFrameCreated}\
  .if ( "un-initialized" == "${act_blk.Action_ID}" )
, 0\
  .else
, ${act_blk.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_blk.Parsed_Action_ID}" )
, 0\
  .else
, ${act_blk.Parsed_Action_ID}\
  .end if
 );
.end for
.print "Body in Component (ACT_BIC)"
.select many act_bics from instances of ACT_BIC
.for each act_bic in act_bics
INSERT INTO ACT_BIC VALUES (\
  .if ( "un-initialized" == "${act_bic.Component_Id}" )
 0\
  .else
 ${act_bic.Component_Id}\
  .end if
\
  .if ( "un-initialized" == "${act_bic.Action_ID}" )
, 0\
  .else
, ${act_bic.Action_ID}\
  .end if
 );
.end for
.print "Body in Element (ACT_BIE)"
.select many act_bies from instances of ACT_BIE
.for each act_bie in act_bies
INSERT INTO ACT_BIE VALUES (\
  .if ( "un-initialized" == "${act_bie.Element_ID}" )
 0\
  .else
 ${act_bie.Element_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_bie.Action_ID}" )
, 0\
  .else
, ${act_bie.Action_ID}\
  .end if
 );
.end for
.print "Body (ACT_ACT)"
.select many act_acts from instances of ACT_ACT
.for each act_act in act_acts
INSERT INTO ACT_ACT VALUES (\
  .if ( "un-initialized" == "${act_act.Action_ID}" )
 0\
  .else
 ${act_act.Action_ID}\
  .end if
, '${act_act.Type}', ${act_act.LoopLevel}\
  .if ( "un-initialized" == "${act_act.Block_ID}" )
, 0\
  .else
, ${act_act.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_act.CurrentScope_ID}" )
, 0\
  .else
, ${act_act.CurrentScope_ID}\
  .end if
, ${act_act.return_value}, '${act_act.Label}'\
  .if ( "un-initialized" == "${act_act.Parsed_Block_ID}" )
, 0\
  .else
, ${act_act.Parsed_Block_ID}\
  .end if
 );
.end for
.print "Break (ACT_BRK)"
.select many act_brks from instances of ACT_BRK
.for each act_brk in act_brks
INSERT INTO ACT_BRK VALUES (\
  .if ( "un-initialized" == "${act_brk.Statement_ID}" )
 0\
  .else
 ${act_brk.Statement_ID}\
  .end if
 );
.end for
.print "Bridge Body (ACT_BRB)"
.select many act_brbs from instances of ACT_BRB
.for each act_brb in act_brbs
INSERT INTO ACT_BRB VALUES (\
  .if ( "un-initialized" == "${act_brb.Action_ID}" )
 0\
  .else
 ${act_brb.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_brb.Brg_ID}" )
, 0\
  .else
, ${act_brb.Brg_ID}\
  .end if
 );
.end for
.print "Continue (ACT_CON)"
.select many act_cons from instances of ACT_CON
.for each act_con in act_cons
INSERT INTO ACT_CON VALUES (\
  .if ( "un-initialized" == "${act_con.Statement_ID}" )
 0\
  .else
 ${act_con.Statement_ID}\
  .end if
 );
.end for
.print "Control (ACT_CTL)"
.select many act_ctls from instances of ACT_CTL
.for each act_ctl in act_ctls
INSERT INTO ACT_CTL VALUES (\
  .if ( "un-initialized" == "${act_ctl.Statement_ID}" )
 0\
  .else
 ${act_ctl.Statement_ID}\
  .end if
 );
.end for
.print "Derived Attribute Body (ACT_DAB)"
.select many act_dabs from instances of ACT_DAB
.for each act_dab in act_dabs
INSERT INTO ACT_DAB VALUES (\
  .if ( "un-initialized" == "${act_dab.Action_ID}" )
 0\
  .else
 ${act_dab.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_dab.Obj_ID}" )
, 0\
  .else
, ${act_dab.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_dab.Attr_ID}" )
, 0\
  .else
, ${act_dab.Attr_ID}\
  .end if
, ${act_dab.AttributeWritten} );
.end for
.print "Else Stmt (ACT_E)"
.select many act_es from instances of ACT_E
.for each act_e in act_es
INSERT INTO ACT_E VALUES (\
  .if ( "un-initialized" == "${act_e.Statement_ID}" )
 0\
  .else
 ${act_e.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_e.Block_ID}" )
, 0\
  .else
, ${act_e.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_e.If_Statement_ID}" )
, 0\
  .else
, ${act_e.If_Statement_ID}\
  .end if
 );
.end for
.print "ElseIf Stmt (ACT_EL)"
.select many act_els from instances of ACT_EL
.for each act_el in act_els
INSERT INTO ACT_EL VALUES (\
  .if ( "un-initialized" == "${act_el.Statement_ID}" )
 0\
  .else
 ${act_el.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_el.Block_ID}" )
, 0\
  .else
, ${act_el.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_el.Value_ID}" )
, 0\
  .else
, ${act_el.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_el.If_Statement_ID}" )
, 0\
  .else
, ${act_el.If_Statement_ID}\
  .end if
 );
.end for
.print "For Stmt (ACT_FOR)"
.select many act_fors from instances of ACT_FOR
.for each act_for in act_fors
INSERT INTO ACT_FOR VALUES (\
  .if ( "un-initialized" == "${act_for.Statement_ID}" )
 0\
  .else
 ${act_for.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_for.Block_ID}" )
, 0\
  .else
, ${act_for.Block_ID}\
  .end if
, ${act_for.is_implicit}\
  .if ( "un-initialized" == "${act_for.Loop_Var_ID}" )
, 0\
  .else
, ${act_for.Loop_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_for.Set_Var_ID}" )
, 0\
  .else
, ${act_for.Set_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_for.Obj_ID}" )
, 0\
  .else
, ${act_for.Obj_ID}\
  .end if
 );
.end for
.print "Function Body (ACT_FNB)"
.select many act_fnbs from instances of ACT_FNB
.for each act_fnb in act_fnbs
INSERT INTO ACT_FNB VALUES (\
  .if ( "un-initialized" == "${act_fnb.Action_ID}" )
 0\
  .else
 ${act_fnb.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_fnb.Sync_ID}" )
, 0\
  .else
, ${act_fnb.Sync_ID}\
  .end if
 );
.end for
.print "If Stmt (ACT_IF)"
.select many act_ifs from instances of ACT_IF
.for each act_if in act_ifs
INSERT INTO ACT_IF VALUES (\
  .if ( "un-initialized" == "${act_if.Statement_ID}" )
 0\
  .else
 ${act_if.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_if.Block_ID}" )
, 0\
  .else
, ${act_if.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_if.Value_ID}" )
, 0\
  .else
, ${act_if.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_if.Elif_Statement_ID}" )
, 0\
  .else
, ${act_if.Elif_Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_if.Else_Statement_ID}" )
, 0\
  .else
, ${act_if.Else_Statement_ID}\
  .end if
 );
.end for
.print "Operation Body (ACT_OPB)"
.select many act_opbs from instances of ACT_OPB
.for each act_opb in act_opbs
INSERT INTO ACT_OPB VALUES (\
  .if ( "un-initialized" == "${act_opb.Action_ID}" )
 0\
  .else
 ${act_opb.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_opb.Tfr_ID}" )
, 0\
  .else
, ${act_opb.Tfr_ID}\
  .end if
 );
.end for
.print "Provided Operation Body (ACT_POB)"
.select many act_pobs from instances of ACT_POB
.for each act_pob in act_pobs
INSERT INTO ACT_POB VALUES (\
  .if ( "un-initialized" == "${act_pob.Action_ID}" )
 0\
  .else
 ${act_pob.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_pob.Id}" )
, 0\
  .else
, ${act_pob.Id}\
  .end if
 );
.end for
.print "Provided Signal Body (ACT_PSB)"
.select many act_psbs from instances of ACT_PSB
.for each act_psb in act_psbs
INSERT INTO ACT_PSB VALUES (\
  .if ( "un-initialized" == "${act_psb.Action_ID}" )
 0\
  .else
 ${act_psb.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_psb.Id}" )
, 0\
  .else
, ${act_psb.Id}\
  .end if
 );
.end for
.print "Required Operation Body (ACT_ROB)"
.select many act_robs from instances of ACT_ROB
.for each act_rob in act_robs
INSERT INTO ACT_ROB VALUES (\
  .if ( "un-initialized" == "${act_rob.Action_ID}" )
 0\
  .else
 ${act_rob.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_rob.Id}" )
, 0\
  .else
, ${act_rob.Id}\
  .end if
 );
.end for
.print "Required Signal Body (ACT_RSB)"
.select many act_rsbs from instances of ACT_RSB
.for each act_rsb in act_rsbs
INSERT INTO ACT_RSB VALUES (\
  .if ( "un-initialized" == "${act_rsb.Action_ID}" )
 0\
  .else
 ${act_rsb.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_rsb.Id}" )
, 0\
  .else
, ${act_rsb.Id}\
  .end if
 );
.end for
.print "State Action Body (ACT_SAB)"
.select many act_sabs from instances of ACT_SAB
.for each act_sab in act_sabs
INSERT INTO ACT_SAB VALUES (\
  .if ( "un-initialized" == "${act_sab.Action_ID}" )
 0\
  .else
 ${act_sab.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_sab.SM_ID}" )
, 0\
  .else
, ${act_sab.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_sab.Act_ID}" )
, 0\
  .else
, ${act_sab.Act_ID}\
  .end if
 );
.end for
.print "Statement (ACT_SMT)"
.select many act_smts from instances of ACT_SMT
.for each act_smt in act_smts
INSERT INTO ACT_SMT VALUES (\
  .if ( "un-initialized" == "${act_smt.Statement_ID}" )
 0\
  .else
 ${act_smt.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_smt.Block_ID}" )
, 0\
  .else
, ${act_smt.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_smt.Previous_Statement_ID}" )
, 0\
  .else
, ${act_smt.Previous_Statement_ID}\
  .end if
, ${act_smt.LineNumber}, ${act_smt.StartPosition}, '${act_smt.Label}' );
.end for
.print "Transition Action Body (ACT_TAB)"
.select many act_tabs from instances of ACT_TAB
.for each act_tab in act_tabs
INSERT INTO ACT_TAB VALUES (\
  .if ( "un-initialized" == "${act_tab.Action_ID}" )
 0\
  .else
 ${act_tab.Action_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_tab.SM_ID}" )
, 0\
  .else
, ${act_tab.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_tab.Act_ID}" )
, 0\
  .else
, ${act_tab.Act_ID}\
  .end if
 );
.end for
.print "While Stmt (ACT_WHL)"
.select many act_whls from instances of ACT_WHL
.for each act_whl in act_whls
INSERT INTO ACT_WHL VALUES (\
  .if ( "un-initialized" == "${act_whl.Statement_ID}" )
 0\
  .else
 ${act_whl.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_whl.Value_ID}" )
, 0\
  .else
, ${act_whl.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_whl.Block_ID}" )
, 0\
  .else
, ${act_whl.Block_ID}\
  .end if
 );
.end for
.print "Breakpoint (BP_BP)"
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
.print "Condition (BP_CON)"
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
.print "Event Breakpoint (BP_EV)"
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
.print "OAL Breakpoint (BP_OAL)"
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
.print "State Breakpoint (BP_ST)"
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
.print "Access Path (CA_ACC)"
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
.print "Communication Path (CA_COMM)"
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
.print "EE to SM Comm Path (CA_EESMC)"
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
.print "EE to SM Event Comm (CA_EESME)"
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
.print "SM to EE Access Path (CA_SMEEA)"
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
.print "SM to EE Comm Path (CA_SMEEC)"
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
.print "SM to EE Data Item Access (CA_SMEED)"
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
.print "SM to EE Event Comm (CA_SMEEE)"
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
.print "SM to OBJ Access Path (CA_SMOA)"
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
.print "SM to OBJ Attribute Access (CA_SMOAA)"
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
.print "SM to SM Comm Path (CA_SMSMC)"
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
.print "SM to SM Event Comm (CA_SMSME)"
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
.print "Communication Link (COMM_LNK)"
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
, '${comm_lnk.Numb}', '${comm_lnk.Descrip}', '${comm_lnk.StartText}', '${comm_lnk.EndText}', ${comm_lnk.isFormal}, ${comm_lnk.StartVisibility}, ${comm_lnk.EndVisibility}\
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
.print "Communication in Communication (COMM_CIC)"
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
.print "Communication (COMM_COMM)"
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
, '${comm_comm.Name}', '${comm_comm.Descrip}'\
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
.print "Message in Communication (COMM_MIC)"
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
.print "Participant in Communication (COMM_PIC)"
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
.print "Component (C_C)"
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
, '${c_c.Name}', '${c_c.Descrip}', ${c_c.Mult}\
  .if ( "un-initialized" == "${c_c.Root_Package_ID}" )
, 0\
  .else
, ${c_c.Root_Package_ID}\
  .end if
, ${c_c.isRealized}, '${c_c.Realized_Class_Path}' );
.end for
.print "Delegation (C_DG)"
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
.print "Executable Property (C_EP)"
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
, ${c_ep.Direction}, '${c_ep.Name}', '${c_ep.Descrip}' );
.end for
.print "Interface Operation (C_IO)"
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
, '${c_io.Name}', '${c_io.Descrip}', ${c_io.Direction}, '${c_io.Return_Dimensions}'\
  .if ( "un-initialized" == "${c_io.Previous_Id}" )
, 0\
  .else
, ${c_io.Previous_Id}\
  .end if
 );
.end for
.print "Interface Reference In Delegation (C_RID)"
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
.print "Interface Reference (C_IR)"
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
.print "Interface Signal (C_AS)"
.select many c_ass from instances of C_AS
.for each c_as in c_ass
INSERT INTO C_AS VALUES (\
  .if ( "un-initialized" == "${c_as.Id}" )
 0\
  .else
 ${c_as.Id}\
  .end if
, '${c_as.Name}', '${c_as.Descrip}', ${c_as.Direction}\
  .if ( "un-initialized" == "${c_as.Previous_Id}" )
, 0\
  .else
, ${c_as.Previous_Id}\
  .end if
 );
.end for
.print "Interface (C_I)"
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
, '${c_i.Name}', '${c_i.Descrip}' );
.end for
.print "Port (C_PO)"
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
.print "Property Parameter (C_PP)"
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
, '${c_pp.Name}', '${c_pp.Descrip}', ${c_pp.By_Ref}, '${c_pp.Dimensions}'\
  .if ( "un-initialized" == "${c_pp.Previous_PP_Id}" )
, 0\
  .else
, ${c_pp.Previous_PP_Id}\
  .end if
 );
.end for
.print "Provision (C_P)"
.select many c_ps from instances of C_P
.for each c_p in c_ps
INSERT INTO C_P VALUES (\
  .if ( "un-initialized" == "${c_p.Provision_Id}" )
 0\
  .else
 ${c_p.Provision_Id}\
  .end if
, '${c_p.Name}', '${c_p.InformalName}', '${c_p.Descrip}', '${c_p.pathFromComponent}' );
.end for
.print "Requirement (C_R)"
.select many c_rs from instances of C_R
.for each c_r in c_rs
INSERT INTO C_R VALUES (\
  .if ( "un-initialized" == "${c_r.Requirement_Id}" )
 0\
  .else
 ${c_r.Requirement_Id}\
  .end if
, '${c_r.Name}', '${c_r.Descrip}', '${c_r.InformalName}', '${c_r.reversePathFromComponent}' );
.end for
.print "Satisfaction (C_SF)"
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
, '${c_sf.Descrip}', '${c_sf.Label}' );
.end for
.print "Component Reference (CL_IC)"
.select many cl_ics from instances of CL_IC
.for each cl_ic in cl_ics
INSERT INTO CL_IC VALUES (\
  .if ( "un-initialized" == "${cl_ic.Id}" )
 0\
  .else
 ${cl_ic.Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_ic.AssignedComp_Id}" )
, 0\
  .else
, ${cl_ic.AssignedComp_Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_ic.ParentComp_Id}" )
, 0\
  .else
, ${cl_ic.ParentComp_Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_ic.Component_Package_ID}" )
, 0\
  .else
, ${cl_ic.Component_Package_ID}\
  .end if
, ${cl_ic.Mult}, '${cl_ic.ClassifierName}', '${cl_ic.Name}', '${cl_ic.Descrip}' );
.end for
.print "Imported Provision In Satisfaction (CL_IPINS)"
.select many cl_ipinss from instances of CL_IPINS
.for each cl_ipins in cl_ipinss
INSERT INTO CL_IPINS VALUES (\
  .if ( "un-initialized" == "${cl_ipins.Satisfaction_Id}" )
 0\
  .else
 ${cl_ipins.Satisfaction_Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_ipins.ImportedProvision_Id}" )
, 0\
  .else
, ${cl_ipins.ImportedProvision_Id}\
  .end if
 );
.end for
.print "Imported Provision (CL_IP)"
.select many cl_ips from instances of CL_IP
.for each cl_ip in cl_ips
INSERT INTO CL_IP VALUES (\
  .if ( "un-initialized" == "${cl_ip.Id}" )
 0\
  .else
 ${cl_ip.Id}\
  .end if
, '${cl_ip.Name}', '${cl_ip.Descrip}' );
.end for
.print "Imported Reference (CL_IIR)"
.select many cl_iirs from instances of CL_IIR
.for each cl_iir in cl_iirs
INSERT INTO CL_IIR VALUES (\
  .if ( "un-initialized" == "${cl_iir.Id}" )
 0\
  .else
 ${cl_iir.Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_iir.Ref_Id}" )
, 0\
  .else
, ${cl_iir.Ref_Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_iir.ImportedComp_Id}" )
, 0\
  .else
, ${cl_iir.ImportedComp_Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_iir.Delegation_Id}" )
, 0\
  .else
, ${cl_iir.Delegation_Id}\
  .end if
, '${cl_iir.Name}', '${cl_iir.Descrip}' );
.end for
.print "Imported Requirement (CL_IR)"
.select many cl_irs from instances of CL_IR
.for each cl_ir in cl_irs
INSERT INTO CL_IR VALUES (\
  .if ( "un-initialized" == "${cl_ir.Id}" )
 0\
  .else
 ${cl_ir.Id}\
  .end if
\
  .if ( "un-initialized" == "${cl_ir.Satisfaction_Element_Id}" )
, 0\
  .else
, ${cl_ir.Satisfaction_Element_Id}\
  .end if
, '${cl_ir.Name}', '${cl_ir.Descrip}' );
.end for
.print "Component in Component (CN_CIC)"
.select many cn_cics from instances of CN_CIC
.for each cn_cic in cn_cics
INSERT INTO CN_CIC VALUES (\
  .if ( "un-initialized" == "${cn_cic.Id}" )
 0\
  .else
 ${cn_cic.Id}\
  .end if
\
  .if ( "un-initialized" == "${cn_cic.Parent_Id}" )
, 0\
  .else
, ${cn_cic.Parent_Id}\
  .end if
 );
.end for
.print "Domain As Component (CN_DC)"
.select many cn_dcs from instances of CN_DC
.for each cn_dc in cn_dcs
INSERT INTO CN_DC VALUES (\
  .if ( "un-initialized" == "${cn_dc.Id}" )
 0\
  .else
 ${cn_dc.Id}\
  .end if
\
  .if ( "un-initialized" == "${cn_dc.Dom_ID}" )
, 0\
  .else
, ${cn_dc.Dom_ID}\
  .end if
 );
.end for
.print "Component Package in Package (CP_CPINP)"
.select many cp_cpinps from instances of CP_CPINP
.for each cp_cpinp in cp_cpinps
INSERT INTO CP_CPINP VALUES (\
  .if ( "un-initialized" == "${cp_cpinp.Id}" )
 0\
  .else
 ${cp_cpinp.Id}\
  .end if
\
  .if ( "un-initialized" == "${cp_cpinp.Parent_Package_ID}" )
, 0\
  .else
, ${cp_cpinp.Parent_Package_ID}\
  .end if
 );
.end for
.print "Component Package (CP_CP)"
.select many cp_cps from instances of CP_CP
.for each cp_cp in cp_cps
INSERT INTO CP_CP VALUES (\
  .if ( "un-initialized" == "${cp_cp.Package_ID}" )
 0\
  .else
 ${cp_cp.Package_ID}\
  .end if
\
  .if ( "un-initialized" == "${cp_cp.ParentLink_Id}" )
, 0\
  .else
, ${cp_cp.ParentLink_Id}\
  .end if
\
  .if ( "un-initialized" == "${cp_cp.Sys_ID}" )
, 0\
  .else
, ${cp_cp.Sys_ID}\
  .end if
\
  .if ( "un-initialized" == "${cp_cp.Containing_Sys_ID}" )
, 0\
  .else
, ${cp_cp.Containing_Sys_ID}\
  .end if
, '${cp_cp.Name}', '${cp_cp.Descrip}' );
.end for
.print "Provided Executable Property (SPR_PEP)"
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
.print "Provided Operation (SPR_PO)"
.select many spr_pos from instances of SPR_PO
.for each spr_po in spr_pos
INSERT INTO SPR_PO VALUES (\
  .if ( "un-initialized" == "${spr_po.Id}" )
 0\
  .else
 ${spr_po.Id}\
  .end if
, '${spr_po.Name}', '${spr_po.Descrip}', ''\
, ${spr_po.Suc_Pars} );
.end for
.print "Provided Signal (SPR_PS)"
.select many spr_pss from instances of SPR_PS
.for each spr_ps in spr_pss
INSERT INTO SPR_PS VALUES (\
  .if ( "un-initialized" == "${spr_ps.Id}" )
 0\
  .else
 ${spr_ps.Id}\
  .end if
, '${spr_ps.Name}', '${spr_ps.Descrip}', ''\
, ${spr_ps.Suc_Pars} );
.end for
.print "Required Executable Property (SPR_REP)"
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
.print "Required Operation (SPR_RO)"
.select many spr_ros from instances of SPR_RO
.for each spr_ro in spr_ros
INSERT INTO SPR_RO VALUES (\
  .if ( "un-initialized" == "${spr_ro.Id}" )
 0\
  .else
 ${spr_ro.Id}\
  .end if
, '${spr_ro.Name}', '${spr_ro.Descrip}', ''\
, ${spr_ro.Suc_Pars} );
.end for
.print "Required Signal (SPR_RS)"
.select many spr_rss from instances of SPR_RS
.for each spr_rs in spr_rss
INSERT INTO SPR_RS VALUES (\
  .if ( "un-initialized" == "${spr_rs.Id}" )
 0\
  .else
 ${spr_rs.Id}\
  .end if
, '${spr_rs.Name}', '${spr_rs.Descrip}', ''\
, ${spr_rs.Suc_Pars} );
.end for
.print "Constant Specification (CNST_CSP)"
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
INSERT INTO CNST_CSP VALUES (\
  .if ( "un-initialized" == "${cnst_csp.Constant_Spec_ID}" )
 0\
  .else
 ${cnst_csp.Constant_Spec_ID}\
  .end if
, '${cnst_csp.InformalGroupName}', '${cnst_csp.Descrip}' );
.end for
.print "Constant in Package (CNST_CIP)"
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
.print "Leaf Symbolic Constant (CNST_LFSC)"
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
.print "Literal Symbolic Constant (CNST_LSC)"
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
.print "Symbolic Constant (CNST_SYC)"
.select many cnst_sycs from instances of CNST_SYC
.for each cnst_syc in cnst_sycs
INSERT INTO CNST_SYC VALUES (\
  .if ( "un-initialized" == "${cnst_syc.Const_ID}" )
 0\
  .else
 ${cnst_syc.Const_ID}\
  .end if
, '${cnst_syc.Name}', '${cnst_syc.Descrip}'\
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
.print "address (DOC_ADDR)"
.select many doc_addrs from instances of DOC_ADDR
.for each doc_addr in doc_addrs
INSERT INTO DOC_ADDR VALUES ( '${doc_addr.street}', '${doc_addr.city}', '${doc_addr.state}', '${doc_addr.postcode}' );
.end for
.print "cell (DOC_CELL)"
.select many doc_cells from instances of DOC_CELL
.for each doc_cell in doc_cells
INSERT INTO DOC_CELL VALUES ( '${doc_cell.text}' );
.end for
.print "date (DOC_DATE)"
.select many doc_dates from instances of DOC_DATE
.for each doc_date in doc_dates
INSERT INTO DOC_DATE VALUES ( ${doc_date.year}, '${doc_date.month}', ${doc_date.day}, '${doc_date.time}' );
.end for
.print "document (DOC_DOC)"
.select many doc_docs from instances of DOC_DOC
.for each doc_doc in doc_docs
INSERT INTO DOC_DOC VALUES ( '${doc_doc.title}', '${doc_doc.subtitle}', '${doc_doc.author}', '${doc_doc.font_family}', '${doc_doc.company}', '${doc_doc.copyright}', '${doc_doc.filename}', '${doc_doc.model_image_ext}' );
.end for
.print "figure (DOC_FIG)"
.select many doc_figs from instances of DOC_FIG
.for each doc_fig in doc_figs
INSERT INTO DOC_FIG VALUES ( '${doc_fig.title}', '${doc_fig.ident}' );
.end for
.print "footer (DOC_FOOT)"
.select many doc_foots from instances of DOC_FOOT
.for each doc_foot in doc_foots
INSERT INTO DOC_FOOT VALUES ( '${doc_foot.text}' );
.end for
.print "header (DOC_HEAD)"
.select many doc_heads from instances of DOC_HEAD
.for each doc_head in doc_heads
INSERT INTO DOC_HEAD VALUES ( '${doc_head.text}' );
.end for
.print "image (DOC_IMG)"
.select many doc_imgs from instances of DOC_IMG
.for each doc_img in doc_imgs
INSERT INTO DOC_IMG VALUES ( '${doc_img.target}' );
.end for
.print "link (DOC_LINK)"
.select many doc_links from instances of DOC_LINK
.for each doc_link in doc_links
INSERT INTO DOC_LINK VALUES ( '${doc_link.target}', '${doc_link.text}' );
.end for
.print "paragraph (DOC_PAR)"
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
.print "row (DOC_ROW)"
.select many doc_rows from instances of DOC_ROW
.for each doc_row in doc_rows
INSERT INTO DOC_ROW VALUES ( ${doc_row.head} );
.end for
.print "section (DOC_SEC)"
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
.print "table (DOC_TBL)"
.select many doc_tbls from instances of DOC_TBL
.for each doc_tbl in doc_tbls
INSERT INTO DOC_TBL VALUES ( '${doc_tbl.title}', ${doc_tbl.num_cols} );
.end for
.print "Bridge Parameter (S_BPARM)"
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
, '${s_bparm.Descrip}' );
.end for
.print "Bridge (S_BRG)"
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
, '${s_brg.Name}', '${s_brg.Descrip}', ${s_brg.Brg_Typ}\
  .if ( "un-initialized" == "${s_brg.DT_ID}" )
, 0\
  .else
, ${s_brg.DT_ID}\
  .end if
, ''\
, ${s_brg.Suc_Pars}, '${s_brg.Return_Dimensions}' );
.end for
.print "Core Data Type (S_CDT)"
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
.print "Data Type Package in Package (S_DPIP)"
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
.print "Data Type Package (S_DPK)"
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
.print "Data Type in Package (S_DIP)"
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
.print "Data Type (S_DT)"
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
, '${s_dt.Name}', '${s_dt.Descrip}', '${s_dt.DefaultValue}' );
.end for
.print "Datatype In Suppression (S_DIS)"
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
.print "Dimensions (S_DIM)"
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
.print "Domain (S_DOM)"
.select many s_doms from instances of S_DOM
.for each s_dom in s_doms
INSERT INTO S_DOM VALUES (\
  .if ( "un-initialized" == "${s_dom.Dom_ID}" )
 0\
  .else
 ${s_dom.Dom_ID}\
  .end if
, '${s_dom.Name}', '${s_dom.Descrip}', ${s_dom.Full_Der}\
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
.print "EE Package in Package (S_EEPIP)"
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
.print "Enumeration Data Type (S_EDT)"
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
.print "Enumerator (S_ENUM)"
.select many s_enums from instances of S_ENUM
.for each s_enum in s_enums
INSERT INTO S_ENUM VALUES (\
  .if ( "un-initialized" == "${s_enum.Enum_ID}" )
 0\
  .else
 ${s_enum.Enum_ID}\
  .end if
, '${s_enum.Name}', '${s_enum.Descrip}'\
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
.print "External Entity Data Item (S_EEDI)"
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
, '${s_eedi.Name}', '${s_eedi.Descrip}'\
  .if ( "un-initialized" == "${s_eedi.DT_ID}" )
, 0\
  .else
, ${s_eedi.DT_ID}\
  .end if
 );
.end for
.print "External Entity Event Data Item (S_EEEDI)"
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
, '${s_eeedi.Name}', '${s_eeedi.Descrip}'\
  .if ( "un-initialized" == "${s_eeedi.DT_ID}" )
, 0\
  .else
, ${s_eeedi.DT_ID}\
  .end if
 );
.end for
.print "External Entity Event Data (S_EEEDT)"
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
.print "External Entity Event (S_EEEVT)"
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
, ${s_eeevt.Numb}, '${s_eeevt.Mning}', ${s_eeevt.Is_Lbl_U}, '${s_eeevt.Unq_Lbl}', '${s_eeevt.Drv_Lbl}', '${s_eeevt.Descrip}' );
.end for
.print "External Entity Package (S_EEPK)"
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
.print "External Entity in Model (S_EEM)"
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
.print "External Entity in Package (S_EEIP)"
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
.print "External Entity (S_EE)"
.select many s_ees from instances of S_EE
.for each s_ee in s_ees
INSERT INTO S_EE VALUES (\
  .if ( "un-initialized" == "${s_ee.EE_ID}" )
 0\
  .else
 ${s_ee.EE_ID}\
  .end if
, '${s_ee.Name}', '${s_ee.Descrip}', '${s_ee.Key_Lett}'\
  .if ( "un-initialized" == "${s_ee.Dom_ID}" )
, 0\
  .else
, ${s_ee.Dom_ID}\
  .end if
 );
.end for
.print "Function Package in Package (S_FPIP)"
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
.print "Function Package (S_FPK)"
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
.print "Function Parameter (S_SPARM)"
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
, '${s_sparm.Descrip}' );
.end for
.print "Function in Package (S_FIP)"
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
.print "Function (S_SYNC)"
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
, '${s_sync.Name}', '${s_sync.Descrip}', ''\
\
  .if ( "un-initialized" == "${s_sync.DT_ID}" )
, 0\
  .else
, ${s_sync.DT_ID}\
  .end if
, ${s_sync.Suc_Pars}, '${s_sync.Return_Dimensions}' );
.end for
.print "Instance Reference Data Type (S_IRDT)"
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
.print "Structure Member (S_MBR)"
.select many s_mbrs from instances of S_MBR
.for each s_mbr in s_mbrs
INSERT INTO S_MBR VALUES (\
  .if ( "un-initialized" == "${s_mbr.Member_ID}" )
 0\
  .else
 ${s_mbr.Member_ID}\
  .end if
, '${s_mbr.Name}', '${s_mbr.Descrip}'\
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
.print "Structured Data Type (S_SDT)"
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
.print "Subsystem in Domain (S_SID)"
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
.print "Subsystem in Subsystem (S_SIS)"
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
.print "Subsystem (S_SS)"
.select many s_sss from instances of S_SS
.for each s_ss in s_sss
INSERT INTO S_SS VALUES (\
  .if ( "un-initialized" == "${s_ss.SS_ID}" )
 0\
  .else
 ${s_ss.SS_ID}\
  .end if
, '${s_ss.Name}', '${s_ss.Descrip}', '${s_ss.Prefix}', ${s_ss.Num_Rng}\
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
.print "System Model (S_SYS)"
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
.print "User Data Type (S_UDT)"
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
.print "External Entity Package in Domain (PL_EEPID)"
.select many pl_eepids from instances of PL_EEPID
.for each pl_eepid in pl_eepids
INSERT INTO PL_EEPID VALUES (\
  .if ( "un-initialized" == "${pl_eepid.Dom_ID}" )
 0\
  .else
 ${pl_eepid.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${pl_eepid.EEPack_ID}" )
, 0\
  .else
, ${pl_eepid.EEPack_ID}\
  .end if
 );
.end for
.print "Function Package in Domain (PL_FPID)"
.select many pl_fpids from instances of PL_FPID
.for each pl_fpid in pl_fpids
INSERT INTO PL_FPID VALUES (\
  .if ( "un-initialized" == "${pl_fpid.FunPack_ID}" )
 0\
  .else
 ${pl_fpid.FunPack_ID}\
  .end if
\
  .if ( "un-initialized" == "${pl_fpid.Dom_ID}" )
, 0\
  .else
, ${pl_fpid.Dom_ID}\
  .end if
 );
.end for
.print "Package In Package (EP_PIP)"
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
.print "Package (EP_PKG)"
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
, '${ep_pkg.Name}', '${ep_pkg.Descrip}', ${ep_pkg.Num_Rng} );
.end for
.print "Specification Package (EP_SPKG)"
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
.print "Create Event Statement (E_CES)"
.select many e_cess from instances of E_CES
.for each e_ces in e_cess
INSERT INTO E_CES VALUES (\
  .if ( "un-initialized" == "${e_ces.Statement_ID}" )
 0\
  .else
 ${e_ces.Statement_ID}\
  .end if
, ${e_ces.is_implicit}\
  .if ( "un-initialized" == "${e_ces.Var_ID}" )
, 0\
  .else
, ${e_ces.Var_ID}\
  .end if
 );
.end for
.print "Create Event to Class (E_CEA)"
.select many e_ceas from instances of E_CEA
.for each e_cea in e_ceas
INSERT INTO E_CEA VALUES (\
  .if ( "un-initialized" == "${e_cea.Statement_ID}" )
 0\
  .else
 ${e_cea.Statement_ID}\
  .end if
 );
.end for
.print "Create Event to Creator (E_CEC)"
.select many e_cecs from instances of E_CEC
.for each e_cec in e_cecs
INSERT INTO E_CEC VALUES (\
  .if ( "un-initialized" == "${e_cec.Statement_ID}" )
 0\
  .else
 ${e_cec.Statement_ID}\
  .end if
 );
.end for
.print "Create Event to External Entity (E_CEE)"
.select many e_cees from instances of E_CEE
.for each e_cee in e_cees
INSERT INTO E_CEE VALUES (\
  .if ( "un-initialized" == "${e_cee.Statement_ID}" )
 0\
  .else
 ${e_cee.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_cee.EE_ID}" )
, 0\
  .else
, ${e_cee.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_cee.EEevt_ID}" )
, 0\
  .else
, ${e_cee.EEevt_ID}\
  .end if
 );
.end for
.print "Create Event to Instance (E_CEI)"
.select many e_ceis from instances of E_CEI
.for each e_cei in e_ceis
INSERT INTO E_CEI VALUES (\
  .if ( "un-initialized" == "${e_cei.Statement_ID}" )
 0\
  .else
 ${e_cei.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_cei.Var_ID}" )
, 0\
  .else
, ${e_cei.Var_ID}\
  .end if
 );
.end for
.print "Create SM Event Statement (E_CSME)"
.select many e_csmes from instances of E_CSME
.for each e_csme in e_csmes
INSERT INTO E_CSME VALUES (\
  .if ( "un-initialized" == "${e_csme.Statement_ID}" )
 0\
  .else
 ${e_csme.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_csme.SMevt_ID}" )
, 0\
  .else
, ${e_csme.SMevt_ID}\
  .end if
 );
.end for
.print "Event Specification Statement (E_ESS)"
.select many e_esss from instances of E_ESS
.for each e_ess in e_esss
INSERT INTO E_ESS VALUES (\
  .if ( "un-initialized" == "${e_ess.Statement_ID}" )
 0\
  .else
 ${e_ess.Statement_ID}\
  .end if
, ${e_ess.ParmListOK}, ${e_ess.PEIndicated}, ${e_ess.eventDerivedLabelLineNumber}, ${e_ess.eventDerivedLabelColumn}, ${e_ess.eventMeaningLineNumber}, ${e_ess.eventMeaningColumn}, ${e_ess.eventTargetKeyLettersLineNumber}, ${e_ess.eventTargetKeyLettersColumn}, ${e_ess.firstEventDataItemNameLineNumber}, ${e_ess.firstEventDataItemNameColumn}, ${e_ess.currentLaterEventDataItemNameLineNumber}, ${e_ess.currentLaterEventDataItemNameColumn} );
.end for
.print "Generate Event Statement (E_GES)"
.select many e_gess from instances of E_GES
.for each e_ges in e_gess
INSERT INTO E_GES VALUES (\
  .if ( "un-initialized" == "${e_ges.Statement_ID}" )
 0\
  .else
 ${e_ges.Statement_ID}\
  .end if
 );
.end for
.print "Generate Preexisting Event (E_GPR)"
.select many e_gprs from instances of E_GPR
.for each e_gpr in e_gprs
INSERT INTO E_GPR VALUES (\
  .if ( "un-initialized" == "${e_gpr.Statement_ID}" )
 0\
  .else
 ${e_gpr.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_gpr.Value_ID}" )
, 0\
  .else
, ${e_gpr.Value_ID}\
  .end if
 );
.end for
.print "Generate SM Event Statement (E_GSME)"
.select many e_gsmes from instances of E_GSME
.for each e_gsme in e_gsmes
INSERT INTO E_GSME VALUES (\
  .if ( "un-initialized" == "${e_gsme.Statement_ID}" )
 0\
  .else
 ${e_gsme.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_gsme.SMevt_ID}" )
, 0\
  .else
, ${e_gsme.SMevt_ID}\
  .end if
 );
.end for
.print "Generate to Class (E_GAR)"
.select many e_gars from instances of E_GAR
.for each e_gar in e_gars
INSERT INTO E_GAR VALUES (\
  .if ( "un-initialized" == "${e_gar.Statement_ID}" )
 0\
  .else
 ${e_gar.Statement_ID}\
  .end if
 );
.end for
.print "Generate to Creator (E_GEC)"
.select many e_gecs from instances of E_GEC
.for each e_gec in e_gecs
INSERT INTO E_GEC VALUES (\
  .if ( "un-initialized" == "${e_gec.Statement_ID}" )
 0\
  .else
 ${e_gec.Statement_ID}\
  .end if
 );
.end for
.print "Generate to External Entity (E_GEE)"
.select many e_gees from instances of E_GEE
.for each e_gee in e_gees
INSERT INTO E_GEE VALUES (\
  .if ( "un-initialized" == "${e_gee.Statement_ID}" )
 0\
  .else
 ${e_gee.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_gee.EE_ID}" )
, 0\
  .else
, ${e_gee.EE_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_gee.EEevt_ID}" )
, 0\
  .else
, ${e_gee.EEevt_ID}\
  .end if
 );
.end for
.print "Generate (E_GEN)"
.select many e_gens from instances of E_GEN
.for each e_gen in e_gens
INSERT INTO E_GEN VALUES (\
  .if ( "un-initialized" == "${e_gen.Statement_ID}" )
 0\
  .else
 ${e_gen.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${e_gen.Var_ID}" )
, 0\
  .else
, ${e_gen.Var_ID}\
  .end if
 );
.end for
.print "Global Element in System (G_EIS)"
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
.print "Assign to Member (ACT_AI)"
.select many act_ais from instances of ACT_AI
.for each act_ai in act_ais
INSERT INTO ACT_AI VALUES (\
  .if ( "un-initialized" == "${act_ai.Statement_ID}" )
 0\
  .else
 ${act_ai.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ai.r_Value_ID}" )
, 0\
  .else
, ${act_ai.r_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_ai.l_Value_ID}" )
, 0\
  .else
, ${act_ai.l_Value_ID}\
  .end if
, ${act_ai.attributeLineNumber}, ${act_ai.attributeColumn} );
.end for
.print "Create No Variable (ACT_CNV)"
.select many act_cnvs from instances of ACT_CNV
.for each act_cnv in act_cnvs
INSERT INTO ACT_CNV VALUES (\
  .if ( "un-initialized" == "${act_cnv.Statement_ID}" )
 0\
  .else
 ${act_cnv.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_cnv.Obj_ID}" )
, 0\
  .else
, ${act_cnv.Obj_ID}\
  .end if
, ${act_cnv.modelClassKeyLettersLineNumber}, ${act_cnv.modelClassKeyLettersColumn} );
.end for
.print "Create (ACT_CR)"
.select many act_crs from instances of ACT_CR
.for each act_cr in act_crs
INSERT INTO ACT_CR VALUES (\
  .if ( "un-initialized" == "${act_cr.Statement_ID}" )
 0\
  .else
 ${act_cr.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_cr.Var_ID}" )
, 0\
  .else
, ${act_cr.Var_ID}\
  .end if
, ${act_cr.is_implicit}\
  .if ( "un-initialized" == "${act_cr.Obj_ID}" )
, 0\
  .else
, ${act_cr.Obj_ID}\
  .end if
, ${act_cr.modelClassKeyLettersLineNumber}, ${act_cr.modelClassKeyLettersColumn} );
.end for
.print "Delete (ACT_DEL)"
.select many act_dels from instances of ACT_DEL
.for each act_del in act_dels
INSERT INTO ACT_DEL VALUES (\
  .if ( "un-initialized" == "${act_del.Statement_ID}" )
 0\
  .else
 ${act_del.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_del.Var_ID}" )
, 0\
  .else
, ${act_del.Var_ID}\
  .end if
 );
.end for
.print "Attribute Value (I_AVL)"
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
.print "Block in Stack Frame (I_BSF)"
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
.print "Component Instance Container (I_CIN)"
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
.print "Component Instance (I_EXE)"
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
.print "Data Item Value (I_DIV)"
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
.print "Event Queue Entry (I_EQE)"
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
.print "Instance (I_INS)"
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
.print "Intercomponent Queue Entry (I_ICQE)"
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
.print "Link Participation (I_LIP)"
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
.print "Link (I_LNK)"
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
.print "Monitor (I_MON)"
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
.print "Pending Event (I_EVI)"
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
.print "Runtime Channel (I_RCH)"
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
.print "Self Queue Entry (I_SQE)"
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
.print "Stack Frame (I_STF)"
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
.print "Stack (I_STACK)"
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
.print "Timer (I_TIM)"
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
.print "Value in Stack Frame (I_VSF)"
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
.print "Class In Engine (CSME_CIE)"
.select many csme_cies from instances of CSME_CIE
.for each csme_cie in csme_cies
INSERT INTO CSME_CIE VALUES (\
  .if ( "un-initialized" == "${csme_cie.CIE_ID}" )
 0\
  .else
 ${csme_cie.CIE_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cie.Execution_Engine_ID}" )
, 0\
  .else
, ${csme_cie.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cie.Obj_ID}" )
, 0\
  .else
, ${csme_cie.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cie.Package_ID}" )
, 0\
  .else
, ${csme_cie.Package_ID}\
  .end if
, '${csme_cie.Label}' );
.end for
.print "Class In State (CSME_CIS)"
.select many csme_ciss from instances of CSME_CIS
.for each csme_cis in csme_ciss
INSERT INTO CSME_CIS VALUES (\
  .if ( "un-initialized" == "${csme_cis.SM_ID}" )
 0\
  .else
 ${csme_cis.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cis.SMstt_ID}" )
, 0\
  .else
, ${csme_cis.SMstt_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cis.Trans_ID}" )
, 0\
  .else
, ${csme_cis.Trans_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_cis.CIE_ID}" )
, 0\
  .else
, ${csme_cis.CIE_ID}\
  .end if
 );
.end for
.print "Class Monitor (CSME_CLM)"
.select many csme_clms from instances of CSME_CLM
.for each csme_clm in csme_clms
INSERT INTO CSME_CLM VALUES (\
  .if ( "un-initialized" == "${csme_clm.Execution_Engine_ID}" )
 0\
  .else
 ${csme_clm.Execution_Engine_ID}\
  .end if
\
  .if ( "un-initialized" == "${csme_clm.CIE_ID}" )
, 0\
  .else
, ${csme_clm.CIE_ID}\
  .end if
 );
.end for
.print "Actor Participant (SQ_AP)"
.select many sq_aps from instances of SQ_AP
.for each sq_ap in sq_aps
INSERT INTO SQ_AP VALUES (\
  .if ( "un-initialized" == "${sq_ap.Part_ID}" )
 0\
  .else
 ${sq_ap.Part_ID}\
  .end if
, '${sq_ap.Name}', '${sq_ap.Descrip}'\
  .if ( "un-initialized" == "${sq_ap.LS_Part_ID}" )
, 0\
  .else
, ${sq_ap.LS_Part_ID}\
  .end if
 );
.end for
.print "Class Instance Participant (SQ_CIP)"
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
, '${sq_cip.Name}', '${sq_cip.InformalClassName}', '${sq_cip.Label}', '${sq_cip.Descrip}', ${sq_cip.isFormal} );
.end for
.print "Class Participant Attribute (SQ_CPA)"
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
, '${sq_cpa.Descrip}' );
.end for
.print "Class Participant (SQ_CP)"
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
, '${sq_cp.Label}', '${sq_cp.InformalName}', '${sq_cp.Descrip}', ${sq_cp.isFormal} );
.end for
.print "Component Participant (SQ_COP)"
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
, '${sq_cop.Label}', '${sq_cop.InformalComponentName}', '${sq_cop.Descrip}', ${sq_cop.isFormal} );
.end for
.print "External Entity Participant (SQ_EEP)"
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
, '${sq_eep.Label}', '${sq_eep.InformalName}', '${sq_eep.Descrip}', ${sq_eep.isFormal} );
.end for
.print "Formal Attribute Value (SQ_FAV)"
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
.print "Formal Attribute (SQ_FA)"
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
.print "Function Package Participant (SQ_FPP)"
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
, '${sq_fpp.Label}', '${sq_fpp.InformalName}', '${sq_fpp.Descrip}', ${sq_fpp.isFormal} );
.end for
.print "Informal Attribute Value (SQ_IAV)"
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
.print "Informal Attribute (SQ_IA)"
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
.print "Instance Attribute Value (SQ_AV)"
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
, '${sq_av.Descrip}', ${sq_av.isFormal} );
.end for
.print "Interaction Participant (SQ_P)"
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
.print "Lifespan (SQ_LS)"
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
, '${sq_ls.Descrip}', ${sq_ls.Destroyed} );
.end for
.print "Package Participant (SQ_PP)"
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
, '${sq_pp.Label}', '${sq_pp.InformalName}', '${sq_pp.Descrip}', ${sq_pp.isFormal} );
.end for
.print "Time Span (SQ_TS)"
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
, '${sq_ts.Name}', '${sq_ts.Descrip}' );
.end for
.print "Timing Mark (SQ_TM)"
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
, '${sq_tm.Descrip}' );
.end for
.print "Use Case Participant (IA_UCP)"
.select many ia_ucps from instances of IA_UCP
.for each ia_ucp in ia_ucps
INSERT INTO IA_UCP VALUES (\
  .if ( "un-initialized" == "${ia_ucp.Part_ID}" )
 0\
  .else
 ${ia_ucp.Part_ID}\
  .end if
, '${ia_ucp.Name}', '${ia_ucp.Descrip}' );
.end for
.print "Interface Package in Interface Package (IP_IPINIP)"
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
.print "Interface Package (IP_IP)"
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
, '${ip_ip.Name}', '${ip_ip.Descrip}' );
.end for
.print "Bridge Invocation (ACT_BRG)"
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
.print "Function Invocation (ACT_FNC)"
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
.print "Interface Operation Invocation (ACT_IOP)"
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
.print "Operation Invocation (ACT_TFM)"
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
.print "Return Stmt (ACT_RET)"
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
.print "Signal Invocation (ACT_SGN)"
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
.print "Asynchronous Message (MSG_AM)"
.select many msg_ams from instances of MSG_AM
.for each msg_am in msg_ams
INSERT INTO MSG_AM VALUES (\
  .if ( "un-initialized" == "${msg_am.Msg_ID}" )
 0\
  .else
 ${msg_am.Msg_ID}\
  .end if
, '${msg_am.InformalName}', '${msg_am.Descrip}', '${msg_am.GuardCondition}', '${msg_am.DurationObservation}', '${msg_am.DurationConstraint}', ${msg_am.isFormal}, '${msg_am.Label}', '${msg_am.SequenceNumb}' );
.end for
.print "Bridge Argument (MSG_BA)"
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
.print "Bridge Message (MSG_B)"
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
.print "Event Argument (MSG_EA)"
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
.print "Event Message (MSG_E)"
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
.print "Executable Property Argument (MSG_EPA)"
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
.print "Function Argument (MSG_FA)"
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
.print "Function Message (MSG_F)"
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
.print "Informal Argument (MSG_IA)"
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
.print "Informal Asynchronous Message (MSG_IAM)"
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
.print "Informal Synchronous Message (MSG_ISM)"
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
.print "Interface Operation Message (MSG_IOP)"
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
.print "Message Argument (MSG_A)"
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
, '${msg_a.Label}', '${msg_a.Value}', '${msg_a.InformalName}', '${msg_a.Descrip}', ${msg_a.isFormal} );
.end for
.print "Message (MSG_M)"
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
.print "Operation Argument (MSG_OA)"
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
.print "Operation Message (MSG_O)"
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
.print "Return Message (MSG_R)"
.select many msg_rs from instances of MSG_R
.for each msg_r in msg_rs
INSERT INTO MSG_R VALUES (\
  .if ( "un-initialized" == "${msg_r.Msg_ID}" )
 0\
  .else
 ${msg_r.Msg_ID}\
  .end if
, '${msg_r.Name}', '${msg_r.Descrip}', '${msg_r.GuardCondition}', '${msg_r.ResultTarget}', '${msg_r.ReturnValue}', '${msg_r.SequenceNumb}' );
.end for
.print "Signal Message (MSG_SIG)"
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
.print "Synchronous Message (MSG_SM)"
.select many msg_sms from instances of MSG_SM
.for each msg_sm in msg_sms
INSERT INTO MSG_SM VALUES (\
  .if ( "un-initialized" == "${msg_sm.Msg_ID}" )
 0\
  .else
 ${msg_sm.Msg_ID}\
  .end if
, '${msg_sm.InformalName}', '${msg_sm.Descrip}', '${msg_sm.GuardCondition}', '${msg_sm.ResultTarget}', '${msg_sm.ReturnValue}', ${msg_sm.isFormal}, '${msg_sm.Label}', '${msg_sm.SequenceNumb}' );
.end for
.print "Component Result Set (PE_CRS)"
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
.print "Component Visibility (PE_CVS)"
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
.print "Element Visibility (PE_VIS)"
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
.print "Packageable Element (PE_PE)"
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
.print "Search Result Set (PE_SRS)"
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
.print "Delegation In Component (PA_DIC)"
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
.print "Satisfaction In Component Package (PA_SICP)"
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
.print "Satisfaction In Component (PA_SIC)"
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
.print "Relate Using (ACT_RU)"
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
.print "Relate (ACT_REL)"
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
.print "Unrelate Using (ACT_URU)"
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
.print "Unrelate (ACT_UNR)"
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
.print "Action Language Engine (SEN_ALE)"
.select many sen_ales from instances of SEN_ALE
.for each sen_ale in sen_ales
INSERT INTO SEN_ALE VALUES (\
  .if ( "un-initialized" == "${sen_ale.Id}" )
 0\
  .else
 ${sen_ale.Id}\
  .end if
 );
.end for
.print "Declarations Engine (SEN_DCE)"
.select many sen_dces from instances of SEN_DCE
.for each sen_dce in sen_dces
INSERT INTO SEN_DCE VALUES (\
  .if ( "un-initialized" == "${sen_dce.Id}" )
 0\
  .else
 ${sen_dce.Id}\
  .end if
 );
.end for
.print "Description Engine (SEN_DE)"
.select many sen_des from instances of SEN_DE
.for each sen_de in sen_des
INSERT INTO SEN_DE VALUES (\
  .if ( "un-initialized" == "${sen_de.Id}" )
 0\
  .else
 ${sen_de.Id}\
  .end if
 );
.end for
.print "References Engine (SEN_RE)"
.select many sen_res from instances of SEN_RE
.for each sen_re in sen_res
INSERT INTO SEN_RE VALUES (\
  .if ( "un-initialized" == "${sen_re.Id}" )
 0\
  .else
 ${sen_re.Id}\
  .end if
 );
.end for
.print "Search Engine (SEN_E)"
.select many sen_es from instances of SEN_E
.for each sen_e in sen_es
INSERT INTO SEN_E VALUES (\
  .if ( "un-initialized" == "${sen_e.Id}" )
 0\
  .else
 ${sen_e.Id}\
  .end if
 );
.end for
.print "Action Language Searchable (SP_ALS)"
.select many sp_alss from instances of SP_ALS
.for each sp_als in sp_alss
INSERT INTO SP_ALS VALUES (\
  .if ( "un-initialized" == "${sp_als.Id}" )
 0\
  .else
 ${sp_als.Id}\
  .end if
, '${sp_als.searchableValue}' );
.end for
.print "Description Searchable (SP_DS)"
.select many sp_dss from instances of SP_DS
.for each sp_ds in sp_dss
INSERT INTO SP_DS VALUES (\
  .if ( "un-initialized" == "${sp_ds.Id}" )
 0\
  .else
 ${sp_ds.Id}\
  .end if
, '${sp_ds.searchableValue}' );
.end for
.print "Named Searchable (SP_NS)"
.select many sp_nss from instances of SP_NS
.for each sp_ns in sp_nss
INSERT INTO SP_NS VALUES (\
  .if ( "un-initialized" == "${sp_ns.Id}" )
 0\
  .else
 ${sp_ns.Id}\
  .end if
, '${sp_ns.searchableValue}' );
.end for
.print "Search Participant (SP_SP)"
.select many sp_sps from instances of SP_SP
.for each sp_sp in sp_sps
INSERT INTO SP_SP VALUES (\
  .if ( "un-initialized" == "${sp_sp.Id}" )
 0\
  .else
 ${sp_sp.Id}\
  .end if
\
  .if ( "un-initialized" == "${sp_sp.Engine_Id}" )
, 0\
  .else
, ${sp_sp.Engine_Id}\
  .end if
 );
.end for
.print "Searchable Element (SP_SE)"
.select many sp_ses from instances of SP_SE
.for each sp_se in sp_ses
INSERT INTO SP_SE VALUES (\
  .if ( "un-initialized" == "${sp_se.Id}" )
 0\
  .else
 ${sp_se.Id}\
  .end if
\
  .if ( "un-initialized" == "${sp_se.Participant_Id}" )
, 0\
  .else
, ${sp_se.Participant_Id}\
  .end if
, '${sp_se.modelRootId}', '${sp_se.className}', ${sp_se.elementId} );
.end for
.print "Action Language Query (SQU_A)"
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
.print "Declaration Query (SQU_D)"
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
.print "Description Query (SQU_DE)"
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
.print "Query (SQU_Q)"
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
.print "References Query (SQU_R)"
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
.print "Content Match Result (SR_CMR)"
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
.print "Content Match (SR_CM)"
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
.print "Match (SR_M)"
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
.print "Name Match (SR_NM)"
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
.print "Search Result (SR_SR)"
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
.print "Chain Link (ACT_LNK)"
.select many act_lnks from instances of ACT_LNK
.for each act_lnk in act_lnks
INSERT INTO ACT_LNK VALUES (\
  .if ( "un-initialized" == "${act_lnk.Link_ID}" )
 0\
  .else
 ${act_lnk.Link_ID}\
  .end if
, '${act_lnk.Rel_Phrase}'\
  .if ( "un-initialized" == "${act_lnk.Statement_ID}" )
, 0\
  .else
, ${act_lnk.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_lnk.Rel_ID}" )
, 0\
  .else
, ${act_lnk.Rel_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_lnk.Next_Link_ID}" )
, 0\
  .else
, ${act_lnk.Next_Link_ID}\
  .end if
, ${act_lnk.Mult}\
  .if ( "un-initialized" == "${act_lnk.Obj_ID}" )
, 0\
  .else
, ${act_lnk.Obj_ID}\
  .end if
, ${act_lnk.modelClassKeyLettersLineNumber}, ${act_lnk.modelClassKeyLettersColumn}, ${act_lnk.associationNumberLineNumber}, ${act_lnk.associationNumberColumn}, ${act_lnk.phraseLineNumber}, ${act_lnk.phraseColumn} );
.end for
.print "Select From Instances Where (ACT_FIW)"
.select many act_fiws from instances of ACT_FIW
.for each act_fiw in act_fiws
INSERT INTO ACT_FIW VALUES (\
  .if ( "un-initialized" == "${act_fiw.Statement_ID}" )
 0\
  .else
 ${act_fiw.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_fiw.Var_ID}" )
, 0\
  .else
, ${act_fiw.Var_ID}\
  .end if
, ${act_fiw.is_implicit}, '${act_fiw.cardinality}'\
  .if ( "un-initialized" == "${act_fiw.Where_Clause_Value_ID}" )
, 0\
  .else
, ${act_fiw.Where_Clause_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_fiw.Obj_ID}" )
, 0\
  .else
, ${act_fiw.Obj_ID}\
  .end if
, ${act_fiw.extentLineNumber}, ${act_fiw.extentColumn} );
.end for
.print "Select From Instances (ACT_FIO)"
.select many act_fios from instances of ACT_FIO
.for each act_fio in act_fios
INSERT INTO ACT_FIO VALUES (\
  .if ( "un-initialized" == "${act_fio.Statement_ID}" )
 0\
  .else
 ${act_fio.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_fio.Var_ID}" )
, 0\
  .else
, ${act_fio.Var_ID}\
  .end if
, ${act_fio.is_implicit}, '${act_fio.cardinality}'\
  .if ( "un-initialized" == "${act_fio.Obj_ID}" )
, 0\
  .else
, ${act_fio.Obj_ID}\
  .end if
, ${act_fio.extentLineNumber}, ${act_fio.extentColumn} );
.end for
.print "Select Related By (ACT_SR)"
.select many act_srs from instances of ACT_SR
.for each act_sr in act_srs
INSERT INTO ACT_SR VALUES (\
  .if ( "un-initialized" == "${act_sr.Statement_ID}" )
 0\
  .else
 ${act_sr.Statement_ID}\
  .end if
 );
.end for
.print "Select Related Where (ACT_SRW)"
.select many act_srws from instances of ACT_SRW
.for each act_srw in act_srws
INSERT INTO ACT_SRW VALUES (\
  .if ( "un-initialized" == "${act_srw.Statement_ID}" )
 0\
  .else
 ${act_srw.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_srw.Where_Clause_Value_ID}" )
, 0\
  .else
, ${act_srw.Where_Clause_Value_ID}\
  .end if
 );
.end for
.print "Select (ACT_SEL)"
.select many act_sels from instances of ACT_SEL
.for each act_sel in act_sels
INSERT INTO ACT_SEL VALUES (\
  .if ( "un-initialized" == "${act_sel.Statement_ID}" )
 0\
  .else
 ${act_sel.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${act_sel.Var_ID}" )
, 0\
  .else
, ${act_sel.Var_ID}\
  .end if
, ${act_sel.is_implicit}, '${act_sel.cardinality}'\
  .if ( "un-initialized" == "${act_sel.Value_ID}" )
, 0\
  .else
, ${act_sel.Value_ID}\
  .end if
 );
.end for
.print "Message In Sequence (SQ_MIS)"
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
.print "Sequence in Sequence (SQ_SIS)"
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
.print "Sequence (SQ_S)"
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
, '${sq_s.Descrip}'\
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
.print "Action Home (SM_AH)"
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
.print "Action (SM_ACT)"
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
, '${sm_act.Descrip}' );
.end for
.print "Cant Happen (SM_CH)"
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
, '${sm_ch.Descrip}' );
.end for
.print "Class State Machine (SM_ASM)"
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
.print "Creation Transition (SM_CRTXN)"
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
.print "Event Ignored (SM_EIGN)"
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
, '${sm_eign.Descrip}' );
.end for
.print "Event Supplemental Data (SM_SUPDT)"
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
.print "Instance State Machine (SM_ISM)"
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
.print "Local Event (SM_LEVT)"
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
.print "Mealy Action Home (SM_MEAH)"
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
.print "Mealy State Machine (SM_MEALY)"
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
.print "Moore Action Home (SM_MOAH)"
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
.print "Moore State Machine (SM_MOORE)"
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
.print "New State Transition (SM_NSTXN)"
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
.print "No Event Transition (SM_NETXN)"
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
.print "Non Local Event (SM_NLEVT)"
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
.print "Polymorphic Event (SM_PEVT)"
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
.print "SEM Event (SM_SEVT)"
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
.print "Signal Event (SM_SGEVT)"
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
 );
.end for
.print "State Event Matrix Entry (SM_SEME)"
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
.print "State Machine Event Data Item (SM_EVTDI)"
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
, '${sm_evtdi.Name}', '${sm_evtdi.Descrip}'\
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
.print "State Machine Event (SM_EVT)"
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
, ${sm_evt.Numb}, '${sm_evt.Mning}', ${sm_evt.Is_Lbl_U}, '${sm_evt.Unq_Lbl}', '${sm_evt.Drv_Lbl}', '${sm_evt.Descrip}' );
.end for
.print "State Machine State (SM_STATE)"
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
.print "State Machine (SM_SM)"
.select many sm_sms from instances of SM_SM
.for each sm_sm in sm_sms
INSERT INTO SM_SM VALUES (\
  .if ( "un-initialized" == "${sm_sm.SM_ID}" )
 0\
  .else
 ${sm_sm.SM_ID}\
  .end if
, '${sm_sm.Descrip}', ${sm_sm.Config_ID} );
.end for
.print "Supplemental Data Items (SM_SDI)"
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
.print "Transition Action Home (SM_TAH)"
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
.print "Transition (SM_TXN)"
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
.print "Attribute Reference in Class (O_REF)"
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
, ${o_ref.Is_Cstrd}, '${o_ref.Descrip}', '${o_ref.RObj_Name}', '${o_ref.RAttr_Name}', '${o_ref.Rel_Name}' );
.end for
.print "Attribute (O_ATTR)"
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
, '${o_attr.Name}', '${o_attr.Descrip}', '${o_attr.Prefix}', '${o_attr.Root_Nam}', ${o_attr.Pfx_Mode}\
  .if ( "un-initialized" == "${o_attr.DT_ID}" )
, 0\
  .else
, ${o_attr.DT_ID}\
  .end if
, '${o_attr.Dimensions}', '${o_attr.DefaultValue}' );
.end for
.print "Base Attribute (O_BATTR)"
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
.print "Class Identifier Attribute (O_OIDA)"
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
.print "Class Identifier (O_ID)"
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
.print "Derived Base Attribute (O_DBATTR)"
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
.print "Imported Class (O_IOBJ)"
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
.print "Model Class (O_OBJ)"
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
INSERT INTO O_OBJ VALUES (\
  .if ( "un-initialized" == "${o_obj.Obj_ID}" )
 0\
  .else
 ${o_obj.Obj_ID}\
  .end if
, '${o_obj.Name}', ${o_obj.Numb}, '${o_obj.Key_Lett}', '${o_obj.Descrip}'\
  .if ( "un-initialized" == "${o_obj.SS_ID}" )
, 0\
  .else
, ${o_obj.SS_ID}\
  .end if
 );
.end for
.print "New Base Attribute (O_NBATTR)"
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
.print "Operation Parameter (O_TPARM)"
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
, '${o_tparm.Descrip}' );
.end for
.print "Operation (O_TFR)"
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
, '${o_tfr.Name}', '${o_tfr.Descrip}'\
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
.print "Referential Attribute Visited Recorder (O_RAVR)"
.select many o_ravrs from instances of O_RAVR
.for each o_ravr in o_ravrs
INSERT INTO O_RAVR VALUES ( );
.end for
.print "Referential Attribute (O_RATTR)"
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
.print "Referred To Identifier Attribute (O_RTIDA)"
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
.print "System Constant in Package (SLD_SCINP)"
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
.print "System Datatype Package (SLD_SDP)"
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
.print "System Datatype in Package (SLD_SDINP)"
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
.print "Action Block Anchor (TE_ABA)"
.select many te_abas from instances of TE_ABA
.for each te_aba in te_abas
INSERT INTO TE_ABA VALUES (\
  .if ( "un-initialized" == "${te_aba.AbaID}" )
 0\
  .else
 ${te_aba.AbaID}\
  .end if
, '${te_aba.subtypeKL}', ${te_aba.SelfEventCount}, ${te_aba.NonSelfEventCount}, '${te_aba.ParameterDeclaration}', '${te_aba.ParameterDefinition}', '${te_aba.ParameterStructure}', '${te_aba.ParameterTrace}', '${te_aba.ParameterFormat}', '${te_aba.ParameterInvocation}', '${te_aba.ParameterAssignment}', '${te_aba.ParameterAssignmentBase}', '${te_aba.scope}', '${te_aba.GeneratedName}', '${te_aba.ReturnDataType}', ${te_aba.dimensions}\
  .if ( "un-initialized" == "${te_aba.te_dimID}" )
, 0\
  .else
, ${te_aba.te_dimID}\
  .end if
, '${te_aba.array_spec}'\
  .if ( "un-initialized" == "${te_aba.te_cID}" )
, 0\
  .else
, ${te_aba.te_cID}\
  .end if
 );
.end for
.print "Component Instance (TE_CI)"
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
.print "Dispatcher (TE_DISP)"
.select many te_disps from instances of TE_DISP
.for each te_disp in te_disps
INSERT INTO TE_DISP VALUES ( ${te_disp.Dispatcher_ID}, ${te_disp.SystemID}, '${te_disp.Name}', '${te_disp.Descrip}' );
.end for
.print "Extended Action (TE_ACT)"
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
.print "Extended Actual Parameter (TE_PAR)"
.select many te_pars from instances of TE_PAR
.for each te_par in te_pars
INSERT INTO TE_PAR VALUES ( '${te_par.Name}', ${te_par.By_Ref}, '${te_par.buffer}'\
  .if ( "un-initialized" == "${te_par.Value_ID}" )
, 0\
  .else
, ${te_par.Value_ID}\
  .end if
 );
.end for
.print "Extended Attribute (TE_ATTR)"
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
.print "Extended Bridge (TE_BRG)"
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
 );
.end for
.print "Extended Class (TE_CLASS)"
.select many te_classs from instances of TE_CLASS
.for each te_class in te_classs
INSERT INTO TE_CLASS VALUES ( '${te_class.Name}', ${te_class.Numb}, '${te_class.Key_Lett}', '${te_class.GeneratedName}', '${te_class.CBGeneratedName}', ${te_class.Included}, ${te_class.PEIsDefinedInData}, ${te_class.IsFixedPopulation}, ${te_class.IsReadOnly}, ${te_class.ExcludeFromGen}, ${te_class.MaxExtentSize}, ${te_class.SelfCreated}, ${te_class.NonSelfCreated}, ${te_class.Persistent}, ${te_class.Order}, ${te_class.IsTrace}, ${te_class.ContainerIndex}, ${te_class.Task}, '${te_class.class_file}', '${te_class.system_class_number}', '${te_class.CBsystem_class_number}', '${te_class.persist_link}', '${te_class.dispatcher}', '${te_class.CBdispatcher}', '${te_class.attribute_format}', '${te_class.attribute_dump}'\
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
 );
.end for
.print "Extended Component (TE_C)"
.select many te_cs from instances of TE_C
.for each te_c in te_cs
INSERT INTO TE_C VALUES (\
  .if ( "un-initialized" == "${te_c.ID}" )
 0\
  .else
 ${te_c.ID}\
  .end if
, '${te_c.Name}', '${te_c.Description}', ${te_c.number}, ${te_c.StateTrace}, ${te_c.StmtTrace}, ${te_c.DetectEmpty}, ${te_c.OptDisabled}, ${te_c.RawComments}, ${te_c.CodeComments}, ${te_c.UseModelNames}, ${te_c.current_component}, ${te_c.CollectionsFlavor}, '${te_c.classes_file}', '${te_c.init_file}', '${te_c.datatypes_file}', '${te_c.functions_file}', ${te_c.MaxObjExtent}, ${te_c.MaxRelExtent}, ${te_c.MaxSelectExtent}, ${te_c.MaxSelfEvents}, ${te_c.MaxNonSelfEvents}, ${te_c.MaxPriorityEvents}, ${te_c.MaxTimers}, ${te_c.InterleavedBridges}, ${te_c.PEIClassCount}, ${te_c.PersistentClassCount}, '${te_c.domain_mark_file}', '${te_c.class_mark_file}', '${te_c.events_mark_file}', '${te_c.module_file}', '${te_c.port_file}', '${te_c.include_file}', ${te_c.included_in_build}, ${te_c.internal_behavior}, ${te_c.isRealized}, ${te_c.SystemID}\
  .if ( "un-initialized" == "${te_c.Dom_ID}" )
, 0\
  .else
, ${te_c.Dom_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_c.cId}" )
, 0\
  .else
, ${te_c.cId}\
  .end if
 );
.end for
.print "Extended Data Type (TE_DT)"
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
.print "Extended Derived Attribute (TE_DBATTR)"
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
.print "Extended Dimension (TE_DIM)"
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
.print "Extended Enumerator (TE_ENUM)"
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
.print "Extended Event (TE_EVT)"
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
.print "Extended External Entity (TE_EE)"
.select many te_ees from instances of TE_EE
.for each te_ee in te_ees
INSERT INTO TE_EE VALUES ( '${te_ee.Name}', '${te_ee.RegisteredName}', '${te_ee.Key_Lett}', '${te_ee.Descrip}', ${te_ee.TypeCode}, ${te_ee.Included}, '${te_ee.file}', '${te_ee.Include_File}', ${te_ee.Used}\
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
.print "Extended Function (TE_SYNC)"
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
.print "Extended Member (TE_MBR)"
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
.print "Extended Message Action (TE_MACT)"
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
, '${te_mact.Name}', '${te_mact.Description}', '${te_mact.GeneratedName}', '${te_mact.ComponentName}', '${te_mact.DomainName}', '${te_mact.PortName}', '${te_mact.InterfaceName}', '${te_mact.MessageName}', ${te_mact.Direction}, ${te_mact.Provision}, '${te_mact.subtypeKL}', ${te_mact.polymorphic}, ${te_mact.trace}, ${te_mact.Order}\
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
.print "Extended Operation (TE_TFR)"
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
.print "Extended Parameter (TE_PARM)"
.select many te_parms from instances of TE_PARM
.for each te_parm in te_parms
INSERT INTO TE_PARM VALUES ( '${te_parm.Name}', '${te_parm.Description}', ${te_parm.Order}, '${te_parm.ParamBuffer}', '${te_parm.OALParamBuffer}'\
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
.print "Extended Port (TE_PO)"
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
.print "Extended Relation (TE_REL)"
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
.print "Extended State Machine (TE_SM)"
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
.print "Extended State (TE_STATE)"
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
.print "Extended System (TE_SYS)"
.select many te_syss from instances of TE_SYS
.for each te_sys in te_syss
INSERT INTO TE_SYS VALUES ( ${te_sys.SystemID}, '${te_sys.ModelCompilerName}', '${te_sys.ModelCompilerVersion}', '${te_sys.ModelCompilerSerNum}', '${te_sys.ModelCompilerKey}', '${te_sys.BridgePointLicenseKey}', '${te_sys.ExecutableName}', ${te_sys.MaxStringLen}, ${te_sys.MaxObjExtent}, ${te_sys.MaxRelExtent}, ${te_sys.MaxSelectExtent}, ${te_sys.TotalContainers}, ${te_sys.MaxSelfEvents}, ${te_sys.MaxNonSelfEvents}, ${te_sys.MaxTimers}, ${te_sys.MaxInterleavedBridges}, ${te_sys.MaxInterleavedBridgeDataSize}, ${te_sys.CollectionsFlavor}, ${te_sys.TargetMonitorEnabled}, ${te_sys.ForcePriorityEvents}, ${te_sys.PEIClassCount}, ${te_sys.PersistentClassCount}, ${te_sys.PersistInstanceCacheDepth}, ${te_sys.PersistLinkCacheDepth}, ${te_sys.UnitsToDynamicallyAllocate}, ${te_sys.InstanceLoading}, '${te_sys.self_name}', '${te_sys.Name}', ${te_sys.AUTOSAR}, ${te_sys.VFB}, '${te_sys.SystemCPortsType}', ${te_sys.AllPortsPoly}\
  .if ( "un-initialized" == "${te_sys.Sys_ID}" )
, 0\
  .else
, ${te_sys.Sys_ID}\
  .end if
 );
.end for
.print "Extended Value (TE_VAL)"
.select many te_vals from instances of TE_VAL
.for each te_val in te_vals
INSERT INTO TE_VAL VALUES ( '${te_val.OAL}', '${te_val.buffer}', ${te_val.dimensions}, '${te_val.array_spec}'\
  .if ( "un-initialized" == "${te_val.te_dimID}" )
, 0\
  .else
, ${te_val.te_dimID}\
  .end if
\
  .if ( "un-initialized" == "${te_val.Value_ID}" )
, 0\
  .else
, ${te_val.Value_ID}\
  .end if
 );
.end for
.print "Extended Variable (TE_VAR)"
.select many te_vars from instances of TE_VAR
.for each te_var in te_vars
INSERT INTO TE_VAR VALUES ( '${te_var.OAL}', '${te_var.buffer}', ${te_var.dimensions}\
  .if ( "un-initialized" == "${te_var.te_dimID}" )
, 0\
  .else
, ${te_var.te_dimID}\
  .end if
, '${te_var.array_spec}'\
  .if ( "un-initialized" == "${te_var.Var_ID}" )
, 0\
  .else
, ${te_var.Var_ID}\
  .end if
 );
.end for
.print "Extended Where (TE_WHERE)"
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
.print "Inline Code Snippet (TE_SNIPPET)"
.select many te_snippets from instances of TE_SNIPPET
.for each te_snippet in te_snippets
INSERT INTO TE_SNIPPET VALUES ( '${te_snippet.Index}', '${te_snippet.Body}' );
.end for
.print "Interface Instance (TE_IIR)"
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
.print "Message Queue (TE_QUEUE)"
.select many te_queues from instances of TE_QUEUE
.for each te_queue in te_queues
INSERT INTO TE_QUEUE VALUES ( ${te_queue.Queue_ID}, ${te_queue.Dispatcher_ID}, ${te_queue.Type}, '${te_queue.Descrip}', ${te_queue.RenderCode}, ${te_queue.MaxDepth} );
.end for
.print "Navigation (TE_NAV)"
.select many te_navs from instances of TE_NAV
.for each te_nav in te_navs
INSERT INTO TE_NAV VALUES ( ${te_nav.NavigatedTo}\
  .if ( "un-initialized" == "${te_nav.OIR_ID}" )
, 0\
  .else
, ${te_nav.OIR_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_nav.Obj_ID}" )
, 0\
  .else
, ${te_nav.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_nav.Rel_ID}" )
, 0\
  .else
, ${te_nav.Rel_ID}\
  .end if
 );
.end for
.print "Special Where Clause (TE_SWC)"
.select many te_swcs from instances of TE_SWC
.for each te_swc in te_swcs
INSERT INTO TE_SWC VALUES ( '${te_swc.Obj_Kl}', '${te_swc.Where_Spec}', '${te_swc.Key}', ${te_swc.Ret_Val}, ${te_swc.Built_In}, ${te_swc.Oid_ID}\
  .if ( "un-initialized" == "${te_swc.Obj_ID}" )
, 0\
  .else
, ${te_swc.Obj_ID}\
  .end if
 );
.end for
.print "container (TE_CONTAINER)"
.select many te_containers from instances of TE_CONTAINER
.for each te_container in te_containers
INSERT INTO TE_CONTAINER VALUES ( '${te_container.flavor}' );
.end for
.print "copyright (TE_COPYRIGHT)"
.select many te_copyrights from instances of TE_COPYRIGHT
.for each te_copyright in te_copyrights
INSERT INTO TE_COPYRIGHT VALUES ( '${te_copyright.body}' );
.end for
.print "dlist (TE_DLIST)"
.select many te_dlists from instances of TE_DLIST
.for each te_dlist in te_dlists
INSERT INTO TE_DLIST VALUES ( '${te_dlist.flavor}', '${te_dlist.remove_node}' );
.end for
.print "dynamic memory allocation (TE_DMA)"
.select many te_dmas from instances of TE_DMA
.for each te_dma in te_dmas
INSERT INTO TE_DMA VALUES ( '${te_dma.file}', '${te_dma.allocate}', '${te_dma.release}', ${te_dma.debugging_heap} );
.end for
.print "event queue (TE_EQ)"
.select many te_eqs from instances of TE_EQ
.for each te_eq in te_eqs
INSERT INTO TE_EQ VALUES ( '${te_eq.ignored}', '${te_eq.cant_happen}', '${te_eq.system_events_union}', '${te_eq.system_event_pool}', '${te_eq.constant_type}', '${te_eq.base_event_type}', '${te_eq.base_variable}', '${te_eq.max_events}', '${te_eq.max_self_events}', '${te_eq.max_nonself_events}', '${te_eq.new}', '${te_eq.allocate}', '${te_eq.delete}', '${te_eq.modify}', '${te_eq.self}', '${te_eq.non_self}', '${te_eq.search_and_destroy}', '${te_eq.run_flag}', '${te_eq.event_message_variable}', '${te_eq.scope}' );
.end for
.print "extent (TE_EXTENT)"
.select many te_extents from instances of TE_EXTENT
.for each te_extent in te_extents
INSERT INTO TE_EXTENT VALUES ( '${te_extent.sets_type}', '${te_extent.type}', '${te_extent.active}', '${te_extent.inactive}', '${te_extent.initializer}', '${te_extent.size_type}', '${te_extent.size_name}', '${te_extent.istate_type}', '${te_extent.istate_name}', '${te_extent.container_type}', '${te_extent.container_name}', '${te_extent.pool_type}', '${te_extent.pool_name}', '${te_extent.population_type}', '${te_extent.population_name}', '${te_extent.rstorsize_type}', '${te_extent.rstorsize_name}', '${te_extent.linkfunc_name}' );
.end for
.print "file (TE_FILE)"
.select many te_files from instances of TE_FILE
.for each te_file in te_files
INSERT INTO TE_FILE VALUES ( '${te_file.hdr_file_ext}', '${te_file.src_file_ext}', '${te_file.asm_file_ext}', '${te_file.obj_file_ext}', '${te_file.rpt_file_ext}', '${te_file.sys_main}', '${te_file.factory}', '${te_file.events}', '${te_file.nvs}', '${te_file.nvs_bridge}', '${te_file.sets}', '${te_file.types}', '${te_file.thread}', '${te_file.trace}', '${te_file.tim}', '${te_file.callout}', '${te_file.ilb}', '${te_file.persist}', '${te_file.xtumlload}', '${te_file.interfaces}', '${te_file.registers}', '${te_file.domain_color_path}', '${te_file.domain_source_path}', '${te_file.domain_include_path}', '${te_file.domain_sql_path}', '${te_file.system_source_path}', '${te_file.system_include_path}', '${te_file.system_color_path}', '${te_file.bridge_mark}', '${te_file.registry_mark}', '${te_file.system_mark}', '${te_file.datatype_mark}', '${te_file.event_mark}', '${te_file.class_mark}', '${te_file.domain_mark}', '${te_file.domain_functions_mark}', '${te_file.system_functions_mark}', '${te_file.arc_path}', '${te_file.root_path}' );
.end for
.print "instance (TE_INSTANCE)"
.select many te_instances from instances of TE_INSTANCE
.for each te_instance in te_instances
INSERT INTO TE_INSTANCE VALUES ( '${te_instance.create}', '${te_instance.create_persistent}', '${te_instance.delete}', '${te_instance.delete_persistent}', '${te_instance.self}', '${te_instance.global_self}', '${te_instance.base}', '${te_instance.handle}', '${te_instance.factory_init}', '${te_instance.base_class}', '${te_instance.max_extent}', '${te_instance.max_association_extent}', '${te_instance.max_transient_extent}', '${te_instance.current_state}', '${te_instance.scope}', '${te_instance.get_dci}', '${te_instance.get_event_dispatcher}', '${te_instance.get_thread_assignment}', '${te_instance.module}' );
.end for
.print "interleaved bridge (TE_ILB)"
.select many te_ilbs from instances of TE_ILB
.for each te_ilb in te_ilbs
INSERT INTO TE_ILB VALUES ( '${te_ilb.file}', '${te_ilb.define_name}', '${te_ilb.data_define_name}', '${te_ilb.interleave_bridge}', '${te_ilb.interleave_bridge_done}', '${te_ilb.get_data}', '${te_ilb.dispatch}' );
.end for
.print "persistence (TE_PERSIST)"
.select many te_persists from instances of TE_PERSIST
.for each te_persist in te_persists
INSERT INTO TE_PERSIST VALUES ( '${te_persist.persist_file}', '${te_persist.class_union}', '${te_persist.instance_cache_depth}', '${te_persist.link_cache_depth}', '${te_persist.check_mark}', '${te_persist.post_link}', '${te_persist.link_type_name}', '${te_persist.link_type_type}', '${te_persist.factory_init}', '${te_persist.commit}', '${te_persist.restore}', '${te_persist.remove}' );
.end for
.print "prefix (TE_PREFIX)"
.select many te_prefixs from instances of TE_PREFIX
.for each te_prefix in te_prefixs
INSERT INTO TE_PREFIX VALUES ( '${te_prefix.symbol}', '${te_prefix.symbolsw}', '${te_prefix.type}', '${te_prefix.typesw}', '${te_prefix.define_u}', '${te_prefix.define_c}', '${te_prefix.define_csw}', '${te_prefix.define_usw}', '${te_prefix.file}', '${te_prefix.result}', '${te_prefix.provided_port}', '${te_prefix.required_port}', '${te_prefix.channel}' );
.end for
.print "relationship information (TE_RELINFO)"
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
.print "relationship storage (TE_RELSTORE)"
.select many te_relstores from instances of TE_RELSTORE
.for each te_relstore in te_relstores
INSERT INTO TE_RELSTORE VALUES ( '${te_relstore.data_declare}', '${te_relstore.data_init}', '${te_relstore.link_calls}', ${te_relstore.link_index}, '${te_relstore.data_fini}', '${te_relstore.self_name}' );
.end for
.print "set (TE_SET)"
.select many te_sets from instances of TE_SET
.for each te_set in te_sets
INSERT INTO TE_SET VALUES ( '${te_set.number_of_containoids}', '${te_set.iterator_class_name}', '${te_set.factory}', '${te_set.init}', '${te_set.copy}', '${te_set.clear}', '${te_set.insert_element}', '${te_set.insert_instance}', '${te_set.insert_block}', '${te_set.remove_element}', '${te_set.remove_instance}', '${te_set.element_count}', '${te_set.contains}', '${te_set.equality}', '${te_set.emptiness}', '${te_set.get_any}', '${te_set.iterator_reset}', '${te_set.iterator_next}', '${te_set.base_class}', '${te_set.element_type}', '${te_set.scope}', '${te_set.module}' );
.end for
.print "slist (TE_SLIST)"
.select many te_slists from instances of TE_SLIST
.for each te_slist in te_slists
INSERT INTO TE_SLIST VALUES ( '${te_slist.flavor}', '${te_slist.remove_node}' );
.end for
.print "string (TE_STRING)"
.select many te_strings from instances of TE_STRING
.for each te_string in te_strings
INSERT INTO TE_STRING VALUES ( '${te_string.memset}', '${te_string.memmove}', '${te_string.strcpy}', '${te_string.stradd}', '${te_string.strlen}', '${te_string.strcmp}', '${te_string.strget}', '${te_string.itoa}', '${te_string.atoi}', '${te_string.max_string_length}', '${te_string.debug_buffer_depth}' );
.end for
.print "target (TE_TARGET)"
.select many te_targets from instances of TE_TARGET
.for each te_target in te_targets
INSERT INTO TE_TARGET VALUES ( '${te_target.language}', '${te_target.c2cplusplus_linkage_begin}', '${te_target.c2cplusplus_linkage_end}', '${te_target.main}' );
.end for
.print "thread (TE_THREAD)"
.select many te_threads from instances of TE_THREAD
.for each te_thread in te_threads
INSERT INTO TE_THREAD VALUES ( '${te_thread.file}', '${te_thread.create}', '${te_thread.mutex_lock}', '${te_thread.mutex_unlock}', '${te_thread.nonbusy_wait}', '${te_thread.nonbusy_wake}', '${te_thread.shutdown}', ${te_thread.enabled}, '${te_thread.flavor}', ${te_thread.serialize}, ${te_thread.number_of_threads}, '${te_thread.extra_initialization}', '${te_thread.AUTOSAR_enabled}' );
.end for
.print "timer (TE_TIM)"
.select many te_tims from instances of TE_TIM
.for each te_tim in te_tims
INSERT INTO TE_TIM VALUES ( '${te_tim.max_timers}', ${te_tim.keyed_timer_support}, ${te_tim.recurring_timer_support}, ${te_tim.timer_event_search_and_destroy}, '${te_tim.internal_type}', '${te_tim.scope}', '${te_tim.event_name}' );
.end for
.print "trace (TE_TRACE)"
.select many te_traces from instances of TE_TRACE
.for each te_trace in te_traces
INSERT INTO TE_TRACE VALUES ( '${te_trace.component_msg_start}', '${te_trace.component_msg_end}', '${te_trace.state_txn_start}', '${te_trace.state_txn_end}', '${te_trace.state_txn_event_ignored}', '${te_trace.state_txn_cant_happen}', '${te_trace.oal_trace}' );
.end for
.print "type map (TE_TYPEMAP)"
.select many te_typemaps from instances of TE_TYPEMAP
.for each te_typemap in te_typemaps
INSERT INTO TE_TYPEMAP VALUES ( '${te_typemap.instance_index_name}', '${te_typemap.instance_index_type}', '${te_typemap.object_size_name}', '${te_typemap.object_size_type}', '${te_typemap.object_number_name}', '${te_typemap.object_number_type}', '${te_typemap.state_number_name}', '${te_typemap.state_number_type}', '${te_typemap.domain_number_name}', '${te_typemap.domain_number_type}', '${te_typemap.event_number_name}', '${te_typemap.event_number_type}', '${te_typemap.event_priority_name}', '${te_typemap.event_priority_type}', '${te_typemap.event_flags_name}', '${te_typemap.event_flags_type}', '${te_typemap.poly_return_name}', '${te_typemap.poly_return_type}', '${te_typemap.SEM_cell_name}', '${te_typemap.SEM_cell_type}' );
.end for
.print "user callout (TE_CALLOUT)"
.select many te_callouts from instances of TE_CALLOUT
.for each te_callout in te_callouts
INSERT INTO TE_CALLOUT VALUES ( '${te_callout.file}', '${te_callout.initialization}', '${te_callout.pre_xtUML_initialization}', '${te_callout.post_xtUML_initialization}', '${te_callout.background_processing}', '${te_callout.event_cant_happen}', '${te_callout.pre_shutdown}', '${te_callout.post_shutdown}', '${te_callout.event_no_instance}', '${te_callout.event_free_list_empty}', '${te_callout.empty_handle_detected}', '${te_callout.object_pool_empty}', '${te_callout.node_list_empty}', '${te_callout.interleaved_bridge_overflow}', '${te_callout.self_event_queue_empty}', '${te_callout.non_self_event_queue_empty}', '${te_callout.persistence_error}' );
.end for
.print "CPP Template (TM_TEMPLATE)"
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
.print "Component Mark (TM_C)"
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
.print "Data Type Pointer (TM_POINTER)"
.select many tm_pointers from instances of TM_POINTER
.for each tm_pointer in tm_pointers
INSERT INTO TM_POINTER VALUES ( '${tm_pointer.Domain}', '${tm_pointer.DT_name}', '${tm_pointer.pointer_type}', '${tm_pointer.include_file}' );
.end for
.print "Data Type Precision (TM_PRECISION)"
.select many tm_precisions from instances of TM_PRECISION
.for each tm_precision in tm_precisions
INSERT INTO TM_PRECISION VALUES ( '${tm_precision.Domain}', '${tm_precision.DT_name}', '${tm_precision.xName}', '${tm_precision.initial_value}' );
.end for
.print "Enumeration Init (TM_ENUMINIT)"
.select many tm_enuminits from instances of TM_ENUMINIT
.for each tm_enuminit in tm_enuminits
INSERT INTO TM_ENUMINIT VALUES ( '${tm_enuminit.Domain}', '${tm_enuminit.enumeration}', '${tm_enuminit.value}' );
.end for
.print "Enumerator Value (TM_ENUMVAL)"
.select many tm_enumvals from instances of TM_ENUMVAL
.for each tm_enumval in tm_enumvals
INSERT INTO TM_ENUMVAL VALUES ( '${tm_enumval.Domain}', '${tm_enumval.enumeration}', '${tm_enumval.enumerator}', '${tm_enumval.value}' );
.end for
.print "Function Mark (TM_SYNC)"
.select many tm_syncs from instances of TM_SYNC
.for each tm_sync in tm_syncs
INSERT INTO TM_SYNC VALUES ( '${tm_sync.RegisteredDomain}', '${tm_sync.Name}', ${tm_sync.IsSafeForInterrupts}, ${tm_sync.IsInitFunction} );
.end for
.print "Interface Mark (TM_IF)"
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
.print "System Tags (TM_SYSTAG)"
.select many tm_systags from instances of TM_SYSTAG
.for each tm_systag in tm_systags
INSERT INTO TM_SYSTAG VALUES ( ${tm_systag.MaxStringLen}, ${tm_systag.MaxRelExtent}, ${tm_systag.MaxSelectExtent}, ${tm_systag.MaxSelfEvents}, ${tm_systag.MaxNonSelfEvents}, ${tm_systag.MaxTimers}, ${tm_systag.MaxInterleavedBridges}, ${tm_systag.MaxInterleavedBridgeDataSize}, ${tm_systag.CollectionsFlavor}, ${tm_systag.PersistInstanceCacheDepth}, ${tm_systag.PersistLinkCacheDepth}, ${tm_systag.UnitsToDynamicallyAllocate}, ${tm_systag.VFB}, ${tm_systag.InstanceLoading}, '${tm_systag.SystemCPortsType}', ${tm_systag.AllPortsPoly} );
.end for
.print "Tasking Mark (TM_THREAD)"
.select many tm_threads from instances of TM_THREAD
.for each tm_thread in tm_threads
INSERT INTO TM_THREAD VALUES ( ${tm_thread.enabled}, '${tm_thread.flavor}', ${tm_thread.serialize}, ${tm_thread.number_of_threads}, '${tm_thread.extra_initialization}' );
.end for
.print "Template Parameter Value (TM_TPV)"
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
.print "Template Parameter (TM_TP)"
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
.print "build (TM_BUILD)"
.select many tm_builds from instances of TM_BUILD
.for each tm_build in tm_builds
INSERT INTO TM_BUILD VALUES ( '${tm_build.package_to_build}', '${tm_build.package_obj_name}', '${tm_build.package_inst_name}' );
.end for
.print "Extended Block (TE_BLK)"
.select many te_blks from instances of TE_BLK
.for each te_blk in te_blks
INSERT INTO TE_BLK VALUES (\
  .if ( "un-initialized" == "${te_blk.Block_ID}" )
 0\
  .else
 ${te_blk.Block_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_blk.first_Statement_ID}" )
, 0\
  .else
, ${te_blk.first_Statement_ID}\
  .end if
, '${te_blk.OAL}', '${te_blk.declaration}', '${te_blk.initialization}', '${te_blk.deallocation}', '${te_blk.code}', ${te_blk.depth}, '${te_blk.indentation}'\
  .if ( "un-initialized" == "${te_blk.AbaID}" )
, 0\
  .else
, ${te_blk.AbaID}\
  .end if
 );
.end for
.print "Extended Chain Link (TE_LNK)"
.select many te_lnks from instances of TE_LNK
.for each te_lnk in te_lnks
INSERT INTO TE_LNK VALUES (\
  .if ( "un-initialized" == "${te_lnk.ID}" )
 0\
  .else
 ${te_lnk.ID}\
  .end if
, ${te_lnk.Mult}, '${te_lnk.rel_phrase}', ${te_lnk.rel_number}, '${te_lnk.OAL}', '${te_lnk.buffer}'\
  .if ( "un-initialized" == "${te_lnk.next_ID}" )
, 0\
  .else
, ${te_lnk.next_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_lnk.Link_ID}" )
, 0\
  .else
, ${te_lnk.Link_ID}\
  .end if
, '${te_lnk.linkage}', '${te_lnk.iterator}', '${te_lnk.left}', '${te_lnk.te_classGeneratedName}', ${te_lnk.first}, ${te_lnk.last}, '${te_lnk.assoc_type}' );
.end for
.print "Extended Statement (TE_SMT)"
.select many te_smts from instances of TE_SMT
.for each te_smt in te_smts
INSERT INTO TE_SMT VALUES (\
  .if ( "un-initialized" == "${te_smt.Statement_ID}" )
 0\
  .else
 ${te_smt.Statement_ID}\
  .end if
, '${te_smt.OAL}', '${te_smt.declaration}', '${te_smt.initialization}', '${te_smt.deallocation}', '${te_smt.buffer}', '${te_smt.buffer2}', '${te_smt.trace}'\
  .if ( "un-initialized" == "${te_smt.next_Statement_ID}" )
, 0\
  .else
, ${te_smt.next_Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_smt.sub_Block_ID}" )
, 0\
  .else
, ${te_smt.sub_Block_ID}\
  .end if
, '${te_smt.subtypeKL}'\
  .if ( "un-initialized" == "${te_smt.parent_Block_ID}" )
, 0\
  .else
, ${te_smt.parent_Block_ID}\
  .end if
 );
.end for
.print "OAL assign (TE_ASSIGN)"
.select many te_assigns from instances of TE_ASSIGN
.for each te_assign in te_assigns
INSERT INTO TE_ASSIGN VALUES ( ${te_assign.isImplicit}, ${te_assign.dimensions}, '${te_assign.array_spec}', '${te_assign.left_declaration}', ${te_assign.Core_Typ}, '${te_assign.lval}', '${te_assign.rval}'\
  .if ( "un-initialized" == "${te_assign.Statement_ID}" )
, 0\
  .else
, ${te_assign.Statement_ID}\
  .end if
, ${te_assign.rval_dimensions} );
.end for
.print "OAL break (TE_BREAK)"
.select many te_breaks from instances of TE_BREAK
.for each te_break in te_breaks
INSERT INTO TE_BREAK VALUES (\
  .if ( "un-initialized" == "${te_break.Statement_ID}" )
 0\
  .else
 ${te_break.Statement_ID}\
  .end if
 );
.end for
.print "OAL bridge (TE_BRIDGE)"
.select many te_bridges from instances of TE_BRIDGE
.for each te_bridge in te_bridges
INSERT INTO TE_BRIDGE VALUES ( '${te_bridge.bridge_name}', '${te_bridge.parameters}'\
  .if ( "un-initialized" == "${te_bridge.Statement_ID}" )
, 0\
  .else
, ${te_bridge.Statement_ID}\
  .end if
 );
.end for
.print "OAL continue (TE_CONTINUE)"
.select many te_continues from instances of TE_CONTINUE
.for each te_continue in te_continues
INSERT INTO TE_CONTINUE VALUES (\
  .if ( "un-initialized" == "${te_continue.Statement_ID}" )
 0\
  .else
 ${te_continue.Statement_ID}\
  .end if
 );
.end for
.print "OAL control (TE_CONTROL)"
.select many te_controls from instances of TE_CONTROL
.for each te_control in te_controls
INSERT INTO TE_CONTROL VALUES (\
  .if ( "un-initialized" == "${te_control.Statement_ID}" )
 0\
  .else
 ${te_control.Statement_ID}\
  .end if
 );
.end for
.print "OAL create_event (TE_CREATE_EVENT)"
.select many te_create_events from instances of TE_CREATE_EVENT
.for each te_create_event in te_create_events
INSERT INTO TE_CREATE_EVENT VALUES (\
  .if ( "un-initialized" == "${te_create_event.sm_evt}" )
 0\
  .else
 ${te_create_event.sm_evt}\
  .end if
, ${te_create_event.is_implicit}, '${te_create_event.class_name}', '${te_create_event.event_meaning}', '${te_create_event.oal_var_name}', '${te_create_event.var_name}', '${te_create_event.recipient_var_name}', '${te_create_event.parameters}'\
  .if ( "un-initialized" == "${te_create_event.Statement_ID}" )
, 0\
  .else
, ${te_create_event.Statement_ID}\
  .end if
 );
.end for
.print "OAL create_instance (TE_CREATE_INSTANCE)"
.select many te_create_instances from instances of TE_CREATE_INSTANCE
.for each te_create_instance in te_create_instances
INSERT INTO TE_CREATE_INSTANCE VALUES (\
  .if ( "un-initialized" == "${te_create_instance.o_obj}" )
 0\
  .else
 ${te_create_instance.o_obj}\
  .end if
, ${te_create_instance.is_implicit}, '${te_create_instance.class_name}', '${te_create_instance.var_name}'\
  .if ( "un-initialized" == "${te_create_instance.Statement_ID}" )
, 0\
  .else
, ${te_create_instance.Statement_ID}\
  .end if
 );
.end for
.print "OAL delete_instance (TE_DELETE_INSTANCE)"
.select many te_delete_instances from instances of TE_DELETE_INSTANCE
.for each te_delete_instance in te_delete_instances
INSERT INTO TE_DELETE_INSTANCE VALUES (\
  .if ( "un-initialized" == "${te_delete_instance.o_obj}" )
 0\
  .else
 ${te_delete_instance.o_obj}\
  .end if
, '${te_delete_instance.var_name}', ${te_delete_instance.del_count}\
  .if ( "un-initialized" == "${te_delete_instance.Statement_ID}" )
, 0\
  .else
, ${te_delete_instance.Statement_ID}\
  .end if
 );
.end for
.print "OAL elif (TE_ELIF)"
.select many te_elifs from instances of TE_ELIF
.for each te_elif in te_elifs
INSERT INTO TE_ELIF VALUES ( '${te_elif.condition}'\
  .if ( "un-initialized" == "${te_elif.Statement_ID}" )
, 0\
  .else
, ${te_elif.Statement_ID}\
  .end if
 );
.end for
.print "OAL else (TE_ELSE)"
.select many te_elses from instances of TE_ELSE
.for each te_else in te_elses
INSERT INTO TE_ELSE VALUES (\
  .if ( "un-initialized" == "${te_else.Statement_ID}" )
 0\
  .else
 ${te_else.Statement_ID}\
  .end if
 );
.end for
.print "OAL event_parameters (TE_EVENT_PARAMETERS)"
.select many te_event_parameterss from instances of TE_EVENT_PARAMETERS
.for each te_event_parameters in te_event_parameterss
INSERT INTO TE_EVENT_PARAMETERS VALUES ( '${te_event_parameters.evt_msg_var}', '${te_event_parameters.parameter}', '${te_event_parameters.value}', '${te_event_parameters.value_type}'\
  .if ( "un-initialized" == "${te_event_parameters.Statement_ID}" )
, 0\
  .else
, ${te_event_parameters.Statement_ID}\
  .end if
 );
.end for
.print "OAL for (TE_FOR)"
.select many te_fors from instances of TE_FOR
.for each te_for in te_fors
INSERT INTO TE_FOR VALUES ( ${te_for.isImplicit}, '${te_for.class_name}', '${te_for.loop_variable}', '${te_for.set_variable}'\
  .if ( "un-initialized" == "${te_for.Statement_ID}" )
, 0\
  .else
, ${te_for.Statement_ID}\
  .end if
 );
.end for
.print "OAL function (TE_FUNCTION)"
.select many te_functions from instances of TE_FUNCTION
.for each te_function in te_functions
INSERT INTO TE_FUNCTION VALUES ( '${te_function.method}', '${te_function.parameters}'\
  .if ( "un-initialized" == "${te_function.Statement_ID}" )
, 0\
  .else
, ${te_function.Statement_ID}\
  .end if
 );
.end for
.print "OAL generate (TE_GENERATE)"
.select many te_generates from instances of TE_GENERATE
.for each te_generate in te_generates
INSERT INTO TE_GENERATE VALUES (\
  .if ( "un-initialized" == "${te_generate.sm_evt}" )
 0\
  .else
 ${te_generate.sm_evt}\
  .end if
, ${te_generate.self_directed}, '${te_generate.var_name}', '${te_generate.event_label}', '${te_generate.event_meaning}', '${te_generate.parameters}'\
  .if ( "un-initialized" == "${te_generate.Statement_ID}" )
, 0\
  .else
, ${te_generate.Statement_ID}\
  .end if
 );
.end for
.print "OAL generate_creator_event (TE_GENERATE_CREATOR_EVENT)"
.select many te_generate_creator_events from instances of TE_GENERATE_CREATOR_EVENT
.for each te_generate_creator_event in te_generate_creator_events
INSERT INTO TE_GENERATE_CREATOR_EVENT VALUES (\
  .if ( "un-initialized" == "${te_generate_creator_event.sm_evt}" )
 0\
  .else
 ${te_generate_creator_event.sm_evt}\
  .end if
, ${te_generate_creator_event.self_directed}, '${te_generate_creator_event.var_name}', '${te_generate_creator_event.event_label}', '${te_generate_creator_event.event_meaning}', '${te_generate_creator_event.parameters}'\
  .if ( "un-initialized" == "${te_generate_creator_event.Statement_ID}" )
, 0\
  .else
, ${te_generate_creator_event.Statement_ID}\
  .end if
 );
.end for
.print "OAL generate_precreated_event (TE_GENERATE_PRECREATED_EVENT)"
.select many te_generate_precreated_events from instances of TE_GENERATE_PRECREATED_EVENT
.for each te_generate_precreated_event in te_generate_precreated_events
INSERT INTO TE_GENERATE_PRECREATED_EVENT VALUES ( ${te_generate_precreated_event.self_directed}, '${te_generate_precreated_event.var_name}'\
  .if ( "un-initialized" == "${te_generate_precreated_event.Statement_ID}" )
, 0\
  .else
, ${te_generate_precreated_event.Statement_ID}\
  .end if
 );
.end for
.print "OAL generate_to_class (TE_GENERATE_TO_CLASS)"
.select many te_generate_to_classs from instances of TE_GENERATE_TO_CLASS
.for each te_generate_to_class in te_generate_to_classs
INSERT INTO TE_GENERATE_TO_CLASS VALUES (\
  .if ( "un-initialized" == "${te_generate_to_class.sm_evt}" )
 0\
  .else
 ${te_generate_to_class.sm_evt}\
  .end if
, ${te_generate_to_class.self_directed}, '${te_generate_to_class.var_name}', '${te_generate_to_class.event_label}', '${te_generate_to_class.even_meaning}', '${te_generate_to_class.parameters}'\
  .if ( "un-initialized" == "${te_generate_to_class.Statement_ID}" )
, 0\
  .else
, ${te_generate_to_class.Statement_ID}\
  .end if
 );
.end for
.print "OAL if (TE_IF)"
.select many te_ifs from instances of TE_IF
.for each te_if in te_ifs
INSERT INTO TE_IF VALUES ( '${te_if.condition}'\
  .if ( "un-initialized" == "${te_if.Statement_ID}" )
, 0\
  .else
, ${te_if.Statement_ID}\
  .end if
 );
.end for
.print "OAL iop (TE_IOP)"
.select many te_iops from instances of TE_IOP
.for each te_iop in te_iops
INSERT INTO TE_IOP VALUES ( '${te_iop.name}', '${te_iop.parameters}'\
  .if ( "un-initialized" == "${te_iop.Statement_ID}" )
, 0\
  .else
, ${te_iop.Statement_ID}\
  .end if
 );
.end for
.print "OAL operation (TE_OPERATION)"
.select many te_operations from instances of TE_OPERATION
.for each te_operation in te_operations
INSERT INTO TE_OPERATION VALUES ( ${te_operation.instance_based}, '${te_operation.operation_name}', '${te_operation.parameters}', '${te_operation.var_name}'\
  .if ( "un-initialized" == "${te_operation.Statement_ID}" )
, 0\
  .else
, ${te_operation.Statement_ID}\
  .end if
 );
.end for
.print "OAL relate (TE_RELATE)"
.select many te_relates from instances of TE_RELATE
.for each te_relate in te_relates
INSERT INTO TE_RELATE VALUES (\
  .if ( "un-initialized" == "${te_relate.one_o_obj}" )
 0\
  .else
 ${te_relate.one_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relate.oth_o_obj}" )
, 0\
  .else
, ${te_relate.oth_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relate.r_rel}" )
, 0\
  .else
, ${te_relate.r_rel}\
  .end if
, ${te_relate.is_reflexive}, ${te_relate.relationship_number}, '${te_relate.relationship_phrase}', '${te_relate.one_var_name}', '${te_relate.oth_var_name}'\
  .if ( "un-initialized" == "${te_relate.Statement_ID}" )
, 0\
  .else
, ${te_relate.Statement_ID}\
  .end if
 );
.end for
.print "OAL relate_using (TE_RELATE_USING)"
.select many te_relate_usings from instances of TE_RELATE_USING
.for each te_relate_using in te_relate_usings
INSERT INTO TE_RELATE_USING VALUES (\
  .if ( "un-initialized" == "${te_relate_using.one_o_obj}" )
 0\
  .else
 ${te_relate_using.one_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relate_using.oth_o_obj}" )
, 0\
  .else
, ${te_relate_using.oth_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relate_using.ass_o_obj}" )
, 0\
  .else
, ${te_relate_using.ass_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_relate_using.r_rel}" )
, 0\
  .else
, ${te_relate_using.r_rel}\
  .end if
, ${te_relate_using.is_inflexive}, ${te_relate_using.relationship_number}, '${te_relate_using.relationship_phrase}', '${te_relate_using.one_var_name}', '${te_relate_using.oth_var_name}', '${te_relate_using.ass_var_name}', '${te_relate_using.one_rel_phrase}', '${te_relate_using.oth_rel_phrase}'\
  .if ( "un-initialized" == "${te_relate_using.Statement_ID}" )
, 0\
  .else
, ${te_relate_using.Statement_ID}\
  .end if
 );
.end for
.print "OAL return (TE_RETURN)"
.select many te_returns from instances of TE_RETURN
.for each te_return in te_returns
INSERT INTO TE_RETURN VALUES ( '${te_return.value}', '${te_return.cast1}', '${te_return.cast2}'\
  .if ( "un-initialized" == "${te_return.Statement_ID}" )
, 0\
  .else
, ${te_return.Statement_ID}\
  .end if
 );
.end for
.print "OAL select (TE_SELECT)"
.select many te_selects from instances of TE_SELECT
.for each te_select in te_selects
INSERT INTO TE_SELECT VALUES (\
  .if ( "un-initialized" == "${te_select.o_obj}" )
 0\
  .else
 ${te_select.o_obj}\
  .end if
, ${te_select.is_implicit}, '${te_select.class_name}', '${te_select.target_class_name}', '${te_select.class_description}', '${te_select.multiplicity}', '${te_select.var_name}'\
  .if ( "un-initialized" == "${te_select.Statement_ID}" )
, 0\
  .else
, ${te_select.Statement_ID}\
  .end if
 );
.end for
.print "OAL select_related (TE_SELECT_RELATED)"
.select many te_select_relateds from instances of TE_SELECT_RELATED
.for each te_select_related in te_select_relateds
INSERT INTO TE_SELECT_RELATED VALUES (\
  .if ( "un-initialized" == "${te_select_related.Statement_ID}" )
 0\
  .else
 ${te_select_related.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_select_related.link_ID}" )
, 0\
  .else
, ${te_select_related.link_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_select_related.starting_Value_ID}" )
, 0\
  .else
, ${te_select_related.starting_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_select_related.where_clause_Value_ID}" )
, 0\
  .else
, ${te_select_related.where_clause_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_select_related.starting_Var_ID}" )
, 0\
  .else
, ${te_select_related.starting_Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${te_select_related.result_Var_ID}" )
, 0\
  .else
, ${te_select_related.result_Var_ID}\
  .end if
, ${te_select_related.by_where}, '${te_select_related.where_clause}', '${te_select_related.where_clause_OAL}', '${te_select_related.multiplicity}', ${te_select_related.is_implicit}, '${te_select_related.result_var}', '${te_select_related.result_var_OAL}', ${te_select_related.start_many}, '${te_select_related.start_var}', '${te_select_related.start_var_OAL}', '${te_select_related.te_classGeneratedName}' );
.end for
.print "OAL select_where (TE_SELECT_WHERE)"
.select many te_select_wheres from instances of TE_SELECT_WHERE
.for each te_select_where in te_select_wheres
INSERT INTO TE_SELECT_WHERE VALUES (\
  .if ( "un-initialized" == "${te_select_where.o_obj}" )
 0\
  .else
 ${te_select_where.o_obj}\
  .end if
, ${te_select_where.is_implicit}, '${te_select_where.class_name}', '${te_select_where.oal_var_name}', '${te_select_where.class_description}', '${te_select_where.multiplicity}', '${te_select_where.var_name}', '${te_select_where.selected_var_name}', '${te_select_where.where_clause}', ${te_select_where.special}, ${te_select_where.oid_id}\
  .if ( "un-initialized" == "${te_select_where.Statement_ID}" )
, 0\
  .else
, ${te_select_where.Statement_ID}\
  .end if
 );
.end for
.print "OAL sgn (TE_SGN)"
.select many te_sgns from instances of TE_SGN
.for each te_sgn in te_sgns
INSERT INTO TE_SGN VALUES (\
  .if ( "un-initialized" == "${te_sgn.sm_evt}" )
 0\
  .else
 ${te_sgn.sm_evt}\
  .end if
, ${te_sgn.self_directed}, '${te_sgn.var_name}', '${te_sgn.event_label}', '${te_sgn.event_meaning}', '${te_sgn.parameters}'\
  .if ( "un-initialized" == "${te_sgn.Statement_ID}" )
, 0\
  .else
, ${te_sgn.Statement_ID}\
  .end if
 );
.end for
.print "OAL unrelate (TE_UNRELATE)"
.select many te_unrelates from instances of TE_UNRELATE
.for each te_unrelate in te_unrelates
INSERT INTO TE_UNRELATE VALUES (\
  .if ( "un-initialized" == "${te_unrelate.one_o_obj}" )
 0\
  .else
 ${te_unrelate.one_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_unrelate.oth_o_obj}" )
, 0\
  .else
, ${te_unrelate.oth_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_unrelate.r_rel}" )
, 0\
  .else
, ${te_unrelate.r_rel}\
  .end if
, ${te_unrelate.is_inflexive}, ${te_unrelate.relationship_number}, '${te_unrelate.relationship_phrase}', '${te_unrelate.one_var_name}', '${te_unrelate.oth_var_name}'\
  .if ( "un-initialized" == "${te_unrelate.Statement_ID}" )
, 0\
  .else
, ${te_unrelate.Statement_ID}\
  .end if
 );
.end for
.print "OAL urelate_using (TE_UNRELATE_USING)"
.select many te_unrelate_usings from instances of TE_UNRELATE_USING
.for each te_unrelate_using in te_unrelate_usings
INSERT INTO TE_UNRELATE_USING VALUES (\
  .if ( "un-initialized" == "${te_unrelate_using.one_o_obj}" )
 0\
  .else
 ${te_unrelate_using.one_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_unrelate_using.oth_o_obj}" )
, 0\
  .else
, ${te_unrelate_using.oth_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_unrelate_using.ass_o_obj}" )
, 0\
  .else
, ${te_unrelate_using.ass_o_obj}\
  .end if
\
  .if ( "un-initialized" == "${te_unrelate_using.r_rel}" )
, 0\
  .else
, ${te_unrelate_using.r_rel}\
  .end if
, ${te_unrelate_using.is_reflexive}, ${te_unrelate_using.relationship_number}, '${te_unrelate_using.relationship_phrase}', '${te_unrelate_using.one_var_name}', '${te_unrelate_using.oth_var_name}', '${te_unrelate_using.ass_var_name}', '${te_unrelate_using.one_rel_phrase}', '${te_unrelate_using.oth_rel_phrase}'\
  .if ( "un-initialized" == "${te_unrelate_using.Statement_ID}" )
, 0\
  .else
, ${te_unrelate_using.Statement_ID}\
  .end if
 );
.end for
.print "OAL while (TE_WHILE)"
.select many te_whiles from instances of TE_WHILE
.for each te_while in te_whiles
INSERT INTO TE_WHILE VALUES ( '${te_while.condition}'\
  .if ( "un-initialized" == "${te_while.Statement_ID}" )
, 0\
  .else
, ${te_while.Statement_ID}\
  .end if
 );
.end for
.print "Association In Use Case (UC_AIUC)"
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
.print "Binary Association (UC_BA)"
.select many uc_bas from instances of UC_BA
.for each uc_ba in uc_bas
INSERT INTO UC_BA VALUES (\
  .if ( "un-initialized" == "${uc_ba.Assoc_ID}" )
 0\
  .else
 ${uc_ba.Assoc_ID}\
  .end if
, '${uc_ba.Descrip}' );
.end for
.print "Extend (UC_E)"
.select many uc_es from instances of UC_E
.for each uc_e in uc_es
INSERT INTO UC_E VALUES (\
  .if ( "un-initialized" == "${uc_e.Assoc_ID}" )
 0\
  .else
 ${uc_e.Assoc_ID}\
  .end if
, '${uc_e.Descrip}' );
.end for
.print "Generalization (UC_G)"
.select many uc_gs from instances of UC_G
.for each uc_g in uc_gs
INSERT INTO UC_G VALUES (\
  .if ( "un-initialized" == "${uc_g.Assoc_ID}" )
 0\
  .else
 ${uc_g.Assoc_ID}\
  .end if
, '${uc_g.Descrip}' );
.end for
.print "Include (UC_I)"
.select many uc_is from instances of UC_I
.for each uc_i in uc_is
INSERT INTO UC_I VALUES (\
  .if ( "un-initialized" == "${uc_i.Assoc_ID}" )
 0\
  .else
 ${uc_i.Assoc_ID}\
  .end if
, '${uc_i.Descrip}' );
.end for
.print "Participant in Use Case (UC_PIUC)"
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
.print "Use Case Association (UC_UCA)"
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
.print "Use Case Diagram (UC_UCC)"
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
, '${uc_ucc.Name}', '${uc_ucc.Descrip}'\
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
.print "Use Case in Use Case (UC_UIU)"
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
.print "Actual Parameter (V_PAR)"
.select many v_pars from instances of V_PAR
.for each v_par in v_pars
INSERT INTO V_PAR VALUES (\
  .if ( "un-initialized" == "${v_par.Value_ID}" )
 0\
  .else
 ${v_par.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_par.Statement_ID}" )
, 0\
  .else
, ${v_par.Statement_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_par.Invocation_Value_ID}" )
, 0\
  .else
, ${v_par.Invocation_Value_ID}\
  .end if
, '${v_par.Name}'\
  .if ( "un-initialized" == "${v_par.Next_Value_ID}" )
, 0\
  .else
, ${v_par.Next_Value_ID}\
  .end if
, ${v_par.labelLineNumber}, ${v_par.labelColumn} );
.end for
.print "Array Element Reference (V_AER)"
.select many v_aers from instances of V_AER
.for each v_aer in v_aers
INSERT INTO V_AER VALUES (\
  .if ( "un-initialized" == "${v_aer.Value_ID}" )
 0\
  .else
 ${v_aer.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_aer.Root_Value_ID}" )
, 0\
  .else
, ${v_aer.Root_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_aer.Index_Value_ID}" )
, 0\
  .else
, ${v_aer.Index_Value_ID}\
  .end if
 );
.end for
.print "Array Length Value (V_ALV)"
.select many v_alvs from instances of V_ALV
.for each v_alv in v_alvs
INSERT INTO V_ALV VALUES (\
  .if ( "un-initialized" == "${v_alv.Value_ID}" )
 0\
  .else
 ${v_alv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_alv.Array_Value_ID}" )
, 0\
  .else
, ${v_alv.Array_Value_ID}\
  .end if
 );
.end for
.print "Attribute Value Reference (V_AVL)"
.select many v_avls from instances of V_AVL
.for each v_avl in v_avls
INSERT INTO V_AVL VALUES (\
  .if ( "un-initialized" == "${v_avl.Value_ID}" )
 0\
  .else
 ${v_avl.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_avl.Root_Value_ID}" )
, 0\
  .else
, ${v_avl.Root_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_avl.Obj_ID}" )
, 0\
  .else
, ${v_avl.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_avl.Attr_ID}" )
, 0\
  .else
, ${v_avl.Attr_ID}\
  .end if
 );
.end for
.print "Binary Operation (V_BIN)"
.select many v_bins from instances of V_BIN
.for each v_bin in v_bins
INSERT INTO V_BIN VALUES (\
  .if ( "un-initialized" == "${v_bin.Value_ID}" )
 0\
  .else
 ${v_bin.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_bin.Right_Value_ID}" )
, 0\
  .else
, ${v_bin.Right_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_bin.Left_Value_ID}" )
, 0\
  .else
, ${v_bin.Left_Value_ID}\
  .end if
, '${v_bin.Operator}' );
.end for
.print "Bridge Value (V_BRV)"
.select many v_brvs from instances of V_BRV
.for each v_brv in v_brvs
INSERT INTO V_BRV VALUES (\
  .if ( "un-initialized" == "${v_brv.Value_ID}" )
 0\
  .else
 ${v_brv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_brv.Brg_ID}" )
, 0\
  .else
, ${v_brv.Brg_ID}\
  .end if
, ${v_brv.ParmListOK}, ${v_brv.externalEntityKeyLettersLineNumber}, ${v_brv.externalEntityKeyLettersColumn} );
.end for
.print "Event Datum Value (V_EDV)"
.select many v_edvs from instances of V_EDV
.for each v_edv in v_edvs
INSERT INTO V_EDV VALUES (\
  .if ( "un-initialized" == "${v_edv.Value_ID}" )
 0\
  .else
 ${v_edv.Value_ID}\
  .end if
 );
.end for
.print "Event Parameter Reference (V_EPR)"
.select many v_eprs from instances of V_EPR
.for each v_epr in v_eprs
INSERT INTO V_EPR VALUES (\
  .if ( "un-initialized" == "${v_epr.Value_ID}" )
 0\
  .else
 ${v_epr.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_epr.SM_ID}" )
, 0\
  .else
, ${v_epr.SM_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_epr.SMedi_ID}" )
, 0\
  .else
, ${v_epr.SMedi_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_epr.PP_Id}" )
, 0\
  .else
, ${v_epr.PP_Id}\
  .end if
 );
.end for
.print "Function Value (V_FNV)"
.select many v_fnvs from instances of V_FNV
.for each v_fnv in v_fnvs
INSERT INTO V_FNV VALUES (\
  .if ( "un-initialized" == "${v_fnv.Value_ID}" )
 0\
  .else
 ${v_fnv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_fnv.Sync_ID}" )
, 0\
  .else
, ${v_fnv.Sync_ID}\
  .end if
, ${v_fnv.ParmListOK} );
.end for
.print "Instance Handle (V_INT)"
.select many v_ints from instances of V_INT
.for each v_int in v_ints
INSERT INTO V_INT VALUES (\
  .if ( "un-initialized" == "${v_int.Var_ID}" )
 0\
  .else
 ${v_int.Var_ID}\
  .end if
, ${v_int.IsImplicitInFor}\
  .if ( "un-initialized" == "${v_int.Obj_ID}" )
, 0\
  .else
, ${v_int.Obj_ID}\
  .end if
 );
.end for
.print "Instance Reference (V_IRF)"
.select many v_irfs from instances of V_IRF
.for each v_irf in v_irfs
INSERT INTO V_IRF VALUES (\
  .if ( "un-initialized" == "${v_irf.Value_ID}" )
 0\
  .else
 ${v_irf.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_irf.Var_ID}" )
, 0\
  .else
, ${v_irf.Var_ID}\
  .end if
 );
.end for
.print "Instance Set Reference (V_ISR)"
.select many v_isrs from instances of V_ISR
.for each v_isr in v_isrs
INSERT INTO V_ISR VALUES (\
  .if ( "un-initialized" == "${v_isr.Value_ID}" )
 0\
  .else
 ${v_isr.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_isr.Var_ID}" )
, 0\
  .else
, ${v_isr.Var_ID}\
  .end if
 );
.end for
.print "Instance Set (V_INS)"
.select many v_inss from instances of V_INS
.for each v_ins in v_inss
INSERT INTO V_INS VALUES (\
  .if ( "un-initialized" == "${v_ins.Var_ID}" )
 0\
  .else
 ${v_ins.Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_ins.Obj_ID}" )
, 0\
  .else
, ${v_ins.Obj_ID}\
  .end if
 );
.end for
.print "Literal Boolean (V_LBO)"
.select many v_lbos from instances of V_LBO
.for each v_lbo in v_lbos
INSERT INTO V_LBO VALUES (\
  .if ( "un-initialized" == "${v_lbo.Value_ID}" )
 0\
  .else
 ${v_lbo.Value_ID}\
  .end if
, '${v_lbo.Value}' );
.end for
.print "Literal Enumerator (V_LEN)"
.select many v_lens from instances of V_LEN
.for each v_len in v_lens
INSERT INTO V_LEN VALUES (\
  .if ( "un-initialized" == "${v_len.Value_ID}" )
 0\
  .else
 ${v_len.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_len.Enum_ID}" )
, 0\
  .else
, ${v_len.Enum_ID}\
  .end if
, ${v_len.dataTypeNameLineNumber}, ${v_len.dataTypeNameColumn} );
.end for
.print "Literal Integer (V_LIN)"
.select many v_lins from instances of V_LIN
.for each v_lin in v_lins
INSERT INTO V_LIN VALUES (\
  .if ( "un-initialized" == "${v_lin.Value_ID}" )
 0\
  .else
 ${v_lin.Value_ID}\
  .end if
, '${v_lin.Value}' );
.end for
.print "Literal Real (V_LRL)"
.select many v_lrls from instances of V_LRL
.for each v_lrl in v_lrls
INSERT INTO V_LRL VALUES (\
  .if ( "un-initialized" == "${v_lrl.Value_ID}" )
 0\
  .else
 ${v_lrl.Value_ID}\
  .end if
, '${v_lrl.Value}' );
.end for
.print "Literal String (V_LST)"
.select many v_lsts from instances of V_LST
.for each v_lst in v_lsts
INSERT INTO V_LST VALUES (\
  .if ( "un-initialized" == "${v_lst.Value_ID}" )
 0\
  .else
 ${v_lst.Value_ID}\
  .end if
, '${v_lst.Value}' );
.end for
.print "Member Value Reference (V_MVL)"
.select many v_mvls from instances of V_MVL
.for each v_mvl in v_mvls
INSERT INTO V_MVL VALUES (\
  .if ( "un-initialized" == "${v_mvl.Value_ID}" )
 0\
  .else
 ${v_mvl.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_mvl.Root_Value_ID}" )
, 0\
  .else
, ${v_mvl.Root_Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_mvl.Member_ID}" )
, 0\
  .else
, ${v_mvl.Member_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_mvl.DT_DT_ID}" )
, 0\
  .else
, ${v_mvl.DT_DT_ID}\
  .end if
 );
.end for
.print "Message Value (V_MSV)"
.select many v_msvs from instances of V_MSV
.for each v_msv in v_msvs
INSERT INTO V_MSV VALUES (\
  .if ( "un-initialized" == "${v_msv.Value_ID}" )
 0\
  .else
 ${v_msv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_msv.PEP_Id}" )
, 0\
  .else
, ${v_msv.PEP_Id}\
  .end if
\
  .if ( "un-initialized" == "${v_msv.REP_Id}" )
, 0\
  .else
, ${v_msv.REP_Id}\
  .end if
, ${v_msv.ParmListOK}, ${v_msv.ownerNameLineNumber}, ${v_msv.ownerNameColumn}\
  .if ( "un-initialized" == "${v_msv.Target_Value_ID}" )
, 0\
  .else
, ${v_msv.Target_Value_ID}\
  .end if
 );
.end for
.print "Operation Value (V_TRV)"
.select many v_trvs from instances of V_TRV
.for each v_trv in v_trvs
INSERT INTO V_TRV VALUES (\
  .if ( "un-initialized" == "${v_trv.Value_ID}" )
 0\
  .else
 ${v_trv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_trv.Tfr_ID}" )
, 0\
  .else
, ${v_trv.Tfr_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_trv.Var_ID}" )
, 0\
  .else
, ${v_trv.Var_ID}\
  .end if
, ${v_trv.ParmListOK}, ${v_trv.modelClassKeyLettersLineNumber}, ${v_trv.modelClassKeyLettersColumn} );
.end for
.print "Parameter Value (V_PVL)"
.select many v_pvls from instances of V_PVL
.for each v_pvl in v_pvls
INSERT INTO V_PVL VALUES (\
  .if ( "un-initialized" == "${v_pvl.Value_ID}" )
 0\
  .else
 ${v_pvl.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_pvl.BParm_ID}" )
, 0\
  .else
, ${v_pvl.BParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_pvl.SParm_ID}" )
, 0\
  .else
, ${v_pvl.SParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_pvl.TParm_ID}" )
, 0\
  .else
, ${v_pvl.TParm_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_pvl.PP_Id}" )
, 0\
  .else
, ${v_pvl.PP_Id}\
  .end if
 );
.end for
.print "Selected Reference (V_SLR)"
.select many v_slrs from instances of V_SLR
.for each v_slr in v_slrs
INSERT INTO V_SLR VALUES (\
  .if ( "un-initialized" == "${v_slr.Value_ID}" )
 0\
  .else
 ${v_slr.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_slr.Obj_ID}" )
, 0\
  .else
, ${v_slr.Obj_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_slr.Attr_ID}" )
, 0\
  .else
, ${v_slr.Attr_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_slr.Op_Value_ID}" )
, 0\
  .else
, ${v_slr.Op_Value_ID}\
  .end if
 );
.end for
.print "Symbolic Constant Value (V_SCV)"
.select many v_scvs from instances of V_SCV
.for each v_scv in v_scvs
INSERT INTO V_SCV VALUES (\
  .if ( "un-initialized" == "${v_scv.Value_ID}" )
 0\
  .else
 ${v_scv.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_scv.Const_ID}" )
, 0\
  .else
, ${v_scv.Const_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_scv.DT_ID}" )
, 0\
  .else
, ${v_scv.DT_ID}\
  .end if
 );
.end for
.print "Transient Value Reference (V_TVL)"
.select many v_tvls from instances of V_TVL
.for each v_tvl in v_tvls
INSERT INTO V_TVL VALUES (\
  .if ( "un-initialized" == "${v_tvl.Value_ID}" )
 0\
  .else
 ${v_tvl.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_tvl.Var_ID}" )
, 0\
  .else
, ${v_tvl.Var_ID}\
  .end if
 );
.end for
.print "Transient Var (V_TRN)"
.select many v_trns from instances of V_TRN
.for each v_trn in v_trns
INSERT INTO V_TRN VALUES (\
  .if ( "un-initialized" == "${v_trn.Var_ID}" )
 0\
  .else
 ${v_trn.Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_trn.DT_ID}" )
, 0\
  .else
, ${v_trn.DT_ID}\
  .end if
, '${v_trn.Dimensions}' );
.end for
.print "Unary Operation (V_UNY)"
.select many v_unys from instances of V_UNY
.for each v_uny in v_unys
INSERT INTO V_UNY VALUES (\
  .if ( "un-initialized" == "${v_uny.Value_ID}" )
 0\
  .else
 ${v_uny.Value_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_uny.Operand_Value_ID}" )
, 0\
  .else
, ${v_uny.Operand_Value_ID}\
  .end if
, '${v_uny.Operator}' );
.end for
.print "Value (V_VAL)"
.select many v_vals from instances of V_VAL
.for each v_val in v_vals
INSERT INTO V_VAL VALUES (\
  .if ( "un-initialized" == "${v_val.Value_ID}" )
 0\
  .else
 ${v_val.Value_ID}\
  .end if
, ${v_val.isLValue}, ${v_val.isImplicit}, ${v_val.LineNumber}, ${v_val.StartPosition}, ${v_val.EndPosition}, ${v_val.firstParameterLabelLineNumber}, ${v_val.firstParameterLabelColumn}, ${v_val.currentLaterParameterLabelLineNumber}, ${v_val.currentLaterParameterLabelColumn}\
  .if ( "un-initialized" == "${v_val.DT_ID}" )
, 0\
  .else
, ${v_val.DT_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_val.Block_ID}" )
, 0\
  .else
, ${v_val.Block_ID}\
  .end if
 );
.end for
.print "Variable Location (V_LOC)"
.select many v_locs from instances of V_LOC
.for each v_loc in v_locs
INSERT INTO V_LOC VALUES (\
  .if ( "un-initialized" == "${v_loc.Id}" )
 0\
  .else
 ${v_loc.Id}\
  .end if
, ${v_loc.LineNumber}, ${v_loc.StartPosition}, ${v_loc.EndPosition}\
  .if ( "un-initialized" == "${v_loc.Var_ID}" )
, 0\
  .else
, ${v_loc.Var_ID}\
  .end if
 );
.end for
.print "Variable (V_VAR)"
.select many v_vars from instances of V_VAR
.for each v_var in v_vars
INSERT INTO V_VAR VALUES (\
  .if ( "un-initialized" == "${v_var.Var_ID}" )
 0\
  .else
 ${v_var.Var_ID}\
  .end if
\
  .if ( "un-initialized" == "${v_var.Block_ID}" )
, 0\
  .else
, ${v_var.Block_ID}\
  .end if
, '${v_var.Name}', ${v_var.Declared}\
  .if ( "un-initialized" == "${v_var.DT_ID}" )
, 0\
  .else
, ${v_var.DT_ID}\
  .end if
 );
.end for
.print "Automatic Wiring (S_AW)"
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
.emit to file "../../src/dumped_class_instances.sql"
.exit 508
