if ( te_sm->complete ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* instance state machine event dispatching");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->dispatcher);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b(te_c->Name);
T_b(" * thismodule = (");
T_b(te_c->Name);
T_b(" *) event->thismodule;");
T_b("\n");
}
if ( can_self_create ) {
T_b("  ");
T_b(te_instance->handle);
T_b(" instance;");
T_b("\n");
} else {
T_b("  ");
T_b(te_instance->handle);
T_b(" instance = GetEventTargetInstance( event );");
T_b("\n");
}
T_b("  ");
T_b(te_typemap->event_number_name);
T_b(" event_number = GetOoaEventNumber( event );");
T_b("\n");
T_b("  ");
T_b(te_typemap->state_number_name);
T_b(" current_state;");
T_b("\n");
if ( te_sm->txn_action_count > 0 ) {
T_b("  ");
T_b(te_typemap->SEM_cell_name);
T_b(" next_state;");
T_b("\n");
} else {
T_b("  ");
T_b(te_typemap->state_number_name);
T_b(" next_state;");
T_b("\n");
}
T_b(" ");
T_b(" ");
T_b("\n");
if ( can_self_create ) {
T_b("  ");
T_b("if ( 0 != GetIsCreationEvent( event ) ) {");
T_b("\n");
T_b("    ");
T_b("instance = ");
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
T_b("    ");
T_b("if ( 0 != instance ) {");
T_b("\n");
if ( 0!=strcmp("",init_uniques) ) {
T_b("      ");
T_b(te_class->GeneratedName);
T_b(" * i = (");
T_b(te_class->GeneratedName);
T_b(" *) instance;");
T_b("\n");
T_b(init_uniques);
T_b("");
}
T_b("      ");
T_b("instance->");
T_b(te_instance->current_state);
T_b(" = UNINITIALIZED_STATE;");
T_b("\n");
T_b("      ");
T_b("SetEventTargetInstance( event, instance );");
T_b("\n");
T_b("    ");
T_b("} else {");
T_b("\n");
T_b("      ");
T_b("/* Instance allocation failure - USER RECOVERY LOGIC IS TBD */");
T_b("\n");
T_b("      ");
T_b(te_callout->event_no_instance);
T_b("( 0 );");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("instance = GetEventTargetInstance( event );");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
}
if ( not_empty poly_rel_set ) {
if ( can_self_create ) {
}
T_b("  ");
T_b("/* If event is polymorphic, forward to the dispatcher in the responding");
T_b("\n");
T_b("     ");
T_b("subtype below us in the generalization hierarchy.  */");
T_b("\n");
T_b(poly_dispatcher);
T_b(" else");
}
T_b("  ");
T_b("if ( 0 != instance ) {");
T_b("\n");
T_b("    ");
T_b("current_state = instance->");
T_b(te_instance->current_state);
T_b(";");
T_b("\n");
T_b("    ");
T_b("if ( current_state > ");
T_b(te_sm->num_states);
T_b(" ) {");
T_b("\n");
T_b("      ");
T_b("/* instance validation failure (object deleted while event in flight) */");
T_b("\n");
T_b("      ");
T_b(te_callout->event_no_instance);
T_b("( event_number );");
T_b("\n");
T_b("    ");
T_b("} else {");
T_b("\n");
T_b("      ");
T_b("next_state = ");
T_b(te_sm->SEMname);
T_b("[ current_state ][ event_number ];");
T_b("\n");
T_b("      ");
T_b("if ( next_state <= ");
T_b(te_sm->num_states);
T_b(" ) {");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("        ");
T_b(te_trace->state_txn_start);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state, ");
T_b(te_sm->state_names_array);
T_b("[ current_state ] );");
T_b("\n");
}
T_b("        ");
T_b("/* Execute the state action and update the current state.  */");
T_b("\n");
T_b("        ");
T_b("( *");
T_b(te_sm->action_array);
T_b("[ next_state ] )( instance, event );");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("        ");
T_b(te_trace->state_txn_end);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", next_state, ");
T_b(te_sm->state_names_array);
T_b("[ next_state ] );");
T_b("\n");
}
if ( can_self_delete ) {
T_b("        ");
T_b("/* Self deletion state transition? */");
T_b("\n");
T_b("        ");
T_b("if ( ");
T_b("next_state == ");
T_b(te_state->enumerator);
T_b("");
if ( last te_states ) {
T_b(" ");
T_b(") {");
} else {
T_b(" ");
T_b("|| ");
}
T_b("          ");
T_b(te_instance->module);
T_b("");
if ( te_class->Persistent ) {
T_b(te_instance->delete_persistent);
T_b("");
} else {
T_b(te_instance->delete);
T_b("");
}
T_b("( instance, ");
T_b(dom_id);
T_b(", ");
T_b(te_class->system_class_number);
T_b(" );");
T_b("\n");
T_b("        ");
T_b("} else {");
T_b("\n");
T_b("          ");
T_b("instance->");
T_b(te_instance->current_state);
T_b(" = next_state;");
T_b("\n");
T_b("        ");
T_b("}");
T_b("\n");
} else {
T_b("        ");
T_b("instance->");
T_b(te_instance->current_state);
T_b(" = next_state;");
T_b("\n");
}
if ( not_empty evt_cant_happen ) {
T_b("      ");
T_b("} else if ( next_state == ");
T_b(te_eq->cant_happen);
T_b(" ) {");
T_b("\n");
T_b("          ");
T_b("/* event cant happen */");
T_b("\n");
T_b("          ");
T_b(te_callout->event_cant_happen);
T_b("( current_state, next_state, event_number );");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("          ");
T_b(te_trace->state_txn_cant_happen);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state );");
T_b("\n");
}
}
if ( not_empty evt_ignored ) {
T_b("      ");
T_b("} else if ( next_state == ");
T_b(te_eq->ignored);
T_b(" ) {");
T_b("\n");
T_b("          ");
T_b("/* event ignored */");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("          ");
T_b(te_trace->state_txn_event_ignored);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state );");
T_b("\n");
}
}
T_b("      ");
T_b("} else {");
T_b("\n");
if ( te_sm->txn_action_count > 0 ) {
if ( te_c->StateTrace ) {
T_b("        ");
T_b(te_trace->state_txn_start);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state, ");
T_b(te_sm->state_names_array);
T_b("[ current_state ] );");
T_b("\n");
}
T_b("        ");
T_b("( *");
T_b(te_sm->txn_action_array);
T_b("[ (next_state>>8)-1 ] )( instance, event );");
T_b("\n");
T_b("        ");
T_b("next_state = next_state & 0x00ff;");
T_b("\n");
T_b("        ");
T_b("instance->");
T_b(te_instance->current_state);
T_b(" = next_state;");
T_b("\n");
T_b("        ");
T_b("( *");
T_b(te_sm->action_array);
T_b("[ next_state ] )( instance, event );");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("        ");
T_b(te_trace->state_txn_end);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", next_state, ");
T_b(te_sm->state_names_array);
T_b("[ next_state ] );");
T_b("\n");
}
} else {
T_b("        ");
T_b("/* empty else */");
T_b("\n");
}
T_b("      ");
T_b("}");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("}");
T_b("\n");
} else {
if ( not_empty poly_rel_set ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* No transitions in state model, but polymorphic events are present.");
T_b("\n");
T_b(" ");
T_b("* This dispatch level will move a polymorphic event down the relationship");
T_b("\n");
T_b(" ");
T_b("* hierarchy as dictated by the application analysis.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->dispatcher);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b(te_instance->handle);
T_b(" instance = GetEventTargetInstance( event );");
T_b("\n");
T_b(poly_dispatcher);
T_b("\n");
T_b("}");
T_b("\n");
} else {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* For this state machine, there are either no events,");
T_b("\n");
T_b(" ");
T_b("* no transitions, or no states.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->dispatcher);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( empty polymorphic_event ) {
T_b("  ");
T_b("/*");
T_b("\n");
T_b("   ");
T_b("* This is an empty state machine, which is not good to have.");
T_b("\n");
T_b("   ");
T_b("* But since there are no events that could land here, we will");
T_b("\n");
T_b("   ");
T_b("* ignore this and assume that it is an incomplete model.");
T_b("\n");
T_b("   ");
T_b("*/");
T_b("\n");
} else {
T_b("  ");
T_b("/*");
T_b("\n");
T_b("   ");
T_b("* Since polymorphic events could land here, it is not safe to have");
T_b("\n");
T_b("   ");
T_b("* an invalid state machine.  We therefore cause a compilation error.");
T_b("\n");
T_b("   ");
T_b("* If you wish to allow this empty state model, define a function");
T_b("\n");
T_b("   ");
T_b("* to receive this invocation or eliminate it with a macro.");
T_b("\n");
T_b("   ");
T_b("* You have been warned.");
T_b("\n");
T_b("   ");
T_b("*/");
T_b("\n");
T_b("  ");
T_b("Empty_state_model_Must_define_what_to_with_events_landing_here( event );");
T_b("\n");
}
T_b("}");
T_b("\n");
}
}
