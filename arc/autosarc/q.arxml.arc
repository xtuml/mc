.//============================================================================
.//     Create AUTOSAR ARXML Component data 
.//============================================================================
.function AUTOSAR_CreateComponent
  .param inst_ref te_c
  .param string ar_component_port_list
  .param string ar_component_ib_events
  .param string ar_component_ib_runnables
  .param string ar_component_swc_implementation
  .select one te_sys related by te_c->TE_SYS[R2065]
  .//
  .select any te_file from instances of TE_FILE
  .select one c_c related by te_c->C_C[R2054]
  .include "${te_file.arc_path}/t.component.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML Component SWC-IMPLEMENTATION 
.//============================================================================
.function AUTOSAR_CreateComponentSwcImplementation
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .include "${te_file.arc_path}/t.swc_implementation.autosar.xml"
.end function
.//============================================================================
.//     Create AUTOSAR ARXML Component Ports
.//============================================================================
.function AUTOSAR_CreateComponentPorts
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .//
  .assign msg_dir = ""
  .assign msg_dir_letter = ""
  .assign msg_dir_small_letter = ""
  .assign msg_name = ""
  .// Create an interface definition for each message in each port
  .// TODO (SKB) - we should probably be using TE_PO in the following and not C_PO
  .select many c_pos related by te_c->C_C[R2054]->C_PO[R4010]
  .for each c_po in c_pos
    .select many c_irs related by c_po->C_IR[R4016]
      .for each c_ir in c_irs
        .select one c_r related by c_ir->C_R[R4009]
        .if (not_empty c_r)
          .// inbound message
          .assign msg_dir = "REQUIRED"
          .assign msg_dir_letter = "R"
          .assign msg_dir_small_letter = "r"
          .assign msg_name = c_r.Name
        .else
          .// outbound message
          .select one c_p related by c_ir->C_P[R4009]
          .assign msg_dir = "PROVIDED"
          .assign msg_dir_letter = "P"
          .assign msg_dir_small_letter = "p"
          .assign msg_name = c_p.Name
        .end if
        .include "${te_file.arc_path}/t.component_port.autosar.xml"
      .end for
  .end for
  .include "${te_file.arc_path}/t.component_port_mode.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML Interface data 
.//============================================================================
.function AUTOSAR_CreateInterfaceDefs
  .assign ar_interface_msgs = ""
  .select any te_file from instances of TE_FILE
  .select many c_is from instances of C_I
  .for each c_i in c_is
    .assign ar_interface_msgs = ""
    .select any te_po related by c_i->TE_PO[R2007]
    .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .for each te_mact in te_macts
      .while ( not_empty te_mact )
        .assign ar_interface_msg_args = ""
        .select any c_io from instances of C_IO where ( selected.Name == te_mact.MessageName )
        .// Populate the msg args
        .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
        .while ( not_empty te_parm )
          .invoke arg_decl = AUTOSAR_CreateInterfaceMsgArg( te_parm )
          .assign ar_interface_msg_args = ar_interface_msg_args + arg_decl.body
          .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
        .end while
        .invoke msg_def = AUTOSAR_CreateInterfaceMsgDefs( te_mact, ar_interface_msg_args, c_io )
        .assign ar_interface_msgs = ar_interface_msgs + msg_def.body
        .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
      .end while
    .end for
    .include "${te_file.arc_path}/t.interface.autosar.xml"
  .end for
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML Interface message data 
.//============================================================================
.function AUTOSAR_CreateInterfaceMsgDefs
  .param inst_ref te_mact
  .param string ar_interface_msg_args
  .param inst_ref c_io
  .select any te_file from instances of TE_FILE
  .include "${te_file.arc_path}/t.interface_msg.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML Interface message argument data 
.//============================================================================
.function AUTOSAR_CreateInterfaceMsgArg
  .param inst_ref te_parm
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select one te_dt related by te_parm->TE_DT[R2049]
  .select one s_cdt related by te_dt->S_DT[R2021]->S_CDT[R17]
  .assign arg_type = "${te_dt.ExtName}"
  .assign arg_ar_type = ""
  .if ( not_empty s_cdt )
    .assign arg_ar_type = "IMPLEMENTATION"
  .else
    .assign arg_ar_type = "APPLICATION-PRIMITIVE"
  .end if
  .select one c_pp related by te_parm->C_PP[R2048]
  .include "${te_file.arc_path}/t.interface_msg_arg.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML mode switch interface for the system
.//============================================================================
.function AUTOSAR_CreateSystemModeSwitchInterface
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.system_msi.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML runnable entity for provided operation
.//============================================================================
.function AUTOSAR_CreateRunnableEntityForPO
  .param inst_ref te_c
  .param inst_ref te_mact
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.runnable_po.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML runnable entity for required operation
.//============================================================================
.function AUTOSAR_CreateRunnableEntityForRO
  .param inst_ref te_c
  .param inst_ref te_mact
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.runnable_ro.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML component runnables
.//============================================================================
.function AUTOSAR_CreateComponentRunnables
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .assign po_runnable_entities = ""
  .assign ro_runnable_entities = ""
  .//
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .if ( "SPR_RS" == te_mact.subtypeKL )
      .elif ( "SPR_PS" == te_mact.subtypeKL )
      .elif ( "SPR_RO" == te_mact.subtypeKL )
        .invoke msg_runnable_entity = AUTOSAR_CreateRunnableEntityForRO( te_c, te_mact )
        .assign ro_runnable_entities = ro_runnable_entities + msg_runnable_entity.body
      .elif ( "SPR_PO" == te_mact.subtypeKL )
        .invoke msg_runnable_entity = AUTOSAR_CreateRunnableEntityForPO( te_c, te_mact )
        .assign po_runnable_entities = po_runnable_entities + msg_runnable_entity.body
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
  .include "${te_file.arc_path}/t.component.runnables.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML operation invoked event for porvided operation
.//============================================================================
.function AUTOSAR_CreateOperationInvokedEventForPO
  .param inst_ref te_c
  .param inst_ref te_mact
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.operation_event.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML component mode switch events
.//============================================================================
.function AUTOSAR_CreateComponentModeSwitchEvents
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .assign operation_invoked_events = ""
  .//
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .if ( "SPR_RS" == te_mact.subtypeKL )
      .elif ( "SPR_PS" == te_mact.subtypeKL )
      .elif ( "SPR_RO" == te_mact.subtypeKL )
      .elif ( "SPR_PO" == te_mact.subtypeKL )
        .invoke operation_event = AUTOSAR_CreateOperationInvokedEventForPO( te_c, te_mact )
        .assign operation_invoked_events = operation_invoked_events + operation_event.body
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
  .include "${te_file.arc_path}/t.component_mode_event.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML data type category data
.//       NOTE: enums are set as dt 2 (integer).
.//============================================================================
.function AUTOSAR_CreateDataTypeCategoryDefs
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select many te_dts from instances of TE_DT;
  .for each te_dt in te_dts
    .// Select related core data type instance.  If none exists, then that tells
    .// us this will be an application type in ARXML
    .select any s_cdt related by te_dt->S_DT[R2021]->S_CDT[R17]
    .//
    .assign ar_base_datatype_name = ""
    .assign ar_datatype_category_name = ""
    .assign ar_datatype_precision = ""
    .if ( not_empty te_dt )
      .if ( not_empty s_cdt)
        .assign ar_base_datatype_name = ""
        .if ( 1 == te_dt.Core_Typ )
          .assign ar_datatype_category_name = "TYPE_REFERENCE"
          .assign ar_base_datatype_name = "boolean"
        .elif ( 2 == te_dt.Core_Typ ) 
          .assign ar_datatype_category_name = "TYPE_REFERENCE"
          .assign ar_base_datatype_name = "sint32"
        .elif ( 3 == te_dt.Core_Typ ) 
          .assign ar_datatype_category_name = "TYPE_REFERENCE"
          .assign ar_base_datatype_name = "float64"
        .end if
        .if ( ar_datatype_category_name != "" )
          .include "${te_file.arc_path}/t.implementation_datatypes.autosar.xml"
        .end if
      .else
        .if ( 1 == te_dt.Core_Typ )
          .assign ar_datatype_category_name = "BOOLEAN"
        .elif ( ( 2 == te_dt.Core_Typ ) or ( 3 == te_dt.Core_Typ ) )
          .assign ar_datatype_category_name = "VALUE"
          .// Precision marking can only be applied to real or integer types.
          .select any tm_precision from instances of TM_PRECISION where ( selected.DT_Name == te_dt.Name )
          .if ( not_empty tm_precision )
            .invoke prec_def = AUTOSAR_CreateDataTypePrecision( tm_precision, te_dt )
            .assign ar_datatype_precision = ar_datatype_precision + prec_def.body
          .end if
        .end if
        .if ( ar_datatype_category_name != "" )
          .include "${te_file.arc_path}/t.application_datatypes.autosar.xml"
        .end if
      .end if
    .end if
  .end for
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML data type precisions
.//============================================================================
.function AUTOSAR_CreateDataTypePrecision
  .param inst_ref tm_precision
  .param inst_ref te_dt
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.datatype_precision.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML implementation data types
.//  TODO SKB 2/21/15 - Don't think I need this anymore.  Functionality moved to AUTOSAR_CreateDataTypeCategoryDefs
.//============================================================================
.function AUTOSAR_CreateImplementationDataTypeDefs
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select many te_dts from instances of TE_DT;
  .for each te_dt in te_dts
    .assign ar_base_datatype_name = ""
    .if ( 1 == te_dt.Core_Typ )
      .assign ar_base_datatype_name = "boolean"
    .elif ( 2 == te_dt.Core_Typ ) 
      .assign ar_base_datatype_name = "sint32"
    .end if
    .if ( "" != ar_base_datatype_name )
      .include "${te_file.arc_path}/t.implementation_datatypes.autosar.xml"
    .end if
  .end for
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML data type mappings
.//============================================================================
.function AUTOSAR_CreateDataTypeMappings
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select many te_dts from instances of TE_DT;
  .for each te_dt in te_dts
    .select one s_cdt related by te_dt->S_DT[R2021]->S_CDT[R17]
    .if ( empty s_cdt )
      .assign ar_base_datatype_name = ""
      .if ( 1 == te_dt.Core_Typ )
        .assign ar_base_datatype_name = "boolean"
      .elif ( 2 == te_dt.Core_Typ )
        .assign ar_base_datatype_name = "sint32"
      .end if
      .if ( "" != ar_base_datatype_name )
        .include "${te_file.arc_path}/t.data_type_map.autosar.xml"
      .end if
    .end if
  .end for
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML mode request type mappings
.//============================================================================
.function AUTOSAR_CreateModeRequestTypeMappings
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select many te_dts from instances of TE_DT;
  .for each te_dt in te_dts
    .assign ar_base_datatype_name = "" 
    .if ( 1 == te_dt.Core_Typ )
      .assign ar_base_datatype_name = "dt_xtUMLBoolean"
    .end if
    .if ( "" != ar_base_datatype_name )
      .include "${te_file.arc_path}/t.mode_request_type_map.autosar.xml"
    .end if
  .end for
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML System Composition
.//============================================================================
.function AUTOSAR_CreateSystemComposition
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .assign ar_composition_component_list = ""
  .assign ar_composition_assembly_list = ""
  .assign ar_composition_delegation_list = ""
  .// Build list of component participants in system composition using any 
  .// component involved in a satisfaction.
  .select many te_cs related by te_sys->TE_C[R2065]
  .for each te_c in te_cs
    .select any c_sf related by te_c->TE_CI[R2008]->CL_IC[R2009]->CL_IIR[R4700]->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]
    .if (empty c_sf)
      .select one c_sf related by te_c->TE_CI[R2008]->CL_IC[R2009]->CL_IIR[R4700]->CL_IR[R4703]->C_SF[R4706]
    .end if
    .if (not_empty c_sf)
      .// Include component in list
      .invoke c_def = AUTOSAR_CreateCompositionComponent( te_c )
      .assign ar_composition_component_list = ar_composition_component_list + c_def.body
    .end if
  .end for
  .// Build list of connectors in system composition using the satisfactions in 
  .// the system
  .assign cn_num = 1
  .select many c_sfs from instances of C_SF
  .for each c_sf in c_sfs
    .select one iir_ip related by c_sf->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]
    .select one c_ip related by iir_ip->CL_IC[R4700]->TE_CI[R2009]->TE_C[R2008]
    .select one iir_ir related by c_sf->CL_IR[R4706]->CL_IIR[R4703]
    .select one c_ir related by iir_ir->CL_IC[R4700]->TE_CI[R2009]->TE_C[R2008]
    .invoke sf_def = AUTOSAR_CreateCompositionAssembly( c_sf, cn_num, c_ip, iir_ip, c_ir, iir_ir )
    .assign ar_composition_assembly_list = ar_composition_assembly_list + sf_def.body
    .assign cn_num = cn_num + 1
  .end for
  .// TODO: Build delegation list
  .select one pe_pe related by c_sf->PE_PE[R8001]
  .include "${te_file.arc_path}/t.composition.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML composition component
.//============================================================================
.function AUTOSAR_CreateCompositionComponent
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .select any cl_ic related by te_c->TE_CI[R2008]->CL_IC[R2009]
  .include "${te_file.arc_path}/t.composition_component.autosar.xml"
.end function
.//
.//============================================================================
.//     Create AUTOSAR ARXML composition assembly
.//============================================================================
.function AUTOSAR_CreateCompositionAssembly
  .param inst_ref c_sf
  .param integer cn_num
  .param inst_ref c_ip
  .param inst_ref iir_ip
  .param inst_ref c_ir
  .param inst_ref iir_ir
  .select any te_file from instances of TE_FILE
  .select any te_sys from instances of TE_SYS
  .include "${te_file.arc_path}/t.composition_assembly.autosar.xml"
.end function
.//
