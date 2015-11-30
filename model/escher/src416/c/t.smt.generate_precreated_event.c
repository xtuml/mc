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
T_b(te_val->buffer);
T_b(" );");
T_b("\n");
