if ( ( ( 0!=strcmp("",deallocation) ) || ( 0==strcmp("c_t",returnvaltype) ) ) && ( 0!=strcmp("",returnvaltype) ) ) {
if ( 0==strcmp("c_t",returnvaltype) ) {
T_b(ws);
T_b("{");
T_b(returnvaltype);
T_b(" * ");
T_b(rv);
T_b(" = ");
T_b(value);
T_b(";");
T_b("\n");
} else {
T_b(ws);
T_b("{");
T_b(returnvaltype);
T_b(" ");
T_b(rv);
T_b(" = ");
T_b(value);
T_b(";");
T_b("\n");
}
}
if ( 0!=strcmp("",deallocation) ) {
T_b(ws);
T_b(deallocation);
T_b("\n");
}
T_b(ws);
T_b("return ");
T_b(intCast1);
T_b(rv);
T_b(intCast2);
T_b(";");
if ( ( ( 0!=strcmp("",deallocation) ) || ( 0==strcmp("c_t",returnvaltype) ) ) && ( 0!=strcmp("",returnvaltype) ) ) {
T_b("}");
T_b("\n");
} else {
}
