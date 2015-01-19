.if ( ( ( "" != deallocation ) or ( "c_t" == returnvaltype ) ) and ( "" != returnvaltype ) )
  .// If there is a return value and if there is deallocation,
  .// then declare a variable to hold the return value.
  .// Assign the return value before the deallocation takes
  .// place.  This is especially important when returning
  .// expressions involving sets (like cardinality).
  .// For strings (char arrays), add a scope to supress compiler warnings
  .// about returning the address of a local variable.  Once
  .// returned, the string buffer will be copied into the
  .// calling scope immediately.
  .// This is dubious practice (due to unallocated stack space),
  .// but is safer than explicit allocation alternatives.
  .if ( "c_t" == returnvaltype )
${ws}{${returnvaltype} * ${rv} = ${value};
  .else
${ws}{${returnvaltype} ${rv} = ${value};
  .end if
.end if
.if ( "" != deallocation )
  .// Perform the deallocation (of set containers).
${ws}${deallocation}
.end if
${ws}return ${intCast1}${rv}${intCast2};\
.if ( ( ( "" != deallocation ) or ( "c_t" == returnvaltype ) ) and ( "" != returnvaltype ) )
}
.else

.end if
