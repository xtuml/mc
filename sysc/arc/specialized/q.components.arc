.//============================================================================
.// $RCSfile: q.components.arc,v $
.//
.// Description:
.// Component ports top level query.
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
.//
.//
.select many empty_c_cs from instances of C_C where ( false )
.select many empty_te_cs from instances of TE_C where ( false )
.invoke TM_TEMPLATE_populate()
.//
.assign port_declarations = ""
.select many te_cs from instances of TE_C where ( selected.included_in_build )
.assign vistaWrapper = ""
.assign createFolderStructure = ""
.assign create_model = ""
.for each te_c in te_cs
  .assign port_declarations = port_declarations + "#include ""${te_c.Name}.${te_file.hdr_file_ext}""\n"
  .select one c_c related by te_c->C_C[R2054]
  .select many te_classes related by te_c->TE_CLASS[R2064]
  .select many te_macts related by te_c->TE_MACT[R2002]
  .select many nested_te_cs related by c_c->PE_PE[R8003]->C_C[R8001]->TE_C[R2054]
  .select many cl_ics related by c_c->CL_IC[R4205]
  .select one tm_c related by te_c->TM_C[R2804]
  .assign is_channel = false
  .if ( not_empty tm_c )
    .if ( tm_c.isChannel == true )
      .assign is_channel = true
    .end if
  .end if
  .if (is_channel == false )
    .// Select to see if this component has been marked as needing a template.
    .assign template_parameters = ""
    .assign template_parameters_default = ""
    .select one tm_template related by te_c->TM_C[R2804]->TM_TEMPLATE[R2800]
    .if ( not_empty tm_template )
      .assign template_parameters = tm_template.template_parameters
      .assign template_parameters_default = tm_template.template_parameters_default
    .end if
    .//-----------------------------------------------------------------------
    .// Step1: Create port declarations
    .//-----------------------------------------------------------------------
    .invoke declarations = C_IR_CreatePortDeclarations( te_c )
    .//-----------------------------------------------------------------------
    .// Step2: Instantiate internal components
    .//-----------------------------------------------------------------------
    .invoke nested_instances = CN_CC_CreateNestedComponentInstances ( te_c )
    .//-----------------------------------------------------------------------
    .// Step3: Generate required signals to connect instances
    .//-----------------------------------------------------------------------
    .invoke signals = TE_MACT_CreateSignals ( te_c )
    .//-----------------------------------------------------------------------
    .// Step4: Bind signals to nested componets ports
    .//-----------------------------------------------------------------------
    .invoke nested_instances_constructor = TE_MACT_ConstructInstances ( te_c )
    .invoke bind_signals = TE_MACT_BindSignals ( te_c )
    .//-----------------------------------------------------------------------
    .// Step5: Prepare required include statment
    .//-----------------------------------------------------------------------
    .invoke includes = TE_MACT_CreateIncludeList ( empty_c_cs, nested_te_cs,  cl_ics )
    .//-----------------------------------------------------------------------
    .// Step6: Component Behaviour functions
    .//-----------------------------------------------------------------------
    .invoke comp_functions = CreateComponentFunctionsDeclarations( te_c )
    .invoke comp_functions_sens = CreateComponentFunctionsSensitivity ( te_c )
    .//-----------------------------------------------------------------------
    .// Step6: Default Behaviour functions
    .//-----------------------------------------------------------------------
    .invoke defaultBehav_functions = CreateDefaultBehaviorFunctionDeclaration ( c_c, te_classes )
    .invoke defaultBehav_functions_sens = CreateDefaultBehaviorFunctionSensitivity ( c_c, te_classes )
    .invoke defaultBehav_functions_body = CreateDefaultBehaviorFunctionBody ( c_c, te_classes )
    .//-----------------------------------------------------------------------
    .// Step7: Class Behaviour functions
    .//-----------------------------------------------------------------------
    .//.invoke class_attributes = GenerateClassBehaviorAttributes( te_c, te_class )
    .//-----------------------------------------------------------------------
    .// Step8: Class Behaviour functions
    .//-----------------------------------------------------------------------
    .//.invoke class_functions = GenerateClassBehaviorFunctions( te_c, te_class )
    .//-----------------------------------------------------------------------
    .// Step8: State Machines
    .//-----------------------------------------------------------------------  
    .assign sm_dispatcher = ""
    .assign sm_definition = ""
    .assign sm_implementation = ""
    .assign sm_actionArray = ""
    .if ( false )
    .for each te_class in te_classes
	  .invoke state_machine_instance_dispatcher_process = SM_SM_RegisterInstanceDispatcherFunction ( te_c, te_class )
	  .assign sm_dispatcher = sm_dispatcher + "${state_machine_instance_dispatcher_process.body}"
	  .// Generate declaration implementation file.
	  .invoke sm_def = CreateObjectImplementation( te_class, te_c, TRUE ) 
	  .assign sm_definition = sm_definition + "${sm_def.body}"	
	  .// Generate definition implementation.
	  .invoke sm_imp = CreateObjectImplementation( te_class, te_c, FALSE )
	  .assign sm_implementation = sm_implementation + "${sm_imp.body}"
	  .//-----
	  .select one o_obj related by te_class->O_OBJ[R2019]  
      .select one sm_ism related by o_obj->SM_ISM[R518]    
	  .select one sm_asm related by o_obj->SM_ASM[R519]   
	  .if ( not_empty sm_ism )
		.select one sm_sm related by sm_ism->SM_SM[R517]
		.invoke action_array = CreateStateActionArray( te_c, sm_sm )
		.assign sm_actionArray = sm_actionArray + "${action_array.body}"
	  .end if
	  .if ( not_empty sm_asm )
		.select one sm_sm related by sm_asm->SM_SM[R517]
		.invoke action_array = CreateStateActionArray( te_c, sm_sm )
		.assign sm_actionArray = sm_actionArray + "${action_array.body}"
	  .end if
    .end for
    .end if
    .//.invoke state_machine_variables = SM_SM_CreateStateVariables ( te_c, te_class )
    .//.invoke state_machine_function_prototype = SM_SM_CreateFunctionPrototype ( te_c, te_class )
    .//.invoke state_machine_function_sensList = SM_SM_CreateFunctionSensitivityList ( te_c, te_class )
    .//-----------------------------------------------------------------------
    .// data is ready now, invoke the template and emit to the appropriate file
    .//-----------------------------------------------------------------------
    .include "${arc_path}/t.component.ports.h"
    .emit to file "${te_file.system_include_path}/${c_c.Name}.${te_file.hdr_file_ext}"
    .//
    .//-----------------------------------------------------------------------
    .// .CC files
    .//-----------------------------------------------------------------------
    .//  .invoke definitions = TE_MACT_CreateDefinition( te_c, te_macts )
    .invoke port_functions = CreatePortFunctionsBody( te_c, c_c )
    .include "${arc_path}/t.component.ports.c"
    .emit to file "${te_file.system_source_path}/${c_c.Name}.${te_file.src_file_ext}"
    .//-----------------------------------------------------------------------
  .else
    .if ( "${tm_c.include_file}" == "" )
      .print "ERROR: ${tm_c.Name} is marked as a channel, but no include file is specified in the marking."
      .exit 101
    .end if
    .include "${arc_path}/t.component.ports.stub.h"
    .emit to file "${te_file.system_include_path}/${c_c.Name}.${te_file.hdr_file_ext}"
  .end if
.end for
.//
.assign top_module = ""
.select any cp_cp from instances of CP_CP where ( "${selected.Descrip:build}" == "system" )
.select many top_c_cs related by cp_cp->C_C[R4604]
.select many cl_ics_top related by cp_cp->CL_IC[R4605]
.invoke s = TE_MACT_CreateIncludeList( top_c_cs, empty_te_cs,  cl_ics_top )
.assign includes_top = s.body
.invoke s = CN_CC_CreateNestedComponentInstances_FromPackage ( top_c_cs,  cl_ics_top )
.assign nested_instances_top = s.body
.invoke s = TE_MACT_CreateSignals_FromPackage ( top_c_cs,  cl_ics_top )
.assign signals_top = s.body
.invoke s = TE_MACT_BindSignals_FromPackage ( top_c_cs,  cl_ics_top )
.assign bind_signals_top = s.body
