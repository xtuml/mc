T_b("/*");
T_b("\n");
if ( not_empty te_state ) {
T_b(" ");
T_b("* State ");
T_b(te_state->Numb);
T_b(":  [");
T_b(te_state->name);
T_b("]");
T_b("\n");
}
if ( not_empty sm_crtxn ) {
T_b(" ");
T_b("* Note: Self creation state (asynchronous creation)");
T_b("\n");
}
if ( not_empty sm_act ) {
if ( sm_act->Suc_Pars == 1 ) {
if ( te_c->RawComments ) {
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* Action language follows:");
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(sm_act->Action_Semantics);
T_b("\n");
}
} else {
T_b(" ");
T_b("* WARNING:  unsuccessful or unparsed action");
T_b("\n");
}
}
T_b(" ");
T_b("*/");
T_b("\n");
T_b("static void ");
T_b(te_act->GeneratedName);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" *, const ");
T_b(te_eq->base_event_type);
T_b(" * const );");
T_b("\n");
T_b("static void");
T_b("\n");
T_b(te_act->GeneratedName);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" * ");
T_b(te_instance->self);
T_b(", const ");
T_b(te_eq->base_event_type);
T_b(" * const event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( not_empty sm_act ) {
if ( sm_act->Suc_Pars == 1 ) {
if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b(te_c->Name);
T_b(" * thismodule = (");
T_b(te_c->Name);
T_b(" *) event->thismodule;");
T_b("\n");
}
T_b(received_event_declaration);
T_b("");
T_b(te_aba->code);
T_b("");
} else {
T_b(te_class->Name);
T_b(te_class->Key_Lett);
T_b(te_state->Name);
T_b("  ");
T_b("/* WARNING!  Skipping unsuccessful or unparsed action for class ");
T_b(te_class->Name);
T_b(" (");
T_b(te_class->Key_Lett);
T_b(") state ");
T_b(te_state->Name);
T_b("\" */");
T_b("\n");
}
}
T_b("}");
T_b("\n");
