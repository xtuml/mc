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
.function t_oal_port_action
  .param inst_ref te_mact
  .param inst_ref te_po
  .param string action_body
.if ( te_mact.Provision )
  /* Provided \
.else
  /* Required \
.end if
Port:  ${te_mact.PortName} */
.if ( te_mact.polymorphic )
  case ( ${te_po.sibling} ): {
.end if
${action_body}\
.if ( te_mact.polymorphic )
  } break;
.end if
.end function
