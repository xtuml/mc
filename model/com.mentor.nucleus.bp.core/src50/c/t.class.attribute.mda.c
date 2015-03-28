T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Mathematically Dependent Attribute:  ");
T_b(te_attr->Name);
T_b("\n");
if ( dbattr->Suc_Pars == 1 ) {
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
T_b(dbattr->Action_Semantics);
T_b("\n");
}
} else {
T_b(" ");
T_b("* WARNING:  unsuccessful or unparsed action");
T_b("\n");
}
T_b(" ");
T_b("*/");
T_b("\n");
T_b(te_aba->ReturnDataType);
T_b("\n");
T_b(te_aba->GeneratedName);
T_b("( ");
T_b(te_class->GeneratedName);
T_b(" * ");
T_b(te_instance->self);
T_b(" )");
T_b("\n");
T_b("{");
T_b("\n");
T_b(te_aba->code);
T_b("\n");
T_b("  ");
T_b("return ");
T_b(te_instance->self);
T_b("->");
T_b(te_attr->GeneratedName);
T_b(";");
T_b("\n");
T_b("}");
T_b("\n");
