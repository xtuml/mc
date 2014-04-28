if ( ( 0==strcmp("T",te_brg->EEkeyletters) ) && ( 0==strcmp("include",te_brg->Name) ) ) {
T_b("#include ");
T_b(parameters);
T_b("\n");
} else {
if ( te_brg->NotGenerateInvocation ) {
T_b("#if 0 /* Omit Statement for marking*/");
T_b("\n");
}
T_b(ws);
T_b(bridge_name);
T_b("(");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(");");
T_b("\n");
if ( te_brg->NotGenerateInvocation ) {
T_b("#endif /* Omit End */");
T_b("\n");
}
}
