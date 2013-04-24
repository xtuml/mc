.//============================================================================
.// $RCSfile: t.class.op.h,v $
.//
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
  \
.if ( 0 == te_tfr.Instance_Based )
static \
.end if
${te_aba.ReturnDataType} ${te_aba.GeneratedName}( \
.if ( 1 == te_tfr.Instance_Based )
${instance_based_self_declaration},\
.end if
${te_aba.ParameterDeclaration});
.//
