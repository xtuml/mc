T_b("  ");
T_b("if ( 0 != ( ");
T_b(te_mact->ComponentName);
T_b("_status && ");
T_b(te_mact->InterfaceName);
T_b("_");
T_b(te_mact->MessageName);
T_b("_order ) ) {");
T_b("\n");
if ( 0!=strcmp("",te_aba->ParameterInvocation) ) {
T_b("    ");
T_b("/* = ");
T_b(te_mact->ComponentName);
T_b("_");
T_b(te_mact->PortName);
T_b("_");
T_b(te_mact->MessageName);
T_b("_<parameter.here>_REG_OFFSET for parameter registers.  */");
T_b("\n");
T_b("    ");
T_b(te_aba->ParameterStructure);
T_b("");
}
if ( 0!=strcmp("void",te_aba->ReturnDataType) ) {
T_b("    ");
T_b(te_aba->ReturnDataType);
T_b(" r = ");
} else {
T_b("    ");
T_b("");
}
T_b(te_aba->GeneratedName);
T_b("(");
T_b(te_aba->ParameterInvocation);
T_b(" );");
T_b("\n");
T_b("    ");
T_b(te_mact->ComponentName);
T_b("_ack = ");
T_b(te_mact->InterfaceName);
T_b("_");
T_b(te_mact->MessageName);
T_b("_order; /* ACK/clear */");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
