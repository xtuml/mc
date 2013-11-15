.//============================================================================
.// $RCSfile: q.oal.analyze.arc,v $
.//
.// Description:
.// The query/transformations in this file analyze the action language
.// of the customer model and gather statistics for use in optimized
.// code generation.
.//
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.//
.// Identify (special) where clauses that can be optimized.
.//
.function selection_whereclause_identify_special
  .// Select the class from which extent we are selecting.
  .//  Mark its identifying attributes.
  .// Select the blind select statements having where clauses.
  .// Select the values that represent the where clauses that
  .// are binary expressions where the operator is == or AND.
  .// BUG:  R676 and R677 should be unconditional on the O_OBJ side.
  .// Select the V_SLRs and their attributes.
  .// Compare the two sets.
  .//
  .select many act_fiws from instances of ACT_FIW
  .for each act_fiw in act_fiws
    .select any v_bin related by act_fiw->V_VAL[R610]->V_BIN[R801] where ( ( selected.Operator == "and" ) or ( selected.Operator == "==" ) )
    .if ( not_empty v_bin )
      .select one o_obj related by act_fiw->O_OBJ[R676]
      .// Select the TE_WHEREs, because we can check to see if we have
      .// already marked a special where.
      .select many te_wheres related by o_obj->O_ID[R104]->TE_WHERE[R2032] where ( not selected.WhereKey )
      .if ( not_empty te_wheres )
        .// Clear out the included flag on all attributes of this class.
        .select many te_attrs related by o_obj->O_ATTR[R102]->TE_ATTR[R2033]
        .for each te_attr in te_attrs
          .assign te_attr.Included = false
        .end for
        .// Call a routine that will recursively drill down and mark any
        .// attributes compared in the where clause.
        .invoke where_clause_mark_selected_attributes( v_bin )
        .select many te_attrs related by o_obj->O_ATTR[R102]->TE_ATTR[R2033] where ( selected.Included )
        .if ( not_empty te_attrs )
          .for each te_where in te_wheres
            .select many identifying_te_attrs related by te_where->O_ID[R2032]->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
            .if ( te_attrs == identifying_te_attrs )
              .print "marking SPECIAL where on ${o_obj.Key_Lett}:${o_obj.Name}"
              .assign te_where.WhereKey = true
            .end if
          .end for
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//
.// Recursively drill down into the where clause expression marking
.// selected attributes along the way.
.//
.function where_clause_mark_selected_attributes
  .param inst_ref v_bin
  .if ( v_bin.Operator == "and" )
    .select one left_v_val related by v_bin->V_VAL[R802]
    .select one right_v_val related by v_bin->V_VAL[R803]
    .select one v_bin related by left_v_val->V_BIN[R801]
    .if ( not_empty v_bin )
      .invoke where_clause_mark_selected_attributes( v_bin )
    .end if
    .select one v_bin related by right_v_val->V_BIN[R801]
    .if ( not_empty v_bin )
      .invoke where_clause_mark_selected_attributes( v_bin )
    .end if
  .elif ( v_bin.Operator == "==" )
    .select one te_attr related by v_bin->V_VAL[R802]->V_SLR[R801]->O_ATTR[R812]->TE_ATTR[R2033]
    .if ( not_empty te_attr )
      .assign te_attr.Included = true
    .end if
    .select one te_attr related by v_bin->V_VAL[R803]->V_SLR[R801]->O_ATTR[R812]->TE_ATTR[R2033]
    .if ( not_empty te_attr )
      .assign te_attr.Included = true
    .end if
  .else
    .// allow return
  .end if
.end function
.//
.//
.// Find valid state machines and mark them thusly.
.// Such state machines have at least one each of state, event and transition.
.//
.function SM_SM_mark_valid
  .select many sm_sms from instances of SM_SM
  .for each sm_sm in sm_sms
    .select any sm_state related by sm_sm->SM_STATE[R501]
    .if ( not_empty sm_state )
      .select any sm_txn related by sm_sm->SM_TXN[R505]
      .if ( not_empty sm_txn )
        .select any sm_evt related by sm_sm->SM_EVT[R502]
        .if ( not_empty sm_evt )
          .select one te_sm related by sm_sm->TE_SM[R2043]
          .assign te_sm.complete = true
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//
.// Update the size of SEM cells when transition actions are present.
.//
.function TE_TXN_used
  .select any te_sm from instances of TE_SM where ( selected.txn_action_count > 0 )
  .if ( not_empty te_sm )
    .select any te_typemap from instances of TE_TYPEMAP
    .assign te_typemap.SEM_cell_type = "u2_t"
  .end if
.end function
.//
.//
.// Mark EEs that are used.
.//
.function ee_used
  .select many s_brgs from instances of S_BRG
  .select many te_ees related by s_brgs->S_EE[R19]->TE_EE[R2020]
  .for each te_ee in te_ees
    .assign te_ee.Included = true
  .end for
.end function
.//
.//
.// Mark data types that are used.
.//
.function datatype_used
  .select many v_vals from instances of V_VAL
  .select many te_dts related by v_vals->S_DT[R820]->TE_DT[R2021]
  .for each te_dt in te_dts
    .assign te_dt.Included = true
  .end for
  .select many s_brgs from instances of S_BRG
  .select many te_dts related by s_brgs->S_DT[R20]->TE_DT[R2021]
  .for each te_dt in te_dts
    .assign te_dt.Included = true
  .end for
  .select many s_syncs from instances of S_SYNC
  .select many te_dts related by s_syncs->S_DT[R25]->TE_DT[R2021]
  .for each te_dt in te_dts
    .assign te_dt.Included = true
  .end for
.end function
.//
.//
.// Find and mark/count events that are used in action language.
.// Even though we store the information in a count, this query
.// only counts each event once.
.//
.function event_smt_used
  .select many e_gsmes from instances of E_GSME
  .select many te_evts related by e_gsmes->SM_EVT[R707]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
  .select many e_csmes from instances of E_CSME
  .select many te_evts related by e_csmes->SM_EVT[R706]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
  .// Mark all of the signals (inter-component class-based events) as used.
  .select many sm_sgevts from instances of SM_SGEVT
  .select many te_evts related by sm_sgevts->SM_SEVT[R526]->SM_EVT[R525]->TE_EVT[R2036]
  .for each te_evt in te_evts
    .assign te_evt.UsedCount = te_evt.UsedCount + 1
    .assign te_evt.Used = true
  .end for
.end function
.//
.//
.// Mark classes that are created synchronously (nonself) or
.// asynchronously (self).
.//
.function class_smt_created
  .select many act_crs from instances of ACT_CR
  .select many te_classes related by act_crs->O_OBJ[R671]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classes )
  .for each te_class in te_classes
    .assign te_class.NonSelfCreated = true
  .end for
  .select many act_cnvs from instances of ACT_CNV
  .select many te_classes related by act_cnvs->O_OBJ[R672]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classes )
  .for each te_class in te_classes
    .assign te_class.NonSelfCreated = true
  .end for
  .// Now find any creator events to classes.
  .select many e_gecs from instances of E_GEC
  .select many te_classes related by e_gecs->E_GSME[R705]->SM_EVT[R707]->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classes )
  .for each te_class in te_classes
    .assign te_class.SelfCreated = true
  .end for
.end function
.//
.//
.// Check for classes that are deleted synchronously and should not be.
.//
.function class_smt_deleted
  .select many act_dels from instances of ACT_DEL
  .select many te_classes related by act_dels->V_VAR[R634]->V_INT[R814]->O_OBJ[R818]->TE_CLASS[R2019]
  .invoke class_smt_crdel_check( te_classes )
.end function
.//
.function class_smt_crdel_check
  .param inst_ref_set te_classes
  .for each te_class in te_classes
    .if ( te_class.IsReadOnly )
      .select one o_obj related by te_class->O_OBJ[R2019]
      .print "ERROR:  Attempt to create/delete read-only object ${o_obj.Name} (${o_obj.Key_Lett})"
    .end if
    .if ( te_class.IsFixedPopulation )
      .select one o_obj related by te_class->O_OBJ[R2019]
      .print "ERROR:  Attempt to create/delete object ${o_obj.Name} (${o_obj.Key_Lett}) within static instance population."
    .end if
  .end for
.end function
.//
.//
.// Mark all activities that contain break, continue and/or return
.// statements.
.//
.function act_break_continue_return
  .select many sm_states from instances of SM_STATE
  .select many sm_acts related by sm_states->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
  .for each sm_act in sm_acts
    .select one act_act related by sm_act->ACT_SAB[R691]->ACT_ACT[R698]
    .select one te_aba related by sm_act->TE_ACT[R2022]->TE_ABA[R2010]
    .invoke smt_break_continue_return( act_act, te_aba )
  .end for
  .select many o_dbattrs from instances of O_DBATTR
  .for each o_dbattr in o_dbattrs
    .select one act_act related by o_dbattr->ACT_DAB[R693]->ACT_ACT[R698]
    .select one te_aba related by o_dbattr->TE_DBATTR[R2026]->TE_ABA[R2010]
    .invoke smt_break_continue_return( act_act, te_aba )
  .end for
  .select many s_syncs from instances of S_SYNC
  .for each s_sync in s_syncs
    .select one act_act related by s_sync->ACT_FNB[R695]->ACT_ACT[R698]
    .select one te_aba related by s_sync->TE_SYNC[R2023]->TE_ABA[R2010]
    .invoke smt_break_continue_return( act_act, te_aba )
  .end for
  .select many o_tfrs from instances of O_TFR
  .for each o_tfr in o_tfrs
    .select one act_act related by o_tfr->ACT_OPB[R696]->ACT_ACT[R698]
    .select one te_aba related by o_tfr->TE_TFR[R2024]->TE_ABA[R2010]
    .invoke smt_break_continue_return( act_act, te_aba )
  .end for
  .select many s_brgs from instances of S_BRG
  .for each s_brg in s_brgs
    .select one act_act related by s_brg->ACT_BRB[R697]->ACT_ACT[R698]
    .select one te_aba related by s_brg->TE_BRG[R2025]->TE_ABA[R2010]
    .invoke smt_break_continue_return( act_act, te_aba )
  .end for
.end function
.//
.//
.// Mark all activities that contain break, continue and/or return
.// statements.
.//
.function smt_break_continue_return
  .param inst_ref act_act
  .param inst_ref te_aba
  .invoke used = smt_break_used( act_act )
  .assign te_aba.BreakStmtUsed = used.used
  .invoke used = smt_continue_used( act_act )
  .assign te_aba.ContinueStmtUsed = used.used
  .invoke used = smt_return_used( act_act )
  .assign te_aba.ReturnStmtUsed = used.used
.end function
.//
.//
.// Mark activies with break statements.
.//
.function smt_break_used
  .param inst_ref act_act
  .assign attr_used = false
  .select any smt related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->ACT_BRK[R603]
  .if ( not_empty smt )
    .assign attr_used = true
  .end if
.end function
.//
.//
.// Mark activies with continue statements.
.//
.function smt_continue_used
  .param inst_ref act_act
  .assign attr_used = false
  .select any smt related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->ACT_CON[R603]
  .if ( not_empty smt )
    .assign attr_used = true
  .end if
.end function
.//
.//
.// Mark activies with return statements.
.//
.function smt_return_used
  .param inst_ref act_act
  .assign attr_used = false
  .select any smt related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->ACT_RET[R603]
  .if ( not_empty smt )
    .assign attr_used = true
  .end if
.end function
.//
.//
.// Count up the event specification statements which is the supertype
.// of generated and deferred events.  This will give us a starting point
.// on allocating event queue resources.
.//
.function event_queue_analyze_length
  .assign attr_max_events = 0
  .assign attr_self_events = 0
  .assign attr_nonself_events = 0
  .select many act_acts from instances of ACT_ACT
  .for each act_act in act_acts
    .select many event_specification_statements related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->E_ESS[R603]
    .assign all_events_count = cardinality event_specification_statements
    .select many act_sgns related by act_act->ACT_BLK[R601]->ACT_SMT[R602]->ACT_SGN[R603]
    .assign all_events_count = all_events_count + ( cardinality act_sgns )
    .if ( all_events_count > attr_max_events )
      .assign attr_max_events = all_events_count
    .end if
    .// Count up the self events in this body.
    .assign count = 0
    .for each e_ess in event_specification_statements
      .select any v_var related by e_ess->E_GES[R701]->E_GSME[R703]->E_GEN[R705]->V_VAR[R712] where ( "$l{selected.Name}" == "self" )
      .if ( not_empty v_var )
        .assign count = count + 1
      .else
        .select any v_var related by event_specification_statements->E_CES[R701]->E_CSME[R702]->E_CEI[R704]->V_VAR[R711] where ( selected.Name == "self" )
        .if ( not_empty v_var )
          .assign count = count + 1
        .end if
      .end if
    .end for
    .if ( count > attr_self_events )
      .assign attr_self_events = count
    .end if
    .assign count = all_events_count - count
    .if ( count > attr_nonself_events )
      .assign attr_nonself_events = count
    .end if
    .select one te_aba related by act_act->ACT_FNB[R698]->S_SYNC[R695]->TE_SYNC[R2023]->TE_ABA[R2010]
    .if ( not_empty te_aba )
      .assign te_aba.NonSelfEventCount = count
    .end if
  .end for
.end function
.//
.//
.// Count up all the places that events are either generated directly (E_GEN)
.// or where they are created for deferred generation (E_CEI).
.// Also count up the self versus nonself events.
.//
.function event_queue_analyze_needed
  .assign attr_self_queue_needed = false
  .assign attr_nonself_queue_needed = false
  .select many e_gens from instances of E_GEN
  .for each e_gen in e_gens
    .select one v_var related by e_gen->V_VAR[R712] where ( selected.Name == "self" )
    .if ( not_empty v_var )
      .assign attr_self_queue_needed = true
      .if ( attr_self_queue_needed and attr_nonself_queue_needed )
        .break for
      .end if
    .end if
    .select one v_var related by e_gen->V_VAR[R712] where ( selected.Name != "self" )
    .if ( not_empty v_var )
      .assign attr_nonself_queue_needed = true
      .if ( attr_self_queue_needed and attr_nonself_queue_needed )
        .break for
      .end if
    .end if
  .end for
  .if ( not ( attr_self_queue_needed and attr_nonself_queue_needed ) )
    .select many e_ceis from instances of E_CEI
    .for each e_cei in e_ceis
      .select one v_var related by e_cei->V_VAR[R711] where ( selected.Name == "self" )
      .if ( not_empty v_var )
        .assign attr_self_queue_needed = true
        .if ( attr_self_queue_needed and attr_nonself_queue_needed )
          .break for
        .end if
      .end if
      .select one v_var related by e_cei->V_VAR[R711] where ( selected.Name != "self" )
      .if ( not_empty v_var )
        .assign attr_nonself_queue_needed = true
        .if ( attr_self_queue_needed and attr_nonself_queue_needed )
          .break for
        .end if
      .end if
    .end for
  .end if
.end function
.//
.//
.// Analyze and mark the attributes of the customer model to flag which
.// attributes are read and/or written.  We will use this information
.// later to optimize out member data access code that is not needed.
.// Also, mark attributes participating as identifiers as used.
.// Mark written, read and Used attributes to TE_ATTR.
.//
.function te_attr_analyze_accesses
  .assign attr_attributes_read_count = 0
  .assign attr_attributes_written_count = 0
  .//
  .// Select all the attribute values references.
  .// Cycle through them marking their associated attributes as being read.
  .// Then, see if they are written by determining whether they participate
  .// as an lval in an assignment.
  .// Note, there can be several V_AVLs for each O_ATTR.
  .//
  .select many v_avls from instances of V_AVL
  .for each v_avl in v_avls
    .select one o_attr related by v_avl->O_ATTR[R806]
    .select one te_attr related by o_attr->TE_ATTR[R2033]
    .if ( not te_attr.read )
      .assign attr_attributes_read_count = attr_attributes_read_count + 1
    .end if
    .assign te_attr.read = true
    .assign te_attr.Used = true
    .// attributes written
    .select one act_ai related by v_avl->V_VAL[R801]->ACT_AI[R689]
    .if ( not_empty act_ai )
      .if ( not te_attr.written )
        .assign attr_attributes_written_count = attr_attributes_written_count + 1
        .select one o_obj related by o_attr->O_OBJ[R102]
        .select one te_class related by o_obj->TE_CLASS[R2019]
        .if ( te_class.IsReadOnly )
          .print "ERROR:  Attempt to write to read-only object ${o_obj.Name} (${o_obj.Key_Lett})."
        .end if
      .end if
      .assign te_attr.written = true
    .end if
  .end for
  .// Identifying attributes are copied across in RELATE statements
  .// even if they are never read or written.
  .select many o_oidas from instances of O_OIDA
  .for each o_oida in o_oidas
    .select one te_attr related by o_oida->O_ATTR[R105]->TE_ATTR[R2033]
    .assign te_attr.Used = true
  .end for
.end function
.//
.//
.// Mark attributes that are not used, needed and should be optimized out.
.//
.function te_attr_analyze_codegen
  .param inst_ref te_sys
  .assign attr_optimized_out_count = 0
  .select many te_cs from instances of TE_C where ( not selected.OptDisabled )
  .for each te_c in te_cs
  .select many te_attrs related by te_c->TE_CLASS[R2064]->TE_ATTR[R2061]
  .for each te_attr in te_attrs
    .select one o_attr related by te_attr->O_ATTR[R2033]
    .// Do not translate current_state attributes.
    .select one s_cdt related by o_attr->S_DT[R114]->S_CDT[R17] where ( selected.Core_Typ == 6 )
    .if ( not_empty s_cdt )
      .assign te_attr.translate = false
      .assign attr_optimized_out_count = attr_optimized_out_count + 1
    .elif ( not te_c.OptDisabled )
      .if ( not te_attr.Used )
        .// not accessed?
        .assign te_attr.translate = false
        .assign attr_optimized_out_count = attr_optimized_out_count + 1
      .else
        .// referential attribute?
        .select one o_rattr related by o_attr->O_RATTR[R106]
        .if ( not_empty o_rattr )
          .// Is referential not also an identifying attribute?
          .select any o_oida related by o_attr->O_OIDA[R105] where ( selected.Attr_ID == o_rattr.Attr_ID )
          .if ( ( empty o_oida ) and ( not te_attr.Used ) )
            .if ( not te_sys.InstanceLoading )
              .assign te_attr.translate = false
              .assign attr_optimized_out_count = attr_optimized_out_count + 1
            .end if
          .end if
        .end if
      .end if
    .end if
  .end for
  .end for
.end function
.//
.//
.//
.// Find the maximum number of "select many" statements expressed in
.// one action body.  We will use this number to estimate the container
.// pool.
.//
.function containoid_select_many_count
  .assign attr_max_select_manys_in_one_action = 0
  .select many act_acts from instances of ACT_ACT
  .for each act_act in act_acts
    .select many act_smts related by act_act->ACT_BLK[R601]->ACT_SMT[R602]
    .select many sels related by act_smts->ACT_SEL[R603] where ( ( selected.cardinality == "many" ) and ( selected.is_implicit ) )
    .select many fios related by act_smts->ACT_FIO[R603] where ( ( selected.cardinality == "many" )  and ( selected.is_implicit ) )
    .select many fiws related by act_smts->ACT_FIW[R603] where ( ( selected.cardinality == "many" ) and ( selected.is_implicit ) )
    .assign count = cardinality sels
    .assign c1 = cardinality fios
    .assign count = count + c1
    .assign c1 = cardinality fiws
    .assign count = count + c1
    .if ( count > attr_max_select_manys_in_one_action )
      .assign attr_max_select_manys_in_one_action = count
    .end if
  .end for
.end function
.//
.//
.// Here we mark which classes are navigated across associations in each
.// direction, from the formalizer or from the participant.  The results
.// are stored in instances linked to instances of R_OIR (TE_NAV).
.//
.function association_R_OIR_mark_navigated
  .select many act_lnks from instances of ACT_LNK
  .for each act_lnk in act_lnks
    .select any r_oir related by act_lnk->R_REL[R681]->R_OIR[R201] where ( selected.Obj_ID == act_lnk.Obj_ID )
    .select one te_nav related by r_oir->TE_NAV[R2035]
    .assign te_nav.NavigatedTo = true
  .end for
.end function
.//
.//
.// Select all of the association instances and mark the ones that
.// actually get linked with the relate/unrelate OAL statements.
.//
.// Mark all navigation (across a particular association).
.// Mark all assocations that get navigated.
.//
.function association_mark_link_unlink_needed
  .select many r_rels from instances of R_REL
  .for each r_rel in r_rels
    .assign link_needed = false
    .assign unlink_needed = false
    .assign navigated = false
    .// Check if navigated.
    .select any act_lnk related by r_rel->ACT_LNK[R681]
    .if ( not_empty act_lnk )
      .assign navigated = true
    .end if
    .// Check if related.
    .select any act_rel related by r_rel->ACT_REL[R653]
    .if ( not_empty act_rel )
      .assign link_needed = true
    .else
      .select any act_ru related by r_rel->ACT_RU[R654]
      .if ( not_empty act_ru )
        .assign link_needed = true
      .end if
    .end if
    .// Check if unrelated.
    .select any act_unr related by r_rel->ACT_UNR[R655]
    .if ( not_empty act_unr )
      .assign unlink_needed = true
    .else
      .select any act_uru related by r_rel->ACT_URU[R656]
      .if ( not_empty act_uru )
        .assign unlink_needed = true
      .end if
    .end if
    .// Apply results to TE_REL.
    .if ( ( link_needed or unlink_needed ) or navigated )
      .select one te_rel related by r_rel->TE_REL[R2034]
      .if ( navigated )
        .assign te_rel.Navigated = true
      .end if
      .if ( link_needed )
        .assign te_rel.LinkNeeded = true
      .end if
      .if ( unlink_needed )
        .assign te_rel.UnlinkNeeded = true
      .end if
    .end if
  .end for
.end function
.//
.//
.// Count up the number of places where a timer is started (or started
.// in recurring mode).
.//
.function timer_analyze_starts
  .assign attr_timer_start_count = 0
  .select many s_ees from instances of S_EE where ( selected.Key_Lett == "TIM" )
  .for each s_ee in s_ees
    .select any s_brg related by s_ee->S_BRG[R19] where ( selected.Name == "timer_start" )
    .if ( not_empty s_brg )
      .select many timer_invocations related by s_brg->V_BRV[R828]
      .assign c = cardinality timer_invocations
      .assign attr_timer_start_count = attr_timer_start_count + c
    .end if
    .select any s_brg related by s_ee->S_BRG[R19] where ( selected.Name == "timer_start_recurring" )
    .if ( not_empty s_brg )
      .select many timer_invocations related by s_brg->V_BRV[R828]
      .assign c = cardinality timer_invocations
      .assign attr_timer_start_count = attr_timer_start_count + c
    .end if
  .end for
.end function
.//
.//============================================================================
.// Class: 2000.  Special Where Clause
.// CREATE TABLE TE_SWC (
.// 	Obj_Kl		STRING,
.// 	Where_Spec	STRING,
.// 	Key	        STRING,
.// 	Ret_Val	        BOOLEAN,
.//	Built_In	BOOLEAN,
.//	Oid_ID	        INTEGER );
.//
.// Notes:
.// (1) The selected attributes of the where clause _Key_ are specified in the
.//     same order as they appear on the OIM. This convention allows other
.//     archetypes a _rule_ for dealing with the positional parameter
.//     information provided during fragment parsing of a special where clause.
.//============================================================================
.function CreateSpecialWhereClauseInstances
  .param inst_ref te_sys
  .//
  .// Special Where Clause patterns that may be optimized by the model compiler.
  .//
  .select many obj_set from instances of O_OBJ
  .for each obj in obj_set
    .select many oid_set related by obj->O_ID[R104]
    .for each oid in oid_set
      .select one te_where related by oid->TE_WHERE[R2032]
      .// Get all special wheres when loading instances even if they are
      .// not seen in the OAL.  We need them for batch_relate.
      .if ( te_sys.InstanceLoading )
        .select any r_rto related by oid->R_RTO[R109]
        .if ( not_empty r_rto )
          .assign te_where.WhereKey = true
        .end if
      .end if
      .if ( te_where.WhereKey )
        .assign key_number = oid.Oid_ID + 1
        .assign where_spec = ""
        .assign where_key = "${obj.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
        .//
        .select many te_attrs related by obj->O_ATTR[R102]->TE_ATTR[R2033]
        .for each te_attr in te_attrs
          .assign te_attr.Included = FALSE
        .end for
        .//
        .select many te_attrs related by oid->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
        .assign num_ident_attr = cardinality te_attrs
        .for each te_attr in te_attrs
          .assign te_attr.Included = TRUE
        .end for
        .//
        .// *** Provide a key without parenthesis.
        .invoke first_attr = GetFirstAttributeInObjectModel( obj )
        .assign current_attr = first_attr.result
        .assign ident_attr_count = 0
        .while ( not_empty current_attr )
          .select one te_attr related by current_attr->TE_ATTR[R2033]
          .if ( te_attr.Included )
            .assign ident_attr_count = ident_attr_count + 1
            .assign where_spec = where_spec + "selected.${current_attr.Name} == ?"
            .if ( ident_attr_count < num_ident_attr )
              .assign where_spec = where_spec + " AND "
            .end if
          .end if
          .//
          .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
          .assign current_attr = next_attr
        .end while
        .//
        .// Object ${obj.Name} (${obj.Key_Lett}) Identifier *${key_number}
        .create object instance t of TE_SWC
        .assign t.Obj_Kl = obj.Key_Lett
        .assign t.Where_Spec = where_spec
        .assign t.Key = "${where_key}"
        .assign t.Ret_Val = FALSE
        .assign t.Built_In = TRUE
        .assign t.Oid_ID = oid.Oid_ID
        .//
        .// *** Provide a key parenthesized at the outer construct.
        .assign where_spec = "("
        .assign where_key = "${obj.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
        .assign current_attr = first_attr.result
        .assign ident_attr_count = 0
        .while ( not_empty current_attr )
          .select one te_attr related by current_attr->TE_ATTR[R2033]
          .if ( te_attr.Included )
            .assign ident_attr_count = ident_attr_count + 1
            .assign where_spec = where_spec + "selected.${current_attr.Name} == ?"
            .if ( ident_attr_count < num_ident_attr )
              .assign where_spec = where_spec + " AND "
            .else
              .assign where_spec = where_spec + ")"
            .end if
          .end if
          .//
          .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
          .assign current_attr = next_attr
        .end while
        .//
        .// Object ${obj.Name} (${obj.Key_Lett}) Identifier *${key_number}
        .create object instance t of TE_SWC
        .assign t.Obj_Kl = obj.Key_Lett
        .assign t.Where_Spec = where_spec
        .assign t.Key = where_key
        .assign t.Ret_Val = FALSE
        .assign t.Built_In = TRUE
        .assign t.Oid_ID = oid.Oid_ID
        .//
        .if ( num_ident_attr > 1 )
          .// *** Provide a key parenthesized at outer and inner constructs.
          .assign where_spec = "("
          .assign where_key = "${obj.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
          .assign current_attr = first_attr.result
          .assign ident_attr_count = 0
          .while ( not_empty current_attr )
            .select one te_attr related by current_attr->TE_ATTR[R2033]
            .if ( te_attr.Included )
              .assign ident_attr_count = ident_attr_count + 1
              .assign where_spec = where_spec + "(selected.${current_attr.Name} == ?)"
              .if ( ident_attr_count < num_ident_attr )
                .assign where_spec = where_spec + " AND "
              .else
                .assign where_spec = where_spec + ")"
              .end if
            .end if
            .//
            .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
            .assign current_attr = next_attr
          .end while
          .//
          .// Object ${obj.Name} (${obj.Key_Lett}) Identifier *${key_number}
          .create object instance t of TE_SWC
          .assign t.Obj_Kl = obj.Key_Lett
          .assign t.Where_Spec = where_spec
          .assign t.Key = where_key
          .assign t.Ret_Val = FALSE
          .assign t.Built_In = TRUE
          .assign t.Oid_ID = oid.Oid_ID
          .// *** Provide a key parenthesized at just inner constructs.
          .assign where_spec = ""
          .assign where_key = "${obj.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
          .assign current_attr = first_attr.result
          .assign ident_attr_count = 0
          .while ( not_empty current_attr )
            .select one te_attr related by current_attr->TE_ATTR[R2033]
            .if ( te_attr.Included )
              .assign ident_attr_count = ident_attr_count + 1
              .assign where_spec = where_spec + "(selected.${current_attr.Name} == ?)"
              .if ( ident_attr_count < num_ident_attr )
                .assign where_spec = where_spec + " AND "
              .end if
            .end if
            .//
            .select one next_attr related by current_attr->O_ATTR[R103.'succeeds']
            .assign current_attr = next_attr
          .end while
          .//
          .// Object ${obj.Name} (${obj.Key_Lett}) Identifier *${key_number}
          .create object instance t of TE_SWC
          .assign t.Obj_Kl = obj.Key_Lett
          .assign t.Where_Spec = where_spec
          .assign t.Key = where_key
          .assign t.Ret_Val = FALSE
          .assign t.Built_In = TRUE
          .assign t.Oid_ID = oid.Oid_ID
          .//
        .end if  .// num_ident_attr > 1
      .end if
    .end for  .// oid in oid_set
  .end for  .// obj in obj_set
.end function
.//
