.//============================================================================
.// Component ports top level query.
.//============================================================================
.//
.//
.//
.select many empty_c_cs from instances of C_C where ( false )
.//
.select many te_cs from instances of TE_C where ( selected.included_in_build )
.assign vistaWrapper = ""
.assign createFolderStructure = ""
.assign create_model = ""
.for each te_c in te_cs
  .assign port_classes = ""
  .assign message_definitions = ""
  .assign message_declarations = ""
  .assign sc_port_declarations = ""
  .if ( te_sys.SystemCPortsType == "BitLevelSignals" )
    .assign sc_port_declarations = sc_port_declarations + "  sc_in_clk  clk;\n"
    .assign sc_port_declarations = sc_port_declarations + "  sc_in < bool >  rst_X;\n"
  .end if
  .invoke s = TE_C_CreateIncludeList ( te_c )
  .assign include_files = s.include_files
  .// nested components
  .invoke nested_components = CN_CC_CreateNestedComponentInstances ( te_c )
  .assign nestedComponent_declarations = nested_components.body
  .invoke nested_constructors = CN_CC_CreateNestedComponentConstructors ( te_c )
  .assign nestedComponent_constructors = nested_constructors.body
  .invoke nested_ports_bind = CN_CC_BindNestedComponentPorts ( te_c )
  .assign bitLevelChannels = nested_ports_bind.bitLevelChannels
  .assign port_binding = nested_ports_bind.port_binding
  .//
  .// ports
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .assign provreq1 = "_requirement"
    .assign provreq2 = "_provision"
    .if ( te_po.Provision )
      .assign provreq1 = "_provision"
      .assign provreq2 = "_requirement"
    .end if
    .if ( (te_sys.SystemCPortsType == "TLM") or (te_sys.SystemCPortsType == "sc_interface") )
      .assign sc_port_declarations = ( ( sc_port_declarations + "  xtuml_port < " ) + ( te_po.InterfaceName + provreq2 ) ) + ( ( " > " + te_po.GeneratedName ) + ";\n" )
    .else
      .assign sc_port_declarations = ( ( sc_port_declarations + "  ") + ( te_po.InterfaceName + provreq2 ) ) + ( ( " " + te_po.GeneratedName ) + ";\n" )
    .end if
  .end for
  .select many te_pos related by te_c->TE_PO[R2005] where ( selected.sibling == 00 )
  .for each te_po in te_pos
    .assign provreq1 = "_requirement"
    .assign provreq2 = "_provision"
    .if ( te_po.Provision )
      .assign provreq1 = "_provision"
      .assign provreq2 = "_requirement"
    .end if
  .// messages
    .select many te_macts related by te_po->TE_MACT[R2006] where ( selected.Order == 0 )
    .if ( (te_sys.SystemCPortsType == "TLM") or (te_sys.SystemCPortsType == "sc_interface") )
      .invoke defs = TE_MACT_CreateDefinition( te_macts )
      .assign message_definitions = message_definitions + defs.body
      .invoke decs = TE_MACT_CreateDeclarations( te_macts, te_po.Provision, false )
      .assign message_declarations = message_declarations + decs.body
      .assign port_classes = ( ( port_classes + ", public " ) + ( te_po.InterfaceName + provreq1 ) )
    .end if
  .end for
  .//
  .// initialization
  .// Build the domain init information containing data structures collecting
  .// class info for the entire domain.
  .// This set of queries drives the generation of initialization and
  .// top-level domain connection to the rest of the system.
  .select any te_class related by te_c->TE_CLASS[R2064] where ( not selected.ExcludeFromGen )
  .select any te_sm related by te_class->TE_SM[R2072]
  .select any te_cia from instances of TE_CIA
  .select one te_dci related by te_c->TE_DCI[R2090]
  .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
  .select one te_sync related by te_c->TE_SYNC[R2097]
  .invoke s = CreateDomainInitSegment( te_c, te_sync, te_sm )
  .assign init_segment = s.body
  .assign has_process_declaration = ""
  .if ( "SystemC" == te_thread.flavor )
    .if ( ( not_empty te_sm ) or ( not_empty te_sync ) )
      .assign has_process_declaration = "  SC_HAS_PROCESS( ${te_c.Name} );\n"
    .end if
  .end if
  .assign sc_process = ""
  .assign sc_event_declarations = ""
  .assign sc_process_defn = ""
  .assign sc_process_decls = ""
  .if ( "SystemC" == te_thread.flavor )
    .invoke r = TE_C_StateMachines( te_c )
    .assign sc_process = r.body
    .assign sc_event_declarations = r.result
    .invoke r = TE_C_StateMachinesProcess( te_c )
    .assign sc_process_defn = r.body
    .assign sc_process_decls = r.result
  .end if
  .//
  .// initialization
  .//
  .assign class_type_identifiers = ""
  .assign instance_dumpers = ""
  .assign class_info_init = ""
  .assign function_declarations = ""
  .assign function_definitions = ""
  .assign event_union_name = "0"
  .if ( te_c.internal_behavior )
    .// functions
    .if ( not_empty te_sync )
      .invoke r = CreateSynchronousServiceClassDefinition( te_c, te_sync )
      .assign function_definitions = r.body
    .end if
    .// Build the domain init information containing data structures collecting
    .// class info for the entire domain.
    .invoke r = CreateClassIdentifierFile( te_c, te_sync )
    .assign class_type_identifiers = r.body
    .assign class_info_init = r.class_info_init
    .invoke r = CreateSynchronousServiceClassDeclaration( te_c, te_sync )
    .assign function_declarations = r.body
    .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071] where ( selected.Used )
    .if ( te_c.OptDisabled )
      .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
    .end if
    .if ( not_empty te_evt )
      .assign event_union_name = te_c.Name + "_DomainEvents_u"
    .end if
  .end if
  .//
  .include "${arc_path}/t.component.module.h"
  .emit to file "${te_file.system_include_path}/${te_c.module_file}.${te_file.hdr_file_ext}"
  .//
  .select any ilb_te_sync related by te_c->TE_SYNC[R2084] where ( selected.IsSafeForInterrupts )
  .include "${arc_path}/t.component.messages.c"
${sc_process_defn}
  .emit to file "${te_file.system_source_path}/${te_c.module_file}.${te_file.src_file_ext}"
  .//
  .if ( te_sys.SystemCPortsType == "TLM" )
    .invoke wrapper = Vista_TLM_CreateTCLFiles ( te_c )
    .invoke interfaces = TE_C_ipxact_busInterfaces( te_c )
	.invoke registers = TE_C_ipxact_memoryMaps( te_c )
	.assign  bus_interfaces = interfaces.body
	.assign  memory_maps = registers.body
    .include "${te_file.arc_path}/t.component.ipxact.xml"
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_ipxact.xml"
    .assign vistaWrapper = vistaWrapper + wrapper.add_template
    .assign createFolderStructure = createFolderStructure + wrapper.createFolderStructure
    .assign create_model = create_model + wrapper.create_model
    .assign tlm_ports = wrapper.tlm_ports
    .assign register_declaration = wrapper.register_declaration
    .include "${te_file.arc_path}/t.component.init_data.tcl"
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_init_data.tcl"
    .include "${te_file.arc_path}/t.component.machine_architecture.tcl"
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_machine_arch.tcl"
    .include "${te_file.arc_path}/t.component.procs.tcl"
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_procs.tcl"
    .invoke vista_module_header_templates = Vista_TLM_CreateWrapperDeclaration ( te_c , true )
${vista_module_header_templates.body}
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_pv_template.h"   
    .invoke vista_module_definition_templates = Vista_TLM_CreateWrapperDefinition ( te_c, true )
${vista_module_definition_templates.body}
    .emit to file "${te_file.system_source_path}/${te_c.module_file}_pv_template.cpp"
  .end if
  .//
  .// internal classes
.end for
.//
.// ISR/TLM/AUTOSAR/SVX
.if ( te_sys.SystemCPortsType == "TLM" )
  .include "${te_file.arc_path}/t.component.tlm_wrapper.tcl"
  .emit to file "${te_file.system_source_path}/briva_tlm.tcl"
.end if
.// registers/memory
