T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Domain Function:  ");
T_b(s_sync->Name);
T_b("\n");
if ( te_c->RawComments ) {
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* action language:");
T_b("\n");
T_b(s_sync->Action_Semantics);
T_b("\n");
}
T_b(" ");
T_b("*/");
T_b("\n");
if ( te_sync->IsSafeForInterrupts ) {
T_b("/* Declare deferred routine for posting.  */");
T_b("\n");
T_b("static void ");
T_b(te_sync->deferred_method);
T_b("( void );");
T_b("\n");
if ( not_empty s_sparms ) {
T_b("/* Declare package for packing, posting and unpacking arguments.  */");
T_b("\n");
T_b("typedef struct {");
T_b("\n");
T_b(te_aba->ParameterStructure);
T_b("");
T_b("} ");
T_b(te_sync->GeneratedName);
T_b("_arguments_t;");
T_b("\n");
}
}
T_b(te_aba->ReturnDataType);
T_b("\n");
T_b(te_aba->scope);
T_b(te_aba->GeneratedName);
T_b("(");
T_b(te_aba->ParameterDefinition);
T_b(")");
T_b("\n");
T_b("{");
T_b("\n");
if ( s_sync->Suc_Pars == 1 ) {
if ( te_sync->IsSafeForInterrupts ) {
T_b(deferred_definition->body);
T_b("");
T_b(unpack_arguments->body);
T_b("");
T_b("  ");
T_b(te_sync->intraface_method);
T_b("(");
T_b(te_aba->ParameterInvocation);
T_b(");");
T_b("\n");
T_b("}");
T_b("\n");
T_b(te_aba->ReturnDataType);
T_b("\n");
T_b(te_sync->intraface_method);
T_b("(");
T_b(te_aba->ParameterDefinition);
T_b(")");
T_b("\n");
T_b("{");
T_b("\n");
}
if ( te_aba->NonSelfEventCount > 0 ) {
if ( event_prioritization_needed->result ) {
T_b("  ");
T_b("/* Set up instance handle for priority event generation.  */");
T_b("\n");
T_b("  ");
T_b("static ");
T_b(te_instance->handle);
T_b(" ");
T_b(te_instance->self);
T_b(";");
T_b("\n");
}
}
if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b(te_c->Name);
T_b(" * thismodule = this;");
T_b("\n");
}
T_b(function_body);
T_b("\n");
} else {
T_b(te_sync->Name);
T_b("  ");
T_b("/* WARNING!  Skipping unsuccessful or unparsed function in '");
T_b(te_sync->Name);
T_b("' */");
T_b("\n");
}
T_b("}");
T_b("\n");
