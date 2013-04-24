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
${te_aba.ReturnDataType} ${te_aba.GeneratedName}( \
.if ( ( empty o_tparm ) and ( te_tfr.Instance_Based == 0 ) )
void );
.elif ( ( empty o_tparm ) and ( te_tfr.Instance_Based == 1 ) )
${instance_based_self_declaration} );
.elif ( ( not_empty o_tparm ) and ( te_tfr.Instance_Based == 0 ) )
${te_aba.ParameterDeclaration});
.elif ( ( not_empty o_tparm ) and ( te_tfr.Instance_Based == 1 ) )
${instance_based_self_declaration},${te_aba.ParameterDeclaration});
.end if
.//
