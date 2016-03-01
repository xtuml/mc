T_b(ws);
T_b("");
if ( uses_thismodule && instance_based ) {
T_b(var_name);
T_b("->");
}
T_b(operation_name);
T_b("(");
if ( instance_based ) {
T_b(" ");
T_b(var_name);
T_b("");
if ( ( 0!=strcmp("",parameters) ) || ( uses_thismodule ) ) {
T_b(",");
}
T_b(" ");
T_b("");
}
if ( uses_thismodule ) {
T_b(" ");
T_b("thismodule");
if ( 0!=strcmp("",parameters) ) {
T_b(", ");
}
}
if ( 0!=strcmp("",parameters) ) {
T_b(" ");
T_b(parameters);
T_b(" ");
}
T_b(");");
T_b("\n");
