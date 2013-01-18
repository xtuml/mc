.//============================================================================
.// $RCSfile: q.domain.limits.arc,v $
.//
.// Description:
.// These queries collect static analysis information and propagate it
.// forward to the system build step by outputting a set of INSERT
.// statements that will populate the system build gen database.
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
.function analyze_timers_events_selects
  .assign attr_max_self_events = 0
  .assign attr_max_non_self_events = 0
  .assign attr_max_select_many = 0
  .assign attr_total_timer_starts = 0
  .//
  .invoke e = event_queue_analyze_length()
  .assign attr_max_self_events = e.self_events
  .assign attr_max_non_self_events = e.nonself_events
  .//
  .invoke t = timer_analyze_starts()
  .assign attr_total_timer_starts = t.timer_start_count
  .//
  .invoke sm = containoid_select_many_count()
  .assign attr_max_select_many = sm.max_select_manys_in_one_action
.end function
.//
.//============================================================================
.// Analyze maximums for extents.
.//
.// NOTE:  This function may only be called *after* extent size coloring!
.//============================================================================
.function te_class_analyze_class_extents
  .param inst_ref te_c
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .select many obj_set related by te_classes->O_OBJ[R2019]
  .assign attr_object_class_extents = 0
  .assign attr_relationship_extents = 0
  .assign attr_largest_object_extent = 0
  .//
  .for each obj in obj_set
    .select one te_class related by obj->TE_CLASS[R2019]
    .assign attr_object_class_extents = attr_object_class_extents + te_class.MaxExtentSize
    .if ( te_class.MaxExtentSize > attr_largest_object_extent )
      .assign attr_largest_object_extent = te_class.MaxExtentSize
    .end if
    .//
    .// Calculate maximum extents required for objects on "MANY" side of a relationship.
    .select many rgo_set related by obj->R_OIR[R201]->R_RGO[R203] where ( selected.Obj_ID == obj.Obj_ID )
    .for each rgo in rgo_set
      .select one form related by rgo->R_FORM[R205]
      .if ( not_empty form )
        .if ( form.Mult == 1 )
          .assign attr_relationship_extents = attr_relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
      .//
      .select one assr related by rgo->R_ASSR[R205]
      .if ( not_empty assr )
        .if ( assr.Mult == 1 )
          .assign attr_relationship_extents = attr_relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
    .end for  .// rgo in rgo_set
    .//
    .select many rto_set related by obj->R_OIR[R201]->R_RTO[R203] where ( selected.Obj_ID == obj.Obj_ID )
    .for each rto in rto_set
      .select one aone related by rto->R_AONE[R204]
      .if ( not_empty aone )
        .if ( aone.Mult == 1 )
          .assign attr_relationship_extents = attr_relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
      .//
      .select one aoth related by rto->R_AOTH[R204]
      .if ( not_empty aoth )
        .if ( aoth.Mult == 1 )
          .assign attr_relationship_extents = attr_relationship_extents + te_class.MaxExtentSize
        .end if
      .end if
    .end for  .// rto in rto_set
  .end for  .// obj in obj_set
.end function
  .//
.//
.//============================================================================
.// Store statistics into TE_C.
.//============================================================================
.function te_c_CollectLimits
  .param inst_ref te_c
  .//
  .select any te_file from instances of TE_FILE
  .//
  .invoke extents = te_class_analyze_class_extents( te_c )
  .assign object_class_extents = extents.object_class_extents
  .assign relationship_extents = extents.relationship_extents
  .assign largest_object_extent = extents.largest_object_extent
  .//
  .invoke tes = analyze_timers_events_selects()
  .assign total_timer_starts = tes.total_timer_starts
  .assign max_self_events = tes.max_self_events
  .assign max_non_self_events = tes.max_non_self_events
  .assign max_select_many = tes.max_select_many
  .//
  .// functions
  .select many te_syncs related by te_c->TE_SYNC[R2084] where ( ( selected.IsSafeForInterrupts ) and ( selected.XlateSemantics ) )
  .assign total_interleaved_bridges = cardinality te_syncs
  .//
  .// Count up the priority events.
  .select many te_evts from instances of TE_EVT where ( selected.Priority != 0 )
  .assign total_priority_events = cardinality te_evts
  .//
  .// Count up the classes using preexisting instances defined in data (PEIs).
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( ( not selected.ExcludeFromGen ) and ( selected.PEIsDefinedInData ) )
  .assign pei_class_count = cardinality te_classes
  .//
  .// Count up the persistent classes.
  .select many te_classes related by te_c->TE_CLASS[R2064] where ( ( not selected.ExcludeFromGen ) and ( selected.Persistent ) )
  .assign persist_class_count = cardinality te_classes
  .//
  .assign te_c.MaxObjExtent         = object_class_extents
  .assign te_c.MaxRelExtent         = relationship_extents
  .assign te_c.MaxSelectExtent      = max_select_many * largest_object_extent
  .assign te_c.MaxSelfEvents        = max_self_events
  .assign te_c.MaxNonSelfEvents     = max_non_self_events
  .assign te_c.MaxPriorityEvents    = total_priority_events
  .assign te_c.MaxTimers            = total_timer_starts
  .assign te_c.InterleavedBridges   = total_interleaved_bridges
  .assign te_c.PEIClassCount        = pei_class_count
  .assign te_c.PersistentClassCount = persist_class_count
  .//
.end function
.//
