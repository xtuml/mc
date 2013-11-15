.//====================================================================
.//
.// File:      $RCSfile: q.oal.translate.arc,v $
.//
.// (c) Copyright 1998-2011 Mentor Graphics Corporation  All rights reserved.
.//
.//====================================================================
.//
.//    Purpose:    This file contains the functions that generate
.//                action language from the populated OOA of BPAL.
.//
.//============================================================================
.//
.//  These functions are part one of a two-step translation of
.//  the action language from the model of OAL.  Each of the invoked
.//  functions below translate a specific part of the OAL.  For
.//  example the q_val_literal_boolean_values() function generates all
.//  of the code for each literal boolean value found in all of the
.//  actions for a domain.  The function q_smt_ifs()
.//  generates the code for all of the if statements found in the
.//  actions for a domain.  
.//
.//  Each of the functions places the generated code for its
.//  element in an attribute of the supertype, called _buffer_.
.//  In the case of a value, the supertype is V_VAL, for a
.//  statement, the supertype is ACT_SMT.
.//
.//  Once all of the values and statements have been translated,
.//  and all of the code is in the buffers,  the function
.//  blck_xlate is called to order the statements.
.//
.//============================================================================
.//
.function translate_values
  .// Translate "leaf" values first.
  .invoke q_val_literal_boolean_values()
  .invoke q_val_literal_integer_values()
  .invoke q_val_literal_real_values()
  .invoke q_val_literal_string_values()
  .invoke q_val_literal_enumerations()
  .invoke q_val_constant_values()
  .invoke q_val_transient_values()
  .invoke q_val_instance_reference_values()
  .invoke q_val_inst_ref_set_values()
  .invoke q_val_selection_test_values()
  .invoke q_val_event_values()
  .invoke q_val_parameter_values()
  .// The following may be recursed.
  .invoke q_val_attribute_values()
  .invoke q_val_member_values()
  .invoke q_val_array_element_references()
  .invoke q_val_array_length_values()
  .invoke q_val_unary_op_values()
  .invoke q_val_binary_op_values()
  .// V_PARs depend upon values being populated.
  .invoke q_val_actual_parameters()
  .// These use V_PARs.
  .invoke q_val_message_values()
  .invoke q_val_bridge_values()
  .invoke q_val_transform_values()
  .invoke q_val_synch_service_values()
.end function
.//
.//
.function translate_control_statements
  .invoke q_smt_ifs()
  .invoke q_smt_elses()
  .invoke q_smt_fors()
  .invoke q_smt_whiles()
  .invoke q_smt_elifs()
.end function
.//
.function translate_other_statements
  .invoke q_smt_assigns()
  .invoke q_smt_create_instances()
  .invoke q_smt_delete_instances()
  .invoke q_smt_create_events_to_instance()
  .invoke q_smt_create_events_to_class()
  .invoke q_smt_create_events_to_creator()
  .invoke q_smt_relates()
  .invoke q_smt_unrelates()
  .invoke q_smt_selects()
  .invoke q_smt_select_wheres()
  .invoke q_smt_select_relateds()
  .invoke q_smt_select_related_wheres()
  .invoke q_smt_relate_usings()
  .invoke q_smt_unrelate_usings()
  .invoke q_smt_generate_precreated_events()
  .invoke q_smt_generate_events()
  .invoke q_smt_generate_class_events()
  .invoke q_smt_generate_creator_events()
  .invoke q_smt_sgns()
  .invoke q_smt_iops()
  .invoke q_smt_operates()
  .invoke q_smt_bridges()
  .invoke q_smt_functions()
  .invoke q_smt_returns()
  .invoke q_smt_controls()
  .invoke q_smt_breaks()
  .invoke q_smt_continues()
.end function
.//
.// 
.function translate_all_oal
  .//
  .print "translating values"
  .invoke translate_values()
  .//.print "showing values"
  .//.invoke oal_v_val_test()
  .print "translating control statements"
  .invoke translate_control_statements()
  .print "translating other statements"
  .invoke translate_other_statements()
  .print "done translating statements"
.end function
.//
