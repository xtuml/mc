if ( te_sys->InstanceLoading ) {
T_b("extern void mark_pass( c_t * );");
T_b("\n");
T_b("#define T_T(x) ( 0 == x ) ? s : strcat(s,x)");
T_b("\n");
}
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* UML Domain Functions (Synchronous Services)");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( not_empty ilb_te_sync ) {
T_b("#include \"");
T_b(te_file->ilb);
T_b(".");
T_b(te_file->hdr_file_ext);
T_b("\"");
T_b("\n");
}
T_b(function_definitions);
T_b("\n");
