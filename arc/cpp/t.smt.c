.//============================================================================
.// $RCSfile: t.smt.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//------------------------------------------------
.function t_oal_smt_for
  .param inst_ref te_smt
  .param inst_ref te_for
  .select any te_set from instances of TE_SET
  .assign attr_declaration = ""
  .assign attr_ending = "  }}\n}"
  .if ( te_for.isImplicit)
    .assign attr_declaration = ( te_for.class_name + " * " ) + ( te_for.loop_variable + ";" )
  .end if
  .assign iterator = "iter" + "${info.unique_num}"
{ ${te_set.iterator_class_name} ${iterator};
  ${te_for.class_name} * ${te_for.class_name}${iterator};
  ${te_set.iterator_reset}( &${iterator}, ${te_for.set_variable} );
  while ( (${te_for.class_name}${iterator} = (${te_for.class_name} *)${te_set.iterator_next}( &${iterator} )) != 0 ) {
    ${te_for.loop_variable} = ${te_for.class_name}${iterator}; {
.end function
.//------------------------------------------------
.function t_oal_smt_if
  .param string condition
if ( ${condition} ) {
  .assign attr_ending = "}"
.end function
.//------------------------------------------------
.function t_oal_smt_while
  .param string condition
while ( ${condition} ) {
  .assign attr_ending = "}"
.end function
.//------------------------------------------------
.function t_oal_smt_else
else {
  .assign attr_ending = "}"
.end function
.//------------------------------------------------
.function t_oal_smt_elif
  .param string condition
else if ( ${condition} ) {
  .assign attr_ending = "}"
.end function
.//------------------------------------------------
.function t_oal_smt_assign
  .param inst_ref te_smt
  .param inst_ref te_assign
  .if ( te_assign.isImplicit )
    .assign te_smt.declaration = ( te_assign.left_declaration + te_assign.array_spec ) + ";"
  .end if
  .if ( "" != te_assign.array_spec )
    .select any te_string from instances of TE_STRING
    .if ( 4 == te_assign.Core_Typ )
      .// string
${te_string.strcpy}( ${te_assign.lval}, ${te_assign.rval} );
    .else
      .if ( 0 == te_assign.rval_dimensions )
${te_assign.lval} = ${te_assign.rval};
      .else
${te_string.memmove}( (void * const) &(${te_assign.lval}), (void const * const) &(${te_assign.rval}), sizeof( ${te_assign.rval} ) );
      .end if
    .end if
  .else
${te_assign.lval} = ${te_assign.rval};
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_create_instance
  .param inst_ref o_obj
  .param boolean is_implicit
  .param string class_name
  .param string var_name
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .select any te_instance from instances of TE_INSTANCE
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .invoke domain_id = GetDomainTypeIDFromString( te_c.Name )
  .invoke init_uniques = AutoInitializeUniqueIDs( o_obj, var_name )
  .assign attr_declaration = ""
  .if ( is_implicit )
    .assign attr_declaration = "${class_name} * ${var_name};"
  .end if
${var_name} = (${class_name} *) \
  .if ( te_class.Persistent )
${te_instance.create_persistent}\
  .else
${te_instance.create}\
  .end if
( ${domain_id.name}, ${te_class.system_class_number} );
${init_uniques.body}\
.end function
.//------------------------------------------------
.function t_oal_smt_delete_instance
  .param inst_ref o_obj
  .param string var_name
  .param integer del_count
  .select any te_instance from instances of TE_INSTANCE
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by o_obj->TE_CLASS[R2019]->TE_C[R2064]
  .invoke domain_id = GetDomainTypeIDFromString( te_c.Name )
  .if ( te_c.DetectEmpty )
if ( 0 == ${var_name} ) {
  ROX_EMPTY_HANDLE_TRACE( "${o_obj.Key_Lett}", "${te_instance.delete}" )
}
  .end if
  .if ( te_class.Persistent )
${te_instance.delete_persistent}\
  .else
${te_instance.delete}\
  .end if
( (${te_instance.handle}) ${var_name}, ${domain_id.name}, ${te_class.system_class_number} );
.end function
.//------------------------------------------------
.function t_oal_smt_create_event
  .param inst_ref sm_evt
  .param boolean is_implicit
  .param string class_name
  .param string event_meaning
  .param string oal_var_name
  .param string var_name
  .param string recipient_var_name
  .param string parameters
  .select any te_eq from instances of TE_EQ
  .select one te_evt related by sm_evt->TE_EVT[R2036]
  .assign attr_declaration = ""
  .//
  .// Create the event using the generic event class if there is no
  .// supplemental data.  We can then skip the casting.  Good for MISRA.
  .if ( "" != parameters )
    .if ( is_implicit )
      .assign attr_declaration = "${te_evt.GeneratedName} * ${var_name};  /* ${oal_var_name} */\n"
    .end if
${var_name} = (${te_evt.GeneratedName} *) ${te_eq.new}( (void *) ${recipient_var_name}, &${te_evt.GeneratedName}c );
  .// Initialize supplemental data parameters.
${parameters}\
  .else
    .if ( is_implicit )
      .assign attr_declaration = "${te_eq.base_event_type} * ${var_name};  /* ${oal_var_name} */\n"
    .end if
${var_name} = ${te_eq.new}( (void *) ${recipient_var_name}, &${te_evt.GeneratedName}c );
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_relate
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .invoke rel_info = GetLinkParameters( one_o_obj, oth_o_obj, r_rel, relationship_phrase )
  .//
  .if ( is_reflexive )
    .invoke method = GetRelateMethodName( one_o_obj, oth_o_obj, r_rel, relationship_phrase )
${method.result}( ${one_var_name}, ${oth_var_name} );
  .else
    .assign form_obj = one_o_obj
    .assign part_obj = oth_o_obj
    .if ( not rel_info.left_is_formalizer )
      .assign form_obj = oth_o_obj
      .assign part_obj = one_o_obj
    .end if
    .invoke method = GetRelateMethodName( form_obj, part_obj, r_rel, relationship_phrase )
    .if ( rel_info.left_is_formalizer )
${method.result}( ${oth_var_name}, ${one_var_name} );
    .else
${method.result}( ${one_var_name}, ${oth_var_name} );
    .end if
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_relate_using
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref ass_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .param string ass_var_name
  .param string one_rel_phrase
  .param string oth_rel_phrase
  .invoke method = GetAssociativeLinkMethodName( one_o_obj, oth_o_obj, ass_o_obj, r_rel, relationship_phrase )
${method.result}( \
  .if ( is_reflexive )
${one_var_name}, ${oth_var_name}, \
  .else
    .if ( method.left_obj_is_aone )
${one_var_name}, ${oth_var_name}, \
    .else
${oth_var_name}, ${one_var_name}, \
    .end if
  .end if
${ass_var_name} );
.end function
.//------------------------------------------------
.function t_oal_smt_unrelate
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .invoke rel_info = GetLinkParameters( one_o_obj, oth_o_obj, r_rel, relationship_phrase )
  .if ( rel_info.reflexive )
    .invoke method = GetUnrelateMethodName( one_o_obj, oth_o_obj, r_rel, relationship_phrase )
${method.result}( ${one_var_name}, ${oth_var_name} );
  .else
    .assign form_obj = one_o_obj
    .assign part_obj = oth_o_obj
    .if ( not rel_info.left_is_formalizer )
      .assign form_obj = oth_o_obj
      .assign part_obj = one_o_obj
    .end if
    .invoke method = GetUnrelateMethodName( form_obj, part_obj, r_rel, relationship_phrase )
    .if ( rel_info.left_is_formalizer )
${method.result}( ${oth_var_name}, ${one_var_name} );
    .else
${method.result}( ${one_var_name}, ${oth_var_name} );
    .end if
     .//
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_unrelate_using
  .param inst_ref one_o_obj
  .param inst_ref oth_o_obj
  .param inst_ref ass_o_obj
  .param inst_ref r_rel
  .param boolean is_reflexive
  .param integer relationship_number
  .param string relationship_phrase
  .param string one_var_name
  .param string oth_var_name
  .param string ass_var_name
  .param string one_rel_phrase
  .param string oth_rel_phrase
  .invoke method = GetAssociativeUnlinkMethodName( one_o_obj, oth_o_obj, ass_o_obj, r_rel, relationship_phrase )
${method.result}( \
  .if ( is_reflexive )
${one_var_name}, ${oth_var_name}, \
  .else
    .if ( method.left_obj_is_aone )
${one_var_name}, ${oth_var_name}, \
    .else
${oth_var_name}, ${one_var_name}, \
    .end if
  .end if
${ass_var_name} );
.end function
.//------------------------------------------------
.function t_oal_smt_select
  .param inst_ref o_obj
  .param inst_ref te_smt
  .param inst_ref te_select
  .assign attr_declaration = ""
  .assign attr_initialization = ""
  .assign attr_deallocation = ""
  .select any te_set from instances of TE_SET
  .invoke extent_info = GetFixedSizeClassExtentInfo( o_obj )
  .assign type_cast = ""
  .if ( te_select.multiplicity == "any" )
    .assign type_cast = "(${te_select.class_name} *)"
    .if ( te_select.is_implicit )
      .// Declare (first OAL usage of) inst_ref<Object> handle variable.
      .assign attr_declaration = "  ${te_select.class_name} * ${te_select.var_name};"
    .end if
    .// Grab any from object extent
${te_select.var_name} = ${type_cast} ${te_set.get_any}( &${extent_info.extent_var_name} );
  .elif ( te_select.multiplicity == "many" )
    .if ( te_select.is_implicit )
      .// First OAL use of inst_ref_set<Object> handle set. Initialize with class extent.
      .assign attr_declaration = "${te_set.base_class} ${te_select.var_name}_space; ${te_set.base_class} * ${te_select.var_name} = &${te_select.var_name}_space; /* ${te_select.var_name} (${o_obj.Key_Lett}) */"
      .assign attr_initialization = "${te_set.init}( ${te_select.var_name} );"
      .assign attr_deallocation = "${te_set.clear}( ${te_select.var_name} );"
    .end if
    .// The copy method will clear out and free up system resources
    .// used within the set.
${te_set.copy}( ${te_select.var_name}, &${extent_info.extent_var_name} );
  .else
    .print "\nERROR:  select ${multiplicity} is not any or many."
    .exit 101
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_select_where
  .param inst_ref o_obj
  .param inst_ref te_smt
  .param inst_ref te_select_where
  .assign attr_declaration = ""
  .assign attr_initialization = ""
  .assign attr_deallocation = ""
  .select any te_set from instances of TE_SET
  .if ( "any" == te_select_where.multiplicity )
    .if ( te_select_where.is_implicit )
      .// Declare (first OAL usage of) inst_ref<Object> handle variable.
      .assign attr_declaration = "${te_select_where.class_name} * ${te_select_where.var_name};"
    .end if
    .if ( not te_select_where.special )
      .// Clear inst_ref<Object> handle variable prior to select statement.
${te_select_where.var_name} = 0;
    .end if
    .//
  .elif ( "many" == te_select_where.multiplicity )
    .if ( te_select_where.is_implicit )
      .// First OAL usage of inst_ref_set<Object> handle set
      .assign attr_declaration = "${te_set.base_class} ${te_select_where.var_name}_space; ${te_set.base_class} * ${te_select_where.var_name} = &${te_select_where.var_name}_space; /* ${te_select_where.oal_var_name} (${o_obj.Key_Lett}) */"
      .assign attr_initialization = "${te_set.init}( ${te_select_where.var_name} );"
      .assign attr_deallocation = "${te_set.clear}( ${te_select_where.var_name} );  /* Clear set: ${te_select_where.oal_var_name} */"
      .// CDS Check here if we are in a while loop or not.
      .// if ( in_loop )
${te_set.clear}( ${te_select_where.var_name} );
      .// end if
    .else
      .// Existing inst_ref_set<Object> handle set. Clear current contents of collection.
${te_set.clear}( ${te_select_where.var_name} );
    .end if
  .else
    .print "\nERROR:  stmt_select_from_instances_of_where: Select ${multiplicity} is not any or many."
    .exit 101
  .end if
  .//
  .if ( ( not te_select_where.special ) or ( "many" == te_select_where.multiplicity ) )
    .if ( "FALSE" == te_select_where.where_clause )
      .// We optimize select any i from instances of KL where ( false )
      .// simply to leave the result initialized to empty.
    .else
    .invoke extent_info = GetFixedSizeClassExtentInfo( o_obj )
    .invoke where_comp = ExpandNonOptimizedSpecialWhereComparison( o_obj, te_select_where.special, te_select_where.selected_var_name )
    .assign iterator = "iter${info.unique_num}_${o_obj.Key_Lett}"
    .//
    .// Iterate over the instances in the (extent) collection.
{ ${te_select_where.class_name} * ${te_select_where.selected_var_name};
  ${te_set.iterator_class_name} ${iterator};
  ${te_set.iterator_reset}( &${iterator}, &${extent_info.extent_var_name} );
  while ( (${te_select_where.selected_var_name} = (${te_select_where.class_name} *) ${te_set.iterator_next}( &${iterator} )) != 0 ) {
    .if ( not te_select_where.special )
    if ( ${te_select_where.where_clause} ) \
    .else
    if ( ${where_comp.body} ) \
    .end if
{
    .if ( te_select_where.multiplicity == "any" )
      .// Expression satisfied. Assign to OAL select inst_ref<Object> handle and terminate search.
      ${te_select_where.var_name} = ${te_select_where.selected_var_name};
      break;
    .elif ( te_select_where.multiplicity == "many" )
      .// Expression satisfied. Append instance to OAL select inst_ref<Object> handle set.
      ${te_set.insert_element}( ${te_select_where.var_name}, ${te_select_where.selected_var_name} );
    .end if
    }
  }
}
    .end if
  .else
    .// *** Built in select any special where clause.
    .select any o_id related by o_obj->O_ID[R104] where ( selected.Oid_ID == oid_id )
    .select one te_where related by o_id->TE_WHERE[R2032]
    .invoke arguments = CreateSpecialWhereComparisonArguments( o_obj, o_id )
${te_select_where.var_name} = ${te_where.select_any_where}( ${arguments.body} );
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_generate_precreated_event
  .param boolean self_directed
  .param string var_name
  .select any te_eq from instances of TE_EQ
  .assign attr_declaration = ""
  .assign attr_initialization = ""
  .assign attr_deallocation = ""
  .// Consider event prioritization.
  .if ( self_directed )
${te_eq.self}( \
  .else
${te_eq.non_self}( \
  .end if
(${te_eq.base_event_type} *) ${var_name} );
.end function
.//------------------------------------------------
.// Note the use of p_ here.  It is hard-coded and depends upon
.// matching the prefix used in initialization population query.
.function t_oal_smt_event_parameters
  .param string evt_msg_var
  .param string parameter
  .param string value
  .param integer value_type
  .assign attr_result = ""
  .select any te_eq from instances of TE_EQ
  .if ( "" == evt_msg_var )
    .assign evt_msg_var = te_eq.event_message_variable
  .end if
  .if ( 4 == value_type )
    .// string
    .select any te_string from instances of TE_STRING
    .assign attr_result = "${te_string.strcpy}( ${evt_msg_var}->p_$_{parameter}, ${value} );\n"
  .else
    .assign attr_result = "${evt_msg_var}->p_${parameter} = ${value};\n"
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_generate
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .assign attr_declaration = ""
  .select any te_instance from instances of TE_INSTANCE
  .select any te_eq from instances of TE_EQ
  .select one te_evt related by sm_evt->TE_EVT[R2036]
{
  .assign void_cast = ""
  .if ( "0" == var_name )
    .assign void_cast = "(void *) "
  .end if
  .if ( "" != parameters )
    .// Create the event
  ${te_evt.GeneratedName} * ${te_eq.event_message_variable} = (${te_evt.GeneratedName} *) ${te_eq.new}( ${void_cast}${var_name}, &${te_evt.GeneratedName}c );
    .// Initialize supplemental data parameters
${parameters}
  .else
    .// Create the event using the base type, since no supplemental data.
    .// No special casting will then be required.  Good for MISRA.
  ${te_eq.base_event_type} * ${te_eq.event_message_variable} = ${te_eq.new}( ${void_cast}${var_name}, &${te_evt.GeneratedName}c );
  .end if
  .//
  .// Send the event.
  .if ( self_directed )
    .// Self directed event
  ${te_eq.self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .else
    .// normal event
    .//
    .// We must handle event prioritization.
    .// Write our own handle into the event for prioritization (and
    .// instrumentation) purposes.  We will do this differently depending
    .// upon the type of action we are.  MDAs, bridges (outbound) and
    .// operations use GetSelf.  All others use the variable self.
    .invoke event_prioritization_needed = GetEventPrioritizationNeeded()
    .// CDS:  Deal with event prioritization and semantics type.
    .if ( false )
      .select any te_instance from instances of TE_INSTANCE
      .if ( semantics_type.result == 3 )
  ${te_instance.self} = (${te_instance.handle}) ${te_instance.global_self}();
  if ( ${te_instance.self} == 0 ) { ${te_instance.self} = (${te_instance.handle}) &${te_instance.self}; }
      .end if
      .if ( ( ( semantics_type.result == 5 ) or ( semantics_type.result == 4 ) ) or ( semantics_type.result == 2 ) )
  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.global_self}() );
      .elif ( ( ( semantics_type.result == 3 ) or ( semantics_type.result == 1 ) ) or ( semantics_type.result == 0 ) )
  SetEventSendingInstance( ${te_eq.event_message_variable}, ${te_instance.self} );
      .else
        .assign msg = "WARNING:  Unrecognized action semantic type ${semantics_type.result}."
        .print "\n${msg}"
      .end if .// which type of semantic
    .end if .// prioritization needed
  ${te_eq.non_self}( \
    .if ( "" != parameters )
      .// Cast the event, because we used the class type.  (MISRA)
(${te_eq.base_event_type} *) \
    .end if
${te_eq.event_message_variable} );
  .end if
  }
.end function
.//------------------------------------------------
.function t_oal_smt_generate_creator_event
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_generate_to_class
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_sgn
  .param inst_ref sm_evt
  .param boolean self_directed
  .param string var_name
  .param string event_label
  .param string event_meaning
  .param string parameters
  .invoke s = t_oal_smt_generate( sm_evt, self_directed, var_name, event_label, event_meaning, parameters )
${s.body}
.end function
.//------------------------------------------------
.function t_oal_smt_iop
  .param string name
  .param string parameters
${name}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end function
.//------------------------------------------------
.function t_oal_smt_operation
  .param boolean instance_based
  .param string operation_name
  .param string parameters
  .param string var_name
  .if ( instance_based )
${var_name}->\
  .end if
${operation_name}(\
  .if ( instance_based )
 ${var_name}\
    .if ( "" != parameters )
, \
    .end if
  .end if
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end function
.//------------------------------------------------
.function t_oal_smt_bridge
  .param string bridge_name
  .param string parameters
  .if ( "T_include" == bridge_name )
#include ${parameters}
  .else
${bridge_name}(\
    .if ( "" != parameters )
 ${parameters} \
    .end if
);
  .end if
.end function
.//------------------------------------------------
.function t_oal_smt_function
  .param string method
  .param string parameters
${method}(\
  .if ( "" != parameters )
 ${parameters} \
  .end if
);
.end function
.//------------------------------------------------
.function t_oal_smt_return
  .param string value
  .param string cast1
  .param string cast2
return ${cast1}${value}${cast1} ;
.end function
.//------------------------------------------------
.function t_oal_smt_control
  .// the only command defined is "STOP";
//ARCH_shutdown();
.end function
.//------------------------------------------------
.function t_oal_smt_break
break;
.end function
.//------------------------------------------------
.function t_oal_smt_continue
continue;
.end function
.//
