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
