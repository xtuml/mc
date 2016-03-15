T_b(ws);
T_b(name);
T_b("(");
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(")");
if ( is_statement ) {
T_b(";");
T_b("\n");
}
