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
.if ( te_c.internal_behavior )
  .if ( "C" == te_target.language )
/*
 * Initialization services for component:  ${te_c.Name}
 */
    .if ( not_empty te_class )
extern ${te_cia.class_info_type} * const ${te_dci.array_name}[];
      .if ( not_empty te_sm )
extern const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[];
      .end if
    .end if
void ${te_c.Name}_execute_initialization( void );
  .end if
.end if
