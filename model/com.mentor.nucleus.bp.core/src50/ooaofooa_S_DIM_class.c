/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_DIM_class.c
 *
 * Class:       Dimensions  (S_DIM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_S_DIM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_DIM * self = (ooaofooa_S_DIM *) instance;
  /* Initialize application analysis class attributes.  */
  self->elementCount = Escher_atoi( avlstring[ 1 ] );
  self->dimensionCount = Escher_atoi( avlstring[ 2 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->Member_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 14 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 15 ] );
  self->SMedi_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 16 ] );
  self->DIM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 17 ] );
  return_identifier = self->DIM_ID;
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 18 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_DIM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_DIM * ooaofooa_S_DIM_instance = (ooaofooa_S_DIM *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_S_DIM_R849_Link_may_have( ooaofooa_V_VARrelated_instance1, ooaofooa_S_DIM_instance );
  }
  {
  ooaofooa_V_TRN * ooaofooa_V_TRNrelated_instance1 = ooaofooa_V_TRN_AnyWhere1( ooaofooa_S_DIM_instance->Var_ID );
  if ( ooaofooa_V_TRNrelated_instance1 ) {
    ooaofooa_S_DIM_R844_Link_may_have( ooaofooa_V_TRNrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_S_DIM_R122_Link_return_value_may_have( ooaofooa_O_TFRrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_O_TPARM * ooaofooa_O_TPARMrelated_instance1 = (ooaofooa_O_TPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->TParm_ID ];
  if ( ooaofooa_O_TPARMrelated_instance1 ) {
    ooaofooa_S_DIM_R121_Link_may_have( ooaofooa_O_TPARMrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_S_DIM_instance->Attr_ID, ooaofooa_S_DIM_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_S_DIM_R120_Link_may_have( ooaofooa_O_ATTRrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_SM_EVTDI * ooaofooa_SM_EVTDIrelated_instance1 = ooaofooa_SM_EVTDI_AnyWhere1( ooaofooa_S_DIM_instance->SMedi_ID, ooaofooa_S_DIM_instance->SM_ID );
  if ( ooaofooa_SM_EVTDIrelated_instance1 ) {
    ooaofooa_S_DIM_R531_Link_may_have( ooaofooa_SM_EVTDIrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_S_MBR * ooaofooa_S_MBRrelated_instance1 = ooaofooa_S_MBR_AnyWhere1( ooaofooa_S_DIM_instance->Member_ID, ooaofooa_S_DIM_instance->DT_ID );
  if ( ooaofooa_S_MBRrelated_instance1 ) {
    ooaofooa_S_DIM_R53_Link_may_have( ooaofooa_S_MBRrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_S_DIM_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_S_DIM_R51_Link_return_value_may_have( ooaofooa_S_SYNCrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_S_SPARM * ooaofooa_S_SPARMrelated_instance1 = (ooaofooa_S_SPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->SParm_ID ];
  if ( ooaofooa_S_SPARMrelated_instance1 ) {
    ooaofooa_S_DIM_R52_Link_may_have( ooaofooa_S_SPARMrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_S_DIM_R4017_Link_may_have( ooaofooa_C_PPrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_C_IO * ooaofooa_C_IOrelated_instance1 = ooaofooa_C_IO_AnyWhere1( ooaofooa_S_DIM_instance->Id );
  if ( ooaofooa_C_IOrelated_instance1 ) {
    ooaofooa_S_DIM_R4018_Link_return_value_may_have( ooaofooa_C_IOrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_S_BPARM * ooaofooa_S_BPARMrelated_instance1 = (ooaofooa_S_BPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->BParm_ID ];
  if ( ooaofooa_S_BPARMrelated_instance1 ) {
    ooaofooa_S_DIM_R49_Link_may_have( ooaofooa_S_BPARMrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_S_DIM_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_S_DIM_R50_Link_return_value_may_have( ooaofooa_S_BRGrelated_instance1, ooaofooa_S_DIM_instance );
  }
  }
}


/*
 * RELATE S_BPARM TO S_DIM ACROSS R49
 */
void
ooaofooa_S_DIM_R49_Link_may_have( ooaofooa_S_BPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = part->BParm_ID;
  form->S_BPARM_R49_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R49_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BPARM FROM S_DIM ACROSS R49
 */
void
ooaofooa_S_DIM_R49_Unlink_may_have( ooaofooa_S_BPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = 0;
  form->S_BPARM_R49_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R49_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_BRG TO S_DIM ACROSS R50
 */
void
ooaofooa_S_DIM_R50_Link_return_value_may_have( ooaofooa_S_BRG * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R50_defines_return_value_dimensions_for = part;
  Escher_SetInsertElement( &part->S_DIM_R50_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BRG FROM S_DIM ACROSS R50
 */
void
ooaofooa_S_DIM_R50_Unlink_return_value_may_have( ooaofooa_S_BRG * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R50_defines_return_value_dimensions_for = 0;
  Escher_SetRemoveElement( &part->S_DIM_R50_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SYNC TO S_DIM ACROSS R51
 */
void
ooaofooa_S_DIM_R51_Link_return_value_may_have( ooaofooa_S_SYNC * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R51_defines_return_value_dimensions_for = part;
  Escher_SetInsertElement( &part->S_DIM_R51_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM S_DIM ACROSS R51
 */
void
ooaofooa_S_DIM_R51_Unlink_return_value_may_have( ooaofooa_S_SYNC * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R51_defines_return_value_dimensions_for = 0;
  Escher_SetRemoveElement( &part->S_DIM_R51_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SPARM TO S_DIM ACROSS R52
 */
void
ooaofooa_S_DIM_R52_Link_may_have( ooaofooa_S_SPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = part->SParm_ID;
  form->S_SPARM_R52_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R52_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SPARM FROM S_DIM ACROSS R52
 */
void
ooaofooa_S_DIM_R52_Unlink_may_have( ooaofooa_S_SPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = 0;
  form->S_SPARM_R52_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R52_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_MBR TO S_DIM ACROSS R53
 */
void
ooaofooa_S_DIM_R53_Link_may_have( ooaofooa_S_MBR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = part->Member_ID;
  form->DT_ID = part->Parent_DT_DT_ID;
  form->S_MBR_R53_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R53_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_MBR FROM S_DIM ACROSS R53
 */
void
ooaofooa_S_DIM_R53_Unlink_may_have( ooaofooa_S_MBR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = 0;
  form->DT_ID = 0;
  form->S_MBR_R53_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R53_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_ATTR TO S_DIM ACROSS R120
 */
void
ooaofooa_S_DIM_R120_Link_may_have( ooaofooa_O_ATTR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R120_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R120_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM S_DIM ACROSS R120
 */
void
ooaofooa_S_DIM_R120_Unlink_may_have( ooaofooa_O_ATTR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_ATTR_R120_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R120_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_TPARM TO S_DIM ACROSS R121
 */
void
ooaofooa_S_DIM_R121_Link_may_have( ooaofooa_O_TPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = part->TParm_ID;
  form->O_TPARM_R121_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R121_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TPARM FROM S_DIM ACROSS R121
 */
void
ooaofooa_S_DIM_R121_Unlink_may_have( ooaofooa_O_TPARM * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = 0;
  form->O_TPARM_R121_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R121_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_TFR TO S_DIM ACROSS R122
 */
void
ooaofooa_S_DIM_R122_Link_return_value_may_have( ooaofooa_O_TFR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R122_defines_return_value_dimensions_for = part;
  Escher_SetInsertElement( &part->S_DIM_R122_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TFR FROM S_DIM ACROSS R122
 */
void
ooaofooa_S_DIM_R122_Unlink_return_value_may_have( ooaofooa_O_TFR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R122_defines_return_value_dimensions_for = 0;
  Escher_SetRemoveElement( &part->S_DIM_R122_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_EVTDI TO S_DIM ACROSS R531
 */
void
ooaofooa_S_DIM_R531_Link_may_have( ooaofooa_SM_EVTDI * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMedi_ID = part->SMedi_ID;
  form->SM_EVTDI_R531_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R531_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVTDI FROM S_DIM ACROSS R531
 */
void
ooaofooa_S_DIM_R531_Unlink_may_have( ooaofooa_SM_EVTDI * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMedi_ID = 0;
  form->SM_EVTDI_R531_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R531_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_TRN TO S_DIM ACROSS R844
 */
void
ooaofooa_S_DIM_R844_Link_may_have( ooaofooa_V_TRN * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_TRN_R844_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R844_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_TRN FROM S_DIM ACROSS R844
 */
void
ooaofooa_S_DIM_R844_Unlink_may_have( ooaofooa_V_TRN * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_TRN_R844_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R844_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAR TO S_DIM ACROSS R849
 */
void
ooaofooa_S_DIM_R849_Link_may_have( ooaofooa_V_VAR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R849_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R849_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM S_DIM ACROSS R849
 */
void
ooaofooa_S_DIM_R849_Unlink_may_have( ooaofooa_V_VAR * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_VAR_R849_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R849_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PP TO S_DIM ACROSS R4017
 */
void
ooaofooa_S_DIM_R4017_Link_may_have( ooaofooa_C_PP * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R4017_specifies_occurrences_of = part;
  Escher_SetInsertElement( &part->S_DIM_R4017_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PP FROM S_DIM ACROSS R4017
 */
void
ooaofooa_S_DIM_R4017_Unlink_may_have( ooaofooa_C_PP * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = 0;
  form->C_PP_R4017_specifies_occurrences_of = 0;
  Escher_SetRemoveElement( &part->S_DIM_R4017_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_IO TO S_DIM ACROSS R4018
 */
void
ooaofooa_S_DIM_R4018_Link_return_value_may_have( ooaofooa_C_IO * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->C_IO_R4018_defines_return_value_dimensions_for_ = part;
  Escher_SetInsertElement( &part->S_DIM_R4018_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_IO FROM S_DIM ACROSS R4018
 */
void
ooaofooa_S_DIM_R4018_Unlink_return_value_may_have( ooaofooa_C_IO * part, ooaofooa_S_DIM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->C_IO_R4018_defines_return_value_dimensions_for_ = 0;
  Escher_SetRemoveElement( &part->S_DIM_R4018_return_value_may_have, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_DIM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_DIM * self = (ooaofooa_S_DIM *) instance;
  printf( "INSERT INTO S_DIM VALUES ( %d,%d,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld );\n",
    self->elementCount,
    self->dimensionCount,
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->BParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->TParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Member_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMedi_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DIM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_DIM_container[ ooaofooa_S_DIM_MAX_EXTENT_SIZE ];
static ooaofooa_S_DIM ooaofooa_S_DIM_instances[ ooaofooa_S_DIM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_DIM_extent = {
  {0,0}, {0,0}, &ooaofooa_S_DIM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_DIM_instances,
  sizeof( ooaofooa_S_DIM ), 0, ooaofooa_S_DIM_MAX_EXTENT_SIZE
  };


