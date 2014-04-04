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
.//-- 009: 20140205 Add Start (saitou)
  .select any te_brg from instances of TE_BRG where ( false )
  .//
  .select any te_po related by te_mact->TE_PO[R2006]
  .select any te_ee from instances of TE_EE where ( selected.EE_ID == te_po.realizeEE_ID )
  .if ( not_empty te_ee )
    .select any te_brg from instances of TE_BRG where ( ( selected.EE_ID == te_po.realizeEE_ID ) and ( "${selected.Name}" == "${te_mact.MessageName}" ) )
  .end if
  .//
  .if ( not_empty te_brg )
    .if( te_brg.NotGenerateInvocation )
#if 0
    .end if
  ${te_brg.GeneratedName}( ${te_aba.ParameterInvocation} );
    .if( te_brg.NotGenerateInvocation )
#endif
    .end if
  .else
.//-- 009: 20140205 Add End (saitou)
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
.//-- 009: 20140205 Add Start (saitou)
  .end if
.//-- 009: 20140205 Add End (saitou)
}
