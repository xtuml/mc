.//============================================================================
.// $RCSfile: m.system.arc,v $
.//
.// Description:
.// System level coloring functions are found here.
.// Notice that the colors that would normally update TE_SYS are active.
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.// Enhancements provided by TOYO Corporation.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
.//============================================================================
.// Enable tasking/threading.
.//============================================================================
.function EnableTasking
  .param string flavor
  .param string serialize
  .param integer number_of_threads
  .//
  .print "EnableTasking( ${flavor}, ${serialize}, ${number_of_threads} )"  
  .select any tm_thread from instances of TM_THREAD
  .if ( empty tm_thread )
    .create object instance tm_thread of TM_THREAD
    .assign tm_thread.extra_initialization = ""
  .end if  
  .assign tm_thread.number_of_threads = number_of_threads
  .if ( "$l{serialize}" == "serialize" )
    .assign tm_thread.serialize = true
  .else
    .assign tm_thread.serialize = false
  .end if
  .if ( ( ( ( "Nucleus" == flavor ) or ( "POSIX" == flavor ) ) or ( ( "OSX" == flavor ) or ( "Windows" == flavor ) ) ) or ( ( "AUTOSAR" == flavor ) or ( "SystemC" == flavor ) ) )
    .assign tm_thread.flavor = flavor
    .if ( "SystemC" == flavor )
      .// SystemC uses a single thread inside each component.
      .// So, no need for an array of threads.
      .assign tm_thread.number_of_threads = 1
      .assign tm_thread.enabled = false
    .else
      .assign tm_thread.enabled = true
    .end if
  .else
    .print "ERROR:  system.mark:EnableTasking has incorrect tasking/threading type:${flavor}.\n"
    .exit 100
  .end if
.end function
.//
.//============================================================================
.// Establish task priority.
.//============================================================================
.function SetTaskPriority
  .param integer task_number
  .param string priority
  .print "SetTaskPriority( ${task_number}, ${priority} )"
  .select any tm_thread from instances of TM_THREAD
  .if ( empty tm_thread )
    .create object instance tm_thread of TM_THREAD
  .end if  
  .assign tm_thread.extra_initialization = tm_thread.extra_initialization + "  xtUML_task_priorities[ ${task_number} ] = ${priority};\n"
.end function
.//
.//============================================================================
.function TagMaximumStringLength
  .param integer max_len
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxStringLen = max_len
.end function
.//
.//============================================================================
.function TagMaximumRelationshipExtentSize
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxRelExtent = user_specified_size
.end function
.//
.//============================================================================
.function TagMaximumSelectionExtentSize
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxSelectExtent = user_specified_size
.end function
.//
.//============================================================================
.function TagMaximumSelfDirectedEvents
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxSelfEvents = user_specified_size
.end function
.//
.//============================================================================
.function TagMaximumNonSelfDirectedEvents
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxNonSelfEvents = user_specified_size
.end function
.//
.//============================================================================
.function TagMaximumPendingOoaTimers
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxTimers = user_specified_size
.end function
.//
.//============================================================================
.function TagMaximumInterleavedBridges
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxInterleavedBridges = user_specified_size
.end function
.//
.//============================================================================
.function TagInterleavedBridgeDataSize
  .param integer user_specified_size
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.MaxInterleavedBridgeDataSize = user_specified_size
.end function
.//
.//============================================================================
.// Use doubly linked lists for collections.  This speeds up deletes.
.//============================================================================
.function TagCollectionsFlavor
  .param integer collections_flavor
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.CollectionsFlavor = collections_flavor
.end function
.//
.//============================================================================
.// Mark Depth of Persistence Cache Queue
.//
.// This color is used to specify the maximum number of instances and
.// links that can be queued waiting to be flushed to non-volatile
.// storage (NVS).  As instances and links become "dirty" they get
.// queued to NVS.  When Persist::Commit is called this queue is flushed.
.//
.// MarkPersistenceCacheDepth( instance_depth, link_depth )
.//
.// Where the input parameter(s) are:
.//   instance_depth = the integer depth of the linked list of instances
.//   link_depth = the integer depth of the linked list of persistent links
.//============================================================================
.function MarkPersistenceCacheDepth
  .param integer instance_depth
  .param integer link_depth
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.PersistInstanceCacheDepth = instance_depth
  .assign tm_systag.PersistLinkCacheDepth = link_depth
.end function
.//
.//============================================================================
.function TagDynamicMemoryAllocationOn
  .param integer units_to_allocate
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.UnitsToDynamicallyAllocate = units_to_allocate
  .if ( tm_systag.UnitsToDynamicallyAllocate < 1 )
    .assign tm_systag.UnitsToDynamicallyAllocate = 1 
  .end if
.end function
.//
.//============================================================================
.function TagInstanceLoading
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.InstanceLoading = true
.end function
.//
.//============================================================================
.// Enable Virtual Function Bus (VFB) for AUTOSAR.
.//============================================================================
.function VFBEnable
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.VFB = true
.end function
.//
.function TM_SYSTAG_select
  .select any tm_systag from instances of TM_SYSTAG
  .if ( empty tm_systag )
    .create object instance tm_systag of TM_SYSTAG
    .assign tm_systag.MaxStringLen = 32
    .assign tm_systag.PersistInstanceCacheDepth = 128
    .assign tm_systag.PersistLinkCacheDepth = 128
    .assign tm_systag.SystemCPortsType = "sc_interface"
  .end if
  .assign attr_result = tm_systag
.end function
.//
.//============================================================================
.// Mark a package as containing the system configuration.  Code will be
.// generated for components contained in this package (and referred to
.// from this package).
.//============================================================================
.function MarkSystemConfigurationPackage
  .param string package_name
  .select any tm_build from instances of TM_BUILD
  .if ( empty tm_build )
    .create object instance tm_build of TM_BUILD
  .else
    .print "Warning:  Re-marking system configuration.  Last configuration marked will be built."
  .end if
  .assign tm_build.package_to_build = package_name
  .assign tm_build.package_obj_name = package_name + "_sys"
  .assign tm_build.package_inst_name  = package_name + "_top"
.end function
.//
.//============================================================================
.// Enable Channel binding instead of Signal Binding.
.//============================================================================
.function MarkSystemCPortType
  .param string port_type
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .if ( ( (port_type == "TLM") or (port_type == "BitLevelSignals") ) or (port_type == "sc_interface") )
    .assign tm_systag.SystemCPortsType = port_type
  .else
    .print "Warning:  Unrecognized SystemC Port Type(${port_type}). Please choose either TLM, BitLevelSignals or sc_interface. Default configuration will be used."
    .assign tm_systag.SystemCPortsType = "sc_interface"
  .end if
.end function
.//
.//============================================================================
.// Force all ports to be polymorphic (where a component implements the same 
.// interface going in the same direction more than once). 
.//============================================================================
.function MarkAllPortsPolymorphic
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.AllPortsPoly = true
.end function
.//
