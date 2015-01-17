.if ( ( ( "" != deallocation ) or ( "xtuml_string" == returnvaltype ) ) and ( "" != returnvaltype ) )
  .// If there is a return value and if there is deallocation,
  .// then declare a variable to hold the return value.
  .// Assign the return value before the deallocation takes
  .// place.  This is especially important when returning
  .// expressions involving sets (like cardinality).
${ws}{${returnvaltype} ${rv};
  .if ( "xtuml_string" == returnvaltype )
${ws}${te_instance.module}${te_string.strcpy}( ${rv}.s, ${value} );
  .else
${ws}${rv} = ${value};
  .end if
.end if
.if ( "" != deallocation )
  .// Perform the deallocation (of set containers).
${ws}${deallocation}
.end if
${ws}return ${intCast1}${rv}${intCast2};\
.if ( ( ( "" != deallocation ) or ( "xtuml_string" == returnvaltype ) ) and ( "" != returnvaltype ) )
}
.else

.end if
