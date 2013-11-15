.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*
 * Initialization services for component:  ${te_c.Name}
 */
.if ( not_empty te_class )
extern ${class_info.class_info_type} * const ${class_info_list.array_name}[];
.end if
.if ( not_empty te_sm )
extern const ${class_dispatch_array.element_type} ${class_dispatch_array.result}[];
.end if
.if ( "C" == te_target.language )
extern void ${te_c.Name}_execute_initialization( void );
.end if
