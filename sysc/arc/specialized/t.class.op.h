.//============================================================================
.// $RCSfile: t.class.op.h,v $
.//
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
.if ( 0 == te_tfr.Instance_Based )
static \
.end if
${te_aba.ReturnDataType} ${te_aba.GeneratedName}( \
.if ( ( empty o_tparm ) and ( te_tfr.Instance_Based == 0 ) )
  .if ( "SystemC" == te_target.language )
${thismod} );
  .else
void );
  .end if
.elif ( ( empty o_tparm ) and ( te_tfr.Instance_Based == 1 ) )
${thismodp}${instance_based_self_declaration} );
.elif ( ( not_empty o_tparm ) and ( te_tfr.Instance_Based == 0 ) )
${thismodp}${te_aba.ParameterDeclaration});
.elif ( ( not_empty o_tparm ) and ( te_tfr.Instance_Based == 1 ) )
${thismodp}${instance_based_self_declaration},${te_aba.ParameterDeclaration});
.end if
.//
