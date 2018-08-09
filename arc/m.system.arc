.//============================================================================
.// $RCSfile: m.system.arc,v $
.//
.// Description:
.// System level coloring functions are found here.
.// Notice that the colors that would normally update TE_SYS are active.
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
  .print "EnableTasking( ${flavor}, ${serialize}, $t{number_of_threads} )"
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
  .if ((( ( ( ( "Nucleus" == flavor ) or ( "POSIX" == flavor ) ) or ( ( "OSX" == flavor ) or ( "Windows" == flavor ) ) ) or ( ( "AUTOSAR" == flavor ) or ( "SystemC" == flavor ))) or ( "NxtOSEK" == flavor ))  or ("EV3HRP" == flavor) )
    .assign tm_thread.flavor = flavor
    .if ( "SystemC" == flavor )
      .// SystemC uses a single thread inside each component.
      .// So, no need for an array of threads.
      .assign tm_thread.number_of_threads = 1
      .assign tm_thread.enabled = false
    .else
      .assign tm_thread.enabled = true
    .end if
.//-- MCLM Extension start
  .if ( ("NXTOSEK" == flavor) or ( "EV3HRP" == flavor) )
    .create object instance ev3_body_ee of TM_PEEE
    .assign ev3_body_ee.Key_Lett = "EV3B"
    .assign ev3_body_ee.template = "t.EV3B_bridge.c"
    .create object instance ev3_motor_ee of TM_PEEE
    .assign ev3_motor_ee.Key_Lett = "EV3M"
    .assign ev3_motor_ee.template = "t.EV3M_bridge.c"
    .create object instance ev3_color_ee of TM_PEEE
    .assign ev3_color_ee.Key_Lett = "EV3COL"
    .assign ev3_color_ee.template = "t.EV3COL_bridge.c"
    .create object instance ev3_gyro_ee of TM_PEEE
    .assign ev3_gyro_ee.Key_Lett = "EV3GYR"
    .assign ev3_gyro_ee.template = "t.EV3GYR_bridge.c"
    .create object instance ev3_ultrasonic_ee of TM_PEEE
    .assign ev3_ultrasonic_ee.Key_Lett = "EV3ULS"
    .assign ev3_ultrasonic_ee.template = "t.EV3ULS_bridge.c"
    .create object instance ev3_touch_ee of TM_PEEE
    .assign ev3_touch_ee.Key_Lett = "EV3TCH"
    .assign ev3_touch_ee.template = "t.EV3TCH_bridge.c"
    .//.create object instance ev3_balancer_ee of TM_PEEE
    .//.assign ev3_balancer_ee.Key_Lett = "EV3BAL"
    .//.assign ev3_balancer_ee.template = "t.EV3_bridge.c"
    .//.invoke TagDataTypePrecision( "*", "EV3Tone", "uint16_t", "" )
    .//.invoke TagDataTypePrecision( "*", "EV3Button", "button_t", "" )
    .//.invoke TagDataTypePrecision( "*", "EV3Color", "colorid_t", "" )
    .//.invoke TagDataTypePrecision( "*", "EV3Font", "lcdfont_t", "" )
    .//.invoke TagDataTypePrecision( "*", "EV3LcdColor", "lcdcolor_t", "" )
    .//.invoke TagDataTypePrecision( "*", "EV3LedColor", "ledcolor_t", "" )
    .print "----------EV3 ARC------------"
    .invoke MarkMainFunction("xtUMLMain")
    .invoke TagEnumeratorMap("*","EV3Button","","","button_t")
    .invoke TagEnumeratorMap("*","EV3Color","COLOR_","","colorid_t")
    .invoke TagEnumeratorMap("*","EV3Font","EV3_FONT_","ev3api.h","lcdfont_t")
    .invoke TagEnumeratorMap("*","EV3LcdColor","EV3_LCD_","","lcdcolor_t")
    .invoke TagEnumeratorMap("*","EV3LedColor","LED_","ev3api.h","ledcolor_t")
    .invoke TagEnumeratorMap("*","EV3Motor","DEV_MOTOR_","mclm_ev3.h","device_motor_t")
    .invoke TagEnumeratorMap("*","EV3Result","MCLM_RESULT_","mclm_ev3.h","mclm_result_t")
  .end if
.//-- MCLM Extension End
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
  .print "SetTaskPriority( $t{task_number}, ${priority} )"
  .select any tm_thread from instances of TM_THREAD
  .if ( empty tm_thread )
    .create object instance tm_thread of TM_THREAD
  .end if
  .select any tm_thread_element from instances of TM_THREAD_ELEMENT where (selected.thread_no == task_number)
  .if ( empty tm_thread_element )
    .create object instance tm_thread_element of TM_THREAD_ELEMENT
      .assign tm_thread_element.thread_no = task_number
  .end if
  .assign tm_thread_element.priority = priority   
  .assign tm_thread.extra_initialization = tm_thread.extra_initialization + "  xtUML_task_priorities[ $t{task_number} ] = ${priority};\n"
.end function
.//
.//============================================================================
.// Establish task stack size( NXT extension ).
.//============================================================================
.function SetTaskStackSize
  .param integer task_number
  .param integer stack_size
  .print "SetTaskStackSize( $t{task_number}, $t{stack_size} )"
  .select any tm_thread from instances of TM_THREAD
  .if ( empty tm_thread )
    .create object instance tm_thread of TM_THREAD
  .end if
  .select any tm_thread_element from instances of TM_THREAD_ELEMENT where ( selected.thread_no == task_number )
  .if ( empty tm_thread_element )
    .create object instance tm_thread_element of TM_THREAD_ELEMENT
      .assign tm_thread_element.thread_no = task_number
  .end if
  .assign tm_thread_element.stack_size = stack_size 
.end function

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
.//============================================================================
.// Turn on structured inter-component message passing.
.//============================================================================
.function MarkStructuredMessaging
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.StructuredMessaging = true
.end function
.//
.//============================================================================
.// Use Network Sockets to send messages between components.
.//============================================================================
.function MarkNetworkSockets
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.NetworkSockets = true
.end function
.//
.//============================================================================
.// Use simulated time instead of wall clock time.
.//============================================================================
.function MarkSimulatedTime
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.SimulatedTime = true
  .print "MarkSimulatedTime:  Time marked to be simulated (rather than wall clock)."
.end function
.//
.//============================================================================
.// Set the state save buffer depth.
.//============================================================================
.function MarkStateSave
  .param integer buffersize
  .invoke r = TM_SYSTAG_select()
  .assign tm_systag = r.result
  .assign tm_systag.StateSaveBufferSize = buffersize
  .print "MarkStateSave:  buffer size set to $t{buffersize}."
.end function
.//
.function TM_SYSTAG_select .// tm_systag
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
.function mark_all
  .param string pass
  .param string f
  .param string p1
  .param string p2
  .param string p3
  .param string p4
  .param string p5
  .if ( "1" == pass )
    .// bridge
    .if ( "WireSynchServiceOoaBridge" == f )
      .// WireSynchServiceOoaBridge("initiant","ee_key_letters","recipient")
      .invoke WireSynchServiceOoaBridge(p1,p2,p3)
    .elif ( "WireRealizeExternalEntity" == f )
      .// WireRealizeExternalEntity("a","b","c","d","e")
      .invoke WireRealizeExternalEntity(p1,p2,p3,p4,p5)
    .elif ( "WireRealizedExternalEntity" == f )
      .// WireRealizedExternalEntity("a","b","c","d","e")
      .invoke WireRealizedExternalEntity(p1,p2,p3,p4,p5)
    .elif ( "TagSyncServiceSafeForInterrupts" == f )
      .// TagSyncServiceSafeForInterrupts("component_name","function_name")
      .invoke TagSyncServiceSafeForInterrupts(p1,p2)
    .elif ( "MarkMessageSafeForInterrupts" == f )
      .// MarkMessageSafeForInterrupts("component_name","port_name","message_name")
      .invoke MarkMessageSafeForInterrupts(p1,p2,p3)
    .// datatype
    .elif ( "TagDataTypePrecision" == f )
      .// TagDataTypePrecision("component_name","dt_name","tagged_name","initial_value")
      .invoke TagDataTypePrecision(p1,p2,p3,p4)
    .elif ( "MapDataTypeAsPointer" == f )
      .// MapDataTypeAsPointer("component_name","dt_name","pointer_type","include_file")
      .invoke MapDataTypeAsPointer(p1,p2,p3,p4)
    .elif ( "TagEnumeratorDiscreteValue" == f )
      .// TagEnumeratorDiscreteValue("component_name","enumeration","enumerator","value")
      .invoke TagEnumeratorDiscreteValue(p1,p2,p3,p4)
    .elif ( "TagUninitializedEnumerationValue" == f )
      .// TagUninitializedEnumerationValue("component_name","enumeration","value")
      .invoke TagUninitializedEnumerationValue(p1,p2,p3)
    .elif ( "AssignDirectToUDTPackage" == f )
      .// AssignDirectToUDTPackage("package_name")
      .invoke AssignDirectToUDTPackage(p1)
    .elif ( "TagEnumeratorMap" == f )
      .// TagEnumeratorMap("MyDom","MyEnum","ENUM_PREFIX","enum.h","datatype_t")
      .invoke TagEnumeratorMap(p1,p2,p3,p4,p5)
    .// system
    .elif ( "EnableTasking" == f )
      .// EnableTasking("flavor","serialize","number_of_threads":integer)
      .invoke r = T_atoi( p3 )
      .assign i3 = r.result
      .invoke EnableTasking(p1,p2,i3)
    .elif ( "SetTaskPriority" == f )
      .// SetTaskPriority("task_number":integer"priority")
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke SetTaskPriority(i1,p2)
    .elif ( "TagMaximumStringLength" == f )
      .// TagMaximumStringLength("max_len":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumStringLength(i1)
    .elif ( "TagMaximumRelationshipExtentSize" == f )
      .// TagMaximumRelationshipExtentSize("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumRelationshipExtentSize(i1)
    .elif ( "TagMaximumSelectionExtentSize" == f )
      .// TagMaximumSelectionExtentSize("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumSelectionExtentSize(i1)
    .elif ( "TagMaximumSelfDirectedEvents" == f )
      .// TagMaximumSelfDirectedEvents("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumSelfDirectedEvents(i1)
    .elif ( "TagMaximumNonSelfDirectedEvents" == f )
      .// TagMaximumNonSelfDirectedEvents("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumNonSelfDirectedEvents(i1)
    .elif ( "TagMaximumPendingOoaTimers" == f )
      .// TagMaximumPendingOoaTimers("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumPendingOoaTimers(i1)
    .elif ( "TagMaximumInterleavedBridges" == f )
      .// TagMaximumInterleavedBridges("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagMaximumInterleavedBridges(i1)
    .elif ( "TagInterleavedBridgeDataSize" == f )
      .// TagInterleavedBridgeDataSize("user_specified_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagInterleavedBridgeDataSize(i1)
    .elif ( "TagCollectionsFlavor" == f )
      .// TagCollectionsFlavor("collections_flavor":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagCollectionsFlavor(i1)
    .elif ( "MarkPersistenceCacheDepth" == f )
      .// MarkPersistenceCacheDepth("instance_depth":integer"link_depth":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke r = T_atoi( p2 )
      .assign i2 = r.result
      .invoke MarkPersistenceCacheDepth(i1,i2)
    .elif ( "TagDynamicMemoryAllocationOn" == f )
      .// TagDynamicMemoryAllocationOn("units_to_allocate":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagDynamicMemoryAllocationOn(i1)
    .elif ( "TagInstanceLoading" == f )
      .invoke TagInstanceLoading()
    .elif ( "VFBEnable" == f )
      .invoke VFBEnable()
    .elif ( "MarkStructuredMessaging" == f )
      .invoke MarkStructuredMessaging()
    .elif ( "MarkNetworkSockets" == f )
      .invoke MarkNetworkSockets()
    .elif ( "MarkSimulatedTime" == f )
      .invoke MarkSimulatedTime()
    .elif ( "MarkStateSave" == f )
      .// MarkStateSave("buffersize":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke MarkStateSave(i1)
    .elif ( "MarkSystemConfigurationPackage" == f )
      .// MarkSystemConfigurationPackage("package_name")
      .invoke MarkSystemConfigurationPackage(p1)
    .elif ( "MarkSystemCPortType" == f )
      .// MarkSystemCPortType("port_type")
      .invoke MarkSystemCPortType(p1)
    .elif ( "MarkAllPortsPolymorphic" == f )
      .invoke MarkAllPortsPolymorphic()
    .elif ( "SetTaskStackSize" == f )
      .// SetTaskStackSize("task_number":integer,"stack_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke r = T_atoi( p2 )
      .assign i2 = r.result
      .invoke SetTaskStackSize(i1,i2)
    .elif ( "MarkMainFunction" == f )
      .// MarkMainFunction("func_name")
      .invoke MarkMainFunction(p1)
    .elif ( "TagMotorConfig" == f )
      .// TagMotorConfig("position","port","motor_type","invert":boolean)
      .assign b4 = false
      .if ( ("TRUE" == p4) or ("true" == p4) )
        .assign b4 = true
      .end if
      .invoke TagMotorConfig(p1,p2,p3,b4)
    .elif ( "TagSensorConfig" == f )
      .// TagSensorConfig("sensor","port")
      .invoke TagSensorConfig(p1,p2)
    .elif ( "TagGyroSensorInvertOn" == f )
      .// TagGyroSensorInvertOn()
      .invoke TagGyroSensorInvertOn()
    .// component
    .elif ( "MarkAsChannel" == f )
      .// MarkAsChannel("package_name","component_name","inc_file")
      .invoke MarkAsChannel(p1,p2,p3)
    .elif ( "MarkComponentAsChannel" == f )
      .// MarkComponentAsChannel("package_name","component_name","inc_file")
      .invoke MarkComponentAsChannel(p1,p2,p3)
    .elif ( "MarkComponentWithTemplate" == f )
      .// MarkComponentWithTemplate("package_name","component_name")
      .invoke MarkComponentWithTemplate(p1,p2)
    .elif ( "MarkInterfaceWithTemplate" == f )
      .// MarkInterfaceWithTemplate("package_name","interface_name")
      .invoke MarkInterfaceWithTemplate(p1,p2)
    .elif ( "AddTemplateParameter" == f )
      .// AddTemplateParameter("package_name","component_name","type_name","variable_name","default_value")
      .invoke AddTemplateParameter(p1,p2,p3,p4,p5)
    .elif ( "SetTemplateParameter" == f )
      .// SetTemplateParameter("package_name","instance","variable_name","value")
      .invoke SetTemplateParameter(p1,p2,p3,p4)
    .elif ( "SetTPV" == f )
      .// CDS - not supported here
      .// SetTPV("package_name","parent_component","component","classifier_name","port","variable_name","value")
      .invoke SetTPV(p1,p2,p3,p4,p5,"","")
    .elif ( "MarkInterfacePrefix" == f )
      .// MarkInterfacePrefix("provided_port","required_port","channel")
      .invoke MarkInterfacePrefix(p1,p2,p3)
    .elif ( "MarkComponentAsRealized" == f )
      .// MarkComponentAsRealized("package_name","component_name","inc_file")
      .invoke MarkComponentAsRealized(p1,p2,p3)
    .else
      .// not in this pass
    .end if
  .else
    .// class
    .if ( "TagSystemObjectDefaultExtentSize" == f )
      .// TagSystemObjectDefaultExtentSize("extent_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagSystemObjectDefaultExtentSize(i1)
    .elif ( "MarkSystemObjectDefaultExtentSize" == f )
      .// MarkSystemObjectDefaultExtentSize("extent_size":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke MarkSystemObjectDefaultExtentSize(i1)
    .elif ( "TagObjectExtentSize" == f )
      .// TagObjectExtentSize("obj_key_letters","extent_size":integer)
      .invoke r = T_atoi( p2 )
      .assign i2 = r.result
      .invoke TagObjectExtentSize(p1,i2)
    .elif ( "MarkObjectExtentSize" == f )
      .// MarkObjectExtentSize("component_name","obj_key_letters","extent_size":integer)
      .invoke r = T_atoi( p3 )
      .assign i3 = r.result
      .invoke MarkObjectExtentSize(p1,p2,i3)
    .elif ( "TagTransformerGeneration" == f )
      .// TagTransformerGeneration("obj_key_letters","transformer_name")
      .invoke TagTransformerGeneration(p1,p2)
    .elif ( "TagClassOperationTranslationOff" == f )
      .// TagClassOperationTranslationOff("obj_key_letters","op_name")
      .invoke TagClassOperationTranslationOff(p1,p2)
    .elif ( "MarkClassOperationTranslationOff" == f )
      .// MarkClassOperationTranslationOff("component_name","obj_key_letters","op_name")
      .invoke MarkClassOperationTranslationOff(p1,p2,p3)
    .elif ( "MarkClassTraceOff" == f )
      .// MarkClassTraceOff("component_name","obj_key_letters")
      .invoke MarkClassTraceOff(p1,p2)
    .elif ( "MarkClassTraceOn" == f )
      .// MarkClassTraceOn("component_name","obj_key_letters")
      .invoke MarkClassTraceOn(p1,p2)
    .elif ( "TagPEIsDefinedInData" == f )
      .// TagPEIsDefinedInData("ss_prefix","obj_key_letters")
      .invoke TagPEIsDefinedInData(p1,p2)
    .elif ( "MarkPEIsDefinedInData" == f )
      .// MarkPEIsDefinedInData("component_name","ss_prefix","obj_key_letters")
      .invoke MarkPEIsDefinedInData(p1,p2,p3)
    .elif ( "TagStaticInstancePopulation" == f )
      .// TagStaticInstancePopulation("ss_prefix","obj_key_letters")
      .invoke TagStaticInstancePopulation(p1,p2)
    .elif ( "MarkStaticInstancePopulation" == f )
      .// MarkStaticInstancePopulation("component_name","ss_prefix","obj_key_letters")
      .invoke MarkStaticInstancePopulation(p1,p2,p3)
    .elif ( "TagReadOnly" == f )
      .// TagReadOnly("ss_prefix","obj_key_letters")
      .invoke TagReadOnly(p1,p2)
    .elif ( "MarkReadOnly" == f )
      .// MarkReadOnly("component_name","ss_prefix","obj_key_letters")
      .invoke MarkReadOnly(p1,p2,p3)
    .elif ( "TagPersistentClass" == f )
      .// TagPersistentClass("ss_prefix","obj_key_letters")
      .invoke TagPersistentClass(p1,p2)
    .elif ( "MarkPersistentClass" == f )
      .// MarkPersistentClass("component_name","ss_prefix","obj_key_letters")
      .invoke MarkPersistentClass(p1,p2,p3)
    .elif ( "TagNonPersistentClass" == f )
      .// TagNonPersistentClass("ss_prefix","obj_key_letters")
      .invoke TagNonPersistentClass(p1,p2)
    .elif ( "MarkNonPersistentClass" == f )
      .// MarkNonPersistentClass("component_name","ss_prefix","obj_key_letters")
      .invoke MarkNonPersistentClass(p1,p2,p3)
    .elif ( "MapClassToTask" == f )
      .// MapClassToTask("ss_prefix","obj_key_letters","task":integer)
      .invoke r = T_atoi( p3 )
      .assign i3 = r.result
      .invoke MapClassToTask(p1,p2,i3)
    .elif ( "MarkClassToTask" == f )
      .// MarkClassToTask("component_name","ss_prefix","obj_key_letters","task":integer)
      .invoke r = T_atoi( p4 )
      .assign i4 = r.result
      .invoke MarkClassToTask(p1,p2,p3,i4)
    .// domain
    .elif ( "TagFunctionTranslationOff" == f )
      .// TagFunctionTranslationOff("function_name")
      .invoke TagFunctionTranslationOff(p1)
    .elif ( "MarkFunctionTranslationOff" == f )
      .// MarkFunctionTranslationOff("component_name","function_name")
      .invoke MarkFunctionTranslationOff(p1,p2)
    .elif ( "TagInitializationFunction" == f )
      .// TagInitializationFunction("function_name")
      .invoke TagInitializationFunction(p1)
    .elif ( "MarkInitializationFunction" == f )
      .// MarkInitializationFunction("component_name","function_name")
      .invoke MarkInitializationFunction(p1,p2)
    .elif ( "TagExcludeObjectFromCodeGen" == f )
      .// TagExcludeObjectFromCodeGen("obj_key_letters")
      .invoke TagExcludeObjectFromCodeGen(p1)
    .elif ( "MarkExcludeObjectFromCodeGen" == f )
      .// MarkExcludeObjectFromCodeGen("component_name","obj_key_letters")
      .invoke MarkExcludeObjectFromCodeGen(p1,p2)
    .elif ( "TagExcludeSubsystemFromCodeGen" == f )
      .// TagExcludeSubsystemFromCodeGen("subsystem_name")
      .invoke TagExcludeSubsystemFromCodeGen(p1)
    .elif ( "MarkExcludeSubsystemFromCodeGen" == f )
      .// MarkExcludeSubsystemFromCodeGen("component_name","subsystem_name")
      .invoke MarkExcludeSubsystemFromCodeGen(p1,p2)
    .elif ( "TagStateTransitionTracingOn" == f )
      .invoke TagStateTransitionTracingOn()
    .elif ( "MarkStateTransitionTracingOn" == f )
      .// MarkStateTransitionTracingOn("component_name")
      .invoke MarkStateTransitionTracingOn(p1)
    .elif ( "TagActionStatementTracingOn" == f )
      .invoke TagActionStatementTracingOn()
    .elif ( "MarkActionStatementTracingOn" == f )
      .// MarkActionStatementTracingOn("component_name")
      .invoke MarkActionStatementTracingOn(p1)
    .elif ( "MarkMessageTracingOn" == f )
      .// MarkMessageTracingOn("component_name","port_name","message_name")
      .invoke MarkMessageTracingOn(p1,p2,p3)
    .elif ( "TagEmptyHandleDetectionOn" == f )
      .invoke TagEmptyHandleDetectionOn()
    .elif ( "MarkEmptyHandleDetectionOn" == f )
      .// MarkEmptyHandleDetectionOn("component_name")
      .invoke MarkEmptyHandleDetectionOn(p1)
    .elif ( "TagFirstPassOptimizationsOff" == f )
      .invoke TagFirstPassOptimizationsOff()
    .elif ( "MarkFirstPassOptimizationsOff" == f )
      .// MarkFirstPassOptimizationsOff("component_name")
      .invoke MarkFirstPassOptimizationsOff(p1)
    .elif ( "TagStateActionCommentBlocksEnabled" == f )
      .invoke TagStateActionCommentBlocksEnabled()
    .elif ( "MarkStateActionCommentBlocksEnabled" == f )
      .// MarkStateActionCommentBlocksEnabled("component_name")
      .invoke MarkStateActionCommentBlocksEnabled(p1)
    .elif ( "TagStateActionStatementCommentsDisabled" == f )
      .invoke TagStateActionStatementCommentsDisabled()
    .elif ( "MarkStateActionStatementCommentsDisabled" == f )
      .// MarkStateActionStatementCommentsDisabled("component_name")
      .invoke MarkStateActionStatementCommentsDisabled(p1)
    .elif ( "TagStateActionVariableNamesEnabled" == f )
      .invoke TagStateActionVariableNamesEnabled()
    .elif ( "TagVerboseReflexivePhrasesEnabled" == f )
      .invoke TagVerboseReflexivePhrasesEnabled()
    .elif ( "MarkPortWiring" == f )
      .// MarkPortWiring("home_component","home_port","foreign_component","foreign_port")
      .invoke MarkPortWiring(p1,p2,p3,p4)
    .elif ( "TagDispatchFlavor" == f )
      .// TagDispatchFlavor("flavor":integer)
      .invoke r = T_atoi( p1 )
      .assign i1 = r.result
      .invoke TagDispatchFlavor(i1)
    .// event
    .elif ( "TagPriorityEvent" == f )
      .// TagPriorityEvent("evt_label","priority_value":integer)
      .invoke r = T_atoi( p2 )
      .assign i2 = r.result
      .invoke TagPriorityEvent(p1,i2)
    .elif ( "MarkPriorityEvent" == f )
      .// MarkPriorityEvent("component_name","evt_label","priority_value":integer)
      .invoke r = T_atoi( p3 )
      .assign i3 = r.result
      .invoke MarkPriorityEvent(p1,p2,i3)
    .else
      .// not in this pass
    .end if
  .end if
.end function
.//
.function T_atoi .// integer
  .param string s
  .invoke r = STRING_TO_INTEGER( s )
  .assign attr_result = r.result
  .invoke oal( "return strtol( p_s, 0, 10 );" )
.end function
.// MCLM Extension start
.//============================================================================
.// Mark Main Function
.//============================================================================
.function MarkMainFunction
  .param string func_name
  .print "MarkMainFunction ${func_name}"
  .select any te_target from instances of TE_TARGET
  .if ( empty te_target )
    .print "TARGET was not found"
    .exit 100
  .end if
  .assign te_target.main = func_name
.end function
.//============================================================================
.// Tag Motor Config
.//
.// position "LEFT","RIGHT","FRONT","TAIL","USER1","USER2"
.// port "PORT_A","PORT_B","PORT_C","PORT_D"
.// motor_type "L" "M" "U"
.// invert FALE:TRUE
.// 
.//============================================================================
.function TagMotorConfig
  .param string position
  .param string port
  .param string motor_type
  .param boolean invert
  .//
  .if ( ((("LEFT" != position) and ("RIGHT" != position )) and (("TAIL" != position) and ("FRONT" != position))) and (( "USER1" != position ) and ("USER2" != position) ))
    .print "Motor Postion is not valid = ${position}"
    .exit 1
  .end if
  .select any motor from instances of TM_LMDEV where ((selected.name == position) and ( "MOTOR" == selected.dev_type) )
  .if ( not_empty motor )
    .print "Motor position ${position} is already marked"
    .exit 1
  .end if
  .if ( (("PORT_A" != port) and ("PORT_B" != port)) and (("PORT_C" != port) and ("PORT_D" != port)) )
    .print "PORT config is invalid"
    .exit 1
  .end if
  .if ( (("L" != motor_type ) and ( "M" != motor_type )) and ( "U" != motor_type ) )
    .print "Motor type is invalid"
    .exit 1
  .end if
  .create object instance motor of TM_LMDEV
  .if ( "L" == motor_type )
    .assign motor.dev_desc = "LARGE_MOTOR"
  .elif ( "M" == motor_type )
    .assign motor.dev_desc = "MEDIUM_MOTOR"
  .elif ( "U" == motor_type )
    .assign motor.dev_desc = "UNREGULATED_MOTOR"
  .end if
  .assign motor.dev_type = "MOTOR"
  .assign motor.name = position
.//  .assign motor.dev_desc = motor_type
  .assign motor.port = port
  .assign motor.is_invert = invert
.end function
.//============================================================================
.// Tag Sensor Config
.//
.// sensor "COLOR","GYRO","ULTRASONIC","TOUCH"
.// port   "1","2","3","4"
.//============================================================================
.function TagSensorConfig
  .param string sensor
  .param string port
  .//
  .if ( (( "COLOR" != sensor ) and ( "GYRO" != sensor )) and (("ULTRASONIC" != sensor) and ("TOUCH" != sensor)) )
    .print "sensor is invalid"
    .exit 1
  .end if
  .if ( (( "1" != port ) and ( "2" != port )) and (( "3" != port ) and ( "4" != port ) ) )
    .print "port ${port} is invalid"
    .exit 2
  .end if
  .select any sensor_inst from instances of TM_LMDEV where ( selected.dev_type == sensor )
  .if ( not_empty sensor_inst )
    .print "sensor ${sensor} is already tagged"
    .exit 1
  .end if
  .create object instance sensor_inst of  TM_LMDEV
  .assign sensor_inst.dev_type = sensor
  .assign sensor_inst.port = "EV3_PORT_" + port
  .assign sensor_inst.is_invert = FALSE
.end function
 .// MCLM extension end
.//============================================================================
.// Tag Gyro Sensor Invert On
.//============================================================================
.function TagGyroSensorInvertOn
.//
  .select any gyro from instances of TM_LMDEV where (selected.dev_type == "GYRO" )
  .if ( empty gyro )
    .print "Gyro Sensor is not configured. set TagaSensorConfig(""GYRO"",xx) first"
  .end if
  .assign gyro.is_invert = TRUE
.end function
