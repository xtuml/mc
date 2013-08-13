.if ( is_reflexive )
${ws}${method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
.else
  .if ( left_is_formalizer )
${ws}${method}( ${oth_te_var.buffer}, ${one_te_var.buffer}${thismodule} );
  .else
${ws}${method}( ${one_te_var.buffer}, ${oth_te_var.buffer}${thismodule} );
  .end if
.end if
