.//============================================================================
.// $RCSfile: q.oal.utils.arc,v $
.//
.// Description:
.// Utility functions specifically for OAL analysis.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
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
  .select many te_classes from instances of TE_CLASS where ( not selected.ExcludeFromGen )
  .for each te_class in te_classes
    .select many o_ids related by te_class->O_OBJ[R2019]->O_ID[R104]
    .for each o_id in o_ids
      .select one te_where related by o_id->TE_WHERE[R2032]
      .// Get all special wheres when loading instances even if they are
      .// not seen in the OAL.  We need them for batch_relate.
      .if ( te_sys.InstanceLoading )
        .select any r_rto related by o_id->R_RTO[R109]
        .if ( not_empty r_rto )
          .assign te_where.WhereKey = true
        .end if
      .end if
      .if ( te_where.WhereKey )
        .assign key_number = o_id.Oid_ID + 1
        .assign where_spec = ""
        .assign where_key = "${te_class.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
        .//
        .select many te_attrs related by te_class->TE_ATTR[R2061]
        .for each te_attr in te_attrs
          .assign te_attr.Included = FALSE
        .end for
        .//
        .select many te_attrs related by o_id->O_OIDA[R105]->O_ATTR[R105]->TE_ATTR[R2033]
        .assign num_ident_attr = cardinality te_attrs
        .for each te_attr in te_attrs
          .assign te_attr.Included = TRUE
        .end for
        .//
        .// *** Provide a key without parenthesis.
        .select any first_te_attr related by te_class->TE_ATTR[R2061] where ( selected.prevID == 0 )
        .assign te_attr = first_te_attr
        .assign oida_count = 0
        .while ( not_empty te_attr )
          .select one o_attr related by te_attr->O_ATTR[R2033]
          .if ( te_attr.Included )
            .assign oida_count = oida_count + 1
            .assign where_spec = where_spec + "selected.${o_attr.Name} == ?"
            .if ( oida_count < num_ident_attr )
              .assign where_spec = where_spec + " AND "
            .end if
          .end if
          .//
          .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
        .end while
        .//
        .// Object ${te_class.Name} (${te_class.Key_Lett}) Identifier *${key_number}
        .create object instance te_swc of TE_SWC
        .// relate te_swc to te_class across R2001;
        .assign te_swc.GeneratedName = te_class.GeneratedName
        .// end relate
        .assign te_swc.Obj_Kl = te_class.Key_Lett
        .assign te_swc.Where_Spec = where_spec
        .assign te_swc.Key = where_key
        .assign te_swc.Ret_Val = FALSE
        .assign te_swc.Built_In = TRUE
        .assign te_swc.Oid_ID = o_id.Oid_ID
        .//
        .// *** Provide a key parenthesized at the outer construct.
        .assign where_spec = "("
        .assign where_key = "${te_class.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
        .assign te_attr = first_te_attr
        .assign oida_count = 0
        .while ( not_empty te_attr )
          .select one o_attr related by te_attr->O_ATTR[R2033]
          .if ( te_attr.Included )
            .assign oida_count = oida_count + 1
            .assign where_spec = where_spec + "selected.${o_attr.Name} == ?"
            .if ( oida_count < num_ident_attr )
              .assign where_spec = where_spec + " AND "
            .else
              .assign where_spec = where_spec + ")"
            .end if
          .end if
          .//
          .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
        .end while
        .//
        .// Object ${te_class.Name} (${te_class.Key_Lett}) Identifier *${key_number}
        .create object instance te_swc of TE_SWC
        .// relate te_swc to te_class across R2001;
        .assign te_swc.GeneratedName = te_class.GeneratedName
        .// end relate
        .assign te_swc.Obj_Kl = te_class.Key_Lett
        .assign te_swc.Where_Spec = where_spec
        .assign te_swc.Key = where_key
        .assign te_swc.Ret_Val = FALSE
        .assign te_swc.Built_In = TRUE
        .assign te_swc.Oid_ID = o_id.Oid_ID
        .//
        .if ( num_ident_attr > 1 )
          .// *** Provide a key parenthesized at outer and inner constructs.
          .assign where_spec = "("
          .assign where_key = "${te_class.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
          .assign te_attr = first_te_attr
          .assign oida_count = 0
          .while ( not_empty te_attr )
            .select one o_attr related by te_attr->O_ATTR[R2033]
            .if ( te_attr.Included )
              .assign oida_count = oida_count + 1
              .assign where_spec = where_spec + "(selected.${o_attr.Name} == ?)"
              .if ( oida_count < num_ident_attr )
                .assign where_spec = where_spec + " AND "
              .else
                .assign where_spec = where_spec + ")"
              .end if
            .end if
            .//
            .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
          .end while
          .//
          .// Object ${te_class.Name} (${te_class.Key_Lett}) Identifier *${key_number}
          .create object instance te_swc of TE_SWC
          .// relate te_swc to te_class across R2001;
          .assign te_swc.GeneratedName = te_class.GeneratedName
          .// end relate
          .assign te_swc.Obj_Kl = te_class.Key_Lett
          .assign te_swc.Where_Spec = where_spec
          .assign te_swc.Key = where_key
          .assign te_swc.Ret_Val = FALSE
          .assign te_swc.Built_In = TRUE
          .assign te_swc.Oid_ID = o_id.Oid_ID
          .// *** Provide a key parenthesized at just inner constructs.
          .assign where_spec = ""
          .assign where_key = "${te_class.Key_Lett}_Key${key_number}_mcw${info.unique_num}"
          .assign te_attr = first_te_attr
          .assign oida_count = 0
          .while ( not_empty te_attr )
            .select one o_attr related by te_attr->O_ATTR[R2033]
            .if ( te_attr.Included )
              .assign oida_count = oida_count + 1
              .assign where_spec = where_spec + "(selected.${o_attr.Name} == ?)"
              .if ( oida_count < num_ident_attr )
                .assign where_spec = where_spec + " AND "
              .end if
            .end if
            .//
            .select one te_attr related by te_attr->TE_ATTR[R2087.'succeeds']
          .end while
          .//
          .// Object ${te_class.Name} (${te_class.Key_Lett}) Identifier *${key_number}
          .create object instance te_swc of TE_SWC
          .// relate te_swc to te_class across R2001;
          .assign te_swc.GeneratedName = te_class.GeneratedName
          .// end relate
          .assign te_swc.Obj_Kl = te_class.Key_Lett
          .assign te_swc.Where_Spec = where_spec
          .assign te_swc.Key = where_key
          .assign te_swc.Ret_Val = FALSE
          .assign te_swc.Built_In = TRUE
          .assign te_swc.Oid_ID = o_id.Oid_ID
          .//
        .end if
      .end if
    .end for
  .end for
.end function
.//
