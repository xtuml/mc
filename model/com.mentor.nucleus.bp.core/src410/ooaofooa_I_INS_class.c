/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_INS_class.c
 *
 * Class:       Instance  (I_INS)
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
ooaofooa_I_INS_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_INS * self = (ooaofooa_I_INS *) instance;
  /* Initialize application analysis class attributes.  */
  self->Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Inst_ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  Escher_strcpy( self->Label, avlstring[ 8 ] );
  Escher_strcpy( self->Default_Name, avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_INS_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_INS * ooaofooa_I_INS_instance = (ooaofooa_I_INS *) instance;
  ooaofooa_SM_TXN * ooaofooa_SM_TXNrelated_instance1 = ooaofooa_SM_TXN_AnyWhere1( ooaofooa_I_INS_instance->Trans_ID, ooaofooa_I_INS_instance->SM_ID );
  if ( ooaofooa_SM_TXNrelated_instance1 ) {
    ooaofooa_I_INS_R2953_Link_caused_last_state_change_to( ooaofooa_SM_TXNrelated_instance1, ooaofooa_I_INS_instance );
  }
  {
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_I_INS_instance->SMstt_ID, ooaofooa_I_INS_instance->SM_ID );
  if ( ooaofooa_SM_STATErelated_instance1 ) {
    ooaofooa_I_INS_R2915_Link_defines_state_of( ooaofooa_SM_STATErelated_instance1, ooaofooa_I_INS_instance );
  }
  }
  {
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIErelated_instance1 = (ooaofooa_CSME_CIE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_INS_instance->CIE_ID ];
  if ( ooaofooa_CSME_CIErelated_instance1 ) {
    ooaofooa_I_INS_R2962_Link_is_static_definition( ooaofooa_CSME_CIErelated_instance1, ooaofooa_I_INS_instance );
  }
  }
  {
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_INS_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_INS_R2957_Link_creates( ooaofooa_I_EXErelated_instance1, ooaofooa_I_INS_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_INS *
ooaofooa_I_INS_AnyWhere1( Escher_UniqueID_t w_Inst_ID )
{
  ooaofooa_I_INS * w; 
  Escher_Iterator_s iter_I_INS;
  Escher_IteratorReset( &iter_I_INS, &pG_ooaofooa_I_INS_extent.active );
  while ( (w = (ooaofooa_I_INS *) Escher_IteratorNext( &iter_I_INS )) != 0 ) {
    if ( w->Inst_ID == w_Inst_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_STATE TO I_INS ACROSS R2915
 */
void
ooaofooa_I_INS_R2915_Link_defines_state_of( ooaofooa_SM_STATE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMstt_ID = part->SMstt_ID;
  form->SM_STATE_R2915_occupies = part;
  Escher_SetInsertElement( &part->I_INS_R2915_defines_state_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_STATE FROM I_INS ACROSS R2915
 */
void
ooaofooa_I_INS_R2915_Unlink_defines_state_of( ooaofooa_SM_STATE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMstt_ID = 0;
  form->SM_STATE_R2915_occupies = 0;
  Escher_SetRemoveElement( &part->I_INS_R2915_defines_state_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_TXN TO I_INS ACROSS R2953
 */
void
ooaofooa_I_INS_R2953_Link_caused_last_state_change_to( ooaofooa_SM_TXN * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = part->Trans_ID;
  form->SM_ID = part->SM_ID;
  form->SM_TXN_R2953_entered_last_state_via = part;
  Escher_SetInsertElement( &part->I_INS_R2953_caused_last_state_change_to, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_TXN FROM I_INS ACROSS R2953
 */
void
ooaofooa_I_INS_R2953_Unlink_caused_last_state_change_to( ooaofooa_SM_TXN * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Trans_ID = 0;
  form->SM_TXN_R2953_entered_last_state_via = 0;
  Escher_SetRemoveElement( &part->I_INS_R2953_caused_last_state_change_to, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_EXE TO I_INS ACROSS R2957
 */
void
ooaofooa_I_INS_R2957_Link_creates( ooaofooa_I_EXE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2957_created_by = part;
  Escher_SetInsertElement( &part->I_INS_R2957_creates, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EXE FROM I_INS ACROSS R2957
 */
void
ooaofooa_I_INS_R2957_Unlink_creates( ooaofooa_I_EXE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = 0;
  form->I_EXE_R2957_created_by = 0;
  Escher_SetRemoveElement( &part->I_INS_R2957_creates, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CSME_CIE TO I_INS ACROSS R2962
 */
void
ooaofooa_I_INS_R2962_Link_is_static_definition( ooaofooa_CSME_CIE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIE_ID = part->CIE_ID;
  form->CSME_CIE_R2962_instance_of = part;
  Escher_SetInsertElement( &part->I_INS_R2962_is_static_definition, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CSME_CIE FROM I_INS ACROSS R2962
 */
void
ooaofooa_I_INS_R2962_Unlink_is_static_definition( ooaofooa_CSME_CIE * part, ooaofooa_I_INS * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIE_ID = 0;
  form->CSME_CIE_R2962_instance_of = 0;
  Escher_SetRemoveElement( &part->I_INS_R2962_is_static_definition, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_INS_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_INS * self = (ooaofooa_I_INS *) instance;
  printf( "INSERT INTO I_INS VALUES ( %ld,'%s',%ld,%ld,%ld,%ld,%ld,'%s','%s' );\n",
    ((long)self->Inst_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CIE_ID & ESCHER_IDDUMP_MASK),
    self->Label,
    self->Default_Name );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_INS_container[ ooaofooa_I_INS_MAX_EXTENT_SIZE ];
static ooaofooa_I_INS ooaofooa_I_INS_instances[ ooaofooa_I_INS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_INS_extent = {
  {0,0}, {0,0}, &ooaofooa_I_INS_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_INS_instances,
  sizeof( ooaofooa_I_INS ), 0, ooaofooa_I_INS_MAX_EXTENT_SIZE
  };


