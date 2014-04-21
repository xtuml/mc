.if ( te_c.DetectEmpty )
${ws}if ( 0 == ${te_var.buffer} ) {
${ws}  XTUML_EMPTY_HANDLE_TRACE( "${te_class.Key_Lett}", "${te_instance.delete}" );
${ws}}
.end if
${ws}${te_instance.module}\
.if ( te_class.Persistent )
${te_instance.delete_persistent}\
( (${te_instance.handle}) ${te_var.buffer}, ${dom_id}, ${te_class.system_class_number} );
.else
.//${te_instance.delete}\
${te_class.GeneratedName}_Delete((${te_instance.handle}) ${te_var.buffer});
.//.print "${te_class.GeneratedName}_Delete"
.end if
