.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
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
  .if ( te_aba.NonSelfEventCount > 0 )
    .if ( event_prioritization_needed.result )
  /* Set up instance handle for priority event generation.  */
  static ${te_instance.handle} ${te_instance.self};
    .end if
  .end if
  .if ( te_mact.trace )
  /* <message compname="${te_c.Name}" compnum="${te_c.number}" portname="${te_po.Name}" portnum="${te_po.Order}" msgname="${te_mact.MessageName}" msgnum="${te_mact.Order}"/> */
  ${te_trace.component_msg_start}( "${te_aba.ParameterFormat}", ${te_c.number}, ${te_po.Order}, ${te_mact.Order}${te_aba.ParameterTrace} );
  .end if
${action_body}\
}
