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
.if ( te_sync.IsSafeForInterrupts )
void ${te_sync.intraface_method}(${te_aba.ParameterDeclaration});
.end if
${te_aba.ReturnDataType} ${te_aba.GeneratedName}(${te_aba.ParameterDeclaration});
.//
