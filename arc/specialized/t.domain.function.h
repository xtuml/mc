.//============================================================================
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if ( te_sync.IsSafeForInterrupts )
extern void ${te_sync.intraface_method}(${te_aba.ParameterDeclaration});
.end if
extern ${te_aba.ReturnDataType} ${te_aba.GeneratedName}(${te_aba.ParameterDeclaration});
.//
