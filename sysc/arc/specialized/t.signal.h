.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if (channel_type != "")
  .if ( signal_type == "" )
    ${channel_type} ${brackets} ${channel_name}${cl_ic_description}${array_spec} ;
  .else
    ${channel_type}< ${signal_type} > ${te_aba_nested.GeneratedName} ${brackets} ${cl_ic_description}${array_spec} ;
  .end if
.else
    sc_signal < ${signal_type} > ${te_aba_nested.GeneratedName} ${brackets} ${cl_ic_description}${array_spec} ;
.end if
