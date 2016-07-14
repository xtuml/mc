if ( 5 == te_dt->Core_Typ ) {
if ( not_empty_o_oida ) {
T_b(instance);
T_b("->");
T_b(te_attr->GeneratedName);
T_b(" = ");
T_b(te_prefix->type);
T_b("ID_factory();");
T_b("\n");
}
} else if ( ( 2 == te_dt->Core_Typ ) || ( 3 == te_dt->Core_Typ ) ) {
if ( ( 0!=strcmp("",te_attr->DefaultValue) ) && ( ! te_sys->InstanceLoading ) ) {
T_b(instance);
T_b("->");
T_b(te_attr->GeneratedName);
T_b(" = ");
T_b(te_attr->DefaultValue);
T_b("; /* DefaultValue */");
T_b("\n");
}
} else if ( 4 == te_dt->Core_Typ ) {
if ( ( 0!=strcmp("",te_attr->DefaultValue) ) && ( ! te_sys->InstanceLoading ) ) {
T_b(te_instance->module);
T_b(te_string->strcpy);
T_b("( ");
T_b(instance);
T_b("->");
T_b(te_attr->GeneratedName);
T_b(", ");
T_b(te_attr->DefaultValue);
T_b(" ); /* DefaultValue */");
T_b("\n");
}
}
