.if ( "void" != te_aba.ReturnDataType )
  .// Assign the return value before the deallocation takes
  .// place.  This is especially important when returning
  .// expressions involving sets (like cardinality).
${ws}{${te_aba.ReturnDataType} xtumlOALrv = ${value};
.end if
.if ( "" != deallocation )
  .// Perform the deallocation (of set containers).
${ws}${deallocation}
.end if
.if ( "c_t *" == te_aba.ReturnDataType )
${ws}return ${te_string.strcpy}( A0xtumlsret, xtumlOALrv );\
.elif ( "void" == te_aba.ReturnDataType )
${ws}return;\
.else
${ws}return ${intCast1}xtumlOALrv${intCast2};\
.end if
.if ( "void" != te_aba.ReturnDataType )
}
.else

.end if
