T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Bridge:  ");
T_b(te_brg->Name);
T_b("\n");
if ( not_empty te_c ) {
if ( te_c->RawComments ) {
T_b("       ");
T_b("Action language follows:");
T_b("\n");
T_b("  ");
T_b(s_brg->Action_Semantics);
T_b("\n");
}
}
T_b(" ");
T_b("*/");
T_b("\n");
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
if ( te_dt->Name != "void" ) {
if ( ( s_brg->Suc_Pars == 1 ) && ( 0!=strcmp("",te_aba->code) ) ) {
T_b("  ");
T_b("/* Replace/Insert the following instructions with your implementation code.  */");
T_b("\n");
T_b(te_aba->code);
T_b("");
} else {
if ( 0==strcmp("CTOR",te_dt->Initial_Value) ) {
T_b("  ");
T_b(te_aba->ReturnDataType);
T_b(" result = 0;");
T_b("\n");
} else {
T_b("  ");
T_b(te_aba->ReturnDataType);
T_b(" result = ");
T_b(te_dt->Initial_Value);
T_b(";");
T_b("\n");
}
if ( te_sys->PersistentClassCount > 0 ) {
if ( ( te_brg->EEkeyletters == "PERSIST" ) && ( te_brg->Name == "commit" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("PersistenceCommit(");
T_b(parameters->definition);
T_b(");  /* architectural persist routine */");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "PERSIST" ) && ( te_brg->Name == "restore" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("PersistenceRestore(");
T_b(parameters->definition);
T_b(");  /* architectural restore operation */");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "checksum" ) ) {
T_b("  ");
T_b("/* Note:  Customer/User must implement this function.  Calling stub.  */");
T_b("\n");
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_checksum(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "defrag" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_defrag(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "remove" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_remove(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
T_b("  ");
T_b("/*");
T_b("\n");
T_b("   ");
T_b("* To keep the NVS continually defragmented, add a call to the defrag");
T_b("\n");
T_b("   ");
T_b("* method here.  [result = ");
T_b(te_prefix->result);
T_b("NVS_defrag()]");
T_b("\n");
T_b("   ");
T_b("*/");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "format" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_format(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "initialize" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_initialize(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "insert" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_insert(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "next" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_next((u4_t *)");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "select" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_select(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "space_available" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_space_available(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "space_total" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_space_total(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "space_used" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_space_used(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "update" ) ) {
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_update(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
} else if ( ( te_brg->EEkeyletters == "NVS" ) && ( te_brg->Name == "version" ) ) {
T_b("  ");
T_b("/* Note:  Customer/User must implement this function.  Calling stub.  */");
T_b("\n");
T_b("  ");
T_b("result = ");
T_b(te_prefix->result);
T_b("NVS_version(");
T_b(parameters->definition);
T_b(");");
T_b("\n");
}
}
T_b("  ");
T_b("/* Insert your implementation code here... */");
T_b("\n");
T_b("  ");
T_b("return result;");
T_b("\n");
}
} else {
if ( ( te_brg->EEkeyletters == "ARCH" ) && ( te_brg->Name == "shutdown" ) ) {
if ( ( 0!=strcmp("C",te_target->language) ) && ( not_empty te_c ) ) {
T_b("  ");
T_b(te_instance->module);
T_b(te_eq->run_flag);
T_b(" = false; /* default automatic action for this bridge */");
T_b("\n");
}
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b(te_eq->run_flag);
T_b(" = false; /* default automatic action for this bridge */");
T_b("\n");
}
T_b("  ");
T_b("return;");
T_b("\n");
}
T_b("  ");
T_b("/* Replace/Insert your implementation code here... */");
T_b("\n");
T_b(te_aba->code);
T_b("");
}
T_b("}");
T_b("\n");
