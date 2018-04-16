.//============================================================================
.// Component port level query for generating port declaration and definitions.
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
  .assign attr_include_files = "#include ""${te_file.types}.${te_file.hdr_file_ext}""\n"
  .for each local_te_c in te_cs
    .if ( te_sys.SystemCPortsType == "TLM" )
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}_bp_pv.${te_file.hdr_file_ext}""\n"
    .else
      .assign attr_include_files = attr_include_files + "#include ""${local_te_c.Name}.${te_file.hdr_file_ext}""\n"
    .end if
  .end for
  .// Get the TE_EEs that are not connected to a component.
  .select many global_te_ees from instances of TE_EE where ( selected.Included )
  .for each te_ee in global_te_ees
    .select one my_te_c related by te_ee->TE_C[R2085]
    .if ( not_empty my_te_c )
      .assign global_te_ees = global_te_ees - te_ee
    .end if
  .end for
  .select many te_ees related by te_c->TE_EE[R2085] where ( selected.Included )
  .assign te_ees = te_ees | global_te_ees
  .for each te_ee in te_ees
    .assign attr_include_files = attr_include_files + "#include ""${te_ee.Include_File}""\n"
  .end for
.end function
.//
.//============================================================================
.// Build the include file body for the component port action.
.//============================================================================
.function TE_MACT_CreateDeclarations
  .param inst_ref_set first_te_macts
  .param boolean provision
  .param boolean is_pure_virtual
  .select any te_sys from instances of TE_SYS
  .assign gen_struct_channel = false
  .if (( te_sys.SystemCPortsType == "BitLevelSignals" ) and ( not is_pure_virtual ) )
    .assign gen_struct_channel = true
  .end if
  .assign virtual = ""
  .assign initializer = ""
  .assign bind_port = ""
  .assign provided_port_declaration = ""
  .assign required_port_declaration = ""
  .assign channels_declaration = ""
  .assign required_reset_port = ""
  .assign provided_reset_port = ""
  .if ( is_pure_virtual )
    .assign initializer = " = 0"
    .assign virtual = "virtual "
  .end if
  .select any te_file from instances of TE_FILE
  .for each te_mact in first_te_macts
    .while ( not_empty te_mact )
      .select one te_aba related by te_mact->TE_ABA[R2010]
    .if ( (te_sys.SystemCPortsType == "TLM") or (te_sys.SystemCPortsType == "sc_interface") )
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .// inbound message
        .include "${te_file.arc_path}/t.component.message.h"
      .end if
    .else
      .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
      .while ( not_empty te_parm )
        .select one te_dt related by te_parm->TE_DT[R2049]
        .assign signal_name = ""
        .assign signal_type = ""
        .assign array_index = ""
        .assign for_loop = ""
        .assign end_for_loop = ""
        .assign array_spec = ""
        .//--- Check for structure UDTs
        .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
        .if(not_empty s_sdt)
          .select many s_mbrs related by s_sdt->S_MBR[R44]
          .for each s_mbr in s_mbrs
            .assign signal_name = ""
            .assign signal_type = ""
            .assign array_index = ""
            .assign for_loop = ""
            .assign end_for_loop = ""
            .assign array_spec = ""
            .select one te_mbr related by s_mbr->TE_MBR[R2047]
            .select one te_dt related by te_mbr->TE_DT[R2068]
            .assign signal_type = te_dt.ExtName
            .assign signal_name = "${te_parm.Name}_${s_mbr.Name}"
            .assign initializer = te_dt.Initial_Value
            .if ( 0 < te_mbr.dimensions )
              .assign array_index = "[i]"
              .assign array_spec = te_mbr.array_spec
              .assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
              .assign end_for_loop = "}}"
            .end if
            .//0 = To provider,  1 = From Provider
            .if(te_mact.Direction == 0)
              .assign provided_port_declaration = provided_port_declaration + "  sc_out < ${signal_type} >  ${signal_name}${array_spec};\n"
              .assign required_port_declaration = required_port_declaration + "  sc_in < ${signal_type} >  ${signal_name}${array_spec};\n"
              .assign provided_reset_port = provided_reset_port + " ${for_loop}\n\t${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
            .else
              .assign provided_port_declaration = provided_port_declaration + "  sc_in < ${signal_type} >  ${signal_name}${array_spec};\n"
              .assign required_port_declaration = required_port_declaration + "  sc_out < ${signal_type} >  ${signal_name}${array_spec};\n"
              .assign required_reset_port = required_reset_port + " ${for_loop}\n\t${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
            .end if
            .assign channels_declaration      = channels_declaration       + "  sc_signal < ${signal_type} >  ${signal_name}${array_spec};\n"
            .assign bind_port = bind_port + "    ${for_loop}${signal_name}${array_index}  (c.${signal_name}${array_index});${end_for_loop}\n"
          .end for
        .else
          .assign signal_type = te_dt.ExtName
          .assign signal_name = te_parm.Name
          .assign initializer = te_dt.Initial_Value
          .if ( 0 < te_parm.dimensions )
            .assign array_index = "[i]"
            .assign array_spec = te_parm.array_spec
            .assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
            .assign end_for_loop = "}}"
          .end if
          .//0 = To provider,  1 = From Provider
          .if(te_mact.Direction == 0)
            .assign provided_port_declaration = provided_port_declaration + "  sc_out < ${signal_type} >  ${signal_name}${array_spec};\n"
            .assign required_port_declaration = required_port_declaration + "  sc_in < ${signal_type} >  ${signal_name}${array_spec};\n"
            .assign provided_reset_port = provided_reset_port + "   ${for_loop}\n\t${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
          .else
            .assign provided_port_declaration = provided_port_declaration + "  sc_in < ${signal_type} >  ${signal_name}${array_spec};\n"
            .assign required_port_declaration = required_port_declaration + "  sc_out < ${signal_type} >  ${signal_name}${array_spec};\n"
            .assign required_reset_port = required_reset_port + "   ${for_loop}\n\t${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
          .end if
          .assign channels_declaration      = channels_declaration       + "  sc_signal < ${signal_type} >  ${signal_name}${array_spec};\n"
          .assign bind_port = bind_port + "    ${for_loop}${signal_name}${array_index}  (c.${signal_name}${array_index});${end_for_loop}\n"
        .end if
        .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
      .end while
    .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
  .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
    .include "${te_file.arc_path}/t.component.message.h"
  .end if
.end function
.//
.//============================================================================
.// Generate Nested Component Instances
.//============================================================================
.function CN_CC_CreateNestedComponentInstances
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select one te_sys related by te_c->TE_SYS[R2065]
  .select many nested_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .for each te_c_nested in nested_te_cs
    .if ( te_c_nested.included_in_build )
      .assign comp_name = te_c_nested.Name
      .if ( te_sys.SystemCPortsType == "TLM" )
        .assign comp_name = comp_name + "_bp_pvt"
      .end if
      .assign instance_name = "i" + te_c_nested.Name
      .include "${te_file.arc_path}/t.component.nestedComponent.h"
    .end if
  .end for
  .select many te_cis related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009]
  .for each te_ci in te_cis
    .select one te_c_nested related by te_ci->TE_C[R2008]
    .if ( te_c_nested.included_in_build )
      .assign comp_name = te_c_nested.Name
      .if ( te_sys.SystemCPortsType == "TLM" )
        .assign comp_name = te_c_nested.Name + "_bp_pv"
      .end if
      .assign instance_name = te_ci.ClassifierName
      .if ( "" != instance_name )
        .assign instance_name = "i" + te_c_nested.Name
      .end if
      .include "${te_file.arc_path}/t.component.nestedComponent.h"
    .end if
  .end for
.end function
.//
.//============================================================================
.// Generate Nested Component Instances
.//============================================================================
.function CN_CC_CreateNestedComponentConstructors
  .param inst_ref te_c
  .select many nested_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .assign top_module_inits = ""
  .for each te_c_nested in nested_te_cs
    .assign comp_name = "i" + te_c_nested.Name
    .assign top_module_inits = top_module_inits + ", ${comp_name}(""${comp_name}_module"")"
  .end for
  .select many te_cis related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009]
  .for each te_ci in te_cis
    .select one te_c_nested related by te_ci->TE_C[R2008]
    .assign instance_name = te_ci.ClassifierName
    .if ( "" == instance_name )
      .assign instance_name = "i" + te_c_nested.Name
    .end if
    .assign top_module_inits = top_module_inits + ", ${instance_name}(""${instance_name}_module"")"
  .end for
${top_module_inits}\
.end function
.//
.//============================================================================
.// Generate Nested Component Instances
.//============================================================================
.function CN_CC_BindNestedComponentPorts
  .param inst_ref te_c
  .select one parent_c_c related by te_c->C_C[R2054]
  .select many nested_te_cs related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .assign attr_port_binding = ""
  .assign attr_bitLevelChannels = ""
  .select any empty_ep_pkg from instances of EP_PKG where ( false )
  .select any empty_te_ci related by te_c->TE_CI[R2008] where ( false )
  .for each te_c_nested in nested_te_cs
    .invoke bind = TE_C_BindPorts( te_c_nested, empty_te_ci, empty_ep_pkg, parent_c_c )
    .assign attr_port_binding = attr_port_binding + bind.port_binding
    .assign attr_bitLevelChannels = attr_bitLevelChannels + bind.bitLevelChannels
  .end for
  .select many te_cis related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]->TE_CI[R2009]
  .for each te_ci in te_cis
    .select one te_c_nested related by te_ci->TE_C[R2008]
    .invoke bind = TE_C_BindPorts( te_c_nested, te_ci, empty_ep_pkg, parent_c_c )
    .assign attr_port_binding = attr_port_binding + bind.port_binding
    .assign attr_bitLevelChannels = attr_bitLevelChannels + bind.bitLevelChannels
  .end for
.end function
.//
.//============================================================================
.// Bind Ports
.//============================================================================
.function TE_C_BindPorts
  .param inst_ref te_c
  .param inst_ref te_ci
  .param inst_ref ep_pkg
  .param inst_ref parent_c_c
  .select any te_sys from instances of TE_SYS
  .assign attr_port_binding = ""
  .assign attr_bitLevelChannels = ""
  .if ( te_c.included_in_build )
    .assign comp_inst = ""
    .if ( empty te_ci )
      .assign comp_inst = "i" + te_c.Name
    .else
      .assign comp_inst = te_ci.ClassifierName
      .if ( "" == comp_inst )
        .assign comp_inst = "i" + te_c.Name
      .end if
    .end if
    .//
    .// -- bind clk and reset ports
    .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
      .assign attr_port_binding = attr_port_binding + "    ${comp_inst}.clk(clk);\n"
      .assign attr_port_binding = attr_port_binding + "    ${comp_inst}.rst_X(rst_X);\n"
    .end if
    .// -- bind other ports
    .select many te_pos related by te_c->TE_PO[R2005]
    .for each te_po in te_pos
      .assign other_comp_name = ""
      .assign other_port_name = ""
      .assign empty_connection = false;
      .invoke other_way = TE_C_GetOtherWayConnection ( te_c, te_ci, te_po, ep_pkg, parent_c_c )
      .if ( other_way.other_c_c_id == "" )
        .assign empty_connection = true;
      .else
        .select any other_comp_cc from instances of C_C where ( "${selected.Id}" == other_way.other_c_c_id )
        .select one other_comp_te_c related by other_comp_cc->TE_C[R2054]
        .select any other_c_po related by other_comp_cc->C_PO[R4010] where ( "${selected.Id}" == other_way.other_c_po_id )
        .select any other_te_po related by other_c_po->TE_PO[R2044]
        .assign other_port_name = other_te_po.GeneratedName
        .if ( other_way.other_cl_ic_id == "" )
          .assign other_comp_name = "i" + other_comp_te_c.Name
        .else
          .select any other_comp_cl_ic from instances of CL_IC where ( "${selected.Id}" == other_way.other_cl_ic_id )
          .assign other_comp_name = other_comp_cl_ic.ClassifierName
          .if ( "" == other_comp_name )
            .assign other_comp_name = "i" + other_comp_te_c.Name
          .end if
        .end if
      .end if
      .//
      .assign unconnected_comment_start = ""
      .assign unconnected_comment_end = ""
      .if(empty_connection == true)
        .assign unconnected_comment_start = "/* ---- WARNING: Port Not Connected \n    "
        .assign unconnected_comment_end = "    */\n"
      .end if
      .//
      .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
        .if ( other_way.isDelegated )
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}(${other_port_name});\n${unconnected_comment_end}"
        .else
          .if ( te_po.Provision )
            .assign attr_bitLevelChannels = attr_bitLevelChannels + "  ${te_po.InterfaceName}_channel ${comp_inst}_${te_po.GeneratedName}_channel;\n"
            .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}(${comp_inst}_${te_po.GeneratedName}_channel);\n${unconnected_comment_end}"
          .else
            .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}(${other_comp_name}_${other_port_name}_channel);\n${unconnected_comment_end}"
          .end if
        .end if
      .elif ( te_sys.SystemCPortsType == "TLM" )
        .if ( other_way.isDelegated )
          .//In case of delegation, connect the internal component port to its parent port (delegation)
          .//and then connect the wrapper ports on each other in order not to leave any port dangling
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.m_${te_c.Name}.${te_po.GeneratedName}(${other_port_name});\n${unconnected_comment_end}"
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}_o.bind(${comp_inst}.${other_port_name}_i);\n${unconnected_comment_end}"
        .else
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}_o.bind(${other_comp_name}.${other_port_name}_i);\n${unconnected_comment_end}"
        .end if
      .else
        .if ( other_way.isDelegated )
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}.bind(${other_port_name});\n${unconnected_comment_end}"
        .else
          .assign attr_port_binding = attr_port_binding + "    ${unconnected_comment_start}${comp_inst}.${te_po.GeneratedName}(${other_comp_name});\n${unconnected_comment_end}"
        .end if
      .end if
    .end for
  .end if
.end function
.//
.//============================================================================
.// Reterieve the port on the other side
.//============================================================================
.function TE_C_GetOtherWayConnection
  .param inst_ref te_c
  .param inst_ref te_ci
  .param inst_ref te_po
  .param inst_ref pkg
  .param inst_ref parent_c_c
  .//
  .assign other_way_c_po_id = ""
  .assign other_way_c_c_id = ""
  .assign other_way_cl_ic_id = ""
  .assign isDelegated = false
  .//
  .assign parent_c_c_id = ""
  .if (not_empty parent_c_c)
    .assign parent_c_c_id = "${parent_c_c.Id}"
  .end if
  .assign pkg_Id = ""
  .if(not_empty pkg)
    .assign pkg_Id = "${pkg.Package_ID}"
  .end if
  .//
  .//.select any c_ir related by te_po->C_I[R2007]->C_IR[R4012] where ( selected.Port_ID == te_po.ID )
  .//.select one c_po related by c_ir->C_PO[R4016]
  .select one c_po related by te_po->C_PO[R2044]
  .select any c_ir related by c_po->C_IR[R4016]
  .select one c_i related by c_ir->C_I[R4012]
  .select any delegate_pkg from instances of EP_PKG where ( false )
  .//------------------------------------------------------------------------
  .// --- Provided Interface
  .//------------------------------------------------------------------------
  .if(te_po.Provision)
    .assign port_name = c_po.Name
    .// ------ 1- Check for delegation
    .assign delegate_c_c_id = ""
    .assign delegate_pkg_id = ""
    .if ( not_empty te_ci )
      .select one cl_iir_provider related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where ( selected.Ref_Id == c_ir.Id )
      .select one delegate_c_c related by cl_iir_provider->C_DG[R4704]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${parent_c_c_id}" )
      .if ( not_empty delegate_c_c )
        .assign delegate_c_c_id  = "${delegate_c_c.Id}"
        .select one delegate_pkg related by delegate_c_c->PE_PE[R8001]->EP_PKG[R8000]
        .if (not_empty delegate_pkg)
          .assign delegate_pkg_id = "${delegate_pkg.Package_ID}"
        .end if
      .end if
    .else
      .select one delegate_c_c related by c_ir->C_DG[R4014]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${parent_c_c_id}" )
      .if ( not_empty delegate_c_c )
        .assign delegate_c_c_id  = "${delegate_c_c.Id}"
        .select one delegate_pkg related by delegate_c_c->PE_PE[R8001]->EP_PKG[R8000]
        .if (not_empty delegate_pkg)
          .assign delegate_pkg_id = "${delegate_pkg.Package_ID}"
        .end if
      .end if
    .end if
    .// Check that the delegate_c_c is within the same component package
    .if( ( delegate_c_c_id != "" ) and ( (pkg_Id == delegate_pkg_id) or (delegate_c_c_id == parent_c_c_id ) ) )
      .if(not_empty te_ci)
        .select one cl_iir_provider related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where (selected.Ref_Id == c_ir.Id)
        .select one other_way_c_po related by cl_iir_provider->C_DG[R4704]->C_RID[R4013]->C_IR[R4013]->C_PO[R4016]
        .assign other_way_c_po_id  = "${other_way_c_po.Id}"
        .assign other_way_c_c_id   = "${delegate_c_c_id}"
        .assign other_way_cl_ic_id = ""
        .assign isDelegated = true
      .else
        .select one other_way_c_po related by c_ir->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->C_PO[R4016]
        .assign other_way_c_po_id  = "${other_way_c_po.Id}"
        .assign other_way_c_c_id   = "${delegate_c_c_id}"
        .assign other_way_cl_ic_id = ""
        .assign isDelegated = true
      .end if
    .else
    .// ------ 2- Since the port is not delegated, bind this port to a signal which its name = port name
      .if(not_empty te_ci )
        .select one cl_iir_provider related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where (selected.Ref_Id == c_ir.Id)
        .select any cl_ic_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->CL_IR[R4706]->CL_IIR[R4703]->CL_POR[R4708]->CL_IC[R4707]  where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ( "${selected.ParentComp_Id}" == parent_c_c_id ) )
        .select any cn_cic_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->PE_PE[R8001]->C_C[R8003] where ( "${selected.Id}" == parent_c_c_id )
        .assign cn_cic_requirer_id = ""
        .if( not_empty cn_cic_requirer)
          .assign cn_cic_requirer_id = "${cn_cic_requirer.Id}"
        .end if
        .select one c_c_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010] where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ( "${selected.Id}" == cn_cic_requirer_id ) )
        .//
        .if ( not_empty  cl_ic_requirer )
          .select one c_c_requirer related by cl_ic_requirer->C_C[R4201]
          .select one cl_iir_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->CL_IR[R4706]->CL_IIR[R4703] where ( selected.ImportedComp_Id == cl_ic_requirer.Id )
          .select one other_way_cp related by cl_iir_requirer->C_IR[R4701]->C_R[R4009]
          .select one other_way_c_po related by other_way_cp->C_IR[R4009]->C_PO[R4016]
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = "${cl_ic_requirer.Id}"
          .assign isDelegated = false
        .elif (not_empty c_c_requirer)
          .select one other_way_c_po related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_requirer.Id )
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .else
          .assign other_way_c_po_id  = ""
          .assign other_way_c_c_id   = ""
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .end if
        .// --- 3- Since you are not a component reference, use c_ir to get the satsifaction
      .else
        .select any cl_ic_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->CL_IR[R4706]->CL_IIR[R4703]->CL_POR[R4708]->CL_IC[R4707] where ( ("${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ("${selected.ParentComp_Id}" == parent_c_c_id ) )
        .select any cn_cic_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->PE_PE[R8001]->C_C[R8003] where ( "${selected.Id}" == parent_c_c_id )
        .assign cn_cic_requirer_id = ""
        .if( not_empty cn_cic_requirer)
          .assign cn_cic_requirer_id = "${cn_cic_requirer.Id}"
        .end if
        .select any c_c_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010] where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ( "${selected.Id}" == cn_cic_requirer_id ) )
        .if( not_empty cl_ic_requirer )
          .select one c_c_requirer related by cl_ic_requirer->C_C[R4201]
          .select one cl_iir_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->CL_IR[R4706]->CL_IIR[R4703] where ( selected.ImportedComp_Id == cl_ic_requirer.Id )
          .select one other_way_c_r related by cl_iir_requirer->C_IR[R4701]->C_R[R4009]
          .select one other_way_c_po related by other_way_c_r->C_IR[R4009]->C_PO[R4016]
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = "${cl_ic_requirer.Id}"
          .assign isDelegated = false
        .elif ( not_empty c_c_requirer )
          .select any other_way_c_po related by c_ir->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_requirer.Id )
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .else
          .assign other_way_c_po_id  = ""
          .assign other_way_c_c_id   = ""
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .end if
      .end if
    .end if
  .//------------------------------------------------------------------------
  .// --- Required Interface
  .//------------------------------------------------------------------------
  .else
    .// ------ 1- Check for delegation
    .assign delegate_c_c_id = ""
    .assign delegate_pkg_id = ""
    .if(not_empty te_ci)
      .select one cl_iir_requirer related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where (selected.Ref_Id == c_ir.Id)
      .select one delegate_c_c related by cl_iir_requirer->C_DG[R4704]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${parent_c_c_id}" )
      .if ( not_empty delegate_c_c )
        .assign delegate_c_c_id  = "${delegate_c_c.Id}"
        .select one delegate_pkg related by delegate_c_c->PE_PE[R8001]->EP_PKG[R8000]
        .if (not_empty delegate_pkg)
          .assign delegate_pkg_id = "${delegate_pkg.Package_ID}"
        .elif ( not_empty delegate_pkg_cp )
          .assign delegate_pkg_id = "${delegate_pkg_cp.Package_ID}"
        .end if
      .end if
    .else
      .select one delegate_c_c related by c_ir->C_DG[R4014]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${parent_c_c_id}" )
      .if ( not_empty delegate_c_c )
        .assign delegate_c_c_id  = "${delegate_c_c.Id}"
        .select one delegate_pkg related by delegate_c_c->PE_PE[R8001]->EP_PKG[R8000]
        .if (not_empty delegate_pkg)
          .assign delegate_pkg_id = "${delegate_pkg.Package_ID}"
        .elif ( not_empty delegate_pkg_cp )
          .assign delegate_pkg_id = "${delegate_pkg_cp.Package_ID}"
        .end if
      .end if
    .end if
    .// Check that the delegate_c_c is within the same component package
    .if( ( delegate_c_c_id != "" ) and ( (pkg_Id == delegate_pkg_id) or (delegate_c_c_id == parent_c_c_id ) ) )
      .if(not_empty te_ci)
        .select one cl_iir_requirer related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where (selected.Ref_Id == c_ir.Id)
        .select one delegate_c_po related by cl_iir_requirer->C_DG[R4704]->C_RID[R4013]->C_IR[R4013]->C_R[R4009]->C_IR[R4009]->C_PO[R4016]
        .assign other_way_c_po_id  = "${delegate_c_po.Id}"
        .assign other_way_c_c_id   = "${delegate_c_c_id}"
        .assign other_way_cl_ic_id = ""
        .assign isDelegated = true
      .else
        .select one delegate_c_po related by c_ir->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->C_R[R4009]->C_IR[R4009]->C_PO[R4016]
        .assign other_way_c_po_id  = "${delegate_c_po.Id}"
        .assign other_way_c_c_id   = "${delegate_c_c_id}"
        .assign other_way_cl_ic_id = ""
        .assign isDelegated = true
      .end if
    .else
      .// ------ 2- Since the port is not delegated, search for the satisfed provided port
      .// --- 3- Check if you are a Component Reference, then aquire the cl_iir
      .if(not_empty te_ci)
        .select one cl_iir_requirer related by te_ci->CL_IC[R2009]->CL_POR[R4707]->CL_IIR[R4708] where (selected.Ref_Id == c_ir.Id)
        .select one cl_ic_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->CL_POR[R4708]->CL_IIR[R4708] where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id ) or ( "${selected.ParentComp_Id}" == parent_c_c_id ) )
        .select one cn_cic_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->PE_PE[R8001]->C_C[R8003] where ( "${selected.Id}" == parent_c_c_id )
        .assign cn_cic_provider_id = ""
        .if( not_empty cn_cic_provider)
          .assign cn_cic_provider_id = "${cn_cic_provider.Id}"
        .end if
        .select one c_c_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ( "${selected.Id}" == cn_cic_provider_id ) )
        .//
        .if (not_empty  cl_ic_provider)
          .select one c_c_requirer related by cl_ic_provider->C_C[R4201]
          .select one cl_iir_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703] where ( selected.ImportedComp_Id == cl_ic_provider.Id )
          .select one other_way_cp related by cl_iir_provider->C_IR[R4701]->C_P[R4009]
          .select one other_way_c_po related by other_way_cp->C_IR[R4009]->C_PO[R4016]
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = "${cl_ic_provider.Id}"
          .assign isDelegated = false
        .elif (not_empty c_c_provider)
          .select one other_way_c_po related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_provider.Id )
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_provider.Id}"
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .else
          .assign other_way_c_po_id  = ""
          .assign other_way_c_c_id   = ""
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .end if
      .// --- 3- Since you are not a component reference, use c_ir to get the satsifaction
      .else
        .select one cl_ic_provider related by c_ir->C_R[R4009]->C_SF[R4002]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->CL_POR[R4708]->CL_IC[R4707] where ( ("${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ("${selected.ParentComp_Id}" == parent_c_c_id ) )
        .select one cn_cic_provider related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->PE_PE[R8001]->C_C[R8003] where ( "${selected.Id}" == parent_c_c_id )
        .assign cn_cic_provider_id = ""
        .if( not_empty cn_cic_provider)
          .assign cn_cic_provider_id = "${cn_cic_provider.Id}"
        .end if
        .select any c_c_provider related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected->PE_PE[R8001].Package_ID}" == pkg_Id) or ( "${selected.Id}" == cn_cic_provider_id ) )
        .if (not_empty cl_ic_provider)
          .// The other way is "Imported Component"
          .select one c_c_requirer related by cl_ic_provider->C_C[R4201]
          .select one other_way_c_c related by cl_ic_provider->C_C[R4201]
          .select one cl_iir_provider related by c_ir->C_R[R4009]->C_SF[R4002]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]    where ( selected.ImportedComp_Id == cl_ic_provider.Id )
          .select one other_way_c_p related by cl_iir_provider->C_IR[R4701]->C_P[R4009]
          .select one other_way_c_po related by other_way_c_p->C_IR[R4009]->C_PO[R4016]
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_requirer.Id}"
          .assign other_way_cl_ic_id = "${cl_ic_provider.Id}"
          .assign isDelegated = false
        .elif ( not_empty c_c_provider )
          .select any other_way_c_po related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_provider.Id )
          .assign other_way_c_po_id  = "${other_way_c_po.Id}"
          .assign other_way_c_c_id   = "${c_c_provider.Id}"
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .else
          .assign other_way_c_po_id  = ""
          .assign other_way_c_c_id   = ""
          .assign other_way_cl_ic_id = ""
          .assign isDelegated = false
        .end if
      .end if
    .end if
  .end if
  .//
  .assign attr_other_c_po_id = "${other_way_c_po_id}"
  .assign attr_other_c_c_id = "${other_way_c_c_id}"
  .assign attr_other_cl_ic_id = "${other_way_cl_ic_id}"
  .assign attr_isDelegated = isDelegated
.end function
.//
.//============================================================================
.// Generate the port interface functions.
.//============================================================================
.function TE_MACT_CreateSingleDefinition
  .param inst_ref te_mact
  .param inst_ref te_po
  .param inst_ref te_aba
  .assign action_body = ""
  .// If the port is delegated, pass the control to the delegate, otherwise
  .// generate the action body defined in this port
  .select any c_ir_formal related by te_po->C_I[R2007]->C_IR[R4012]
  .select any c_ir related by te_po->C_PO[R2044]->C_IR[R4016]
  .select one delegate_c_c_formal related by c_ir_formal->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->C_PO[R4016]->C_C[R4010]->TE_C[R2054]
  .select one delegate_c_c related by c_ir->C_RID[R4013]->C_DG[R4013]->C_IR[R4014]->C_PO[R4016]->C_C[R4010]->TE_C[R2054]
  .if ( (not_empty delegate_c_c_formal) or (not_empty delegate_c_c) )
    .if ( "void" != te_aba.ReturnDataType )
      .assign action_body = "  return "
    .else
      .assign action_body = "  "
    .end if
    .if ( not_empty delegate_c_c_formal )
      .assign action_body = action_body + "i${delegate_c_c_formal.Name}"
    .else
      .assign action_body = action_body + "i${delegate_c_c.Name}"
    .end if
    .assign action_body = action_body + ".${te_mact.GeneratedName}"
    .if ( "" == te_aba.ParameterInvocation )
      .assign action_body = action_body + "();"
    .else
      .assign action_body = ( ( action_body + "(" ) + te_aba.ParameterInvocation ) + " );"
    .end if
  .else
    .invoke event_prioritization_needed = GetSystemEventPrioritizationNeeded()
    .// Get the mapped signal event if it exists.
    .select one te_evt related by te_mact->TE_EVT[R2082]
    .// If the signal is mapped, connect it to the state machine.
    .if ( not_empty te_evt )
      .select one sm_evt related by te_evt->SM_EVT[R2036]
      .invoke r = t_oal_smt_sgn( sm_evt, false, "0", sm_evt.Drv_Lbl, sm_evt.Mning, te_aba.ParameterAssignmentBase, "  " )
      .assign action_body = r.body
    .else
      .assign action_body = te_aba.code
    .end if
  .end if
  .if ( "" != action_body )
  .invoke port_action = t_oal_port_action( te_mact, te_po, action_body )
${port_action.body}
  .end if
.end function
.//
.function TE_MACT_CreateDefinition
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
    .assign port_bodies = ""
    .// Create the port body for this te_mact whether it is polymorphic or not
    .select one te_po related by te_mact->TE_PO[R2006]
    .invoke r = TE_MACT_CreateSingleDefinition( te_mact, te_po, te_aba )
    .assign port_bodies = port_bodies + r.body
    .// Find the sibling polymorphic port messages.  Generate port bodies for each one.
    .if ( te_mact.polymorphic )
      .select many poly_te_pos related by te_po->TE_C[R2005]->TE_PO[R2005] where ( ( ( selected.c_iId == te_po.c_iId ) and ( selected.Provision == te_po.Provision ) ) and ( selected.ID != te_po.ID ) )
      .for each poly_te_po in poly_te_pos
        .select any poly_te_mact related by poly_te_po->TE_MACT[R2006] where ( selected.MessageName == te_mact.MessageName )
        .select one poly_te_aba related by te_mact->TE_ABA[R2010]
        .invoke r = TE_MACT_CreateSingleDefinition( poly_te_mact, poly_te_po, poly_te_aba )
        .assign port_bodies = port_bodies + r.body
      .end for
    .end if
    .assign thismodule_decl = "  ${te_mact.ComponentName} * thismodule = this;"
    .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .// outbound message
    .elif ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
      .// inbound message
      .include "${te_file.arc_path}/t.component.message.c"
    .else
      .print "ERROR:  Detected invalid component port message configuration."
    .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
  .end for
.end function
.//
.//============================================================================
.// Generate the state machine processes.
.//============================================================================
.function TE_C_StateMachines
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .assign result = ""
  .select many te_classes related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_CLASS[R2072]
  .select any te_sys from instances of TE_SYS
  .select any nested_c_c related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]
  .select many cl_ics related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]
  .if ( "BitLevelSignals" == te_sys.SystemCPortsType )
    .if ( ( empty te_classes ) and ( ( empty nested_c_c ) and  ( empty cl_ics ) ) )
      .assign default_behavior = true;
      .include "${te_file.arc_path}/t.component.class.sm.h"
    .end if
  .end if
  .assign default_behavior = false;
  .//
  .for each te_class in te_classes
    .assign delimiter = ""
    .assign sc_event_sensitivity = ""
    .select many te_evts related by te_class->TE_SM[R2072]->TE_EVT[R2071]
    .if ( not_empty te_evts )
      .assign result = result + "  sc_event "
    .end if
    .for each te_evt in te_evts
      .assign sc_event_sensitivity = ( sc_event_sensitivity + " << " ) + ( "sc_" + te_evt.GeneratedName )
      .assign result = ( result + delimiter ) + ( "sc_" + te_evt.GeneratedName )
      .assign delimiter = ", "
    .end for
    .include "${te_file.arc_path}/t.component.class.sm.h"
    .if ( not_empty te_evts )
      .assign result = result + ";\n"
    .end if
  .end for
  .assign attr_result = result
.end function
.//
.//============================================================================
.// Generate the state machine processes.
.//============================================================================
.function TE_C_StateMachinesProcess
  .param inst_ref te_c
  .assign result = "  // state machine process entry points\n"
  .select any te_file from instances of TE_FILE
  .select any te_target from instances of TE_TARGET
  .select any te_instance from instances of TE_INSTANCE
  .select many te_classes related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_CLASS[R2072]
  .//
  .// Sony specific requirement: Default behavior for leaf components
  .select any te_sys from instances of TE_SYS
  .select any nested_c_c related by te_c->C_C[R2054]->PE_PE[R8003]->C_C[R8001]
  .select many cl_ics related by te_c->C_C[R2054]->PE_PE[R8003]->CL_IC[R8001]
  .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
    .if ( ( empty te_classes ) and ( ( empty nested_c_c ) and  ( empty cl_ics ) ) )
      .assign default_behavior = true
      .assign port_reset = ""
      .select many te_pos related by te_c->TE_PO[R2005]
      .for each te_po in te_pos
        .assign port_reset = port_reset + "  ${te_po.GeneratedName}.reset();\n"
      .end for
      .include "${te_file.arc_path}/t.component.class.sm.c"
      .assign result = result + "  void component_main( void );\n"
    .end if
  .end if
  .assign default_behavior = false;
  .//
  .for each te_class in te_classes
    .include "${te_file.arc_path}/t.component.class.sm.c"
    .assign result = result + "  void ${te_class.GeneratedName}_sm( void );\n"
  .end for
  .assign attr_result = result
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
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.name}_i /TLM/protocols/generic slave}\n"
    .assign attr_tlm_ports = attr_tlm_ports + "    {${te_po.name}_o /TLM/protocols/generic master}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.name}_i /TLM/protocols/generic slave 32 -bind_mode optional}\n"
    .assign attr_create_model = attr_create_model + "    {${te_po.name}_o /TLM/protocols/generic master 32 -bind_mode optional}\n"
    .assign pilpeline_length = pilpeline_length + "    {${te_po.name}_i_pipeline_length 2}\n"
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
    .assign register_name = "${te_c.Name}_${te_po.name}_PULSE"
    .assign register_offset_name = "$r{c_i.Name}_${direction}_PULSE_REG_OFFSET"
    .assign register_description = "${register_name} signals the completion of a message transfer"
    .assign register_width = 32
    .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access w -is_trigger -width ${register_width}\n"
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
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .elif (not_empty te_dim)
            .assign memory_size = te_dim.elementCount
            .// multiply {te_dim.elementCount} by the word width (4bytes  = 32bit)
            .assign memory_size = memory_size * 4
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen;
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_MEM_OFFSET"
            .assign memory_description = "${memory_name} description ${te_mact.Descrip} - ${te_parm.Descrip} field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${register_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
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
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .//.elif (not_empty te_dim)
            .// returning array here not supported
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen;
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_MEM_OFFSET"
            .assign memory_description = "${memory_name} description field"
            .assign attr_register_declaration = attr_register_declaration + "  declare_memory ${memory_name} ${te_po.name}_i ${memory_offset_name} ${memory_size}\n"
          .else
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign register_offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return_REG_OFFSET"
            .assign register_width = 32
            .assign register_description = "${te_mact.Descrip}"
            .assign attr_register_declaration = attr_register_declaration + "  declare_register ${te_po.name}_i ${register_name} ${register_offset_name} {} -rw_access r/w -width 32\n"
          .end if
        .end if
      .else
        .//.for each te_parm in te_parms
        .//  .assign register_address = register_address + 4;
        .//.end for
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
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
.// Generate the VISTA wrapper files
.//============================================================================
.function Vista_TLM_CreateWrapperDeclaration
  .param inst_ref te_c
  .param boolean generateTemplate
  .//
  .select any te_file from instances of TE_FILE
  .assign class_name = ""
  .if (generateTemplate == true)
    .assign class_name = "$$(CLASS_NAME)"
  .else
    .assign class_name = "${te_c.Name}_bp_pv"
  .end if
  .// attributes used in mb_pv.h
  .assign ingoing_port_read_callback_declaration = ""
  .assign ingoing_port_write_callback_declaration = ""
  .assign outgoing_port_call_declaration = ""
  .assign channel_include = ""
  .assign pulse_register_callback = ""
  .assign port_name_slave = "$$(TARGET_WITH_CALLBACK)"
  .assign port_name_master = "$$MASTER"
  .assign bpCallBackIF = ""
  .//
  .assign file_epilogue = false
  .include "${te_file.arc_path}/t.component.vista.pv_template.h"
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .select one c_i related by te_po->C_I[R2007]
    .assign direction = ""
    .if (te_po.provision)
      .assign direction  = "required"
    .else
      .assign direction  = "provided"
    .end if
    .//
    .assign outgoing_port_call_declaration = ""
    .assign register_address = ""
    .assign pulse_register_callback = pulse_register_callback + "  virtual void cb_write_${te_c.Name}_${te_po.name}_PULSE(unsigned int newValue);\n"
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .//.select any te_mact related by other_te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .assign param_reg_write = ""
      .assign param_reg_read = ""
      .assign te_mact_number = "${te_mact.GeneratedName}_order"
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
      .//.if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
      .if ( ( ( te_mact.Provision ) and ( 1 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 0 == te_mact.Direction ) ) )
      .//inbound in the presepctive of the otherway component
        .while ( not_empty te_parm )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
          .select one s_edt related by te_dt->S_DT[R2021]->S_EDT[R17]
          .select one te_dim related by te_parm->TE_DIM[R2056]
          .//.assign register_address = register_address + 4
          .assign offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .assign casting = ""
          .assign payload_size = ""
          .assign register_address = "${offset_name}_REG_OFFSET"
          .if(not_empty s_sdt)
            .assign casting = "(unsigned char *)&"
            .assign payload_size = ", sizeof(${te_dt.ExtName})"
            .assign register_address = "${offset_name}_MEM_OFFSET"
          .elif(not_empty te_dim)
            .assign casting = "(unsigned char *)"
            .assign payload_size = ", (sizeof(${te_dt.ExtName}) * $t{te_dim.elementCount} )"
            .assign register_address = "${offset_name}_MEM_OFFSET"
          .elif(not_empty s_edt)
            .assign casting = "(int)"
          .elif ( te_dt.ExtName == "r4_t" )
            .assign casting = "(unsigned char *)&"
            .assign payload_size = ", sizeof(${te_dt.ExtName})"
          .elif ( te_dt.ExtName == "c_t" )
            .select any te_string from instances of TE_STRING
            .assign casting = "(char *) "
            .assign payload_size = ", ${te_string.max_string_length}"
            .assign register_address = "${offset_name}_MEM_OFFSET"
          .end if
          .assign param_reg_write = param_reg_write + "    m_mbmodule->${te_po.name}_o_write(${register_address}, ${casting}${te_parm.GeneratedName} ${payload_size});\n"
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
        .end while
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .select one s_edt_return related by te_dt_return->S_DT[R2021]->S_EDT[R17]
          .assign offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return"
          .if (not_empty s_sdt_return )
            .assign memory_address = "${offset_name}_MEM_OFFSET"
            .assign param_reg_read = param_reg_read + "    ${te_aba.ReturnDataType} ${te_mact.MessageName}_return;\n"
            .assign param_reg_read = param_reg_read + "    unsigned char * ${te_mact.MessageName}_return_data = (unsigned char *) &${te_mact.MessageName}_return;\n"
            .assign param_reg_read = param_reg_read + "    m_mbmodule->${te_po.name}_o_read(${memory_address}, ${te_mact.MessageName}_return_data, sizeof(${te_aba.ReturnDataType}));\n"
            .assign param_reg_read = param_reg_read + "    return ${te_mact.MessageName}_return;\n"
          .else
            .assign casting = ""
            .assign return_size = ""
            .assign register_address = "${offset_name}_REG_OFFSET"
            .if( "r4_t" == te_aba.ReturnDataType )
              .assign casting = "(unsigned char *)&"
              .assign return_size = ", sizeof(${te_mact.MessageName}_return)"
              .assign param_reg_read = param_reg_read + "    ${te_aba.ReturnDataType} ${te_mact.MessageName}_return;\n"
            .elif ( "c_t *" == te_aba.ReturnDataType )
              .select any te_string from instances of TE_STRING
              .assign register_address = "${offset_name}_MEM_OFFSET"
              .assign casting = "(char *) "
              .assign return_size = ", ${te_string.max_string_length}"
              .assign param_reg_read = param_reg_read + "    c_t ${te_mact.MessageName}_return[${te_string.max_string_length}];\n"
            .else
              .assign param_reg_read = param_reg_read + "    ${te_aba.ReturnDataType} ${te_mact.MessageName}_return;\n"
              .if (not_empty s_edt_return)
                .assign casting = "(int *)&"
                .assign return_size = ", 1"
              .end if
            .end if
            .assign param_reg_read = param_reg_read + "    m_mbmodule->${te_po.name}_o_read(${register_address}, ${casting}${te_mact.MessageName}_return ${return_size});\n"
            .assign param_reg_read = param_reg_read + "    return ${te_mact.MessageName}_return;\n"
          .end if
        .end if
        .assign outgoing_port_call_declaration = outgoing_port_call_declaration + "  ${te_aba.ReturnDataType} ${te_aba.GeneratedName}(${te_aba.ParameterDefinition}) { \n    static unsigned char d = ${te_mact_number}; \n${param_reg_write}\n    m_mbmodule->${te_po.name}_o_write(0x0, &d, 1);\n${param_reg_read}\n  }\n"
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
    .//
    .if ( te_po.Provision )
      .assign channel_include = "public sc_channel, public ${te_po.InterfaceName}_requirement"
    .else
      .assign channel_include = "public sc_channel, public ${te_po.InterfaceName}_provision"
    .end if
    .assign bpCallBackIF = bpCallBackIF + "class ${te_po.name}_bpCallBackIF: ${channel_include} {\n  public:\n  ${te_po.name}_bpCallBackIF(xtuml_module_name name, ${class_name} *mbmodule) :"
    .assign bpCallBackIF = bpCallBackIF + "    xtuml_module(name),\n    m_mbmodule(mbmodule)\n    {}\n${outgoing_port_call_declaration}\n  private:\n  ${class_name} *m_mbmodule;\n   } m_${te_po.name}_bpCallBackIF;\n\n"
  .end for
  .include "${te_file.arc_path}/t.component.vista.pv_template.port.h"
  .assign file_epilogue = true
  .include "${te_file.arc_path}/t.component.vista.pv_template.h"
.end function
.//
.//============================================================================
.// Generate the VISTA wrapper files
.//============================================================================
.function Vista_TLM_CreateWrapperDefinition
  .param inst_ref te_c
  .param boolean generateTemplate
  .//
  .select any te_file from instances of TE_FILE
  .assign class_name = "$$(CLASS_NAME)"
  .assign pvBase_class_name = "$$(PV_BASE_CLASS_NAME)"
  .assign port_name = "$$(TARGET_WITH_CALLBACK)"
  .//
  .select many te_pos related by te_c->TE_PO[R2005]
  .select any cl_ic from instances of CL_IC where ( false )
  .select any empty_ep_pkg from instances of EP_PKG where ( false )
  .assign bpCallBackIF = ""
  .assign bind_port_to_wrapper = ""
  .for each te_po in te_pos
    .assign other_comp_name = ""
    .assign other_port_name = ""
    .assign ep_pkg = empty_ep_pkg
    .select one c_c related by te_c->C_C[R2054]
    .select one parent_c_c related by te_c->C_C[R2054]->PE_PE[R8001]->C_C[R8003]
    .if (empty parent_c_c)
      .select one parent_c_c related by te_c->C_C[R2054]->CL_IC[R4201]->PE_PE[R8001]->C_C[R8003]
    .end if
    .select one ep_pkg related by te_c->C_C[R2054]->PE_PE[R8001]->EP_PKG[R8000]
    .if ( not_empty ep_pkg )
      .select any cl_ic related by ep_pkg->PE_PE[R8000]->CL_IC[R8001] where ( selected.AssignedComp_Id == c_c.Id )
    .else
      .select any cl_ic related by parent_c_c->PE_PE[R8003]->CL_IC[R8001]  where ( selected.AssignedComp_Id == c_c.Id )
    .end if
    .select one te_ci related by cl_ic->TE_CI[R2009]
    .assign isDelegated = false
    .invoke other_way = TE_C_GetOtherWayConnection ( te_c, te_ci, te_po, ep_pkg, parent_c_c )
    .assign isDelegated = other_way.isDelegated
    .// do not bind the delegated port to the wrapper. This port should be connected to the parent port directly
    .if ( not isDelegated )
      .assign bind_port_to_wrapper = bind_port_to_wrapper + "m_${te_c.Name}.${te_po.name}(m_${te_po.name}_bpCallBackIF);\n"
    .end if
    .assign bpCallBackIF = bpCallBackIF + ", m_${te_po.name}_bpCallBackIF(""${te_po.name}_bpCallBackIF"", this)"
  .end for
  .include "${te_file.arc_path}/t.component.vista.pv_template.c"
  .// attributes used in mb_pv.c
  .assign ingoing_port_read_callback_definition = ""
  .assign ingoing_port_write_callback_definition = ""
  .assign ingoing_reg_callback_declaration = ""
  .for each te_po in te_pos
    .select one c_i related by te_po->C_I[R2007]
    .assign direction = ""
    .if (te_po.provision)
      .assign direction  = "provided"
    .else
      .assign direction  = "required"
    .end if
    .//
    .assign pulse_function_name = "cb_write_${te_c.Name}_${te_po.name}_PULSE"
    .assign ingoing_reg_callback_declaration = ingoing_reg_callback_declaration + "void ${class_name}::${pulse_function_name}(unsigned int newValue) {\n  switch (newValue) {\n"
    .select any te_mact related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .while ( not_empty te_mact )
      .assign te_mact_number = "${te_mact.GeneratedName}_order";
      .select one te_aba related by te_mact->TE_ABA[R2010]
      .if ( ( ( te_mact.Provision ) and ( 0 == te_mact.Direction ) ) or ( ( not te_mact.Provision ) and ( 1 == te_mact.Direction ) ) )
        .// inbound message
        .select many te_parms related by te_mact->TE_ABA[R2010]->TE_PARM[R2062]
        .select any te_parm related by te_mact->TE_ABA[R2010]->TE_PARM[R2062] where ( selected.Order == 0 )
        .assign param_register = ""
        .assign param_count = cardinality te_parms
        .assign param_number = 0
        .assign temp_var = ""
        .while ( not_empty te_parm )
          .select one te_dt related by te_parm->TE_DT[R2049]
          .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
          .select one s_edt related by te_dt->S_DT[R2021]->S_EDT[R17]
          .select one te_dim related by te_parm->TE_DIM[R2056]
          .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
          .assign offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .if(not_empty s_sdt)
            .assign memory_name = "${te_po.Name}_i_memory"
            .assign temp_var = temp_var + "    mb::utl::SparseArray<uint64_t, unsigned char>& ${te_parm.Name}_data = ${memory_name}.get_data(); \n"
            .assign temp_var = temp_var + "    unsigned char * ${te_parm.Name}_mem = (unsigned char *) ${te_parm.Name}_data.access(${offset_name}_MEM_OFFSET) ; \n"
            .assign temp_var = temp_var + "    ${te_dt.ExtName} * ${te_parm.Name}_temp = (${te_dt.ExtName} *) ${te_parm.Name}_mem ; \n"
            .assign param_register = param_register + "*${te_parm.Name}_temp"
          .elif(not_empty te_dim )
            .assign memory_name = "${te_po.Name}_i_memory"
            .assign temp_var = temp_var + "    mb::utl::SparseArray<uint64_t, unsigned char>& ${te_parm.Name}_data = ${memory_name}.get_data(); \n"
            .assign temp_var = temp_var + "    unsigned char * ${te_parm.Name}_mem = (unsigned char *) ${te_parm.Name}_data.access(${offset_name}_MEM_OFFSET) ; \n"
            .assign temp_var = temp_var + "    ${te_dt.ExtName} * ${te_parm.Name}_temp = (${te_dt.ExtName} *) ${te_parm.Name}_mem ; \n"
            .assign param_register = param_register + "${te_parm.Name}_temp"
          .elif(not_empty s_edt )
            .assign temp_var = temp_var + "    unsigned int ${te_parm.Name}_temp = ${register_name}; \n"
            .assign param_register = param_register + "*((${te_dt.ExtName} *)&${te_parm.Name}_temp)"
          .elif ( te_dt.ExtName == "c_t" )
            .assign memory_name = "${te_po.Name}_i_memory"
            .assign temp_var = temp_var + "    mb::utl::SparseArray<uint64_t, unsigned char>& ${te_parm.Name}_data = ${memory_name}.get_data(); \n"
            .assign temp_var = temp_var + "    unsigned char * ${te_parm.Name}_mem = (unsigned char *) ${te_parm.Name}_data.access(${offset_name}_MEM_OFFSET) ; \n"
            .assign temp_var = temp_var + "    ${te_dt.ExtName} * ${te_parm.Name}_temp = (${te_dt.ExtName} *) ${te_parm.Name}_mem ; \n"
            .assign param_register = param_register + "${te_parm.Name}_temp"
          .elif ( te_dt.ExtName == "r4_t" )
            .assign temp_var = temp_var + "    unsigned int ${te_parm.Name}_temp = ${register_name}; \n"
            .assign param_register = param_register + "*((${te_dt.ExtName} *)&${te_parm.Name}_temp)"
          .else
            .assign param_register = param_register + register_name
          .end if
          .assign param_number = param_number + 1
          .if ( param_number <  param_count )
            .assign param_register = param_register + ", "
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
        .end while
        .assign return_register = ""
        .assign return_variable = ""
        .assign return_variable_end = ""
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .select one s_edt_return related by te_dt_return->S_DT[R2021]->S_EDT[R17]
          .assign offset_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return"
          .if ( not_empty s_sdt_return )
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_name = "${te_po.Name}_i_memory"
            .assign return_variable = "    mb::utl::SparseArray<uint64_t, unsigned char>& ${te_mact.MessageName}_return_data = ${memory_name}.get_data(); \n"
            .assign return_variable = return_variable + "    unsigned char * ${te_mact.MessageName}_return_mem = (unsigned char *) ${te_mact.MessageName}_return_data.access(${offset_name}_MEM_OFFSET) ; \n"
            .assign return_variable = return_variable + "    ${te_aba.ReturnDataType} * ${te_mact.MessageName}_return_ptr = (${te_aba.ReturnDataType} *) ${te_mact.MessageName}_return_mem ;\n"
            .assign return_variable = return_variable + "    *${te_mact.MessageName}_return_ptr = "
          .elif ( "c_t *" == te_aba.ReturnDataType )
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_name = "${te_po.Name}_i_memory"
            .assign return_variable = "    mb::utl::SparseArray<uint64_t, unsigned char>& ${te_mact.MessageName}_return_data = ${memory_name}.get_data(); \n"
            .assign return_variable = return_variable + "    unsigned char * ${te_mact.MessageName}_return_mem = (unsigned char *) ${te_mact.MessageName}_return_data.access(${offset_name}_MEM_OFFSET) ; \n"
            .assign return_variable = return_variable + "    ${te_aba.ReturnDataType} ${te_mact.MessageName}_return_ptr = (${te_aba.ReturnDataType}) ${te_mact.MessageName}_return_mem ;\n"
            .assign return_variable = return_variable + "    Escher_strcpy( ${te_mact.MessageName}_return_ptr,  "
            .assign return_variable_end = ")"
          .else
            .assign return_casting = ""
            .if( "r4_t" == te_aba.ReturnDataType )
              .assign return_variable = "    unsigned int ${te_mact.MessageName}_return;\n"
              .assign return_variable = return_variable + "    ${te_aba.ReturnDataType} * ${te_mact.MessageName}_return_ptr;\n"
              .assign return_variable = return_variable + "    ${te_mact.MessageName}_return_ptr = (${te_aba.ReturnDataType} *) &${te_mact.MessageName}_return;\n"
              .assign return_variable = return_variable + "    *${te_mact.MessageName}_return_ptr = "
            .else
              .assign return_variable = "    ${te_aba.ReturnDataType} ${te_mact.MessageName}_return;\n"
              .assign return_variable = return_variable + "    ${te_mact.MessageName}_return = "
              .if(not_empty s_edt_return)
                .assign return_casting = "(int)"
              .end if
            .end if
            .assign return_register = "    ${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return = ${return_casting}${te_mact.MessageName}_return;\n"
          .end if
        .end if
        .assign ingoing_reg_callback_declaration = ingoing_reg_callback_declaration + "    case ${te_mact_number}:{\n${temp_var}${return_variable} m_${te_c.Name}.${te_aba.GeneratedName}(${param_register})${return_variable_end};\n${return_register}\n    }\n  break;\n"
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
    .assign ingoing_reg_callback_declaration = ingoing_reg_callback_declaration + "    default:\n   cout << sc_time_stamp() << "" ${te_c.Name}::${pulse_function_name} -- Received unexpected command"" << endl;\n   SC_REPORT_ERROR(""${te_c.Name}::${pulse_function_name}"",""Received unexpected command"");\n  }\n}\n"
  .end for
  .include "${te_file.arc_path}/t.component.vista.pv_template.port.c"
.end function
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
    .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
  .end while
.end function
.//
.//============================================================================
.// Generate the VISTA wrapper files
.//============================================================================
.function TE_MACT_GenerateRegDefs
  .param inst_ref c_i
  .param inst_ref te_po
  .assign register_address = 0;
  .assign direction = ""
  .if ( te_po.provision )
    .assign direction  = "provided"
  .else
    .assign direction  = "required"
  .end if
  .assign register_offset_name = "$r{c_i.Name}_${direction}_PULSE_REG_OFFSET"
  .assign attr_register_offset = "#define  ${register_offset_name} 0\n"
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
          .// -- declare memory to hold structures
          .assign register_address = register_address + 4;
          .assign memory_size = 0;
          .select many s_mbrs related by s_sdt->S_MBR[R44]
          .for each s_mbr in s_mbrs
            .assign memory_size = memory_size + 4;
          .end for
          .assign memory_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${memory_offset_name} ${register_address}\n"
          .assign register_address = register_address + memory_size;
          .assign register_address = register_address - 4;
        .elif (not_empty te_dim)
          .// -- declare memory to hold the array
          .assign register_address = register_address + 4;
          .assign memory_size = te_dim.elementCount;
          .// multiply {te_dim.elementCount} by the word width (4bytes  = 32bit)
          .assign memory_size = memory_size * 4;
          .assign memory_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${memory_offset_name} ${register_address}\n"
          .assign register_address = register_address + memory_size;
          .assign register_address = register_address - 4;
        .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
          .// -- declare memory to hold the string
          .select any te_sys from instances of TE_SYS
          .assign register_address = register_address + 4;
          .assign memory_size = te_sys.MaxStringLen;
          .assign memory_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${memory_offset_name} ${register_address}\n"
          .assign register_address = register_address + memory_size;
          .assign register_address = register_address - 4;
        .else
          .// -- declare registers to hold variables
          .assign register_address = register_address + 4;
          .assign register_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_${te_parm.Name}"
          .assign register_offset_name = "${register_name}_REG_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${register_offset_name} ${register_address}\n"
        .end if
        .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
      .end while
      .if( "void" != te_aba.ReturnDataType )
        .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
        .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
        .if (not_empty s_sdt_return )
          .assign register_address = register_address + 4;
          .assign memory_size = 0;
          .select many s_mbrs related by s_sdt_return->S_MBR[R44]
          .for each s_mbr in s_mbrs
            .assign memory_size = memory_size + 4;
          .end for
          .assign memory_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return"
          .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${memory_offset_name} ${register_address}\n"
          .assign register_address = register_address + memory_size;
          .assign register_address = register_address - 4;
        .//.elif (not_empty te_dim)
        .// returning array till not supported
        .elif ( "c_t *" == te_aba.ReturnDataType )
          .assign register_address = register_address + 4;
          .select any te_sys from instances of TE_SYS
          .assign memory_size = te_sys.MaxStringLen;
          .assign memory_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return"
          .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${memory_offset_name} ${register_address}\n"
          .assign register_address = register_address + memory_size;
          .assign register_address = register_address - 4;
        .else
          .assign register_address = register_address + 4;
          .assign register_name = "$r{c_i.Name}_${direction}_${te_mact.MessageName}_return"
          .assign register_offset_name = "${register_name}_REG_OFFSET"
          .assign attr_register_offset = attr_register_offset + "#define  ${register_offset_name} ${register_address}\n"
        .end if
      .end if
    .else
      .//.for each te_parm in te_parms
      .//  .assign register_address = register_address + 4;
      .//.end for
    .end if
    .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
  .end while
.end function
.//
.//============================================================================
.// Generate IP-XACT XML for the module.
.// output:  register_declaration
.//          register_offset
.//          tlm_ports
.//============================================================================
.function TE_C_ipxact_busInterfaces
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .assign register_address = 0
    .//
    .// create register entry for pulse register of message based on spirit schema
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
          .if ( not_empty s_sdt )
            .// multi-element structured datatypes.
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign register_address = register_address + memory_size
          .elif (not_empty te_dim)
            .//  array datatypes.
            .assign memory_size = te_dim.elementCount
            .assign memory_size = memory_size * 4
            .assign register_address = register_address + memory_size
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .//  string datatypes.
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen
            .assign register_address = register_address + memory_size
          .else
            .// -- declare registers to hold variables
            .assign register_address = register_address + 4
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
        .end while
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .if (not_empty s_sdt_return )
            .//  mbrs datatypes.
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt_return->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign register_address = register_address + memory_size
          .elif ( "c_t *" == te_aba.ReturnDataType )
            .//  string datatypes when used as a return value
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen
            .assign register_address = register_address + memory_size
          .else
            .assign register_address = register_address + 4
          .end if
        .end if
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
    .assign address_space_range = register_address +  4
    .assign address_width = 1
    .assign total_available_addressing = 2
    .while (total_available_addressing < address_space_range)
      .assign address_width = 1 +  address_width
      .assign total_available_addressing = 2*total_available_addressing ;
    .end while
    .include "${te_file.arc_path}/t.component.ipxact.busInterface.xml"
  .end for
.end function
.//
.function TE_C_ipxact_memoryMaps
  .param inst_ref te_c
  .select any te_file from instances of TE_FILE
  .select many te_pos related by te_c->TE_PO[R2005]
  .// Create a register for each parameter inside the port (starting from 4 and increment by 4)
  .for each te_po in te_pos
    .assign direction = ""
    .if (te_po.provision)
      .assign direction  = "provided"
    .else
      .assign direction  = "required"
    .end if
    .assign register_address = 0
    .assign memory_declaration = ""
    .assign register_declaration = ""
    .//
    .// create register entry for pulse register of message based on spirit schema
    .//
    .assign register_name = "${te_c.Name}_${te_po.Name}_PULSE"
    .assign register_offset_name = "${te_c.Name}_${te_po.Name}_PULSE_REG_OFFSET"
    .assign register_description = "${register_name} signals the completion of a message transfer"
    .invoke register_dec = TE_C_ipxact_register(te_po, register_name, register_address, register_offset_name, register_description)
    .assign register_declaration = register_declaration + register_dec.body
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
          .if ( not_empty s_sdt )
            .// Create MEMORY declaration for multi-element structured datatypes. These require more than 32-bits of storage
            .// and must span multiple locations.
            .assign register_address = register_address + 4
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
            .invoke memory_dec = TE_C_ipxact_memory(memory_name, register_address, memory_size, memory_offset_name)
            .assign memory_declaration = memory_declaration + memory_dec.body
            .assign register_address = register_address + memory_size
            .assign register_address = register_address - 4
          .elif (not_empty te_dim)
            .//
            .// Create MEMORY declaration for array datatypes. These require more than 32-bits of storage
            .// and must span multiple locations.
            .assign register_address = register_address + 4
            .assign memory_size = te_dim.elementCount
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
            .invoke memory_dec = TE_C_ipxact_memory(memory_name, register_address, memory_size, memory_offset_name)
            .assign memory_declaration = memory_declaration + memory_dec.body
            .// multiply {te_dim.elementCount} by the word width (4bytes  = 32bit)
            .assign memory_size = memory_size * 4
            .assign register_address = register_address + memory_size
            .assign register_address = register_address - 4
          .elif ( ( "c_t" == te_dt.ExtName ) or ( "c_t *" == te_dt.ExtName ) )
            .// Create MEMORY declaration for string datatypes. This message require more than 32-bits of storage
            .// and must span multiple locations.
            .select any te_sys from instances of TE_SYS
            .assign register_address = register_address + 4
            .assign memory_size = te_sys.MaxStringLen
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
            .assign memory_chunk_size = memory_size / 4
            .invoke memory_dec = TE_C_ipxact_memory(memory_name, register_address, memory_chunk_size, memory_offset_name)
            .assign memory_declaration = memory_declaration + memory_dec.body
            .assign register_address = register_address + memory_size
            .assign register_address = register_address - 4
          .else
            .// -- declare registers to hold variables
            .assign register_address = register_address + 4
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_${te_parm.Name}"
            .assign register_offset_name = "${register_name}_REG_OFFSET"
            .assign register_description = "${register_name} description field"
            .invoke register_dec = TE_C_ipxact_register(te_po, register_name, register_address, register_offset_name, register_description)
            .assign register_declaration = register_declaration + register_dec.body
          .end if
          .select one te_parm related by te_parm->TE_PARM[R2041.'precedes']
        .end while
        .if( "void" != te_aba.ReturnDataType )
          .select any te_dt_return from instances of TE_DT where ( selected.ExtName == "${te_aba.ReturnDataType}" )
          .select one s_sdt_return related by te_dt_return->S_DT[R2021]->S_SDT[R17]
          .if (not_empty s_sdt_return )
            .// Create MEMORY declaration for mbrs datatypes. These message require more than 32-bits of storage
            .// and must span multiple locations.
            .assign register_address = register_address + 4
            .assign memory_size = 0
            .select many s_mbrs related by s_sdt_return->S_MBR[R44]
            .for each s_mbr in s_mbrs
              .assign memory_size = memory_size + 4
            .end for
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
            .invoke memory_dec = TE_C_ipxact_memory(memory_name, register_address, memory_size, memory_offset_name)
            .assign memory_declaration = memory_declaration + memory_dec.body
            .assign register_address = register_address + memory_size
            .assign register_address = register_address - 4
            .//.elif (not_empty te_dim)
            .// returning array till not supported
          .elif ( "c_t *" == te_aba.ReturnDataType )
            .// Create MEMORY declaration for string datatypes when used as a return value. This message require more than 32-bits of storage
            .// and must span multiple locations.
            .assign register_address = register_address + 4
            .select any te_sys from instances of TE_SYS
            .assign memory_size = te_sys.MaxStringLen
            .assign memory_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign memory_offset_name = "${memory_name}_MEM_OFFSET"
            .invoke memory_dec = TE_C_ipxact_memory(memory_name, register_address, memory_size, memory_offset_name)
            .assign memory_declaration = memory_declaration + memory_dec.body
            .assign register_address = register_address + memory_size
            .assign register_address = register_address - 4
          .else
            .assign register_address = register_address + 4
            .assign register_name = "${te_c.Name}_${te_po.Name}_${te_mact.MessageName}_return"
            .assign register_offset_name = "${register_name}_REG_OFFSET"
            .assign register_description = "${register_name} description field"
            .invoke register_dec = TE_C_ipxact_register(te_po, register_name, register_address, register_offset_name, register_description)
            .assign register_declaration = register_declaration + register_dec.body
          .end if
        .end if
      .else
        .//.for each te_parm in te_parms
        .//  .assign register_address = register_address + 4
        .//.end for
      .end if
      .select one te_mact related by te_mact->TE_MACT[R2083.'precedes']
    .end while
    .assign address_space_range = register_address + 4
    .include "${te_file.arc_path}/t.component.ipxact.registers.xml"
  .end for
.end function
.//
.function TE_C_ipxact_register
  .param inst_ref te_po
  .param string register_name
  .param integer register_address
  .param string register_offset_name
  .param string register_description
  .select any te_file from instances of TE_FILE
  .include "${te_file.arc_path}/t.component.ipxact.register.xml"
.end function
.//
.function TE_C_ipxact_memory
  .param string memory_name
  .param integer memory_offset
  .param integer memory_size
  .param string memory_offset_name
  .select any te_file from instances of TE_FILE
  .include "${te_file.arc_path}/t.component.ipxact.memory.xml"
.end function
