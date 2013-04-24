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
.if ( te_rel.LinkNeeded or te_c.OptDisabled )
static void ${link_method.result}( ${aone_te_class.GeneratedName} *, ${aoth_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} * );
.else
/* Note:  Link ${aone_te_class.Key_Lett} to ${aoth_te_class.Key_Lett} across R${te_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
static void ${unlink_method.result}( ${aone_te_class.GeneratedName} *, ${aoth_te_class.GeneratedName} *, ${assr_te_class.GeneratedName} * );
.else
/* Note:  Unlink ${aone_te_class.Key_Lett} from ${aoth_te_class.Key_Lett} across R${te_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.//
