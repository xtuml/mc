.//============================================================================
.// $RCSfile: q.components.arc,v $
.//
.// Description:
.// Component ports top level query.
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
.select many empty_c_cs from instances of C_C where ( false )
.invoke TM_TEMPLATE_populate()
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
      .assign sc_port_declarations = ( ( sc_port_declarations + "  sc_port< " ) + ( te_po.InterfaceName + provreq2 ) ) + ( ( " > " + te_po.GeneratedName ) + ";\n" )
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
  .// functions
  .select any te_sync related by te_c->TE_SYNC[R2084]
  .assign function_definitions = ""
  .if ( not_empty te_sync )
    .assign te_sync.Included = true
    .select any te_sync related by te_c->TE_SYNC[R2084] where ( selected.IsSafeForInterrupts )
    .invoke s = CreateSynchronousServiceClassDefinition( te_c )
    .assign function_definitions = s.body
  .end if
  .//
  .// initialization
  .// Build the domain init information containing data structures collecting
  .// class info for the entire domain.
  .// This set of queries drives the generation of initialization and
  .// top-level domain connection to the rest of the system.
  .select any te_class related by te_c->TE_CLASS[R2064]
  .select any te_sm related by te_class->TE_SM[R2072]
  .select any te_cia from instances of TE_CIA
  .select one te_dci related by te_c->TE_DCI[R2090]
  .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
  .select many te_syncs related by te_c->TE_SYNC[R2084] where ( ( selected.IsInitFunction ) and ( selected.XlateSemantics ) )
  .invoke s = CreateDomainInitSegment( te_c, te_syncs, te_sm )
  .assign init_segment = s.body
  .assign has_process_declaration = s.has_process_declaration
  .invoke s = TE_C_StateMachines( te_c )
  .assign sc_process = s.body
  .assign sc_event_declarations = s.sc_event_declarations
  .invoke s = TE_C_StateMachinesProcess( te_c )
  .assign sc_process_defn = s.body
  .assign sc_process_decls = s.sc_process_decls
  .//
  .// initialization
  .//
  .assign instance_dumpers = ""
  .assign class_info_init = ""
  .// Build the domain init information containing data structures collecting
  .// class info for the entire domain.
  .invoke r = CreateClassIdentifierFile( te_c )
  .assign class_type_identifiers = r.body
  .if ( te_c.internal_behavior )
    .assign class_info_init = r.class_info_init
  .end if
  .invoke r = CreateSynchronousServiceClassDeclaration( te_c )
  .assign function_declarations = r.body
  .assign event_union_name = te_c.Name + "_DomainEvents_u"
  .//
  .include "${arc_path}/t.component.module.h"
  .emit to file "${te_file.system_include_path}/${te_c.module_file}.${te_file.hdr_file_ext}"
  .//
  .include "${arc_path}/t.component.messages.c"
  .include "${te_file.arc_path}/t.domain_init.c"
  .include "${te_file.arc_path}/t.domain.functions.c"
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
