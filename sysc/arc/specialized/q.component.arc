.//============================================================================
.// $RCSfile: q.component.arc,v $
.//
.// Description:
.// Component port level query for generating port declaration and definitions.
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
.//============================================================================
.//     Create Include List
.//============================================================================
.function TE_MACT_CreateIncludeList
  .param inst_ref_set c_cs
  .param inst_ref_set cn_cics
  .param inst_ref_set cl_ics
  .select any te_file from instances of TE_FILE
  .select many te_cs related by c_cs->TE_C[R2054]
  .select many more_te_cs related by cn_cics->C_C[R4203]->TE_C[R2054]
  .assign te_cs = te_cs | more_te_cs
  .select many more_te_cs related by cl_ics->C_C[R4201]->TE_C[R2054]
  .assign te_cs = te_cs | more_te_cs
  .select many tm_cs from instances of TM_C where ( selected.isChannel )
  .select many more_te_cs related by tm_cs->TE_C[R2804] where ( selected.included_in_build )
  .assign te_cs = te_cs | more_te_cs
  .for each te_c in te_cs
#include "${te_c.Name}.${te_file.hdr_file_ext}"
  .end for
#include "interfaces.h"
.end function
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//       Structural Section
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//--- Structured Interface = interface that have either:
.//           1- Multiple signals/operations per interface
.//           2- Multiple parameters per signal/operation
.//           3- One signal/operation with only one parameter but holding a structure UDT
.//
.function C_I_CreateInterfaces
    .param inst_ref_set c_is
    .select any te_file from instances of TE_FILE
    .for each c_i in c_is
			.invoke i = C_I_Create_Structured_Interface ( c_i )
${i.body}
    .end for
.end function
.//
.function C_I_Create_Structured_Interface
	.param inst_ref c_i
  .select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
	.assign provided_port_declaration = ""
	.assign required_port_declaration = ""
	.assign channels_declaration = ""
	.assign constructor = ""
	.assign bind_port = ""
	.select many c_ass related by c_i->C_EP[R4003]->C_AS[R4004]
	.select many c_ios related by c_i->C_EP[R4003]->C_IO[R4004]
	.assign first_port = true
	.for each c_as in c_ass
		.select many c_pps related by c_as->C_EP[R4004]->C_PP[R4006]
		.for each c_pp in c_pps
			.select one s_sdt related by c_pp->S_DT[R4007]->S_SDT[R17]
			.assign signal_name = ""
			.assign signal_type = ""
			.assign array_index = ""
			.assign for_loop = ""
			.assign end_for_loop = ""
			.assign array_spec = ""
			.//--- Check for structure UDTs
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
					.assign signal_type = "${te_dt.ExtName}"
					.assign signal_name = "${c_as.Name}_${c_pp.Name}_${s_mbr.Name}"
					.if ( 0 < te_mbr.dimensions )
						.assign array_index = "[i]"
						.assign array_spec = te_mbr.array_spec
						.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
						.assign end_for_loop = "}}"
					.end if
					.//0 = To provider,  1 = From Provider
					.if(c_as.Direction == 0) 
						.assign provided_port_declaration = provided_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
						.assign required_port_declaration = required_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
					.else
						.assign provided_port_declaration = provided_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
						.assign required_port_declaration = required_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
					.end if
					.assign channels_declaration      = channels_declaration       + "	sc_signal < ${signal_type} >	${signal_name}${array_spec};\n"
					.assign bind_port = bind_port + "		${for_loop}${signal_name}${array_index}		(c.${signal_name}${array_index});${end_for_loop}\n"
					.if (first_port)
						.//.assign constructor = constructor + "		:${signal_name}( "" ${signal_name} "" )\n"
						.assign first_port = false
					.else
						.//.assign constructor = constructor + "		,${signal_name}( "" ${signal_name} "" )\n"
					.end if
				.end for
			.else
				.select one te_dt related by c_pp->S_DT[R4007]->TE_DT[R2021]
				.select one te_parm related by c_pp->TE_PARM[R2048]
				.assign signal_type = "${te_dt.ExtName}"
				.assign signal_name = "${c_as.Name}_${c_pp.Name}"
				.if ( 0 < te_parm.dimensions )
					.assign array_index = "[i]"
					.assign array_spec = te_parm.array_spec
					.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
					.assign end_for_loop = "}}"
				.end if
				.//0 = To provider,  1 = From Provider
				.if(c_as.Direction == 0) 
					.assign provided_port_declaration = provided_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
					.assign required_port_declaration = required_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
				.else
					.assign provided_port_declaration = provided_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
					.assign required_port_declaration = required_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
				.end if
				.assign channels_declaration      = channels_declaration       + "	sc_signal < ${signal_type} >	${signal_name}${array_spec};\n"
				.assign bind_port = bind_port + "		${for_loop}${signal_name}${array_index}		(c.${signal_name}${array_index});${end_for_loop}\n"
				.if (first_port)
					.//.assign constructor = constructor + "		:${signal_name}( "" ${c_as.Name} "" )\n"
					.assign first_port = false
				.else
					.//.assign constructor = constructor + "		,${signal_name}( "" ${c_as.Name} "" )\n"
				.end if
			.end if
		.end for
	.end for
	.for each c_io in c_ios
		.select many c_pps related by c_io->C_EP[R4004]->C_PP[R4006]
		.for each c_pp in c_pps
			.select one s_sdt related by c_pp->S_DT[R4007]->S_SDT[R17]
			.assign signal_name = ""
			.assign signal_type = ""
			.assign array_index = ""
			.assign for_loop = ""
			.assign end_for_loop = ""
			.assign array_spec = ""
			.//--- Check for structure UDTs
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
					.assign signal_type = "${te_dt.ExtName}"
					.assign signal_name = "${c_io.Name}_${c_pp.Name}_${s_mbr.Name}"
					.if ( 0 < te_mbr.dimensions )
						.assign array_index = "[i]"
						.assign array_spec = te_mbr.array_spec
						.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
						.assign end_for_loop = "}}"
					.end if
					.//0 = To provider,  1 = From Provider
					.if(c_io.Direction == 0) 
						.assign provided_port_declaration = provided_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
						.assign required_port_declaration = required_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
					.else
						.assign provided_port_declaration = provided_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
						.assign required_port_declaration = required_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
					.end if
					.assign channels_declaration      = channels_declaration       + "	sc_signal < ${signal_type} >	${signal_name}${array_spec};\n"
					.assign bind_port = bind_port + "		${for_loop}${signal_name}${array_index}		(c.${signal_name}${array_index});${end_for_loop}\n"
					.if (first_port)
						.//.assign constructor = constructor + "		:${signal_name}( "" ${signal_name} "" )\n"
						.assign first_port = false
					.else
						.//.assign constructor = constructor + "		,${signal_name}( "" ${signal_name} "" )\n"
					.end if
				.end for
			.else
				.select one te_dt related by c_pp->S_DT[R4007]->TE_DT[R2021]
				.select one te_parm related by c_pp->TE_PARM[R2048]
				.assign signal_type = "${te_dt.ExtName}"
				.assign signal_name = "${c_io.Name}_${c_pp.Name}"
				.if ( 0 < te_parm.dimensions )
					.assign array_index = "[i]"
					.assign array_spec = te_parm.array_spec
					.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
					.assign end_for_loop = "}}"
				.end if
				.//0 = To provider,  1 = From Provider
				.if(c_io.Direction == 0) 
					.assign provided_port_declaration = provided_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
					.assign required_port_declaration = required_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
				.else
					.assign provided_port_declaration = provided_port_declaration + "	sc_out < ${signal_type} >		${signal_name}${array_spec};\n"
					.assign required_port_declaration = required_port_declaration + "	sc_in < ${signal_type} >		${signal_name}${array_spec};\n"
				.end if
				.assign channels_declaration      = channels_declaration       + "	sc_signal < ${signal_type} >	${signal_name}${array_spec};\n"
				.assign bind_port = bind_port + "		${for_loop}${signal_name}${array_index}		(c.${signal_name}${array_index});${end_for_loop}\n"
				.if (first_port)
					.//.assign constructor = constructor + "		:${signal_name}( "" ${signal_type} "" )\n"
					.assign first_port = false
				.else
					.//.assign constructor = constructor + "		,${signal_name}( "" ${signal_type} "" )\n"
				.end if
			.end if
		.end for
	.end for
  .// Select to see if this interface has been marked as needing a template.
  .select any tm_if from instances of TM_IF where ( selected.Name == c_i.Name )
  .select one tm_template related by tm_if->TM_TEMPLATE[R2802]
  .assign template_parameters_default = ""
  .if ( not_empty tm_template )
    .assign template_parameters_default = tm_template.template_parameters_default
  .end if
  .include "${te_file.arc_path}/t.interface.structured.h"
.end function
.//
.//============================================================================
.//      Component Ports Declarations                                         =
.//============================================================================
.function C_IR_CreatePortDeclarations
  .param inst_ref te_c
  .select any te_prefix from instances of TE_PREFIX
  .select any te_file from instances of TE_FILE
  .select many te_pos related by te_c->TE_PO[R2005]
  .for each te_po in te_pos
    .assign array_spec = ""
    .assign template_parameter_values = ""
    .// Need to select the correct TE_IIR for this port.
    .select any te_iir related by te_po->TE_IIR[R2080] where ( selected.template_parameter_values != "" )
    .if ( not_empty te_iir )
      .assign template_parameter_values = te_iir.template_parameter_values
    .end if
    .include "${te_file.arc_path}/t.component.port.h"
  .end for
.end function
.//
.//============================================================================
.//     Nested Component Instances                                            =
.//============================================================================
.function CN_CC_CreateNestedComponentInstances	
	.param inst_ref_set cn_cics
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
  .assign template_parameter_values = ""
	.for each cn_cic in cn_cics
		.select one c_c_nested related by cn_cic->C_C[R4203]
		.assign comp_name = c_c_nested.Name
		.assign instance_name = "i" + c_c_nested.Name
		.include "${te_file.arc_path}/t.nestedComponent.instance.h"
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign comp_name = c_c_nested.Name
    .select one te_ci related by cl_ic->TE_CI[R2009]
		.assign instance_name = te_ci.ClassifierName
		.assign template_parameter_values = te_ci.template_parameter_values
		.include "${te_file.arc_path}/t.nestedComponent.instance.h"
	.end for
.end function
.//
.function CN_CC_CreateNestedComponentInstances_FromPackage
	.param inst_ref_set c_cs
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
  .assign template_parameter_values = ""
	.for each c_c_nested in c_cs
		.assign comp_name = c_c_nested.Name
		.assign instance_name = "i" + c_c_nested.Name
		.include "${te_file.arc_path}/t.topComponent.instance.h"
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign comp_name = c_c_nested.Name
    .select one te_ci related by cl_ic->TE_CI[R2009]
		.assign instance_name = te_ci.ClassifierName
		.assign template_parameter_values = te_ci.template_parameter_values
		.include "${te_file.arc_path}/t.topComponent.instance.h"
	.end for
.end function
.//============================================================================
.//      Signals to Connect Nested Instances                                  =
.//============================================================================
.function TE_MACT_CreateSignals
	.param inst_ref_set cn_cics
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
	.//---- Create Signals from Nested Components' Provided Ports
	.for each cn_cic in cn_cics
		.select one c_c_nested related by cn_cic->C_C[R4203]
		.invoke nested_components_signals = TE_MACT_CreateSignals_helper ( c_c_nested, "" )
${nested_components_signals.body}\
	.end for
	.//The same again but for imported components
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
    .select one te_ci related by cl_ic->TE_CI[R2009]
		.invoke imported_components_signals = TE_MACT_CreateSignals_helper ( c_c_nested , "_${te_ci.ClassifierName}" )
${imported_components_signals.body}\
	.end for
.end function
.//
.function TE_MACT_CreateSignals_FromPackage
	.param inst_ref_set c_cs
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
	.//---- Create Signals from Nested Components' Provided Ports
	.for each c_c in c_cs
		.invoke nested_components_signals = TE_MACT_CreateSignals_helper ( c_c, "" )
${nested_components_signals.body}
	.end for
	.//The same again but for imported components
	.for each cl_ic in cl_ics
		.select one c_c related by cl_ic->C_C[R4201]
    .select one te_ci related by cl_ic->TE_CI[R2009]
		.invoke imported_components_signals = TE_MACT_CreateSignals_helper ( c_c , "_${te_ci.ClassifierName}" )
${imported_components_signals.body}
	.end for
.end function
.//
.//---- Helper Function
.//
.function TE_MACT_CreateSignals_helper
	.param inst_ref c_c_nested
	.param string cl_ic_description
	.select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
	.select one te_c_nested related by c_c_nested->TE_C[R2054]
	.select one tm_c_nested related by te_c_nested->TM_C[R2804]
	.assign is_predefined_channel = false
  .if ( not_empty tm_c_nested )
    .if ( tm_c_nested.isChannel == true )
      .// If this component is marked as a pre-defined channel, we skip creating
      .// the channel declarations here altogether.
      .assign is_predefined_channel = true
    .end if
  .end if
  .//CDS.if ( is_predefined_channel == false )
  .if ( false )
	.//--- Generate "structured interface" channels
	.select many c_irs related by c_c_nested->C_PO[R4010]->C_IR[R4016]
	.for each c_ir in c_irs
    .assign channel_name = ""
    .assign channel_type = ""
    .assign signal_type = ""
    .assign array_spec = ""
	  .assign brackets = ""
	  .assign template_parameter_values = ""
    .select any te_iir related by c_ir->TE_IIR[R2046] where ( selected.template_parameter_values != "" )
    .if ( empty te_iir )
      .select any te_iir related by c_ir->CL_IIR[R4701]->TE_IIR[R2013] where ( selected.template_parameter_values != "" )
    .end if
    .if ( not_empty te_iir )
	    .assign brackets = "< >"
	    .assign template_parameter_values = te_iir.template_parameter_values
    .end if
		.select one c_i related by c_ir->C_I[R4012]
			.select one c_p related by c_ir->C_P[R4009]
			.select one c_po related by c_ir->C_PO[R4016]
			.if(not_empty c_p)
				.assign signal_type = ""
        .assign channel_type = te_prefix.channel + c_i.Name
        .assign channel_name = c_c_nested.Name + "_" 
        .assign channel_name = channel_name + c_po.Name
        .assign channel_name = channel_name + "_"
				.assign channel_name = channel_name + c_p.Name
				.include "${te_file.arc_path}/t.signal.h"
			.end if
	.end for
  .end if
.end function
.//
.//============================================================================
.//      Nested component Constructor
.//============================================================================
.function TE_MACT_ConstructInstances
	.param inst_ref_set cn_cics
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
	.if ((not_empty cn_cics) or (not_empty cl_ics))
     :
	.end if
	.assign first_instance = true
	.assign instance_name = ""
	.for each cn_cic in cn_cics
		.select one c_c_nested related by cn_cic->C_C[R4203]
		.assign instance_name = "i${c_c_nested.Name}"
		.include "${te_file.arc_path}/t.nestedComponent.constructor.h"
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign cl_ic_description = "${cl_ic.ClassifierName}"
		.if(cl_ic_description == "" )
			.assign instance_name = "i${c_c_nested.Name}"			
		.else
			.assign instance_name = "${cl_ic_description}"			
		.end if
		.include "${te_file.arc_path}/t.nestedComponent.constructor.h"
	.end for
.end function
.//
.//============================================================================
.//
.//     Bind Nesetd Components
.//
.// Build the include file body for the component port action.
.// For each te_mact_nestsed:
.//       1-  check for Satisfaction, if it is ok, then the port is connected
.//           to another nested component
.//       2- if not satisfied, then check for delegation
.//       3- if both cases are not, then it is unconnected port
.//
.//============================================================================
.function TE_MACT_BindSignals
	.param inst_ref_set cn_cics
	.param inst_ref_set cl_ics
	.param inst_ref c_c_parent
	.select any te_file from instances of TE_FILE
	.//-------------------------------
	.//1- connect clk and reset ports
	.//------------------------------
	.for each cn_cic in cn_cics
		.select one c_c_nested related by cn_cic->C_C[R4203]
		.assign cl_ic_description = ""
		.assign array_index = ""
		.assign for_loop = ""
		.assign end_for_loop = ""
		.assign port_name = "clk"
		.assign signal_name = "clk"
		.assign comment = ""
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
		.assign port_name = "rst_X"
		.assign signal_name = "rst_X"
		.assign comment = ""
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign cl_ic_description = "${cl_ic.ClassifierName}"
		.assign array_index = ""
		.assign for_loop = ""
		.assign end_for_loop = ""
		.assign port_name = "clk"
		.assign signal_name = "clk"
		.assign comment = ""	  
		.//.include "${te_file.arc_path}/t.nestedComponent.bindClkandRst.h"
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
		.assign port_name = "rst_X"
		.assign signal_name = "rst_X"
		.assign comment = ""
		.//.include "${te_file.arc_path}/t.nestedComponent.bindClkandRst.h"
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
	.end for
	.//-------------------------------
	.//2- connect other ports
	.//------------------------------
	.for each cn_cic in cn_cics
		.select one c_c_nested related by cn_cic->C_C[R4203]
		.assign cl_ic_description = ""
		.select any cl_ic from instances of CL_IC where (false)
		.select one cp_cp related by c_c_nested->CP_CP[R4604]
		.print "${c_c_nested.Name} + ${c_c_nested.Package_ID} + ${c_c_parent.Name}"
		.//.select one c_c_parent related by c_c_nested->C_C[R4202]
		.invoke bind_nested_components =  TE_MAC_BindSignals_helper ( c_c_nested , cl_ic_description, cl_ic , cp_cp , c_c_parent)
${bind_nested_components.body}
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign cl_ic_description = "${cl_ic.ClassifierName}"
		.select one cp_cp related by cl_ic->C_C[R4205]->CP_CP[R4604]
		.//.select one c_c_parent related by cl_ic->C_C[R4205]
		.print "${c_c_nested.Name} + ${c_c_nested.Package_ID} + ${c_c_parent.Name}"
		.invoke bind_imported_components =  TE_MAC_BindSignals_helper ( c_c_nested , cl_ic_description, cl_ic , cp_cp , c_c_parent)
${bind_imported_components.body}
	.end for
.end function
.//
.function TE_MACT_BindSignals_FromPackage
	.param inst_ref_set c_cs
	.param inst_ref_set cl_ics
	.select any te_file from instances of TE_FILE
	.//-------------------------------
	.//1- connect clk and reset ports
	.//------------------------------
	.for each c_c_nested in c_cs
		.assign cl_ic_description = ""
		.assign array_index = ""
		.assign for_loop = ""
		.assign end_for_loop = ""
		.assign port_name = "clk"
		.assign signal_name = "clk"
		.assign comment = ""
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
		.assign port_name = "rst_X"
		.assign signal_name = "rst_X"
		.assign comment = ""
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"

	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign cl_ic_description = "${cl_ic.ClassifierName}"
		.assign array_index = ""
		.assign for_loop = ""
		.assign end_for_loop = ""
		.assign port_name = "clk"
		.assign signal_name = "clk"
		.assign comment = ""	  
		.//.include "${te_file.arc_path}/t.nestedComponent.bindClkandRst.h"
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
		.assign port_name = "rst_X"
		.assign signal_name = "rst_X"
		.assign comment = ""
		.//.include "${te_file.arc_path}/t.nestedComponent.bindClkandRst.h"
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"

	.end for
	.//-------------------------------
	.//2- connect other ports
	.//------------------------------
	.for each c_c_nested in c_cs
		.assign cl_ic_description = ""
		.select any cl_ic from instances of CL_IC where (false)
		.select one cp_cp related by c_c_nested->CP_CP[R4604]
		.//.select one c_c_parent related by c_c_nested->CN_CIC[R4203]->C_C[R4202]
		.select any c_c_parent from instances of C_C where (false)
		.print "${c_c_nested.Name} + ${c_c_nested.Package_ID}"
		.invoke bind_nested_components =  TE_MAC_BindSignals_helper ( c_c_nested , cl_ic_description, cl_ic , cp_cp , c_c_parent)
${bind_nested_components.body}
	.end for
	.for each cl_ic in cl_ics
		.select one c_c_nested related by cl_ic->C_C[R4201]
		.assign cl_ic_description = "${cl_ic.ClassifierName}"
		.select one cp_cp related by cl_ic->CP_CP[R4605]
		.//.select one c_c_parent related by cl_ic->C_C[R4205]
		.select any c_c_parent from instances of C_C where (false)
		.print "${c_c_nested.Name} + ${c_c_nested.Package_ID}"
		.invoke bind_imported_components =  TE_MAC_BindSignals_helper ( c_c_nested , cl_ic_description, cl_ic , cp_cp , c_c_parent)
${bind_imported_components.body}
	.end for
.end function
.//----
.//helper function
.//
.function TE_MAC_BindSignals_helper
	.param inst_ref c_c_nested
	.param string cl_ic_description
	.param inst_ref cl_ic
	.param inst_ref cp_cp
	.param inst_ref c_c_parent
	.select any te_file from instances of TE_FILE
	.select one te_c_nested related by c_c_nested->TE_C[R2054]
	.select one tm_c_nested related by te_c_nested->TM_C[R2804]
    .assign is_predefined_channel = false
    .if ( not_empty tm_c_nested )
      .if ( tm_c_nested.isChannel == true )
        .// If this component is marked as a pre-defined channel, we skip binding
        .// it's ports altogether.
        .assign is_predefined_channel = true
      .end if
    .end if
    .if ( is_predefined_channel == false )
	.assign array_index = ""
	.assign for_loop = ""
	.assign end_for_loop = ""
	.//
	.assign signal_name = ""
	.assign comment = ""
	.assign port_name = ""
	.//----
	.assign c_c_parent_id = ""
	.if (not_empty c_c_parent)
		.assign c_c_parent_id = "${c_c_parent.Id}"
	.end if
	.assign cp_cp_Id = ""
	.if(not_empty cp_cp)
		.assign cp_cp_Id = "${cp_cp.Package_ID}"
	.end if
	.//----
	.//------- Bind Structured Interfaces
	.select many c_irs related by c_c_nested->C_PO[R4010]->C_IR[R4016]
	.for each c_ir in c_irs
		.select one c_i related by c_ir->C_I[R4012]
		.select one c_po related by c_ir -> C_PO[R4016]
		.invoke b = TE_MAC_BindStructuredInterface ( c_c_nested , cl_ic , cl_ic_description, c_ir , cp_cp , c_c_parent )
${b.body}
	.end for
    .end if
.end function
.//
.function TE_MAC_BindStructuredInterface
	.param inst_ref c_c_nested
	.param inst_ref cl_ic
	.param string cl_ic_description
	.param inst_ref c_ir
	.param inst_ref cp_cp
	.param inst_ref c_c_parent
	.select any te_file from instances of TE_FILE
  .select any te_prefix from instances of TE_PREFIX
	.select one te_c_nested related by c_c_nested->TE_C[R2054]
	.assign array_index = ""
	.assign for_loop = ""
	.assign end_for_loop = ""
	.assign is_predefined_channel = false
	.//
	.assign signal_name = ""
	.assign comment = ""
	.assign port_name = ""
	.assign c_c_parent_id = ""
	.if (not_empty c_c_parent)
		.assign c_c_parent_id = "${c_c_parent.Id}"
	.end if
	.assign cp_cp_Id = ""
	.if(not_empty cp_cp)
		.assign cp_cp_Id = "${cp_cp.Package_ID}"
	.end if
	.//
	.select one c_p related by c_ir->C_P[R4009]
	.select one c_po related by c_ir->C_PO[R4016]
	.select one c_i related by c_ir->C_I[R4012]
	.//------------------------------------------------------------------------
	.// --- Provided Structured Interface
	.//------------------------------------------------------------------------
	.if(not_empty c_p)
		.assign signal_type = ""
		.assign channel_type = te_prefix.channel + c_i.Name
		.assign port_name = c_po.Name
		.// ------ 1- Check for delegation
		.assign delegate_c_c_id = ""
		.assign delegate_cp_cp_id = ""
		.if(not_empty cl_ic)
			.select one cl_iir_provider related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
			.select one delegate_c_c related by cl_iir_provider->C_DG[R4704]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${c_c_parent_id}" )
			.select one delegate_cp_cp related by delegate_c_c->CP_CP[R4604]
			.if (not_empty delegate_cp_cp)
				.assign delegate_cp_cp_id = "${delegate_cp_cp.Package_ID}"
				.assign delegate_c_c_id  = "${delegate_c_c.Id}"
			.end if
		.else
			.select one delegate_c_c related by c_ir->C_DG[R4014]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${c_c_parent_id}" )
			.select one delegate_cp_cp related by delegate_c_c->CP_CP[R4608]
			.if (not_empty delegate_cp_cp)
				.assign delegate_cp_cp_id = "${delegate_cp_cp.Package_ID}"
				.assign delegate_c_c_id  = "${delegate_c_c.Id}"
			.end if
		.end if
		.// Check that the delegate_c_c is within the same component package
		.if( ( delegate_c_c_id != "" ) and ( (cp_cp_Id == delegate_cp_cp_id) or (delegate_c_c_id == c_c_parent_id ) ) )
			.if(not_empty cl_ic)
				.select one cl_iir_provider related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
				.select one other_way_c_po related by cl_iir_provider->C_DG[R4704]->C_RID[R4013]->C_IR[R4013]->C_PO[R4016]
				.assign signal_name = other_way_c_po.Name
			.else
				.select one other_way_c_po related by c_ir->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->C_PO[R4016]
				.assign signal_name = other_way_c_po.Name
			.end if
		.else
		.// ------ 2- Since the port is not delegated, bind this port to a signal which its name = port name
			.if(not_empty cl_ic)
				.select one cl_iir_provider related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
				.select any cl_ic_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->CL_IR[R4706]->CL_IIR[R4703]->CL_IC[R4700]	where ( ( "${selected.Component_Package_ID}" == cp_cp_Id) or ( "${selected.ParentComp_Id}" == c_c_parent_id ) )
				.select any cn_cic_requirer related by  cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->CN_CIC[R4203] where ( "${selected.Parent_Id}" == c_c_parent_id )
				.assign cn_cic_requirer_id = ""
				.if( not_empty cn_cic_requirer)
					.assign cn_cic_requirer_id = "${cn_cic_requirer.Id}"
				.end if
				.select any c_c_requirer related by cl_iir_provider->CL_IP[R4703]->CL_IPINS[R4705]->C_SF[R4705]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected.Package_ID}" == cp_cp_Id) or ( "${selected.NestedComponent_Id}" == cn_cic_requirer_id ) )
				.//
				.if ( (not_empty  cl_ic_requirer) or (not_empty c_c_requirer) )
.// SKB - a
                  .select one te_c_requirer related by c_c_requirer->TE_C[R2054]
                  .select one tm_c_requirer related by te_c_requirer->TM_C[R2804]
                  .if ( not_empty tm_c_requirer )
                    .if ( tm_c_requirer.isChannel == true )
                      .assign is_predefined_channel = true
                      .assign signal_name = "i" + c_c_requirer.Name
                    .end if
                  .elif ( not_empty cl_ic_requirer )
                    .select one te_ci related by cl_ic_requirer->TE_CI[R2009]
                    .select one other_way_c_c related by te_ci->TE_C[R2008]->C_C[R2054]
                    .select one te_c_other_way related by other_way_c_c->TE_C[R2054]
                    .select one tm_c_other_way related by te_c_other_way->TM_C[R2804]
                    .if ( not_empty tm_c_other_way )
                      .if ( tm_c_other_way.isChannel == true )
                        .assign is_predefined_channel = true
                        .assign signal_name = te_ci.ClassifierName
                      .end if
                    .end if
                  .end if
                  .if ( is_predefined_channel == false )
                    .assign signal_name = c_c_nested.Name + "_" 
                    .assign signal_name = signal_name + c_po.Name
                    .assign signal_name = signal_name + "_"
					.assign signal_name = signal_name + c_p.Name
					.assign signal_name = signal_name + "_${cl_ic_description}"
				  .end if
				.else
					.assign comment = "/* 1UNCONNECTED PORT: Please adjust the model and connect this port*/"
				.end if
			.// --- 3- Since you are not a component reference, use c_ir to get the satsifaction
			.else
				.select any cl_ic_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->CL_IR[R4706]->CL_IIR[R4703]->CL_IC[R4700] where ( ("${selected.Component_Package_ID}" == cp_cp_Id) or ("${selected.ParentComp_Id}" == c_c_parent_id ) )
				.select any cn_cic_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->CN_CIC[R4203] where ( "${selected.Parent_Id}" == c_c_parent_id )
				.assign cn_cic_requirer_id = ""
				.if( not_empty cn_cic_requirer)
					.assign cn_cic_requirer_id = "${cn_cic_requirer.Id}"
				.end if
				.select any c_c_requirer related by c_ir->C_P[R4009]->C_SF[R4002]->C_R[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected.Package_ID}" == cp_cp_Id) or ( "${selected.NestedComponent_Id}" == cn_cic_requirer_id ) )				
				.if( ( not_empty cl_ic_requirer ) or ( not_empty c_c_requirer ) )
.// SKB - b
                  .select one te_c_requirer related by c_c_requirer->TE_C[R2054]
                  .select one tm_c_requirer related by te_c_requirer->TM_C[R2804]
                  .if ( not_empty tm_c_requirer )
                    .if ( tm_c_requirer.isChannel == true )
                      .assign is_predefined_channel = true
                      .assign signal_name = "i" + c_c_requirer.Name
                    .end if
                  .elif ( not_empty cl_ic_requirer )
                    .select one te_ci related by cl_ic_requirer->TE_CI[R2009]
                    .select one other_way_c_c related by te_ci->TE_C[R2008]->C_C[R2054]
                    .select one te_c_other_way related by other_way_c_c->TE_C[R2054]
                    .select one tm_c_other_way related by te_c_other_way->TM_C[R2804]
                    .if ( not_empty tm_c_other_way )
                      .if ( tm_c_other_way.isChannel == true )
                        .assign is_predefined_channel = true
                        .assign signal_name = te_ci.ClassifierName
                      .end if
                    .end if
                  .end if
                  .if ( is_predefined_channel == false )
                    .assign signal_name = c_c_nested.Name + "_" 
                    .assign signal_name = signal_name + c_po.Name
                    .assign signal_name = signal_name + "_"
					.assign signal_name = signal_name + c_p.Name
                  .end if
				.else
					.assign comment = "/* 2UNCONNECTED PORT: Please adjust the model and connect this port*/"
				.end if
			.end if
		.end if
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
	.//------------------------------------------------------------------------
	.// --- Required Structured Interface
	.//------------------------------------------------------------------------
	.else
		.assign signal_type = ""
		.assign channel_type = te_prefix.channel + c_i.Name
		.assign port_name = c_po.Name
		.assign comment = ""
		.// ------ 1- Check for delegation
		.assign delegate_c_c_id = ""
		.assign delegate_cp_cp_id = ""
		.if(not_empty cl_ic)
			.select one cl_iir_requirer related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
			.select one delegate_c_c related by cl_iir_requirer->C_DG[R4704]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${c_c_parent_id}" )
			.select one delegate_cp_cp related by delegate_c_c->CP_CP[R4604]
			.if (not_empty delegate_cp_cp)
				.assign delegate_cp_cp_id = "${delegate_cp_cp.Package_ID}"
				.assign delegate_c_c_id  = "${delegate_c_c.Id}"
			.end if
		.else
			.select one delegate_c_c related by c_ir->C_DG[R4014]->PA_DIC[R9002]->C_C[R9002] where ( "${selected.Id}" == "${c_c_parent_id}" )
			.select one delegate_cp_cp related by delegate_c_c->CP_CP[R4604]
			.if (not_empty delegate_cp_cp)
				.assign delegate_cp_cp_id = "${delegate_cp_cp.Package_ID}"
				.assign delegate_c_c_id  = "${delegate_c_c.Id}"
			.end if
		.end if
		.// Check that the delegate_c_c is within the same component package
		.if( ( delegate_c_c_id != "" ) and ( (cp_cp_Id == delegate_cp_cp_id) or (delegate_c_c_id == c_c_parent_id ) ) )
			.if(not_empty cl_ic)
				.select one cl_iir_requirer related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
				.select one delegate_c_po related by cl_iir_requirer->C_DG[R4704]->C_RID[R4013]->C_IR[R4013]->C_R[R4009]->C_IR[R4009]->C_PO[R4016]
				.assign signal_name = delegate_c_po.Name
			.else
				.select one delegate_c_po related by c_ir->C_DG[R4014]->C_RID[R4013]->C_IR[R4013]->C_R[R4009]->C_IR[R4009]->C_PO[R4016]
				.assign signal_name = delegate_c_po.Name
			.end if
		.else
		.// ------ 2- Since the port is not delegated, search for the satisfed provided port
			.// --- 3- Check if the you are a Component Reference, then aquire the cl_iir
			.if(not_empty cl_ic)
				.select one cl_iir_requirer related by cl_ic->CL_IIR[R4700] where (selected.Ref_Id == c_ir.Id)
				.select one cl_ic_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->CL_IC[R4700]	where ( ( "${selected.Component_Package_ID}" == cp_cp_Id) or ( "${selected.ParentComp_Id}" == c_c_parent_id ) )
				.select one cn_cic_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->CN_CIC[R4203] where ( "${selected.Parent_Id}" == c_c_parent_id )
				.assign cn_cic_provider_id = ""
				.if( not_empty cn_cic_provider)
					.assign cn_cic_provider_id = "${cn_cic_provider.Id}"
				.end if
				.select one c_c_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected.Package_ID}" == cp_cp_Id) or ( "${selected.NestedComponent_Id}" == cn_cic_provider_id ) )
				.//
				.if (not_empty  cl_ic_provider)
					.select one cl_iir_provider related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703] where ( selected.ImportedComp_Id == cl_ic_provider.Id )
					.select one other_way_cp related by cl_iir_provider->C_IR[R4701]->C_P[R4009]
					.select one other_way_c_po related by other_way_cp->C_IR[R4009]->C_PO[R4016]
					.select one other_way_c_c related by other_way_cp->C_IR[R4009]->C_PO[R4016]->C_C[R4010]
.// SKB - c
                    .select one te_c_other_way related by other_way_c_c->TE_C[R2054]
                    .select one tm_c_other_way related by te_c_other_way->TM_C[R2804]
                    .if ( not_empty tm_c_other_way )
                      .if ( tm_c_other_way.isChannel == true )
                        .assign is_predefined_channel = true
                        .select one te_ci_provider related by cl_ic_provider->TE_CI[R2009]
                        .assign signal_name = te_ci_provider.ClassifierName
                      .end if
                    .end if
                    .if ( is_predefined_channel == false )
                      .assign signal_name = other_way_c_c.Name + "_"
                      .assign signal_name = signal_name + other_way_c_po.Name
                      .assign signal_name = signal_name + "_"
					  .assign signal_name = signal_name + other_way_cp.Name
					  .assign signal_name = signal_name + "_${cl_ic_provider.ClassifierName}"
					.end if
				.elif (not_empty c_c_provider)
					.select one other_way_c_po related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_provider.Id )
					.select one other_way_c_ir related by cl_iir_requirer->CL_IR[R4703]->C_SF[R4706]->C_P[R4002]->C_IR[R4009] where ( selected.Port_Id == other_way_c_po.Id )
					.select one other_way_cp related by other_way_c_ir->C_P[R4009]
.// SKB - d
                    .select one te_c_provider related by c_c_provider->TE_C[R2054]
                    .select one tm_c_provider related by te_c_provider->TM_C[R2804]
                    .if ( not_empty tm_c_provider )
                      .if ( tm_c_provider.isChannel == true )
                        .assign is_predefined_channel = true
                        .assign signal_name = "i" + c_c_provider.Name
                      .end if
                    .end if
                    .if ( is_predefined_channel == false )
                      .assign signal_name = c_c_provider.Name + "_"
                      .assign signal_name = signal_name + other_way_c_po.Name
                      .assign signal_name = signal_name + "_"
					  .assign signal_name = signal_name + other_way_cp.Name
					.end if
				.else
					.assign comment = "/* 3UNCONNECTED PORT: Please adjust the model and connect this port*/"
				.end if
			.// --- 3- Since you are not a component reference, use c_ir to get the satsifaction
			.else
				.select one cl_ic_provider related by c_ir->C_R[R4009]->C_SF[R4002]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]->CL_IC[R4700] where ( ("${selected.Component_Package_ID}" == cp_cp_Id) or ("${selected.ParentComp_Id}" == c_c_parent_id ) )
				.select one cn_cic_provider related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]->CN_CIC[R4203] where ( "${selected.Parent_Id}" == c_c_parent_id )
				.assign cn_cic_provider_id = ""
				.if( not_empty cn_cic_provider)
					.assign cn_cic_provider_id = "${cn_cic_provider.Id}"
				.end if
				.select one c_c_provider related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016]->C_C[R4010]  where ( ( "${selected.Package_ID}" == cp_cp_Id) or ( "${selected.NestedComponent_Id}" == cn_cic_provider_id ) )				
				.if(not_empty c_c_provider)
					.select one other_way_c_po related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009]->C_PO[R4016] where ( selected.Component_Id == c_c_provider.Id )
					.select one other_way_c_ir related by c_ir->C_R[R4009]->C_SF[R4002]->C_P[R4002]->C_IR[R4009] where ( selected.Port_Id == other_way_c_po.Id )
					.select one other_way_cp related by other_way_c_ir->C_P[R4009]
.// SKB - e
                    .select one te_c_provider related by c_c_provider->TE_C[R2054]
                    .select one tm_c_provider related by te_c_provider->TM_C[R2804]
                    .if ( not_empty tm_c_provider )
                      .if ( tm_c_provider.isChannel == true )
                        .assign is_predefined_channel = true
                        .assign signal_name = "i" + c_c_provider.Name
                      .end if
                    .end if
                    .if ( is_predefined_channel == false )
                      .assign signal_name = c_c_provider.Name + "_"
                      .assign signal_name = signal_name + other_way_c_po.Name
                      .assign signal_name = signal_name + "_"
					  .assign signal_name = signal_name + other_way_cp.Name
					.end if
				.elif (not_empty cl_ic_provider)
					.// The other way is "Imported Component"
					.select one other_way_c_c related by cl_ic_provider->C_C[R4201]
					.select one cl_iir_provider related by c_ir->C_R[R4009]->C_SF[R4002]->CL_IPINS[R4705]->CL_IP[R4705]->CL_IIR[R4703]	where ( selected.ImportedComp_Id == cl_ic_provider.Id )
					.select one other_way_c_p related by cl_iir_provider->C_IR[R4701]->C_P[R4009]
					.select one other_way_c_po related by other_way_c_p->C_IR[R4009]->C_PO[R4016]
.// SKB - f
                    .select one te_c_other_way related by other_way_c_c->TE_C[R2054]
                    .select one tm_c_other_way related by te_c_other_way->TM_C[R2804]
                    .if ( not_empty tm_c_other_way )
                      .if ( tm_c_other_way.isChannel == true )
                        .assign is_predefined_channel = true
                        .select one te_ci_provider related by cl_ic_provider->TE_CI[R2009]
                        .assign signal_name = te_ci_provider.ClassifierName
                      .end if
                    .end if
                    .if ( is_predefined_channel == false )
                      .assign signal_name = other_way_c_c.Name + "_"
                      .assign signal_name = signal_name + other_way_c_po.Name
                      .assign signal_name = signal_name + "_"
					  .assign signal_name = signal_name + other_way_c_p.Name
					  .assign signal_name = signal_name + "_${cl_ic_provider.ClassifierName}"
					.end if
				.else
					.assign comment = "/* 4UNCONNECTED PORT: Please adjust the model and connect this port*/"
				.end if
			.end if
		.end if
		.include "${te_file.arc_path}/t.nestedComponent.bindSignals.h"
	.end if
.end function
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//            Default Behaviour Section
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//============================================================================
.//            Function Declaration
.//============================================================================
.//
.function CreateDefaultBehaviorFunctionDeclaration
    .param inst_ref c_c
	.param inst_ref_set te_classes
    .select any te_file from instances of TE_FILE
    .select many cn_cics related by c_c->CN_CIC[R4202]
    .if (empty cn_cics)
		.//----- Generate Default behavior only when ther is no other state machine behavior
		.assign has_state_machines = false
		.for each te_class in te_classes 
			.select many te_sms related by te_class->TE_SM[R2072]
			.if(not_empty te_sms)
				.assign has_state_machines = true
			.end if
		.end for
		.if(has_state_machines == false)
			.assign function_name = "component_main"
			.include "${te_file.arc_path}/t.component.function.declaration.h"
		.end if
    .end if
.end function
.//
.//============================================================================
.//            Function Sensitivity List
.//============================================================================
.//
.function CreateDefaultBehaviorFunctionSensitivity
    .param inst_ref c_c
	.param inst_ref_set te_classes
    .select any te_file from instances of TE_FILE
    .select many cn_cics related by c_c->CN_CIC[R4202]
    .if (empty cn_cics)
		.//----- Generate Default behavior only when ther is no other state machine behavior
		.assign has_state_machines = false
		.for each te_class in te_classes 
			.select many te_sms related by te_class->TE_SM[R2072]
			.if(not_empty te_sms)
				.assign has_state_machines = true
			.end if
		.end for
		.if(has_state_machines == false)
			.assign function_name = "component_main"
			.include "${te_file.arc_path}/t.component.function.thread.sensitivity.h"
		.end if
    .end if
.end function
.//
.//
.//============================================================================
.//            Function Body
.//============================================================================
.//
.//
.function CreateDefaultBehaviorFunctionBody
    .param inst_ref c_c
    .param inst_ref_set te_classes
    .select any te_file from instances of TE_FILE
	  .select one te_c related by c_c->TE_C[R2054]
    .select one tm_template related by te_c->TM_C[R2804]->TM_TEMPLATE[R2800]
    .assign template_parameters = ""
    .assign template_actual_parameters = ""
    .assign template_default_instantiation = ""
    .if ( not_empty tm_template )
      .assign template_parameters = tm_template.template_parameters
      .assign template_actual_parameters = tm_template.template_actual_parameters
      .assign template_default_instantiation = tm_template.template_default_instantiation
    .end if
    .select many cn_cics related by c_c->CN_CIC[R4202]
    .if (empty cn_cics)
        .assign function_name = "component_main"
        .assign port_reset = ""
		.//
		.//--- Create Default Behavior for Structured Interfaces
		.//
		.select many c_irs related by c_c->C_PO[R4010]->C_IR[R4016]
		.for each c_ir in c_irs
			.select one c_i related by c_ir->C_I[R4012]
			.// -- Check if the port is required or provided, assign the "port_reset" variable accordingly
			.select one c_p related by c_ir->C_P[R4009]
				.if(not_empty c_p)
					.invoke port_reset_provider = CreateDefaultBehaviorFunctionBody_StructuredInterface ( c_ir , true )
					.assign port_reset = port_reset + port_reset_provider.body
				.else
					.invoke port_reset_requirer = CreateDefaultBehaviorFunctionBody_StructuredInterface ( c_ir , false )
					.assign port_reset = port_reset + port_reset_requirer.body
				.end if
		.end for
		.//
		.//----- Generate Default behavior only when ther is no other state machine behavior
		.assign has_state_machines = false
		.for each te_class in te_classes 
			.select many te_sms related by te_class->TE_SM[R2072]
			.if(not_empty te_sms)
				.assign has_state_machines = true
			.end if
		.end for
		.if(has_state_machines == false)
			.include "${te_file.arc_path}/t.component.behaviour.default.c"
		.end if
    .end if
.end function
.//
.function CreateDefaultBehaviorFunctionBody_StructuredInterface
	.param inst_ref c_ir
	.param boolean isProvider
	.assign port_reset_provider = ""
	.assign port_reset_requirer = ""
	.select one c_i related by c_ir->C_I[R4012]
	.select one c_po related by c_ir -> C_PO[R4016]
	.assign port_name = "${c_po.Name}"
	.select many c_ass related by c_i->C_EP[R4003]->C_AS[R4004]
	.select many c_ios related by c_i->C_EP[R4003]->C_IO[R4004]
	.for each c_as in c_ass
	.select many c_pps related by c_as->C_EP[R4004]->C_PP[R4006]
		.for each c_pp in c_pps
			.select one s_sdt related by c_pp->S_DT[R4007]->S_SDT[R17]
			.assign signal_name = ""
			.assign initializer = ""
			.assign array_index = ""
			.assign for_loop = ""
			.assign end_for_loop = ""
			.assign array_spec = ""
			.//--- Check for structure UDTs
			.if(not_empty s_sdt)
				.select many s_mbrs related by s_sdt->S_MBR[R44]
				.for each s_mbr in s_mbrs
					.assign signal_name = ""
					.assign initializer = ""
					.assign array_index = ""
					.assign for_loop = ""
					.assign end_for_loop = ""
					.assign array_spec = ""
					.select one te_mbr related by s_mbr->TE_MBR[R2047]
					.select one te_dt related by te_mbr->TE_DT[R2068]
					.assign initializer = te_dt.Initial_Value
					.assign signal_name = "${c_as.Name}_${c_pp.Name}_${s_mbr.Name}"
					.if ( 0 < te_mbr.dimensions )
						.assign array_index = "[i]"
						.assign array_spec = te_mbr.array_spec
						.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
						.assign end_for_loop = "}}"
					.end if
					.//0 = To provider,  1 = From Provider
					.if(c_as.Direction == 0) 
						.assign port_reset_requirer = port_reset_requirer + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
					.else
						.assign port_reset_provider = port_reset_provider + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
					.end if
				.end for
			.else
				.select one te_dt related by c_pp->S_DT[R4007]->TE_DT[R2021]
				.select one te_parm related by c_pp->TE_PARM[R2048]
				.assign initializer = te_dt.Initial_Value
				.assign signal_name = "${c_as.Name}_${c_pp.Name}"
				.if ( 0 < te_parm.dimensions )
					.assign array_index = "[i]"
					.assign array_spec = te_parm.array_spec
					.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
					.assign end_for_loop = "}}"
				.end if
				.//0 = To provider,  1 = From Provider
				.if(c_as.Direction == 0) 
					.assign port_reset_requirer = port_reset_requirer + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
				.else
					.assign port_reset_provider = port_reset_provider + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
				.end if
			.end if
		.end for
	.end for
	.for each c_io in c_ios
	.select many c_pps related by c_io->C_EP[R4004]->C_PP[R4006]
		.for each c_pp in c_pps
			.select one s_sdt related by c_pp->S_DT[R4007]->S_SDT[R17]
			.assign signal_name = ""
			.assign initializer = ""
			.assign array_index = ""
			.assign for_loop = ""
			.assign end_for_loop = ""
			.assign array_spec = ""
			.//--- Check for structure UDTs
			.if(not_empty s_sdt)
				.select many s_mbrs related by s_sdt->S_MBR[R44]
				.for each s_mbr in s_mbrs
					.assign signal_name = ""
					.assign initializer = ""
					.assign array_index = ""
					.assign for_loop = ""
					.assign end_for_loop = ""
					.assign array_spec = ""
					.select one te_mbr related by s_mbr->TE_MBR[R2047]
					.select one te_dt related by te_mbr->TE_DT[R2068]
					.assign initializer = te_dt.Initial_Value
					.assign signal_name = "${c_io.Name}_${c_pp.Name}_${s_mbr.Name}"
					.if ( 0 < te_mbr.dimensions )
						.assign array_index = "[i]"
						.assign array_spec = te_mbr.array_spec
						.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
						.assign end_for_loop = "}}"
					.end if
					.//0 = To provider,  1 = From Provider
					.if(c_io.Direction == 0) 
						.assign port_reset_requirer = port_reset_requirer + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
					.else
						.assign port_reset_provider = port_reset_provider + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
					.end if
				.end for
			.else
				.select one te_dt related by c_pp->S_DT[R4007]->TE_DT[R2021]
				.select one te_parm related by c_pp->TE_PARM[R2048]
				.assign initializer = te_dt.Initial_Value
				.assign signal_name = "${c_io.Name}_${c_pp.Name}"
				.if ( 0 < te_parm.dimensions )
					.assign array_index = "[i]"
					.assign array_spec = te_parm.array_spec
					.assign for_loop = "{char __c${array_spec}; for ( int i = 0; i < sizeof( __c ); i++ ) {"
					.assign end_for_loop = "}}"
				.end if
				.//0 = To provider,  1 = From Provider
				.if(c_io.Direction == 0) 
					.assign port_reset_requirer = port_reset_requirer + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
				.else
					.assign port_reset_provider = port_reset_provider + "	${for_loop}\n\t${port_name}.${signal_name}${array_index}.write(${initializer});\n\t${end_for_loop}"
				.end if
			.end if
		.end for
	.end for
	.//--- Print the right reset behavior
	.if( isProvider == true )
${port_reset_provider}
	.else
${port_reset_requirer}
	.end if
.end function
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//            Component Behaviour Section
.//                  (Functions defined in each Port
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//============================================================================
.//            Function Declaration
.//============================================================================
.//
.function CreateComponentFunctionsDeclarations
  .param inst_ref te_c
  .//
  .select any te_file from instances of TE_FILE
  .select many te_syncs related by te_c->TE_SYNC[R2084]
  .//
  .for each te_sync in te_syncs
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .assign function_name = "${te_sync.intraface_method}"
    .include "${te_file.arc_path}/t.component.function.declaration.h"
  .end for
.end function
.//
.//============================================================================
.//             Function Sensitivity List
.//============================================================================
.function CreateComponentFunctionsSensitivity
  .param inst_ref te_c
  .//
  .select any te_file from instances of TE_FILE
  .select many te_syncs related by te_c->TE_SYNC[R2084]
  .//
  .for each te_sync in te_syncs
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .assign function_name = "${te_sync.intraface_method}"
    .assign sensitivity_list = ""
    .assign sensitivity_list = sensitivity_list + "            sensitive << clk.pos();"
    .assign sensitivity_list = sensitivity_list + "\n            sensitive << rst_X.neg();"
    .include "${te_file.arc_path}/t.component.function.sensitivity.h"
  .end for
.end function
.//
.//
.//============================================================================
.//             Function Body
.//============================================================================
.function CreatePortFunctionsBody
  .param inst_ref te_c
  .param inst_ref c_c
  .//
  .//.select many act_fncs from instances of ACT_FNC
  .//.assign count = cardinality act_fncs
  .//.for each act_fnc in act_fncs
  .//    .select one s_sync related by act_fnc->S_SYNC[R675]
  .//    .//.if ( "ctrlfunction" == s_sync.Name )
  .//        .//.print "Found ${s_sync.Name}"
  .//        .select one spr_ro related by act_fnc->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]->ACT_ROB[R698]->SPR_RO[R685]
  .//        .if ( empty spr_ro )
  .//             .//.print "Did not find spr_ro"
  .//        .else
  .//             .//.print "Found signal ${spr_ro.Name}"
  .//        .end if
  .//        .break for
  .//   .//.end if
  .//.end for
  .//
  .select any te_file from instances of TE_FILE
  .select any te_instance from instances of TE_INSTANCE
  .select many te_syncs related by te_c->S_DOM[R2017]->S_SYNC[R23]->TE_SYNC[R2023] where ( selected.XlateSemantics )
  .assign read_from_port = ""
  .for each te_sync in te_syncs
    .select one s_sync related by te_sync->S_SYNC[R2023]
    .select many s_sparms related by s_sync->S_SPARM[R24]
    .select many te_parms related by s_sparms->TE_PARM[R2030]
    .//
    .select many act_fncs related by s_sync->ACT_FNC[R675]
    .for each act_fnc in act_fncs
       .select one te_mact related by act_fnc->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]->ACT_RSB[R698]->SPR_RS[R684]->TE_MACT[R2053]
       .if (not (empty te_mact) )
          .assign read_from_port = "${te_mact.GeneratedName}"
          .break for
       .end if
       .select one te_mact related by act_fnc->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]->ACT_ROB[R698]->SPR_RO[R685]->TE_MACT[R2052]
       .if (not (empty te_mact) )
          .assign read_from_port = "${te_mact.GeneratedName}"
          .break for
       .end if
       .select one te_mact related by act_fnc->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]->ACT_PSB[R698]->SPR_PS[R686]->TE_MACT[R2051]
       .if (not (empty te_mact) )
          .assign read_from_port = "${te_mact.GeneratedName}"
          .break for
       .end if
       .select one te_mact related by act_fnc->ACT_SMT[R603]->ACT_BLK[R602]->ACT_ACT[R601]->ACT_POB[R698]->SPR_PO[R687]->TE_MACT[R2050]
       .if (not (empty te_mact) )
          .assign read_from_port = "${te_mact.GeneratedName}"
          .break for
       .end if
    .end for
    .//
    .// Define synchronous service routine.
    .invoke deferred_definition = SyncServiceDefineDeferred( s_sparms, te_sync )
    .// Get and unpack argument data.
    .invoke unpack_arguments = SyncServiceUnpackArgumentMembers( s_sparms, te_sync, "ilbargs" )
    .invoke event_prioritization_needed = GetEventPrioritizationNeeded()
    .select one te_aba related by te_sync->TE_ABA[R2010]
    .assign function_body = ""
    .if ( s_sync.Suc_Pars == 1 )
      .// Translate the action for this domain function and output
      .// to the body of the implementing C routine.
      .select one act_blk related by s_sync->ACT_FNB[R695]->ACT_ACT[R698]->ACT_BLK[R666]
      .invoke axret = blck_xlate( te_c.StmtTrace, act_blk, 0 )
      .assign function_body = axret.body
    .end if
    .assign function_name = "${te_aba.GeneratedName}"
    .include "${te_file.arc_path}/t.component.port.function.c"

  .end for
.end function
.//
.//
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//            Class Diagram Based Behaviour Section
.//                
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//============================================================================
.//     Class Attributes
.//============================================================================
.function GenerateClassBehaviorAttributes
    .param inst_ref te_c
    .param inst_ref_set te_classes
    .select any te_file from instances of TE_FILE
    .if (not (empty te_classes) )
        .for each te_class in te_classes
    ${te_class.GeneratedName}        ${te_class.Name}_object;
        .end for
    .end if
.end function
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//            State Machine Section
.//
.//****************************************************************************/
.//****************************************************************************/
.//
.//============================================================================
.//       Register Instance Based Dispatcher Function to SC_CTHREAD
.//============================================================================
.function SM_SM_RegisterInstanceDispatcherFunction
    .param inst_ref te_c
	.param inst_ref te_class
	.select any te_file from instances of TE_FILE    
    .select many sm_sms related by te_class->O_OBJ[R2019]->SM_ISM[R518]->SM_SM[R517]
    .for each sm_sm in sm_sms
		/*--- Dispatchers used by Class ${te_class.Name} ----*/
		SC_CTHREAD(${te_class.dispatcher}, clk.pos());
		reset_signal_is(rst_X, false);
		
		.select one te_sm related by sm_sm->TE_SM[R2043]
		.if ( (te_sm.num_states > 0) and (te_sm.num_events > 0) ) 
			.select many te_evts related by sm_sm->SM_EVT[R502]->SM_SEVT[R525]->SM_EVT[R525]->TE_EVT[R2036] where ( selected.Used )
			.for each te_evt in te_evts
		SC_METHOD(${te_evt.GeneratedName}_dispatcher);
			sensitive << ${te_evt.GeneratedName};
			
			.end for
		.end if
	.end for	
.end function
.//
.// Update "Direct" UDT
.function UpdateDirectUDT
  .select many s_dpks from instances of S_DPK
  .for each s_dpk in s_dpks
    .assign handlingType = "${s_dpk.Descrip:type}"
    .if ( handlingType == "direct" )
      .select many s_dts related by s_dpk->S_DIP[R39]->S_DT[R39]
      .for each s_dt in s_dts
        .select one te_dt related by s_dt->TE_DT[R2021]
        .assign te_dt.ExtName = s_dt.Name
      .end for
    .end if
  .end for
.end function
.//
.function Update_TE_MACT_NAME
  .param inst_ref c_po
  .param inst_ref te_mact
  .if(c_po.Name == "Port1")
  .elif(c_po.Name == "Port2")
  .elif(c_po.Name == "Port3")
  .elif(c_po.Name == "Port4")
  .elif(c_po.Name == "Port5")
  .elif(c_po.Name == "Port6")
  .elif(c_po.Name == "Port7")
  .elif(c_po.Name == "Port8")
  .elif(c_po.Name == "Port9")
  .//-- Update te_mact and te_aba
  .else
    .select one te_aba related by te_mact->TE_ABA[R2010]
    .assign te_mact.GeneratedName = c_po.Name
    .assign te_aba.GeneratedName = c_po.Name
  .end if
.end function
.//
.function Update_TE_MACTS_Name
  .//---- Issue #41: Port Names
  .//---- If port name is changed, use the new name, otherwise use the long generated name
  .select many te_macts from instances of TE_MACT
  .for each te_mact in te_macts
      .if ( te_mact.subtypeKL == "SPR_PO" )
        .select one c_po related by te_mact->SPR_PO[R2050]->SPR_PEP[R4503]->C_P[R4501]->C_IR[R4009]->C_PO[R4016]
        .invoke temp = Update_TE_MACT_NAME ( c_po, te_mact)
      .elif ( te_mact.subtypeKL == "SPR_RO" )
        .select one c_po related by te_mact->SPR_RO[R2052]->SPR_REP[R4502]->C_R[R4500]->C_IR[R4009]->C_PO[R4016]
        .invoke temp = Update_TE_MACT_NAME ( c_po, te_mact)
      .elif ( te_mact.subtypeKL == "SPR_PS" )
        .select one c_po related by te_mact->SPR_PS[R2051]->SPR_PEP[R4503]->C_P[R4501]->C_IR[R4009]->C_PO[R4016]
        .invoke temp = Update_TE_MACT_NAME ( c_po, te_mact)
      .elif ( te_mact.subtypeKL == "SPR_RS" )
        .select one c_po related by te_mact->SPR_RS[R2053]->SPR_REP[R4502]->C_R[R4500]->C_IR[R4009]->C_PO[R4016]
        .invoke temp = Update_TE_MACT_NAME ( c_po, te_mact)
      .end if
  .end for
.end function
.//
