.//============================================================================
.// $RCSfile: sys_util.arc,v $
.//
.// Description:
.// Utility functions for translation at the system generation level.
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
.//============================================================================
.// Declare all kinds of constants that govern the size and shape
.// of the overall system.
.// Render some limits for use in this file and some for later in sys_types.
.//============================================================================
.function RenderSystemLimitsDeclarations
  .param inst_ref_set te_cs
  .assign attr_s = ""
  .select any te_ilb from instances of TE_ILB
  .select any te_thread from instances of TE_THREAD
  .select any te_set from instances of TE_SET
  .select any te_string from instances of TE_STRING
  .select any te_tim from instances of TE_TIM
  .select any te_eq from instances of TE_EQ
  .select any te_instance from instances of TE_INSTANCE
  .select any te_persist from instances of TE_PERSIST
  .select any te_sys from instances of TE_SYS
  .//
  .// container allocation
  .assign max_obj_extent = 0
  .assign max_rel_extent = 0
  .assign max_sel_extent = 0
  .// event allocation (and thus queue sizes)
  .assign max_self_events = 0
  .assign max_non_self_events = 0
  .assign max_timers = 0
  .// bridge statistics
  .assign interleaved_bridges = 0
  .// PEI and persistence statistics
  .assign pei_class_count = 0
  .assign persistent_class_count = 0
  .//
  .for each te_c in te_cs
    .assign max_obj_extent = max_obj_extent + te_c.MaxObjExtent
    .assign max_rel_extent = max_rel_extent + te_c.MaxRelExtent
    .assign max_sel_extent = max_sel_extent + te_c.MaxSelectExtent
    .assign max_self_events = max_self_events + te_c.MaxSelfEvents
    .assign max_non_self_events = max_non_self_events + te_c.MaxNonSelfEvents
    .assign max_timers = max_timers + te_c.MaxTimers
    .assign interleaved_bridges = interleaved_bridges + te_c.InterleavedBridges
    .assign pei_class_count = pei_class_count + te_c.PEIClassCount
    .assign persistent_class_count = persistent_class_count + te_c.PersistentClassCount
  .end for

  .assign te_sys.PEIClassCount = pei_class_count
  .assign te_sys.PersistentClassCount = persistent_class_count
  .assign attr_s = attr_s + " *\n"
  .assign attr_s = attr_s + " * System Name:  ${te_sys.ExecutableName}\n"
  .assign attr_s = attr_s + " * System ID:    ${te_sys.SystemID}\n"
  .assign attr_s = attr_s + " * Model Compiler Product Information:\n"
  .assign attr_s = attr_s + " * Product:  ${te_sys.ModelCompilerName}\n"
  .assign attr_s = attr_s + " * System default/colored values:\n"
  .assign attr_s = attr_s + " * MaxStringLen:  ${te_sys.MaxStringLen}\n"
  .assign attr_s = attr_s + " * MaxObjExtent:  ${te_sys.MaxObjExtent}\n"
  .assign attr_s = attr_s + " * MaxRelExtent:  ${te_sys.MaxRelExtent}\n"
  .assign attr_s = attr_s + " * MaxSelectExtent:  ${te_sys.MaxSelectExtent}\n"
  .assign attr_s = attr_s + " * MaxSelfEvents:  ${te_sys.MaxSelfEvents}\n"
  .assign attr_s = attr_s + " * MaxNonSelfEvents:  ${te_sys.MaxNonSelfEvents}\n"
  .assign attr_s = attr_s + " * MaxTimers:  ${te_sys.MaxTimers}\n"
  .assign attr_s = attr_s + " * MaxInterleavedBridges:  ${te_sys.MaxInterleavedBridges}\n"
  .assign attr_s = attr_s + " * MaxInterleavedBridgeDataSize:  ${te_sys.MaxInterleavedBridgeDataSize}\n"
  .assign attr_s = attr_s + " * CollectionsFlavor:  ${te_sys.CollectionsFlavor}\n"
  .assign attr_s = attr_s + " * ForcePriorityEvents:  ${te_sys.ForcePriorityEvents}\n"
  .assign attr_s = attr_s + " * PEIClassCount:  ${te_sys.PEIClassCount}\n"
  .assign attr_s = attr_s + " * PersistentClassCount:  ${te_sys.PersistentClassCount}\n"
  .assign attr_s = attr_s + " * PersistInstanceCacheDepth:  ${te_sys.PersistInstanceCacheDepth}\n"
  .assign attr_s = attr_s + " * PersistLinkCacheDepth:  ${te_sys.PersistLinkCacheDepth}\n"
  .//
  .// *** Container pool requirements
  .assign persist_inst_cache_depth_max = 128
  .assign persist_link_cache_depth_max = 128
  .invoke persistence_needed = IsPersistenceSupportNeeded()
  .if ( persistence_needed.result )
    .assign persist_inst_cache_depth_max = te_sys.PersistInstanceCacheDepth
    .assign persist_link_cache_depth_max = te_sys.PersistLinkCacheDepth
  .end if .// persistence_needed
#define ${te_string.max_string_length} ${te_sys.MaxStringLen}
#define ${te_persist.instance_cache_depth} ${persist_inst_cache_depth_max}
#define ${te_persist.link_cache_depth} ${persist_link_cache_depth_max}
  .if ( te_sys.MaxObjExtent == 0 )
    .if ( max_obj_extent != 0 )
#define ${te_instance.max_extent} ${max_obj_extent}
    .else
#define ${te_instance.max_extent} 1
    .end if
  .else
    .if ( te_sys.MaxObjExtent != 0 )
/* Note:  User adjusted from calculated worst case value:  ${max_obj_extent} */
#define ${te_instance.max_extent} ${te_sys.MaxObjExtent}
    .else
#define ${te_instance.max_extent} 1
    .end if
  .end if
  .//
  .if ( te_sys.MaxRelExtent == 0 )
#define ${te_instance.max_association_extent} ${max_rel_extent}
  .else
/* Note:  User adjusted from calculated worst case value:  ${max_rel_extent} */
#define ${te_instance.max_association_extent} ${te_sys.MaxRelExtent}
    .assign max_rel_extent = te_sys.MaxRelExtent
  .end if
  .//
  .if ( te_sys.MaxSelectExtent == 0 )
#define ${te_instance.max_transient_extent} ${max_sel_extent}
  .else
/* Note:  User adjusted from calculated estimate:  ${max_sel_extent} */
#define ${te_instance.max_transient_extent} ${te_sys.MaxSelectExtent}
    .assign max_sel_extent = te_sys.MaxSelectExtent
  .end if
#define ${te_set.number_of_containoids} ( ${te_instance.max_association_extent} + ${te_instance.max_transient_extent} )
  .// Keep the number of containers allocated for use in mechanism gen.
  .assign te_sys.TotalContainers = ( max_sel_extent + max_rel_extent )
  .// *** Event pool/queue requirements
  .if ( te_sys.MaxSelfEvents == 0 )
    .if ( max_self_events > 0 )
      .// Boost by number of concurrent tasks/threads.
      .if ( te_thread.enabled )
        .assign max_self_events = max_self_events + te_thread.number_of_threads
      .end if
      .// Boost by one to allow for overlap by one (current event).
      .assign max_self_events = max_self_events + 1
    .end if
#define ${te_eq.max_self_events} ${max_self_events}
  .else
/* Note:  user adjusted from calculated estimate.  */
#define ${te_eq.max_self_events} ${te_sys.MaxSelfEvents}
  .end if
  .//
  .if ( te_sys.MaxNonSelfEvents == 0 )
    .if ( max_non_self_events > 0 )
      .// Boost by number of concurrent tasks/threads.
      .if ( te_thread.enabled )
        .assign max_non_self_events = max_non_self_events + te_thread.number_of_threads
      .end if
      .// Boost by one to allow for overlap by one (current event).
      .assign max_non_self_events = max_non_self_events + 1
    .end if
#define ${te_eq.max_nonself_events} ${max_non_self_events}
  .else
/* Note:  User adjusted from calculated estimate.  */
#define ${te_eq.max_nonself_events} ${te_sys.MaxNonSelfEvents}
  .end if
  .//
#define ${te_eq.max_events} ( ${te_eq.max_self_events} + ${te_eq.max_nonself_events} )
  .if ( te_sys.MaxTimers == 0 )
    .// Boost by one to allow for overlap by one (current timer).
    .if ( max_timers > 0 )
      .assign max_timers = max_timers + 1
    .end if
#define ${te_tim.max_timers} ${max_timers}
  .else
/* Note:  User adjusted from calculated estimate:  ${max_timers}.  */
#define ${te_tim.max_timers} ${te_sys.MaxTimers}
  .end if
  .assign te_sys.MaxTimers = max_timers
  .if ( te_sys.MaxInterleavedBridges == 0 )
#define ${te_ilb.define_name} ${interleaved_bridges}
    .// Store result of component accumulation in te_sys value to
    .// serve as flag for interleave bridges code generation.
    .assign te_sys.MaxInterleavedBridges = interleaved_bridges
  .else
/* Note:  User adjusted from calculated estimate:  ${interleaved_bridges}.  */
#define ${te_ilb.define_name} ${te_sys.MaxInterleavedBridges}
  .end if
  .//
  .if ( te_sys.MaxInterleavedBridgeDataSize == 0 )
    .// Use default if nothing touched in coloring.
#define ${te_ilb.data_define_name} 8
    .assign te_sys.MaxInterleavedBridgeDataSize = 8
  .else
    .// Use colored value.
#define ${te_ilb.data_define_name} ${te_sys.MaxInterleavedBridgeDataSize}
  .end if
  .//
  .for each te_c in te_cs
    .assign attr_s = attr_s + " *\n"
    .assign attr_s = attr_s + " * Component Name:  ${te_c.Name}\n"
    .assign attr_s = attr_s + " * MaxObjExtent:  ${te_c.MaxObjExtent}\n"
    .assign attr_s = attr_s + " * MaxRelExtent:  ${te_c.MaxRelExtent}\n"
    .assign attr_s = attr_s + " * MaxSelectExtent:  ${te_c.MaxSelectExtent}\n"
    .assign attr_s = attr_s + " * MaxSelfEvents:  ${te_c.MaxSelfEvents}\n"
    .assign attr_s = attr_s + " * MaxNonSelfEvents:  ${te_c.MaxNonSelfEvents}\n"
    .assign attr_s = attr_s + " * MaxPriorityEvents:  ${te_c.MaxPriorityEvents}\n"
    .assign attr_s = attr_s + " * MaxTimers:  ${te_c.MaxTimers}\n"
    .assign attr_s = attr_s + " * InterleavedBridges:  ${te_c.InterleavedBridges}\n"
    .assign attr_s = attr_s + " * PEIClassCount:  ${te_c.PEIClassCount}\n"
    .assign attr_s = attr_s + " * PersistentClassCount:  ${te_c.PersistentClassCount}\n"
    .assign attr_s = attr_s + " * InterleavedDataSize:  ${te_sys.MaxInterleavedBridgeDataSize}\n"
    .assign attr_s = attr_s + " * CollectionsFlavor:  ${te_sys.CollectionsFlavor}\n"
  .end for
.end function
.//
.//============================================================================
.// Build a union to identify the size of the largest persistent class.
.//============================================================================
.function PersistentClassUnion
  .param inst_ref_set te_cs
  .assign attr_uname = "sys_largest_class_u"
/*
 * union of persistent class types to get largest size
 */
typedef union {
  .for each te_c in te_cs
    .invoke class_number = GetDomainClassNumberName( te_c.Name )
  ${class_number.union}
  .end for
} ${attr_uname};
  .//
.end function
.//
.//============================================================================
.// Output initialization for an array of system class information.
.//============================================================================
.function DefineClassInfoArray
  .param inst_ref_set te_cs
  .assign ci = "/* xtUML class info for all of the components (collections, sizes, etc.) */"
  .invoke class_info = GetClassInfoArrayNaming()
  .assign ci = ci + "\n${class_info.class_info_type} * const * const ${class_info.class_info_name}[ SYSTEM_DOMAIN_COUNT ] = {"
  .for each te_c in te_cs
    .assign delimiter = ""
    .if ( not_last te_cs )
      .assign delimiter = ","
    .end if
    .// Include a pointer to the component classes only if component has classes.
    .select any te_class related by te_c->TE_CLASS[R2064]
    .if ( not_empty te_class )
      .invoke domain_class_info = GetDomainClassInfoName( te_c.Name )
      .assign ci = ci + "\n  &${domain_class_info.array_name}[0]${delimiter}"
    .else
      .assign ci = ci + "\n  0${delimiter}"
    .end if
  .end for
  .assign ci = ci + "\n};"
  .assign cc = "/* xtUML class count for all of the components (collections, sizes, etc.) */"
  .assign cc = "\n  static const ${class_info.count_type} ${class_info.class_count}[ SYSTEM_DOMAIN_COUNT ] = {"
  .for each te_c in te_cs
    .assign delimiter = ""
    .if ( not_last te_cs )
      .assign delimiter = ","
    .end if
    .invoke count = GetDomainClassNumberName( te_c.Name )
    .assign cc = cc + "\n    ${count.max}${delimiter}"
  .end for
  .assign cc = cc + "\n  };"
  .assign attr_class_info = ci
  .assign attr_class_count = cc
.end function
.//
.//============================================================================
.// Output initialization for an array of state model counts by component.
.//============================================================================
.function DefineActiveClassCountArray
  .param inst_ref_set te_cs
    /* count of active classes (having state machines) for each component */
  .for each te_c in te_cs
    .assign delimiter = ""
    .if ( not_last te_cs )
      .assign delimiter = ","
    .end if
    .invoke count = GetDomainClassNumberName( te_c.Name )
    ${count.max}${delimiter}
  .end for
.end function
.//
.//============================================================================
.// Output code constants that define numbers for the components
.// and classes for the entire system.
.//============================================================================
.function DeclareDomainIdentityEnums
  .param inst_ref_set te_cs
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .assign dom_count = cardinality te_cs
#define SYSTEM_DOMAIN_COUNT ${dom_count}
/* xtUML domain identification numbers */
  .assign enumerated_domain_id = 0
  .for each te_c in te_cs
    .invoke dom_id = GetDomainTypeIDFromString( te_c.Name )
#define ${dom_id.name} ${enumerated_domain_id}
    .if ( "SystemC" == te_target.language )
#include "${te_c.module_file}.${te_file.hdr_file_ext}"
    .else
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
    .end if
    .assign enumerated_domain_id = enumerated_domain_id + 1
  .end for
.end function
.//
.//============================================================================
.// Determine whether the self event queue is needed.
.//============================================================================
.function GetSystemSelfEventQueueNeeded
  .//
  .assign attr_result = FALSE
  .assign attr_max_depth = 0
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .select any self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 1 )
    .if ( not_empty self_queue )
      .assign attr_result = self_queue.RenderCode
      .assign attr_max_depth = self_queue.MaxDepth
    .else
      .print "\n  WARNING: No TE_QUEUE self queue instance found!\n"
    .end if
  .end if
  .//
.end function
.//
.//============================================================================
.// Set up the parameters for the self event queue.
.//============================================================================
.function SetSystemSelfEventQueueParameters
  .param inst_ref_set te_cs
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .assign max_self_events = 0
    .for each te_c in te_cs
      .assign max_self_events = max_self_events + te_c.MaxSelfEvents
    .end for
    .//
    .if ( te_sys.MaxSelfEvents != 0 )
      .assign max_self_events = te_sys.MaxSelfEvents
    .end if
    .//
    .select any self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 1 )
    .if ( not_empty self_queue )
      .if ( max_self_events > 0 )
        .assign self_queue.RenderCode = TRUE
        .assign self_queue.MaxDepth = max_self_events
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE self queue instance found!\n"
    .end if  .// not_empty self_queue
  .end if  .// not_empty te_sys
  .//
.end function
.//
.//============================================================================
.// Determine whether the non-self event queue is needed.
.//============================================================================
.function GetSystemNonSelfEventQueueNeeded
  .//
  .assign attr_result = FALSE
  .assign attr_max_depth = 0
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .select any non_self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 2 )
    .if ( not_empty non_self_queue )
      .assign attr_result = non_self_queue.RenderCode
      .assign attr_max_depth = non_self_queue.MaxDepth
    .else
      .print "\n  WARNING: No TE_QUEUE non-self queue instance found!\n"
    .end if
  .end if
  .//
.end function
.//
.//============================================================================
.// Set up the parameters for the non-self event queue.
.//============================================================================
.function SetSystemNonSelfEventQueueParameters
  .param inst_ref_set te_cs
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .assign max_non_self_events = 0
    .for each te_c in te_cs
      .assign max_non_self_events = max_non_self_events + te_c.MaxNonSelfEvents
    .end for
    .//
    .if ( te_sys.MaxNonSelfEvents != 0 )
      .assign max_non_self_events = te_sys.MaxNonSelfEvents
    .end if
    .//
    .select any non_self_queue related by te_sys->TE_DISP[R2003]->TE_QUEUE[R2004] where ( selected.Type == 2 )
    .if ( not_empty non_self_queue )
      .select any te_evt from instances of TE_EVT
      .if ( ( max_non_self_events > 0 ) or ( not_empty te_evt ) )
        .assign non_self_queue.RenderCode = TRUE
        .assign non_self_queue.MaxDepth = max_non_self_events
      .end if
    .else
      .print "\n  WARNING: No TE_QUEUE non-self queue instance found!\n"
    .end if  .// not_empty self_queue
  .end if  .// not_empty te_sys
  .//
.end function
.//
.//============================================================================
.// Determine if event prioritization is needed by seeing if any
.// one of the domains marked a priority event.
.//============================================================================
.function GetSystemEventPrioritizationNeeded
  .//
  .assign attr_result = FALSE
  .select any te_sys from instances of TE_SYS
  .if ( not_empty te_sys )
    .if ( te_sys.ForcePriorityEvents )
      .assign attr_result = TRUE
    .end if
  .end if
  .select any te_c from instances of TE_C where ( selected.MaxPriorityEvents > 0 )
  .if ( not_empty te_c )
    .assign attr_result = TRUE
  .end if
  .select any te_evt from instances of TE_EVT where ( selected.Priority > 0 )
  .if ( not_empty te_evt )
    .assign attr_result = TRUE
  .end if
  .//
.end function
.//
.//============================================================================
.// Determine if persistence support is needed.  Learn from
.// the system or from one of the domains.
.//============================================================================
.function IsPersistenceSupportNeeded
  .assign attr_result = FALSE
  .select any te_sys from instances of TE_SYS where ( selected.PersistentClassCount > 0 )
  .if ( not_empty te_sys )
    .assign attr_result = TRUE
  .else
    .select any te_c from instances of TE_C where ( selected.PersistentClassCount > 0 )
    .if ( not_empty te_c )
      .assign attr_result = TRUE
    .end if .// domain
  .end if .// te_sys
.end function
.//
.//============================================================================
.// Return TRUE when event prioritization is needed.
.//============================================================================
.function GetEventPrioritizationNeeded
  .assign attr_result = false
  .select any te_evt from instances of TE_EVT where ( selected.Priority != 0 )
  .if ( not_empty te_evt )
    .assign attr_result = true
  .end if
.end function
.//
