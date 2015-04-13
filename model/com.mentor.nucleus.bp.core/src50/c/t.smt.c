if ( te_for->isImplicit ) {
}
T_b(ws);
T_b("{ ");
T_b(te_set->scope);
T_b(te_set->iterator_class_name);
T_b(" ");
T_b(iterator);
T_b(";");
T_b("\n");
T_b(ws);
T_b(te_for->class_name);
T_b(" * ");
T_b(current_instance);
T_b(";");
T_b("\n");
T_b(ws);
T_b(te_set->iterator_reset);
T_b("( &");
T_b(iterator);
T_b(", ");
T_b(te_for->set_variable);
T_b(" );");
T_b("\n");
T_b(ws);
T_b("while ( (");
T_b(current_instance);
T_b(" = (");
T_b(te_for->class_name);
T_b(" *)");
T_b(te_set->module);
T_b(te_set->iterator_next);
T_b("( &");
T_b(iterator);
T_b(" )) != 0 ) {");
T_b("\n");
T_b(ws);
T_b("  ");
T_b(te_for->loop_variable);
T_b(" = ");
T_b(current_instance);
T_b("; {");
T_b("\n");
T_b(ws);
T_b("if ( ");
T_b(condition);
T_b(" ) {");
T_b("\n");
T_b(ws);
T_b("while ( ");
T_b(condition);
T_b(" ) {");
T_b("\n");
T_b(ws);
T_b("else {");
T_b("\n");
T_b(ws);
T_b("else if ( ");
T_b(condition);
T_b(" ) {");
T_b("\n");
if ( te_assign->isImplicit ) {
if ( ( 9 == te_assign->Core_Typ ) || ( 21 == te_assign->Core_Typ ) ) {
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_assign->lval);
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_assign->lval);
T_b(te_assign->lval);
T_b(te_set->module);
T_b(te_set->clear);
T_b(te_assign->lval);
} else {
}
}
if ( 0!=strcmp("",te_assign->array_spec) ) {
if ( 4 == te_assign->Core_Typ ) {
T_b(ws);
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
} else {
if ( 0 == te_assign->rval_dimensions ) {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_assign->rval);
T_b(";");
T_b("\n");
} else {
T_b(ws);
T_b(te_instance->module);
T_b(te_string->memmove);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(", ");
if ( is_parameter ) {
T_b("sizeof( ");
T_b(te_assign->rval);
T_b("[0] ) * ");
T_b(element_count);
T_b(" );");
T_b("\n");
} else {
T_b("sizeof( ");
T_b(te_assign->rval);
T_b(" ) );");
T_b("\n");
}
}
}
} else if ( ( 9 == te_assign->Core_Typ ) || ( 21 == te_assign->Core_Typ ) ) {
T_b(ws);
T_b(te_set->scope);
T_b(te_set->copy);
T_b("( ");
T_b(te_assign->lval);
T_b(", ");
T_b(te_assign->rval);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_assign->lval);
T_b(" = ");
T_b(te_assign->rval);
T_b(";");
T_b("\n");
}
if ( is_implicit ) {
T_b(class_name);
T_b(var_name);
}
T_b(ws);
T_b(var_name);
T_b(" = (");
T_b(class_name);
T_b(" *) ");
T_b(te_instance->module);
T_b("");
if ( te_class->Persistent ) {
T_b(te_instance->create_persistent);
T_b("");
} else {
T_b(te_instance->create);
T_b("");
}
T_b("( ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
if ( 0!=strcmp("",init_uniques->body) ) {
T_b(ws);
T_b(init_uniques->body);
T_b("");
}
if ( not_empty te_c ) {
if ( te_c->DetectEmpty ) {
T_b(ws);
T_b("if ( 0 == ");
T_b(var_name);
T_b(" ) {");
T_b("\n");
T_b(ws);
T_b("  XTUML_EMPTY_HANDLE_TRACE( \"");
T_b(o_obj->Key_Lett);
T_b("\", \"");
T_b(te_instance->delete);
T_b("\" );");
T_b("\n");
T_b(ws);
T_b("}");
T_b("\n");
}
T_b(ws);
T_b(te_instance->module);
T_b("");
if ( te_class->Persistent ) {
T_b(te_instance->delete_persistent);
T_b("");
} else {
T_b(te_instance->delete);
T_b("");
}
T_b("( (");
T_b(te_instance->handle);
T_b(") ");
T_b(var_name);
T_b(", ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
}
if ( not_empty te_evt ) {
if ( 0!=strcmp("",parameters) ) {
if ( is_implicit ) {
T_b(te_evt->GeneratedName);
T_b(var_name);
T_b(oal_var_name);
}
T_b(ws);
T_b(var_name);
T_b(" = (");
T_b(te_evt->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( (void *) ");
T_b(recipient_var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
T_b(ws);
T_b(parameters);
T_b("");
} else {
if ( is_implicit ) {
T_b(te_eq->base_event_type);
T_b(var_name);
T_b(oal_var_name);
}
T_b(ws);
T_b(var_name);
T_b(" = ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( (void *) ");
T_b(recipient_var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b(ws);
T_b(var_name);
T_b("->sc_e = &(");
T_b(te_instance->module);
T_b("sc_");
T_b(te_evt->GeneratedName);
T_b(");");
T_b("\n");
}
}
if ( left_is_formalizer ) {
}
if ( 0!=strcmp("C",te_target->language) ) {
}
if ( is_reflexive ) {
T_b(ws);
T_b(method);
T_b("( ");
T_b(left_var_name);
T_b(", ");
T_b(right_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
if ( left_is_formalizer ) {
T_b(ws);
T_b(method);
T_b("( ");
T_b(right_var_name);
T_b(", ");
T_b(left_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(method);
T_b("( ");
T_b(left_var_name);
T_b(", ");
T_b(right_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
}
}
if ( 0!=strcmp("C",te_target->language) ) {
}
T_b(ws);
T_b(method->result);
T_b("( ");
if ( is_reflexive ) {
T_b(one_var_name);
T_b(", ");
T_b(oth_var_name);
T_b(", ");
} else {
if ( method->left_obj_is_aone ) {
T_b(one_var_name);
T_b(", ");
T_b(oth_var_name);
T_b(", ");
} else {
T_b(oth_var_name);
T_b(", ");
T_b(one_var_name);
T_b(", ");
}
}
T_b(ass_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
if ( 0!=strcmp("C",te_target->language) ) {
}
if ( left_is_formalizer ) {
}
if ( is_reflexive ) {
T_b(ws);
T_b(method);
T_b("( ");
T_b(left_var_name);
T_b(", ");
T_b(right_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
if ( left_is_formalizer ) {
T_b(ws);
T_b(method);
T_b("( ");
T_b(right_var_name);
T_b(", ");
T_b(left_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(method);
T_b("( ");
T_b(left_var_name);
T_b(", ");
T_b(right_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
}
}
if ( 0!=strcmp("C",te_target->language) ) {
}
T_b(ws);
T_b(method->result);
T_b("( ");
if ( is_reflexive ) {
T_b(one_var_name);
T_b(", ");
T_b(oth_var_name);
T_b(", ");
} else {
if ( method->left_obj_is_aone ) {
T_b(one_var_name);
T_b(", ");
T_b(oth_var_name);
T_b(", ");
} else {
T_b(oth_var_name);
T_b(", ");
T_b(one_var_name);
T_b(", ");
}
}
T_b(ass_var_name);
T_b(thismodule);
T_b(" );");
T_b("\n");
if ( te_select->multiplicity == "any" ) {
T_b(te_select->class_name);
if ( te_select->is_implicit ) {
T_b(te_select->class_name);
T_b(te_select->var_name);
}
T_b(ws);
T_b(te_select->var_name);
T_b(" = ");
T_b(type_cast);
T_b(" ");
T_b(te_set->get_any);
T_b("( &");
T_b(extent_info->extent_var_name);
T_b(" );");
T_b("\n");
} else if ( te_select->multiplicity == "many" ) {
if ( te_select->is_implicit ) {
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_select->var_name);
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_select->var_name);
T_b(te_select->var_name);
T_b(te_select->var_name);
T_b(o_obj->Key_Lett);
T_b(te_set->module);
T_b(te_set->clear);
T_b(te_select->var_name);
}
T_b(ws);
T_b(te_set->module);
T_b(te_set->copy);
T_b("( ");
T_b(te_select->var_name);
T_b(", &");
T_b(extent_info->extent_var_name);
T_b(" );");
T_b("\n");
} else {
T_b(multiplicity);
}
if ( 0==strcmp("any",te_select_where->multiplicity) ) {
if ( te_select_where->is_implicit ) {
T_b(te_select_where->class_name);
T_b(te_select_where->var_name);
}
if ( ! te_select_where->special ) {
T_b(ws);
T_b(te_select_where->var_name);
T_b(" = 0;");
T_b("\n");
}
} else if ( 0==strcmp("many",te_select_where->multiplicity) ) {
if ( te_select_where->is_implicit ) {
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_select_where->var_name);
T_b(te_set->scope);
T_b(te_set->base_class);
T_b(te_select_where->var_name);
T_b(te_select_where->var_name);
T_b(te_select_where->oal_var_name);
T_b(o_obj->Key_Lett);
T_b(te_set->module);
T_b(te_set->clear);
T_b(te_select_where->var_name);
T_b(te_select_where->oal_var_name);
T_b(ws);
T_b(te_set->module);
T_b(te_set->clear);
T_b("( ");
T_b(te_select_where->var_name);
T_b(" );");
T_b("\n");
} else {
T_b(ws);
T_b(te_set->module);
T_b(te_set->clear);
T_b("( ");
T_b(te_select_where->var_name);
T_b(" );");
T_b("\n");
}
} else {
T_b(multiplicity);
}
if ( ( ! te_select_where->special ) || ( 0==strcmp("many",te_select_where->multiplicity) ) ) {
if ( 0==strcmp("FALSE",te_select_where->where_clause) ) {
} else {
T_b(ws);
T_b("{ ");
T_b(te_select_where->class_name);
T_b(" * ");
T_b(te_select_where->selected_var_name);
T_b(";");
T_b("\n");
T_b(ws);
T_b("  ");
T_b(te_set->scope);
T_b(te_set->iterator_class_name);
T_b(" ");
T_b(iterator);
T_b(";");
T_b("\n");
T_b(ws);
T_b("  ");
T_b(te_set->iterator_reset);
T_b("( &");
T_b(iterator);
T_b(", &");
T_b(extent_info->extent_var_name);
T_b(" );");
T_b("\n");
T_b(ws);
T_b("  while ( (");
T_b(te_select_where->selected_var_name);
T_b(" = (");
T_b(te_select_where->class_name);
T_b(" *) ");
T_b(te_set->module);
T_b(te_set->iterator_next);
T_b("( &");
T_b(iterator);
T_b(" )) != 0 ) {");
T_b("\n");
if ( ! te_select_where->special ) {
T_b(ws);
T_b("    if ( ");
T_b(te_select_where->where_clause);
T_b(" ) ");
} else {
T_b(ws);
T_b("    if ( ");
T_b(where_comp->body);
T_b(" ) ");
}
T_b("{");
T_b("\n");
if ( te_select_where->multiplicity == "any" ) {
T_b(ws);
T_b("      ");
T_b(te_select_where->var_name);
T_b(" = ");
T_b(te_select_where->selected_var_name);
T_b(";");
T_b("\n");
T_b(ws);
T_b("      break;");
T_b("\n");
} else if ( te_select_where->multiplicity == "many" ) {
T_b(ws);
T_b("      ");
T_b(te_set->module);
T_b(te_set->insert_element);
T_b("( ");
T_b(te_select_where->var_name);
T_b(", ");
T_b(te_select_where->selected_var_name);
T_b(" );");
T_b("\n");
}
T_b(ws);
T_b("    }");
T_b("\n");
T_b(ws);
T_b("  }");
T_b("\n");
T_b(ws);
T_b("}");
T_b("\n");
}
} else {
T_b(ws);
T_b(te_select_where->var_name);
T_b(" = ");
T_b(te_where->select_any_where);
T_b("( ");
T_b(arguments);
T_b(" );");
T_b("\n");
}
T_b(ws);
T_b("");
if ( self_directed ) {
T_b(te_instance->module);
T_b(te_eq->self);
T_b("( ");
} else {
T_b(te_instance->module);
T_b(te_eq->non_self);
T_b("( ");
}
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) ");
T_b(var_name);
T_b(" );");
T_b("\n");
if ( not_empty te_evt ) {
T_b(ws);
T_b("{");
if ( 0==strcmp("0",var_name) ) {
}
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(te_evt->GeneratedName);
T_b(" * ");
T_b(te_eq->event_message_variable);
T_b(" = (");
T_b(te_evt->GeneratedName);
T_b(" *) ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( ");
T_b(void_cast);
T_b(var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
T_b(parameters);
T_b("\n");
} else {
T_b(" ");
T_b(te_eq->base_event_type);
T_b(" * ");
T_b(te_eq->event_message_variable);
T_b(" = ");
T_b(te_instance->module);
T_b(te_eq->new);
T_b("( ");
T_b(void_cast);
T_b(var_name);
T_b(", &");
T_b(te_evt->GeneratedName);
T_b("c );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b(te_eq->event_message_variable);
T_b("->sc_e = &(");
T_b(te_instance->module);
T_b("sc_");
T_b(te_evt->GeneratedName);
T_b(");");
T_b("\n");
}
if ( self_directed ) {
T_b(ws);
T_b("  ");
T_b(te_instance->module);
T_b(te_eq->self);
T_b("( ");
if ( 0!=strcmp("",parameters) ) {
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) ");
}
T_b(te_eq->event_message_variable);
T_b(" );");
T_b("\n");
} else {
if ( false ) {
if ( semantics_type->result == 3 ) {
T_b(ws);
T_b("  ");
T_b(te_instance->self);
T_b(" = (");
T_b(te_instance->handle);
T_b(") ");
T_b(te_instance->global_self);
T_b("();");
T_b("\n");
T_b("  ");
T_b("if ( ");
T_b(te_instance->self);
T_b(" == 0 ) { ");
T_b(te_instance->self);
T_b(" = (");
T_b(te_instance->handle);
T_b(") &");
T_b(te_instance->self);
T_b("; }");
T_b("\n");
}
if ( ( ( semantics_type->result == 5 ) || ( semantics_type->result == 4 ) ) || ( semantics_type->result == 2 ) ) {
T_b(ws);
T_b("  SetEventSendingInstance( ");
T_b(te_eq->event_message_variable);
T_b(", ");
T_b(te_instance->global_self);
T_b("() );");
T_b("\n");
} else if ( ( ( semantics_type->result == 3 ) || ( semantics_type->result == 1 ) ) || ( semantics_type->result == 0 ) ) {
T_b(ws);
T_b("  SetEventSendingInstance( ");
T_b(te_eq->event_message_variable);
T_b(", ");
T_b(te_instance->self);
T_b(" );");
T_b("\n");
} else {
T_b(semantics_type->result);
T_b(msg);
}
}
T_b(ws);
T_b("  ");
T_b(te_instance->module);
T_b(te_eq->non_self);
T_b("( ");
if ( 0!=strcmp("",parameters) ) {
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) ");
}
T_b(te_eq->event_message_variable);
T_b(" );");
T_b("\n");
}
T_b(ws);
T_b("}");
T_b("\n");
}
T_b(s->body);
T_b("\n");
T_b(s->body);
T_b("\n");
T_b(s->body);
T_b("\n");
T_b(ws);
T_b(name);
T_b("(");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(")");
if ( is_statement ) {
T_b(";");
T_b("\n");
}
T_b(ws);
T_b("");
if ( uses_thismodule && instance_based ) {
T_b(var_name);
T_b("->");
}
T_b(operation_name);
T_b("(");
if ( instance_based ) {
T_b(" ");
T_b(var_name);
T_b("");
if ( ( 0!=strcmp("",parameters) ) || ( uses_thismodule ) ) {
T_b(",");
}
T_b(" ");
T_b("");
}
if ( uses_thismodule ) {
T_b(" ");
T_b("thismodule");
if ( 0!=strcmp("",parameters) ) {
T_b(", ");
}
}
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(");");
T_b("\n");
if ( ("T" == te_brg->EEkeyletters) && ( 0==strcmp("include",te_brg->Name)) ) {
T_b("#include ");
T_b(parameters);
T_b("\n");
} else {
T_b(ws);
T_b(bridge_name);
T_b("(");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(");");
T_b("\n");
}
T_b(ws);
T_b(method);
T_b("(");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(");");
T_b("\n");
if ( ( ( 0!=strcmp("",deallocation) ) || ( 0==strcmp("c_t",returnvaltype) ) ) && ( 0!=strcmp("",returnvaltype) ) ) {
if ( 0==strcmp("c_t",returnvaltype) ) {
}
T_b(ws);
T_b("{");
T_b(returnvaltype);
T_b(suffix);
T_b(" ");
T_b(rv);
T_b(" = ");
T_b(value);
T_b(";");
T_b("\n");
}
if ( 0!=strcmp("",deallocation) ) {
T_b(ws);
T_b(deallocation);
T_b("\n");
}
T_b(ws);
T_b("return ");
T_b(cast1);
T_b(rv);
T_b(cast2);
T_b(";");
if ( ( ( 0!=strcmp("",deallocation) ) || ( 0==strcmp("c_t",returnvaltype) ) ) && ( 0!=strcmp("",returnvaltype) ) ) {
T_b("}");
T_b("\n");
} else {
}
if ( 0!=strcmp("SystemC",te_thread->flavor) ) {
T_b(ws);
T_b("ARCH_shutdown();");
T_b("\n");
}
if ( 0!=strcmp("",deallocation) ) {
T_b(ws);
T_b(deallocation);
T_b("\n");
}
T_b(ws);
T_b("break;");
T_b("\n");
if ( 0!=strcmp("",deallocation) ) {
T_b(ws);
T_b(deallocation);
T_b("\n");
}
T_b(ws);
T_b("continue;");
T_b("\n");
