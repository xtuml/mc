.//============================================================================
.// $RCSfile: t.class.op.c,v $
.//
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//

/*
 * ${prelude} operation:  ${o_tfr.Name}
.if ( ( te_c.RawComments ) and ( not gen_declaration ) )
 *
 * Action language follows:
 *
${o_tfr.Action_Semantics}
.end if
 */
.if ( gen_declaration )
extern \
.end if
${te_aba.ReturnDataType}
${te_aba.scope}${te_aba.GeneratedName}\
.if ( not_empty o_tparm )
  .if ( te_tfr.Instance_Based == 0 )
(\
  .else
(
  ${te_class.GeneratedName} * ${te_instance.self},\
  .end if
${te_aba.ParameterDefinition})
.else
  .// No te_tfr data parameters
  .if ( te_tfr.Instance_Based == 0 )
( void )
  .else
( ${te_class.GeneratedName} * ${te_instance.self} )
  .end if
.end if
{
  .if ( o_tfr.Suc_Pars == 1 )
${op_body}
  .else
  /* WARNING!  Skipping unsuccessful or unparsed operation ${te_tfr.Name} */
  .end if
}
.//
