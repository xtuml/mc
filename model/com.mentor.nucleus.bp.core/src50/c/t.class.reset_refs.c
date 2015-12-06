if ( te_dt->Initial_Value != "CTOR" ) {
T_b("  ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(" = ");
T_b(te_dt->Initial_Value);
T_b(";");
T_b("\n");
} else {
T_b("  ");
T_b(te_instance->module);
T_b(te_string->memset);
T_b("( &");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(", 0, sizeof( ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(" ) );");
T_b("\n");
}
