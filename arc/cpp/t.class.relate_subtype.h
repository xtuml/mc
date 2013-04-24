.//============================================================================
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.if ( te_rel.LinkNeeded or te_c.OptDisabled )
static void ${relate_method.result}( ${super_te_class.GeneratedName} *, ${sub_te_class.GeneratedName} * );
.else
/* Note:  ${super_te_class.Key_Lett}<-R${te_rel.Numb}->${sub_te_class.Key_Lett} never related (or note needed).  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
static void ${unrelate_method.result}( ${super_te_class.GeneratedName} *, ${sub_te_class.GeneratedName} * );
.else
/* Note:  No ${super_te_class.Key_Lett}<-R${te_rel.Numb}->${sub_te_class.Key_Lett} unrelate accessor needed.  */
.end if
.//
