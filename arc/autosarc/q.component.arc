.//============================================================================
.// $RCSfile: q.component.arc,v $
.//
.// Description:
.// Component port level query for generating port declaration and definitions.
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
.//============================================================================
.//     Create Include List
.//============================================================================
.function TE_C_CreateIncludeList
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .select many te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .select many nested_ref_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009]->TE_C[R2008]
  .assign te_cs = te_cs | nested_ref_te_cs
  .assign attr_include_files = "#include ""${te_c.module_file}.${te_file.hdr_file_ext}""\n"
  .for each local_te_c in te_cs
    .if ( te_sys.SystemCPortsType == "TLM" )
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}_bp_pv.${te_file.hdr_file_ext}""\n"
    .else
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}.${te_file.hdr_file_ext}""\n"
    .end if
  .end for
  .select many te_ees related by te_c->TE_EE[R2085] where ( selected.Included )
  .select many global_te_ees from instances of TE_EE where ( ( selected.te_cID == 00 ) and ( selected.Included ) )
  .assign te_ees = te_ees | global_te_ees
  .for each te_ee in te_ees
    .assign attr_include_files = attr_include_files + "#include ""${te_ee.Include_File}""\n"
  .end for
  .// Since C calls directly to the port messages published by the component,
  .// create the list of includes for the components across satisfactions.
  .select many local_te_iirs related by te_c->TE_PO[R2005]->TE_IIR[R2080]
  .select many required_te_cs related by local_te_iirs->TE_IIR[R2081.'requires or delegates']->TE_PO[R2080]->TE_C[R2005] where ( selected.included_in_build )
  .select many provided_te_cs related by local_te_iirs->TE_IIR[R2081.'provides or is delegated']->TE_PO[R2080]->TE_C[R2005] where ( selected.included_in_build )
  .assign te_cs = required_te_cs | provided_te_cs
  .for each connected_te_c in te_cs
    .assign attr_include_files = attr_include_files + "#include ""${connected_te_c.module_file}.${te_file.hdr_file_ext}""\n"
  .end for
  .// CDS agilegc (Add foreign includes derived from marking.)
  .select many s_syss from instances of S_SYS
  .assign syscount = cardinality s_syss
  .if ( ( 2 == syscount ) and ( false ) )
    .select any te_sys from instances of TE_SYS where ( selected.Name == "SYS" )
    .if ( not_empty te_sys )
      .select many required_te_iirs related by local_te_iirs->TE_IIR[R2081.'requires or delegates']
      .select many provided_te_iirs related by local_te_iirs->TE_IIR[R2081.'provides or is delegated']
      .assign te_iirs = required_te_iirs | provided_te_iirs
      .for each te_iir in te_iirs
        .assign attr_include_files = attr_include_files + "#include ""${te_iir.component_name}.${te_file.hdr_file_ext}""\n"
      .end for
    .end if
  .end if
  .// CDS agilegc end
.end function
.//
.//============================================================================
.// Build the include file body for the component port action.
.//============================================================================
.function TE_MACT_CreateDeclarations
  .param inst_ref_set first_te_macts
  .select any te_file from instances of TE_FILE
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .include "${te_file.arc_path}/t.component.message.h"
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
.end function
.//
.//============================================================================
.// Generate the port interface functions.
.//============================================================================
.function TE_MACT_CreateDefinition
  .param inst_ref te_c
  .param inst_ref te_po
  .param inst_ref_set first_te_macts
  .select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .select any te_thread from instances of TE_THREAD
  .select any te_trace from instances of TE_TRACE
  .select any te_parm from instances of TE_PARM where ( false )
  .select any empty_sm_evt from instances of SM_EVT where ( false )
  .select many empty_te_macts from instances of TE_MACT where ( false )
  .invoke event_prioritization_needed = GetSystemEventPrioritizationNeeded()
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
    .assign sm_evt = empty_sm_evt
    .assign foreign_te_macts = empty_te_macts
    .select one te_aba related by te_mact->TE_ABA[R2010]
    .if ( te_mact.subtypeKL == "SPR_PO" )
    .elif ( te_mact.subtypeKL == "SPR_RO" )
    .elif ( te_mact.subtypeKL == "SPR_PS" )
      .select one spr_ps related by te_mact->SPR_PS[R2051]
      .select any te_parm related by spr_ps->SPR_PEP[R4503]->C_EP[R4501]->C_PP[R4006]->TE_PARM[R2048]
      .// Navigate through the satisfaction to find the connected/corresponding message.
      .select many spr_rss related by spr_ps->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RS[R4502] where ( selected.Name == spr_ps.Name )
      .// Find a local event mapped onto the signal.
      .select one sm_evt related by spr_ps->SM_SGEVT[R528]->SM_SEVT[R526]->SM_EVT[R525]
    .elif ( te_mact.subtypeKL == "SPR_RS" )
      .select one spr_rs related by te_mact->SPR_RS[R2053]
      .select any te_parm related by spr_rs->SPR_REP[R4502]->C_EP[R4500]->C_PP[R4006]->TE_PARM[R2048]
      .// Navigate through the satisfaction to find the connected/corresponding message.
      .select many spr_pss related by spr_rs->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PS[R4503] where ( selected.Name == spr_rs.Name )
      .// Find a local event mapped onto the signal.
      .select one sm_evt related by spr_rs->SM_SGEVT[R529]->SM_SEVT[R526]->SM_EVT[R525]
    .end if
    .assign action_body = te_aba.code
    .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .// outbound message
      .select many foreign_te_macts related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'provides or is delegated']->TE_PO[R2080]->TE_MACT[R2006] where ( selected.MessageName == te_mact.MessageName )
      .if ( empty foreign_te_macts )
        .select many foreign_te_macts related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'requires or delegates']->TE_PO[R2080]->TE_MACT[R2006] where ( selected.MessageName == te_mact.MessageName )
      .end if
      .if ( not_empty foreign_te_macts )
        .assign action_body = ""
        .for each foreign_te_mact in foreign_te_macts
          .select one foreign_te_c related by foreign_te_mact->TE_C[R2002]
          .if ( foreign_te_c.included_in_build )
            .invoke s = t_oal_smt_iop( foreign_te_mact.GeneratedName, te_aba.ParameterInvocation, "  ", true )
            .if ( "void" != te_aba.ReturnDataType )
              .assign action_body = "return "
            .end if
            .assign action_body = action_body + s.body
          .end if
        .end for
      .else
        .// CDS agilegc
        .// Check to see if any "virtual" connections (TE_IIRs) have been made to foreign components via marking.
        .if ( ( "SYS" == te_sys.Name ) and ( false ) )
          .select many foreign_te_iirs related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'requires or delegates']
          .if ( empty foreign_te_iirs )
            .select many foreign_te_iirs related by te_mact->TE_PO[R2006]->TE_IIR[R2080]->TE_IIR[R2081.'provides or is delegated']
          .end if
          .for each foreign_te_iir in foreign_te_iirs
            .assign presumed_target = ( ( foreign_te_iir.component_name + "_" ) + ( foreign_te_iir.port_name + "_" ) ) + te_mact.MessageName
            .invoke s = t_oal_smt_iop( presumed_target, te_aba.ParameterInvocation, "  ", true )
            .if ( "void" != te_aba.ReturnDataType )
              .assign action_body = "  return"
            .end if
            .assign action_body = action_body + s.body
          .end for
        .end if
      .end if
    .elif ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
      .// inbound message
      .// If the signal is mapped, connect it to the state machine.
      .if ( not_empty sm_evt )
        .invoke s = t_oal_smt_sgn( sm_evt, false, "0", sm_evt.Drv_Lbl, sm_evt.Mning, te_aba.ParameterAssignment, "  " )
        .assign action_body = action_body + s.body
      .end if
    .else
      .print "ERROR:  Detected invalid component port message configuration."
    .end if
    .assign parameter = "dp_signal"
    .assign parameteri = "dp_signal"
    .assign parameterdt = "dt_xtUMLSignal"
    .if ( ( te_sys.AUTOSAR ) or ( te_sys.VFB ) )
      .// SKB - removing this block.  I don't think it is needed
      .//.if ( "" != te_aba.ParameterInvocation )
      .//  .select one te_dt related by te_parm->TE_DT[R2049]
      .//  .assign parameter = te_parm.Name
      .//  .assign parameteri = te_parm.GeneratedName
      .//  .assign parameterdt = te_dt.ExtName
      .//.end if
      .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
        .assign autosar_body = "  #ifdef ${te_thread.AUTOSAR_enabled}\n"
        .if (( te_mact.subtypeKL == "SPR_RO" ) or ( te_mact.subtypeKL == "SPR_PO" ))
          .select any c_io from instances of C_IO where ( selected.Name == te_mact.MessageName )
          .select many te_parms related by c_io->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
          .assign autosar_body = autosar_body + "  u1_t t = MC3020_AUTOSAR_RUNNABLE_NUMBER;\n"
          .if ( "void" != te_aba.ReturnDataType )
            .//create a "returnParam" to retrieve the returned value.
            .assign autosar_body = autosar_body + "  ${te_aba.ReturnDataType}  returnParam;\n"
          .end if
          .assign parmsCount = cardinality te_parms
          .if (parmsCount == 0)
            .assign autosar_body = autosar_body + "  Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( cache_Rte_self"
          .elif (parmsCount == 1)
            .assign param_gen_name = ""
            .for each parm in te_parms
              .// There is only 1 param, so only one iteration of this loop
              .assign param_gen_name = "${parm.GeneratedName}"
            .end for
            .assign autosar_body = autosar_body + "  Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( cache_Rte_self, ${param_gen_name}"                
          .elif ( parmsCount > 1)
            .//create an instance of the struct
            .assign autosar_body = autosar_body +"  dt_${c_io.Name}_param ${c_io.Name}_param;\n"
            .// assign the signal parameters' values to the struct
            .for each parm in te_parms
              .assign autosar_body = autosar_body +"  ${c_io.Name}_param.${parm.GeneratedName}=${parm.GeneratedName};\n"
            .end for
            .// call the Rte_Call with a reference to the struct
            .assign autosar_body = autosar_body + "  Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( cache_Rte_self, ${c_io.Name}_param"                
          .end if
          .if ( "void" != te_aba.ReturnDataType )
            .// send reference of the "returnParam" with the Rte_Write parameters then return the "returnParam"
            .assign autosar_body = autosar_body +", &returnParam );\n  ooa_loop( &t );\n  return returnParam;\n  #else\n"
          .else
            .assign autosar_body = autosar_body +" );\n  ooa_loop( &t );\n  #else\n"
          .end if
        .else
          .select any signal from instances of C_AS where ( selected.Name == te_mact.MessageName )
          .select many te_parms related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
          .assign parmsCount = cardinality te_parms
          .if (parmsCount == 0)
            .assign autosar_body = autosar_body + "  Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( (Rte_Instance) cache_Rte_self );\n  #else\n"
          .elif (parmsCount == 1)
            .assign param_gen_name = ""
            .for each parm in te_parms
              .// There is only 1 param, so only one iteration of this loop
              .assign param_gen_name = "${parm.GeneratedName}"
            .end for
            .assign autosar_body = autosar_body + "  Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( (Rte_Instance) cache_Rte_self, ${param_gen_name} );\n  #else\n"                
          .elif ( parmsCount > 1)
            .//create an instance of the struct
            .assign autosar_body = autosar_body +"  dt_${signal.Name}_param ${signal.Name}_param;\n"
            .// assign the signal parameters' values to the struct
            .for each parm in te_parms
              .assign autosar_body = autosar_body +"  ${signal.Name}_param.${parm.GeneratedName}=${parm.GeneratedName};\n"
            .end for
            .// call the Rte_Write with a reference to the struct
            .assign autosar_body = autosar_body + "  Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( (Rte_Instance) cache_Rte_self, ${signal.Name}_param );\n  #else\n"                
          .end if
        .end if
        .assign action_body = autosar_body + action_body
        .assign action_body = action_body + "  #endif\n"
      .end if
    .end if
    .include "${te_file.arc_path}/t.component.message.c"
    .if ( ( te_sys.AUTOSAR ) or ( te_sys.VFB ) )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .assign parameters_with_dt = ""
        .assign paramName = ""
        .assign parmsCount = 0
        .select many te_parms from instances of TE_PARM where ( false )
        .if ((te_mact.subtypeKL == "SPR_PO") or ( te_mact.subtypeKL == "SPR_RO" ))
          .select any c_io from instances of C_IO where ( selected.Name == te_mact.MessageName )
          .select many te_parms related by c_io->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
          .if ( "" != te_aba.ParameterInvocation )
            .assign parmsCount = cardinality te_parms
            .if ( 0 == parmsCount )
              .assign parameters_with_dt = ""
            .elif ( parmsCount == 1 )
              .select any te_parm related by c_io->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048];
              .select one dt related by te_parm->TE_DT[R2049];
              .if ( 0 == te_parm.By_Ref )
                .assign parameters_with_dt = "${dt.ExtName} ${te_parm.GeneratedName}"
              .else
                .assign parameters_with_dt = "${dt.ExtName} * ${te_parm.GeneratedName}"
              .end if
            .else
              .// Use the packed struct of params
              .assign parameters_with_dt = "dt_${c_io.Name}_param ${c_io.Name}_param"
            .end if
          .end if
          .if ( "void" != te_aba.ReturnDataType )
            .// add a "returnParam" to be able to retrieve the returned value
            .assign parameters_with_dt = parameters_with_dt + ", ${te_aba.ReturnDataType} * returnParam"
          .end if
        .else
          .select any signal from instances of C_AS where ( selected.Name == te_mact.MessageName )
          .select many te_parms related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
          .assign parmsCount = cardinality te_parms
          .if( parmsCount > 1 )
            .assign paramName = te_mact.MessageName + "_param"
          .else
            .assign paramName = parameter
          .end if
        .end if
        .include "${te_file.arc_path}/t.component.port.autosar.c"
      .end if
    .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
.end function
.//
.//============================================================================
.// Generate the VISTA wrapper files
.//============================================================================
.function Vista_TLM_CreateTCLFiles
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .// attributes used in tcl scripts
  .assign attr_createFolderStructure = ""
  .assign attr_add_template = ""
  .assign attr_register_declaration = ""
  .assign attr_create_model = ""
  .assign attr_tlm_ports = ""
  .assign pilpeline_length = ""
  .//
  .assign attr_create_model = attr_create_model + "  create_tlm_model ${te_c.Name}_bp $$bp_logical_model {\n"
  .//
  .// Declare a register for each port
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.Name}_i /TLM/protocols/generic slave}\n"
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.Name}_o /TLM/protocols/generic master}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.Name}_i /TLM/protocols/generic slave 32 -bind_mode optional}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.Name}_o /TLM/protocols/generic master 32 -bind_mode optional}\n"
    .assign pilpeline_length = pilpeline_length + "    {${te_po.Name}_i_pipeline_length 2}\n"
    .//
  .end for
  .// Create a register for each parameter inside the port (starting from 4 and increment by 4)
  .for each te_po in te_pos
    .select one c_i related by te_po->C_I[R2007]
    .assign direction = ""
    .if (te_po.provision)
      .assign direction  = "provided"
    .else
      .assign direction  = "required"
    .end if
    .assign register_name = "${te_c.Name}_${te_po.Name}_PULSE"
    .assign register_offset_name = "$r{c_i.Name}_${direction}_PULSE_REG_OFFSET"
    .assign register_description = "${register_name} signals the completion of a message transfer"
    .assign register_width = 32
    .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.Name}_i ${register_name} ${register_offset_name} {} -rw_access w -is_trigger -width ${register_width}\n"
    .//
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .// inbound message
        .while ( not_empty te_parm )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
          .select one te_dim related by te_parm->TE_DIM[R2056]
          .if(not_empty s_sdt)
            .assign memory_size = 0;
            .select many s_mbrs related by s_sdt->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4;
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.Name}_i ${memory_offset_name} ${memory_size}\n"
          .elif (not_empty te_dim)
            .assign memory_size = te_dim.elementCount
            .// multiply {te_dim.elementCount} by the word width (4bytes  = 32bit)
            .assign memory_size = memory_size * 4
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.Name}_i ${memory_offset_name} ${memory_size}\n"
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen;
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.Name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${register_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.Name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'succeeds']
        .end while
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .if (not_empty s_sdt_return )
            .assign memory_size = 0;
            .select many s_mbrs related by s_sdt_return->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4;
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_MEM_OFFSET"
            .assign memory_description = "${memory_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.Name}_i ${memory_offset_name} ${memory_size}\n"
          .//.elif (not_empty te_dim)
            .// returning array here not supported
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen;
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_MEM_OFFSET"
            .assign memory_description = "${memory_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.Name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${te_mact.Descrip}"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.Name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
        .end if
      .else
        .//.for each te_parm in te_parms
        .//  .assign register_address = register_address + 4;
        .//.end for
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
  .//
  .assign attr_create_model = attr_create_model + "  } {} -type /TLM/$$bp_logical_template/${te_c.Name} "
  .assign attr_create_model = attr_create_model + "  -a {\n  {generic_clock clock}\n  {clock {1 ns}}\n  {verbose_parameters true}\n"
  .assign attr_create_model = attr_create_model + "  ${pilpeline_length}"
  .assign attr_create_model = attr_create_model + "  } -m {\n${attr_register_declaration}} -generate_kind pvt -pv_kind template -timing_kind policies -max_parameters_of_pv_constructor 5 -include RegDefs.h\n"
  .assign attr_create_model = attr_create_model + "\n  # see if we are to save in a project\n  if { [info exists vista_project] } {\n      save_model /TLM/$$bp_logical_model/${te_c.Name}_bp -generate -vista-project $$vista_project\n  } else {\n      save_model /TLM/$$bp_logical_model/${te_c.Name}_bp -generate\n  }\n\n"
  .//
  .assign attr_createFolderStructure = attr_createFolderStructure + "\n  file mkdir $$bp_physical_template/${te_c.module_file}\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_pv_template.cpp  $$bp_physical_template/${te_c.module_file}/pv_template.cpp\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_pv_template.h  $$bp_physical_template/${te_c.module_file}/pv_template.h\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_procs.tcl  $$bp_physical_template/${te_c.module_file}/procs.tcl\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_machine_arch.tcl  $$bp_physical_template/${te_c.module_file}/machine_arch.tcl\n"
  .assign attr_createFolderStructure = attr_createFolderStructure + "  file copy  -force $$bp_source/vista_tlm/${te_c.module_file}_init_data.tcl  $$bp_physical_template/${te_c.module_file}/init_data\n\n"
  .//
  .assign attr_add_template = "  add_template -f [file join ""/TLM/"" $$bp_logical_template ${te_c.Name}]  [file join $$absPath $$bp_physical_template ""${te_c.Name}""]\n"
.end function
.//
.//============================================================================
.// Build an ISR/polling interface to the hardware.
.//============================================================================
.function TE_MACT_CreateISR
  .param inst_ref_set te_macts
  .select any te_file from instances of TE_FILE
  .select many first_te_macts related by te_macts->TE_C[R2002]->TE_MACT[R2002] where ( selected.Order == 0 )
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .include "${te_file.arc_path}/t.component.port.isr.c"
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
    .end while
  .end for
.end function
.//
.//============================================================================
.//
.//============================================================================
.// Generate message orders (commands).
.//============================================================================
.function TE_MACT_GenerateTLMMessageOrder
  .param inst_ref te_mact
  .assign attr_message_order = ""
  .assign message_order = 0
  .while ( not_empty te_mact )
    .assign attr_message_order = attr_message_order + "#define   ${te_mact.GeneratedName}_order ${message_order}\n"
    .assign message_order = message_order + 1
    .select one te_mact related by te_mact->TE_MACT[R2083.'succeeds']
  .end while
.end function
.//
.//============================================================================
.// This function is used to Reverse the order of parameters 
.//============================================================================
.function te_parm_ReverseParameters
  .param inst_ref_set te_parms
  .param inst_ref c_io
  .assign defn = " void"
  .assign invo = ""
  .assign param_delimiter = " "
  .assign item_count = cardinality te_parms
  .//
  .// 1. get the last property parameter
  .select any last_c_pp from instances of C_PP where ( false )
  .select many c_pps related by c_io->C_EP[R4004]->C_PP[R4006]
  .for each c_pp in c_pps
    .select one next_c_pp related by c_pp->C_PP[R4021.'succeeds']
    .if ( empty next_c_pp )
      .assign last_c_pp = c_pp
      .break for
    .end if
  .end for
  .//
  .// 2. reverse the order of parameters
  .assign current_c_pp = last_c_pp
  .if ( 0 < item_count )
    .assign defn = ""
    .while ( not_empty current_c_pp )
        .select one previous_c_pp related by current_c_pp->C_PP[R4021.'precedes']
        .select one te_parm related by current_c_pp->TE_PARM[R2048]
        .select one te_dt related by te_parm->TE_DT[R2049]
        .assign te_dt.Included = true
        .assign param_qual = ""
        .if ( 0 != te_parm.By_Ref )
          .assign param_qual = " *"
        .end if
        .assign defn = ( ( defn + param_delimiter ) + ( te_dt.ExtName + param_qual ) ) + ( " " + te_parm.GeneratedName  )
        .assign invo = ( invo + param_delimiter ) + ( " " + te_parm.GeneratedName )
        .assign param_delimiter = ", "
        .assign current_c_pp = previous_c_pp
    .end while
  .end if
  .assign attr_definition = defn + " "
  .assign attr_invocation = invo
.end function
.//
.//============================================================================
.// This function is used to modify the parameters invocation of the signal's 
.// structure to be ordered alphabetically.
.//============================================================================
.function struct_RenderParameters
  .param inst_ref_set te_parms
  .param string struct_name
  .assign invo = ""
  .assign param_delimiter = " "
  .assign item_number = 0
  .assign item_count = cardinality te_parms
  .if ( 0 < item_count )
    .invoke SortSetAlphabeticallyByNameAttr( te_parms )
    .assign defn = ""
    .while ( item_number < item_count )
      .for each te_parm in te_parms
        .if ( te_parm.Order == item_number )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .assign te_dt.Included = true
          .assign invo =( invo + param_delimiter ) + ( (struct_name +".") + (te_parm.GeneratedName) )
          .assign param_delimiter = ", "
          .break for
        .end if
      .end for
      .assign item_number = item_number + 1
    .end while
  .end if
  .assign attr_invocation = invo
.end function
.//
.// ============================================================================
.// Generate VFB header files
.// ============================================================================
.function Create_VFB_Rte_Header
  .param inst_ref_set te_macts
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .assign parameteri = "dp_signal"
  .assign parameterdt = "dt_xtUMLSignal"
  .assign attr_autosar_vfb = ""
  .assign attr_autosar_vfb_dataType_header=""
  .assign attr_vfb_header_comments="\n"
  .assign attr_vfb_header_comments= attr_vfb_header_comments + "/*----------------------------------------------------------------------------------------------\n"
  .assign attr_vfb_header_comments= attr_vfb_header_comments + "* File:  Rte_Swc${te_c.Name}.h\n*\n"
  .assign attr_vfb_header_comments= attr_vfb_header_comments + "* VFB generated file\n*\n"
  .assign attr_vfb_header_comments= attr_vfb_header_comments + "* Please Remove this file if you need to make this project portable to VSI project ( with RTE )\n*\n"
  .assign attr_vfb_header_comments= attr_vfb_header_comments + "*-----------------------------------------------------------------------------------------------*/\n\n"
  .assign attr_autosar_vfb = attr_autosar_vfb + "\n#ifndef RTE_SWC_$u{te_c.Name}_H\n#define RTE_SWC_$u{te_c.Name}_H\n\n"
  .assign attr_autosar_vfb = attr_autosar_vfb + "#include ""${te_file.types}.${te_file.hdr_file_ext}""\n\n"
  .assign attr_autosar_vfb_dataType_header = "\n#ifndef RTE_TYPE_H\n#define RTE_TYPE_H\n\n"
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "#include ""${te_file.types}.${te_file.hdr_file_ext}""\n\n"
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "typedef unsigned char uint8;\n"
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "typedef int* Rte_Instance;\ntypedef bool dt_xtUMLSignal;\n" 
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "typedef uint8 Std_ReturnType;\n\n"
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "#define RTE_APPL_CODE  /* Empty */\n\n"         
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "#define FUNC(ReturnType, RTE_CODE)  RTE_CODE ReturnType\n\n" 
  .assign attr_autosar_vfb_dataType_header = attr_autosar_vfb_dataType_header + "\n#endif\n"
  .select many empty_foreign_te_macts from instances of TE_MACT where ( false )
  .for each te_mact in te_macts
    .assign parameters_with_dt = ""
    .assign parameters_with_dt_ref = ""
    .assign parameters = ""
    .assign foreign_te_macts = empty_foreign_te_macts
    .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .if ( ( te_mact.subtypeKL == "SPR_RO" ) or ( te_mact.subtypeKL == "SPR_PO" ) )
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .select any operation from instances of C_IO where ( selected.Name == "${te_mact.MessageName}")
        .select many te_parms related by operation->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
        .assign parmsCount = cardinality te_parms
        .if ( te_mact.subtypeKL == "SPR_RO" )
          .select one spr_ro related by te_mact->SPR_RO[R2052]
          .select many spr_pos related by spr_ro->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PO[R4503] where ( selected.Name == spr_ro.Name )
          .select many foreign_te_macts related by spr_pos->TE_MACT[R2050]
        .else
          .select one spr_po related by te_mact->SPR_PO[R2050]
          .select many spr_ros related by spr_po->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RO[R4502] where ( selected.Name == spr_po.Name )
          .select many foreign_te_macts related by spr_ros->TE_MACT[R2052]
        .end if
        .for each foreign_te_mact in foreign_te_macts
        .if ( 0 == parmsCount )
          .assign parameters_with_dt = ""
        .elif ( parmsCount == 1 )
          .select any te_parm related by operation->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048];
          .select one dt related by te_parm->TE_DT[R2049];
          .if ( 0 == te_parm.By_Ref )
            .assign parameters_with_dt = " ${dt.ExtName} ${te_parm.GeneratedName}"
          .else
            .assign parameters_with_dt = " ${dt.ExtName} * ${te_parm.GeneratedName}"
          .end if
        .else
          .// Use the packed struct of params
          .assign parameters_with_dt = " dt_${operation.Name}_param ${operation.Name}_param"
        .end if
        .if ( "" != parameters_with_dt )
          .if ( "void" == te_aba.ReturnDataType )
            .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt} );\n\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt});\n\n\n"
          .else
            .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt}, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out );\n\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt}, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out );\n\n\n"
          .end if
        .else
          .if ( "void" == te_aba.ReturnDataType )
            .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self );\n\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self );\n\n\n"
          .else
            .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out );\n " 
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out );\n\n\n"
          .end if
        .end if
        .end for
      .else
        .if ( te_mact.subtypeKL == "SPR_PS" )
          .select one spr_ps related by te_mact->SPR_PS[R2051]
          .select many spr_rss related by spr_ps->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RS[R4502] where ( selected.Name == spr_ps.Name )
          .select many foreign_te_macts related by spr_rss->TE_MACT[R2053]
        .elif ( te_mact.subtypeKL == "SPR_RS" )
          .select one spr_rs related by te_mact->SPR_RS[R2053]
          .select many spr_pss related by spr_rs->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PS[R4503] where ( selected.Name == spr_rs.Name )
          .select many foreign_te_macts related by spr_pss->TE_MACT[R2051]
        .end if
        .select any signal from instances of C_AS where ( selected.Name == "${te_mact.MessageName}")
        .select many te_parms related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
        .assign parmsCount = cardinality te_parms
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .if ( 0 == parmsCount )
          .assign parameters_with_dt = ""
          .assign parameters_with_dt_ref = ""
        .elif ( parmsCount == 1 )
          .select any te_parm related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048];
          .select one dt related by te_parm->TE_DT[R2049];
          .if ( 0 == te_parm.By_Ref )
            .assign parameters_with_dt = " ${dt.ExtName} ${te_parm.GeneratedName}"
          .else
            .assign parameters_with_dt = " ${dt.ExtName} * ${te_parm.GeneratedName}"
          .end if
          .assign parameters_with_dt_ref = " ${dt.ExtName} * ${te_parm.Name}"
          .assign parameters = "${te_parm.Name}"  
        .else
          .// Use the packed struct of params
          .assign parameters_with_dt = " dt_${signal.Name}_param ${signal.Name}_param"
          .assign parameters_with_dt_ref = " dt_${signal.Name}_param * ${signal.Name}_param"
          .assign parameters = "${signal.Name}_param"
        .end if
        .for each foreign_te_mact in foreign_te_macts
        .if ( "" != parameters_with_dt )
          .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self, ${parameters_with_dt} );\n"
          .// NOTE: SKB - the original implementation of the following line used the foreign_te_mact's PortName instead of 
          .// InterfaceName.  Since it now uses the InterfaceName, we could (should?) use the te_mact instead of foreign_te_mact
          .// since the InterfaceName will be the same on both sides whereas the PortName was not guaranteed to be the same on 
          .// both sides.  This pattern repeats in some other places in this file where Rte_Read is used.
          .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Read_Swc${te_sys.Name}_rp_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self, ${parameters_with_dt_ref} );\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self );\n\n"
        .else
          .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self );\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + "extern FUNC(Std_ReturnType, RTE_CODE) Rte_Read_Swc${te_sys.Name}_rp_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self );\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(void,RTE_APPL_CODE) ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self );\n"
        .end if    
        .end for
      .end if
    .end if
  .end for
  .assign attr_autosar_vfb = attr_autosar_vfb + "\n#endif"
.end function
.//
.// ============================================================================
.// Generate VFB C files
.// ============================================================================
.function Create_VFB_Rte_C
  .param inst_ref_set te_macts
  .param inst_ref te_c
  .select one te_sys related by te_c->TE_SYS[R2065]
  .assign attr_parameters_save_with_dt = "\n"
  .assign attr_autosar_vfb = ""
  .assign attr_include_header= "\n#include ""Rte_Swc${te_c.Name}.h""\n"
  .assign parameteri = "dp_signal"
  .assign parameterdt = "dt_xtUMLSignal"
  .assign attr_vfb_C_comments= "\n"
  .assign attr_vfb_C_comments= attr_vfb_C_comments + "/*----------------------------------------------------------------------------------------------\n"
  .assign attr_vfb_C_comments= attr_vfb_C_comments + "* File:  ${te_c.Name}_vfb.c\n*\n"
  .assign attr_vfb_C_comments= attr_vfb_C_comments + "* VFB generated file\n*\n"
  .assign attr_vfb_C_comments= attr_vfb_C_comments + "* Please Remove this file if you need to make this project portable to VSI project ( with RTE )\n*\n"
  .assign attr_vfb_C_comments= attr_vfb_C_comments + "*-----------------------------------------------------------------------------------------------*/\n\n"
  .select any empty_foreign_te_mact from instances of TE_MACT where ( false )
  .for each te_mact in te_macts
    .assign parameters_with_dt = ""
    .assign parameters_with_dt_ref = ""
    .assign parameters = ""
    .assign parameters_save = ""
    .assign parameters_read = ""
    .assign foreign_te_mact = empty_foreign_te_mact
    .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .if ( ( te_mact.subtypeKL == "SPR_RO" ) or ( te_mact.subtypeKL == "SPR_PO" ) )
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .select any operation from instances of C_IO where ( selected.Name == te_mact.MessageName )
        .select many te_parms related by operation->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
        .assign parmsCount = cardinality te_parms
        .if ( te_mact.subtypeKL == "SPR_RO" )
          .select one spr_ro related by te_mact->SPR_RO[R2052]
          .select one spr_po related by spr_ro->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PO[R4503] where ( selected.Name == spr_ro.Name )
          .select one temp_foreign_te_mact related by spr_po->TE_MACT[R2050]
          .assign foreign_te_mact = temp_foreign_te_mact
        .else
          .select one spr_po related by te_mact->SPR_PO[R2050]
          .select any spr_ro related by spr_po->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RO[R4502] where ( selected.Name == spr_po.Name )
          .select one temp_foreign_te_mact related by spr_ro->TE_MACT[R2052]
          .assign foreign_te_mact = temp_foreign_te_mact
        .end if
        .if ( 0 == parmsCount )
          .assign parameters_with_dt = ""
          .assign parameters = ""
        .elif ( parmsCount == 1 )
          .select any te_parm related by operation->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048];
          .select one dt related by te_parm->TE_DT[R2049];
          .if ( 0 == te_parm.By_Ref )
            .assign parameters_with_dt = " ${dt.ExtName} ${te_parm.GeneratedName}"
          .else
            .assign parameters_with_dt = " ${dt.ExtName} * ${te_parm.GeneratedName}"
          .end if
          .assign parameters = "${te_parm.GeneratedName} "
        .else
          .// Use the packed struct of params
          .assign parameters_with_dt = " dt_${operation.Name}_param ${operation.Name}_param"
          .assign parameters = "${operation.Name}_param "
        .end if
        .if ( not_empty foreign_te_mact )
        .if ( "" != parameters_with_dt )
          .if ( "void" == te_aba.ReturnDataType )
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt} ){\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( self, ${parameters});\n  return 0;\n}\n\n"
          .else
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${parameters_with_dt}, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out ){\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( self, ${parameters}, ${te_mact.MessageName}Out );\n  return 0;\n}\n\n"
          .end if
        .else
          .if ( "void" == te_aba.ReturnDataType )
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self ){\n"
            .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( self );\n  return 0;\n}\n\n"
          .else
            .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Call_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance self, ${te_aba.ReturnDataType} * ${te_mact.MessageName}Out ){\n" 
            .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( self, ${te_mact.MessageName}Out );\n  return 0;\n}\n\n"
          .end if
        .end if
        .end if
      .else
        .if ( te_mact.subtypeKL == "SPR_PS" )
          .select one spr_ps related by te_mact->SPR_PS[R2051]
          .select any spr_rs related by spr_ps->SPR_PEP[R4503]->C_P[R4501]->C_SF[R4002]->C_R[R4002]->SPR_REP[R4500]->SPR_RS[R4502] where ( selected.Name == spr_ps.Name )
          .select one temp_foreign_te_mact related by spr_rs->TE_MACT[R2053]
          .assign foreign_te_mact = temp_foreign_te_mact
        .elif ( te_mact.subtypeKL == "SPR_RS" )
          .assign subtypeKL_RS = 1
          .select one spr_rs related by te_mact->SPR_RS[R2053]
          .select any spr_ps related by spr_rs->SPR_REP[R4502]->C_R[R4500]->C_SF[R4002]->C_P[R4002]->SPR_PEP[R4501]->SPR_PS[R4503] where ( selected.Name == spr_rs.Name )
          .select one temp_foreign_te_mact related by spr_ps->TE_MACT[R2051]
          .assign foreign_te_mact = temp_foreign_te_mact
        .end if
        .select any signal from instances of C_AS where ( selected.Name == "${te_mact.MessageName}")
        .select many te_parms related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048]
        .assign parmsCount = cardinality te_parms
        .select one te_aba related by te_mact->TE_ABA[R2010]
        .if ( 0 == parmsCount )
          .assign parameters_with_dt = ""
          .assign parameters_with_dt_ref = ""
          .assign parameters = ""
        .elif ( parmsCount == 1 )
          .select any te_parm related by signal->C_EP[R4004]->C_PP[R4006]->TE_PARM[R2048];
          .select one dt related by te_parm->TE_DT[R2049];
          .if ( 0 == te_parm.By_Ref )
            .assign parameters_with_dt = " ${dt.ExtName} ${te_parm.GeneratedName}"
          .else
            .assign parameters_with_dt = " ${dt.ExtName} * ${te_parm.GeneratedName}"
          .end if
          .assign parameters_with_dt_ref = " ${dt.ExtName} * ${te_parm.GeneratedName}"
          .assign attr_parameters_save_with_dt = attr_parameters_save_with_dt + "  ${dt.ExtName} ${te_mact.ComponentName}_${te_mact.MessageName}_${te_parm.Name} ;\n "
          .if ( 0 == te_parm.By_Ref )
            .assign parameters_save = " ${te_mact.ComponentName}_${te_mact.MessageName}_${te_parm.Name} = ${te_parm.GeneratedName} ;\n "
          .else
            .assign parameters_save = " ${te_mact.ComponentName}_${te_mact.MessageName}_${te_parm.Name} = ( ${dt.ExtName} ) (* ${te_parm.GeneratedName} );\n "
          .end if
          .assign parameters_read = " *${te_parm.GeneratedName} = ${te_mact.ComponentName}_${te_mact.MessageName}_${te_parm.Name};\n"
          .assign parameters = "${te_parm.Name} "  
        .else
          .// Use the packed struct of params
          .assign parameters_with_dt = " dt_${signal.Name}_param ${signal.Name}_param"
          .assign parameters_with_dt_ref = " dt_${signal.Name}_param * ${signal.Name}_param"
          .assign attr_parameters_save_with_dt = attr_parameters_save_with_dt + "  dt_${signal.Name}_param ${te_mact.ComponentName}_${signal.Name}_param ;\n "
          .assign parameters_read = " *${signal.Name}_param = ${te_mact.ComponentName}_${te_mact.MessageName}_param;\n"
          .assign parameters = "${signal.Name}_param "  
        .end if
        .if ( not_empty foreign_te_mact )
        .if ( "" != parameters_with_dt )
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self, ${parameters_with_dt} ){\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + " ${parameters_save} "
          .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_self );\n  return 0;\n}\n\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Read_Swc${te_sys.Name}_rp_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self, ${parameters_with_dt_ref} ){\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + " ${parameters_read}\n  return 0;\n}\n\n"
        .else
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Write_Swc${te_sys.Name}_rp_${te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self ){\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + " ${parameters_save} "
          .assign attr_autosar_vfb = attr_autosar_vfb + "  ib_${foreign_te_mact.ComponentName}_ru_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_self );\n  return 0;\n}\n\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + "FUNC(Std_ReturnType, RTE_CODE) Rte_Read_Swc${te_sys.Name}_rp_${foreign_te_mact.InterfaceName}_${te_mact.MessageName}( Rte_Instance Rte_self ){\n"
          .assign attr_autosar_vfb = attr_autosar_vfb + " ${parameters_read}\n  return 0;\n}\n\n "
        .end if    
        .end if    
      .end if
    .end if
  .end for
.end function
.//
.// ============================================================================
.// Generate VFB related files
.// ============================================================================
.function Create_VFB_Target_Functions_File
  .select any te_file from instances of TE_FILE
  .assign attr_functions_header=""
  .assign attr_target_header=""
  .assign attr_functions_C=""
  .assign attr_vfb_Target_comments= "\n"
  .assign attr_vfb_Functions_H_comments= "\n"
  .assign attr_vfb_Functions_C_comments= "\n"
  .assign attr_vfb_Target_comments= attr_vfb_Target_comments + "/*----------------------------------------------------------------------------------------------\n"
  .assign attr_vfb_Target_comments= attr_vfb_Target_comments + "* File:  target.h\n*\n"
  .assign attr_vfb_Target_comments= attr_vfb_Target_comments + "* VFB generated file\n*\n"
  .assign attr_vfb_Target_comments= attr_vfb_Target_comments + "* Please Remove this file if you need to make this project portable to VSI project ( with RTE )\n*\n"
  .assign attr_vfb_Target_comments= attr_vfb_Target_comments + "*-----------------------------------------------------------------------------------------------*/\n\n"
  .assign attr_vfb_Functions_H_comments= attr_vfb_Functions_H_comments + "/*----------------------------------------------------------------------------------------------\n"
  .assign attr_vfb_Functions_H_comments= attr_vfb_Functions_H_comments + "* File:  Functions.h\n*\n"
  .assign attr_vfb_Functions_H_comments= attr_vfb_Functions_H_comments + "* VFB generated file\n*\n"
  .assign attr_vfb_Functions_H_comments= attr_vfb_Functions_H_comments + "* Please Remove this file if you need to make this project portable to VSI project ( with RTE )\n*\n"
  .assign attr_vfb_Functions_H_comments= attr_vfb_Functions_H_comments + "*-----------------------------------------------------------------------------------------------*/\n\n"
  .assign attr_vfb_Functions_C_comments= attr_vfb_Functions_C_comments + "/*----------------------------------------------------------------------------------------------\n"
  .assign attr_vfb_Functions_C_comments= attr_vfb_Functions_C_comments + "* File:  Functions.c\n*\n"
  .assign attr_vfb_Functions_C_comments= attr_vfb_Functions_C_comments + "* VFB generated file\n*\n"
  .assign attr_vfb_Functions_C_comments= attr_vfb_Functions_C_comments + "* Please Remove this file if you need to make this project portable to VSI project ( with RTE )\n*\n"
  .assign attr_vfb_Functions_C_comments= attr_vfb_Functions_C_comments + "*-----------------------------------------------------------------------------------------------*/\n\n"
  .assign attr_target_header=attr_target_header + "\n#ifndef TARGET_H\n#define TARGET_H\n\n"
  .assign attr_target_header=attr_target_header+ "\n#endif"  
  .assign attr_functions_header=attr_functions_header + "\n#ifndef FUNCTION_H\n#define FUNCTION_H\n\n"    
  .assign attr_functions_header=attr_functions_header + "#include ""${te_file.types}.${te_file.hdr_file_ext}""\n\n" 
  .assign attr_functions_header=attr_functions_header + "extern void TIM_update(void);\n" 
  .assign attr_functions_header=attr_functions_header + "extern void ooa_loop( u1_t * t );\n" 
  .assign attr_functions_header=attr_functions_header + "extern void Escher_xtUMLmain(void);\n"
  .assign attr_functions_header=attr_functions_header+ "\n\n#endif\n"
  .assign attr_functions_C=attr_functions_C + "\n#include ""functions_vfb.h""\n"
  .assign attr_functions_C=attr_functions_C + "void TIM_update(void)\n{\n}\n"
  .assign attr_functions_C=attr_functions_C + "void ooa_loop( u1_t * t )\n{\n}\n"
  .assign attr_functions_C=attr_functions_C + "void Escher_xtUMLmain(void)\n{\n}\n"
.end function
.//
