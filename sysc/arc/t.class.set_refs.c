.//============================================================================
.// $RCSfile: t.class.set_refs.c,v $
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
.if ( te_dt.Initial_Value != "CTOR" )
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${part_ptr}->${ident_te_attr.GeneratedName};
.else
  .if ( 4 == te_dt.Core_Typ )
  ${te_string.strcpy}( ${form_ptr}->${ref_te_attr.GeneratedName}, ${part_ptr}->${ident_te_attr.GeneratedName} );
  .else
  ${te_string.memmove}( &${form_ptr}->${ref_te_attr.GeneratedName}, &${part_ptr}->${ident_te_attr.GeneratedName}, sizeof( ${form_ptr}->${ref_te_attr.GeneratedName} ) );
  .end if
.end if
.//
