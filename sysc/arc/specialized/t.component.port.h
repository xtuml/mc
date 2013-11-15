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
    \
.if ( te_po.Provision )
${te_prefix.provided_port}\
.else
${te_prefix.required_port}\
.end if
${te_po.InterfaceName} ${template_parameter_values} ${te_po.Name}${array_spec};
