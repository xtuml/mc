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

/*
 * RELATE ${super_te_class.Key_Lett} TO ${sub_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${relate_method.result}( ${super_te_class.GeneratedName} * supertype, ${sub_te_class.GeneratedName} * subtype${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${sub_te_class.Key_Lett}", "${relate_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${set_referentials}\
  /* Optimized linkage for ${sub_te_class.Key_Lett}->${super_te_class.Key_Lett}[R${te_rel.Numb}] */
  subtype->${subtype_data_member.result} = supertype;
  /* Optimized linkage for ${super_te_class.Key_Lett}->${sub_te_class.Key_Lett}[R${te_rel.Numb}] */
  supertype->${supertype_data_member.result} = subtype;
  supertype->${supertype_data_member.obj_id} = ${sub_te_class.system_class_number};
${persist_relate.body}\
}

.end if
.if ( te_rel.UnlinkNeeded or te_c.OptDisabled )

/*
 * UNRELATE ${super_te_class.Key_Lett} FROM ${sub_te_class.Key_Lett} ACROSS R${te_rel.Numb}
 */
void
${unrelate_method.result}( ${super_te_class.GeneratedName} * supertype, ${sub_te_class.GeneratedName} * subtype${thismodule} )
{
  .if ( te_c.DetectEmpty )
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "${sub_te_class.Key_Lett}", "${unrelate_method.result}" );
    return;
  }
  .else
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  .end if
${reset_referentials}\
  .if ( super_te_oir.NavigatedTo or te_c.OptDisabled )
  subtype->${subtype_data_member.result} = 0;
  .else
  /* Note:  ${sub_te_class.Key_Lett}->${super_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
  .if ( sub_te_oir.NavigatedTo or te_c.OptDisabled )
  supertype->${supertype_data_member.result} = 0;
  supertype->${supertype_data_member.obj_id} = 0;
  .else
  /* Note:  ${super_te_class.Key_Lett}->${sub_te_class.Key_Lett}[R${te_rel.Numb}] not navigated */
  .end if
${persist_unrelate.body}\
}

.end if
.//
