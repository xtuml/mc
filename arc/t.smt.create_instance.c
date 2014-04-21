.if ( te_class.Persistent )
${ws}${te_var.buffer} = (${te_class.GeneratedName} *) ${te_instance.module}\
${te_instance.create_persistent}\
( ${dom_id}, ${te_class.system_class_number} );
.else
${ws}${te_var.buffer} = (${te_class.GeneratedName} *) ${te_class.GeneratedName}_Create();
.end if
.if ( "" != init_uniques )
.//${ws}${init_uniques}\
.end if
