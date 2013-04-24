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
static void ${relate_method.result}( ${part_te_class.GeneratedName} *, ${form_te_class.GeneratedName} * );
.else
/* xtUML WARNING:  ${part_obj.Key_Lett}${part_mult_cmt}R${te_rel.Numb}${form_mult_cmt}${o_obj.Key_Lett} never related!  */
.end if
.//
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
static void ${unrelate_method.result}( ${part_te_class.GeneratedName} *, ${form_te_class.GeneratedName} * );
.else
/* Note:  ${part_obj.Key_Lett}${part_mult_cmt}R${te_rel.Numb}${form_mult_cmt}${o_obj.Key_Lett} unrelate accessor not needed */
.end if
.//
