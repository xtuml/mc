if ( 0!=strcmp("void",te_aba->ReturnDataType) ) {
T_b(ws);
T_b("{");
T_b(te_aba->ReturnDataType);
T_b(" xtumlOALrv = ");
T_b(intCast1);
T_b(value);
T_b(intCast2);
T_b(";");
T_b("\n");
}
if ( 0!=strcmp("",deallocation) ) {
T_b(ws);
T_b(deallocation);
T_b("\n");
}
if ( 0==strcmp("c_t *",te_aba->ReturnDataType) ) {
if ( te_sys->InstanceLoading ) {
T_b(ws);
T_b("return xtumlOALrv;");
} else {
T_b(ws);
T_b("return ");
T_b(te_string->strcpy);
T_b("( A0xtumlsret, xtumlOALrv );");
}
} else if ( 0==strcmp("void",te_aba->ReturnDataType) ) {
T_b(ws);
T_b("return;");
} else {
T_b(ws);
T_b("return xtumlOALrv;");
}
if ( 0!=strcmp("void",te_aba->ReturnDataType) ) {
T_b("}");
T_b("\n");
} else {
}
