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
.if ( te_rel.LinkNeeded or te_c.OptDisabled )

/*
 * RELATE ${aone_te_class.Key_Lett} TO ${aoth_te_class.Key_Lett} ACROSS R${r_rel.Numb} USING ${assr_te_class.Key_Lett}
 */
void
${link_method.result}( ${aone_te_class.GeneratedName} * aone, ${aoth_te_class.GeneratedName} * aoth, ${assr_te_class.GeneratedName} * assr )
{
  .if ( te_c.DetectEmpty )
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_te_class.Key_Lett}", "${link_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_aone_referentials}\
${set_aoth_referentials}\
  /* Initialize optimized relationship storage extended attributes */
  assr->${aone_data.result} = aone;
  assr->${aoth_data.result} = aoth;
  .if ( aoth.Mult == 0 )
  aone->${assr_data.result} = assr;
  .else
  ${te_set.insert_element}( &aone->${assr_data.result}, assr );
  .end if
  .if ( aone.Mult == 0 )
  aoth->${assr_data.result} = assr;
  .else
  ${te_set.insert_element}( &aoth->${assr_data.result}, assr );
  .end if
${persist_relate.body}\
}
.else
/* Note:  Link ${aone_te_class.Key_Lett} to ${aoth_te_class.Key_Lett} across R${r_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if

.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )
/*
 * UNRELATE ${aone_te_class.Key_Lett} FROM ${aoth_te_class.Key_Lett} ACROSS \
R${r_rel.Numb} USING ${assr_te_class.Key_Lett}
 */
void
${unlink_method.result}( ${aone_te_class.GeneratedName} * aone, ${aoth_te_class.GeneratedName} * aoth, ${assr_te_class.GeneratedName} * assr )
{
  .if ( te_c.DetectEmpty )
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${assr_te_class.Key_Lett}", "${unlink_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  assr->${aone_data.result} = 0;
  assr->${aoth_data.result} = 0;
  .if ( aoth.Mult == 0 )
  aone->${assr_data.result} = 0;
  .else
  ${te_set.remove_element}( &aone->${assr_data.result}, assr );
  .end if
  .if ( aone.Mult == 0 )
  aoth->${assr_data.result} = 0;
  .else
  ${te_set.remove_element}( &aoth->${assr_data.result}, assr );
  .end if
${persist_unrelate.body}\
}
.else
/* Note:  Unlink ${aone_te_class.Key_Lett} from ${aoth_te_class.Key_Lett} across R${r_rel.Numb} using ${assr_te_class.Key_Lett} not needed.  */
.end if
.//
