.//

/*
 * Interface:  ${te_mact.InterfaceName}
.if ( te_mact.Provision )
 * Provided \
.else
 * Required \
.end if
Port:  ${te_mact.PortName}
.if ( 0 == te_mact.Direction )
 * To Provider \
.else
 * From Provider \
.end if
Message:  ${te_mact.MessageName}
 */
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}(${te_aba.ParameterDefinition})
{
.if ( "" != port_bodies )
  .if ( te_aba.NonSelfEventCount > 0 )
    .if ( event_prioritization_needed.result )
  /* Set up instance handle for priority event generation.  */
  static ${te_instance.handle} ${te_instance.self};
    .end if
  .end if
${thismodule_decl}
  .if ( te_mact.polymorphic )
  switch ( A00portindex ) {
  .end if
${port_bodies}
  .if ( te_mact.polymorphic )
  default:
    break;
  }
  .end if
.end if
}
