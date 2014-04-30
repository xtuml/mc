if ( te_sm->complete ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* class-based state machine event dispatching");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->CBdispatcher);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b("static ");
T_b(te_instance->base);
T_b(" class_based_singleton = { ");
T_b(te_sm->initial_state);
T_b(" };");
T_b("\n");
T_b("  ");
T_b(te_typemap->event_number_name);
T_b(" event_number = GetOoaEventNumber( event );");
T_b("\n");
T_b("  ");
T_b(te_typemap->state_number_name);
T_b(" current_state = class_based_singleton.");
T_b(te_instance->current_state);
T_b(";");
T_b("\n");
if ( te_sm->txn_action_count > 0 ) {
T_b("  ");
T_b(te_typemap->SEM_cell_name);
T_b(" next_state = ");
T_b(te_sm->SEMname);
T_b("[ current_state ][ event_number ];");
T_b("\n");
} else {
T_b("  ");
T_b(te_typemap->state_number_name);
T_b(" next_state = ");
T_b(te_sm->SEMname);
T_b("[ current_state ][ event_number ];");
T_b("\n");
}
T_b("  ");
T_b("if ( next_state <= ");
T_b(te_sm->num_states);
T_b(" ) {");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("    ");
T_b(te_trace->state_txn_start);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state, ");
T_b(te_sm->state_names_array);
T_b("[ current_state ] );");
T_b("\n");
}
T_b("    ");
T_b("/* Execute the state action and update the current state.  */");
T_b("\n");
T_b("    ");
T_b("( *");
T_b(te_sm->action_array);
T_b("[ next_state ] )( &class_based_singleton, event );");
T_b("\n");
T_b("    ");
T_b("class_based_singleton.");
T_b(te_instance->current_state);
T_b(" = next_state;");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("    ");
T_b(te_trace->state_txn_end);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", next_state, ");
T_b(te_sm->state_names_array);
T_b("[ next_state ] );");
T_b("\n");
}
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("if ( ");
T_b(te_eq->cant_happen);
T_b(" == next_state ) {");
T_b("\n");
T_b("      ");
T_b("/* Event cannot happen.  */");
T_b("\n");
T_b("      ");
T_b(te_callout->event_cant_happen);
T_b("( current_state, next_state, event_number );");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("      ");
T_b(te_trace->state_txn_cant_happen);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state );");
T_b("\n");
}
T_b("    ");
T_b("} else if ( ");
T_b(te_eq->ignored);
T_b(" == next_state ) {");
T_b("\n");
T_b("      ");
T_b("/* Event ignored */");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("      ");
T_b(te_trace->state_txn_event_ignored);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state );");
T_b("\n");
}
T_b("    ");
T_b("} else {");
T_b("\n");
if ( te_sm->txn_action_count > 0 ) {
if ( te_c->StateTrace ) {
T_b("      ");
T_b(te_trace->state_txn_start);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", current_state, ");
T_b(te_sm->state_names_array);
T_b("[ current_state ] );");
T_b("\n");
}
T_b("      ");
T_b("( *");
T_b(te_sm->txn_action_array);
T_b("[ (next_state>>8)-1 ] )( &class_based_singleton, event );");
T_b("\n");
T_b("      ");
T_b("next_state = next_state & 0x00ff;");
T_b("\n");
T_b("      ");
T_b("class_based_singleton.");
T_b(te_instance->current_state);
T_b(" = next_state;");
T_b("\n");
T_b("      ");
T_b("( *");
T_b(te_sm->action_array);
T_b("[ next_state ] )( &class_based_singleton, event );");
T_b("\n");
if ( te_c->StateTrace ) {
T_b("      ");
T_b(te_trace->state_txn_end);
T_b("( \"");
T_b(te_class->Key_Lett);
T_b("\", next_state, ");
T_b(te_sm->state_names_array);
T_b("[ next_state ] );");
T_b("\n");
}
} else {
T_b("      ");
T_b("/* Translation/memory/stack error, etc - TBD */");
T_b("\n");
}
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("}");
T_b("\n");
} else {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* There are either no events defined for this state machine,");
T_b("\n");
T_b(" ");
T_b("* no transitions, or no states.  So we will ignore _all_ events.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_class->CBdispatcher);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{}");
T_b("\n");
}
