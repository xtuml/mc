.//-- 011: 20140217 Add Start (saitou) 
.if ( isAutoIncEnable )
${instance}->${te_attr.GeneratedName} = (${te_dt.ExtName}) ${retMacroName}(${retMngValName});
.//-- 011: 20140217 Add End (saitou) 
.//-- 011: 20140217 Modified Start (saitou) 
.elif ( 5 == te_dt.Core_Typ )
.//-- 011: 20140217 Modified End (saitou) 
  .// unique_id
  .if ( not_empty_o_oida )
${instance}->${te_attr.GeneratedName} = (${te_dt.ExtName}) ${instance};
  .end if
.elif ( ( 2 == te_dt.Core_Typ ) or ( 3 == te_dt.Core_Typ ) )
  .// integer or real
  .if ( ( "" != te_attr.DefaultValue ) and ( not te_sys.InstanceLoading ) )
${instance}->${te_attr.GeneratedName} = ${te_attr.DefaultValue}; /* DefaultValue */
  .end if
.elif ( 4 == te_dt.Core_Typ )
.//-- 002: 20140122 Modified Start (saitou) 
  .if ( not te_dt.IsExternalMacro )
.//-- 002: 20140122 Modified Start (saitou) 
    .// string
    .if ( ( "" != te_attr.DefaultValue ) and ( not te_sys.InstanceLoading ) )
${te_instance.module}${te_string.strcpy}( ${instance}->${te_attr.GeneratedName}, ${te_attr.DefaultValue} ); /* DefaultValue */
    .end if
.//-- 002: 20140122 Modified Start (saitou) 
  .else
    .// external macro
${instance}->${te_dt.ExtName} = ${te_dt.Initial_Value};
  .end if
.//-- 002: 20140122 Modified Start (saitou) 
.end if
