T_b("/*");
T_b("\n");
T_b(" ");
T_b("* ");
T_b(prelude);
T_b(" operation:  ");
T_b(o_tfr->Name);
T_b("\n");
if ( ( te_c->RawComments ) && ( ! gen_declaration ) ) {
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* Action language follows:");
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(o_tfr->Action_Semantics);
T_b("\n");
}
T_b(" ");
T_b("*/");
T_b("\n");
T_b(te_aba->ReturnDataType);
T_b("\n");
T_b(te_aba->scope);
T_b(te_aba->GeneratedName);
T_b("(");
if ( 0 != te_tfr->Instance_Based ) {
T_b(" ");
T_b(te_class->GeneratedName);
T_b(" * ");
T_b(te_instance->self);
T_b("");
if ( 0!=strcmp("",te_aba->ParameterDefinition) ) {
T_b(",");
}
}
T_b(te_aba->ParameterDefinition);
T_b(")");
T_b("\n");
T_b("{");
T_b("\n");
if ( o_tfr->Suc_Pars == 1 ) {
T_b(te_aba->code);
T_b("\n");
} else {
T_b("  ");
T_b("/* WARNING!  Skipping unsuccessful or unparsed operation ");
T_b(te_c->Name);
T_b("::");
T_b(te_class->Name);
T_b("::");
T_b(te_tfr->Name);
T_b(" */");
T_b("\n");
T_b(te_c->Name);
T_b(te_class->Name);
T_b(te_tfr->Name);
}
T_b("}");
T_b("\n");
