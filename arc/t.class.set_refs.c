.//============================================================================
.// $RCSfile: t.class.set_refs.c,v $
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
.if ( te_dt.Initial_Value != "CTOR" )
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${part_ptr}->${ident_te_attr.GeneratedName};
.else
  .if ( 4 == te_dt.Core_Typ )
    .if ( te_sys.InstanceLoading )
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${te_instance.module}${te_string.strcpy}( ${form_ptr}->${ref_te_attr.GeneratedName}, ${part_ptr}->${ident_te_attr.GeneratedName} );
    .else
.//-- 002: 20140122 Modified Start (saitou) 
      .if ( not te_dt.IsExternalMacro )
.//-- 002: 20140122 Modified Start (saitou) 
  ${te_instance.module}${te_string.strcpy}( ${form_ptr}->${ref_te_attr.GeneratedName}, ${part_ptr}->${ident_te_attr.GeneratedName} );
.//-- 002: 20140122 Modified Start (saitou) 
      .else
        .// external macro
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${part_ptr}->${ident_te_attr.GeneratedName};
      .end if
.//-- 002: 20140122 Modified Start (saitou) 
    .end if
  .else
  ${te_instance.module}${te_string.memmove}( &${form_ptr}->${ref_te_attr.GeneratedName}, &${part_ptr}->${ident_te_attr.GeneratedName}, sizeof( ${form_ptr}->${ref_te_attr.GeneratedName} ) );
  .end if
.end if
.//
