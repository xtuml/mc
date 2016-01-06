if ( te_c->internal_behavior ) {
if ( 0==strcmp("C",te_target->language) ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Initialization services for component:  ");
T_b(te_c->Name);
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( not_empty te_class ) {
T_b("extern ");
T_b(te_cia->class_info_type);
T_b(" * const ");
T_b(te_dci->array_name);
T_b("[];");
T_b("\n");
if ( not_empty te_sm ) {
T_b("extern const ");
T_b(class_dispatch_array->element_type);
T_b(" ");
T_b(class_dispatch_array->result);
T_b("[];");
T_b("\n");
}
}
T_b("void ");
T_b(te_c->Name);
T_b("_execute_initialization( void );");
T_b("\n");
}
}
