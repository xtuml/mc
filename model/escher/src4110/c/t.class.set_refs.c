if ( te_dt->Initial_Value != "CTOR" ) {
T_b("  ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(" = ");
T_b(part_ptr);
T_b("->");
T_b(ident_te_attr->GeneratedName);
T_b(";");
T_b("\n");
} else {
if ( 4 == te_dt->Core_Typ ) {
if ( te_sys->InstanceLoading ) {
T_b("  ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(" = ");
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(", ");
T_b(part_ptr);
T_b("->");
T_b(ident_te_attr->GeneratedName);
T_b(" );");
T_b("\n");
} else {
T_b("  ");
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(", ");
T_b(part_ptr);
T_b("->");
T_b(ident_te_attr->GeneratedName);
T_b(" );");
T_b("\n");
}
} else {
T_b("  ");
T_b(te_instance->module);
T_b(te_string->memmove);
T_b("( &");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(", &");
T_b(part_ptr);
T_b("->");
T_b(ident_te_attr->GeneratedName);
T_b(", sizeof( ");
T_b(form_ptr);
T_b("->");
T_b(ref_te_attr->GeneratedName);
T_b(" ) );");
T_b("\n");
}
}
