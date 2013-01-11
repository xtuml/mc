.//============================================================================
.// $RCSfile: t.class.reset_refs.c,v $
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
  ${form_ptr}->${ref_te_attr.GeneratedName} = ${te_dt.Initial_Value};
.else
  ${te_instance.module}${te_string.memset}( &${form_ptr}->${ref_te_attr.GeneratedName}, 0, sizeof( ${form_ptr}->${ref_te_attr.GeneratedName} ) );
.end if
.//
