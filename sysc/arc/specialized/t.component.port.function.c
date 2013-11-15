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
void ${c_c.Name}::${function_name}(void)
{
.if (not (read_from_port == "") )
    bool p_signal1 = ${read_from_port}.read();
.end if
${function_body}
}
