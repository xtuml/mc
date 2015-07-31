.//
  \
.if ( 0 == te_tfr.Instance_Based )
static \
.end if
${te_aba.ReturnDataType} ${te_aba.GeneratedName}( \
.if ( 1 == te_tfr.Instance_Based )
${instance_based_self_declaration},\
.end if
${te_aba.ParameterDeclaration});
.//
