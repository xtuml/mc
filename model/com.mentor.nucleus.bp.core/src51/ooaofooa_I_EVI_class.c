/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EVI_class.c
 *
 * Class:       Pending Event  (I_EVI)
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
ooaofooa_I_EVI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_EVI * self = (ooaofooa_I_EVI *) instance;
  /* Initialize application analysis class attributes.  */
  self->Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Event_ID;
  self->isExecuting = ( '0' != *avlstring[ 2 ] );
  self->isCreation = ( '0' != *avlstring[ 3 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Target_Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->nextEvent_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Sent_By_Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->next_self_Event_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Sent_By_CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->CIE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->Originating_Execution_Engine_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 13 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_EVI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_EVI * ooaofooa_I_EVI_instance = (ooaofooa_I_EVI *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_I_EVI_R2906_Link_has_instances( ooaofooa_SM_EVTrelated_instance1, ooaofooa_I_EVI_instance );
  }
  {
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIErelated_instance1 = (ooaofooa_CSME_CIE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Sent_By_CIE_ID ];
  if ( ooaofooa_CSME_CIErelated_instance1 ) {
    ooaofooa_I_EVI_R2931_Link_has_waiting( ooaofooa_CSME_CIErelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_CSME_CIE * ooaofooa_CSME_CIErelated_instance1 = (ooaofooa_CSME_CIE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->CIE_ID ];
  if ( ooaofooa_CSME_CIErelated_instance1 ) {
    ooaofooa_I_EVI_R2938_Link_sends( ooaofooa_CSME_CIErelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance1 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->nextEvent_ID ];
  if ( ooaofooa_I_EVIrelated_instance1 ) {
    ooaofooa_I_EVI_R2908_Link_will_be_processed_before( ooaofooa_I_EVIrelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Target_Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_EVI_R2907_Link_has_waiting( ooaofooa_I_INSrelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Target_Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_EVI_R2935_Link_is_target_of( ooaofooa_I_INSrelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Sent_By_Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_EVI_R2937_Link_sends( ooaofooa_I_INSrelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_EVI * ooaofooa_I_EVIrelated_instance1 = (ooaofooa_I_EVI *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->next_self_Event_ID ];
  if ( ooaofooa_I_EVIrelated_instance1 ) {
    ooaofooa_I_EVI_R2939_Link_will_be_processed_after( ooaofooa_I_EVIrelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_EVI_R2964_Link_houses( ooaofooa_I_EXErelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
  {
  ooaofooa_I_EXE * ooaofooa_I_EXErelated_instance1 = (ooaofooa_I_EXE *) Escher_instance_cache[ (intptr_t) ooaofooa_I_EVI_instance->Originating_Execution_Engine_ID ];
  if ( ooaofooa_I_EXErelated_instance1 ) {
    ooaofooa_I_EVI_R2976_Link_sends( ooaofooa_I_EXErelated_instance1, ooaofooa_I_EVI_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_EVI *
ooaofooa_I_EVI_AnyWhere1( Escher_UniqueID_t w_Event_ID )
{
  ooaofooa_I_EVI * w; 
  Escher_Iterator_s iter_I_EVI;
  Escher_IteratorReset( &iter_I_EVI, &pG_ooaofooa_I_EVI_extent.active );
  while ( (w = (ooaofooa_I_EVI *) Escher_IteratorNext( &iter_I_EVI )) != 0 ) {
    if ( w->Event_ID == w_Event_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_EVT TO I_EVI ACROSS R2906
 */
void
ooaofooa_I_EVI_R2906_Link_has_instances( ooaofooa_SM_EVT * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R2906_is_instance_of = part;
  Escher_SetInsertElement( &part->I_EVI_R2906_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_EVT FROM I_EVI ACROSS R2906
 */
void
ooaofooa_I_EVI_R2906_Unlink_has_instances( ooaofooa_SM_EVT * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R2906_is_instance_of = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2906_has_instances, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_INS TO I_EVI ACROSS R2907
 */
void
ooaofooa_I_EVI_R2907_Link_has_waiting( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Target_Inst_ID = part->Inst_ID;
  form->I_INS_R2907_is_pending_for = part;
  Escher_SetInsertElement( &part->I_EVI_R2907_has_waiting, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_EVI ACROSS R2907
 */
void
ooaofooa_I_EVI_R2907_Unlink_has_waiting( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->I_INS_R2907_is_pending_for = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2907_has_waiting, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> I_EVI TO <right> I_EVI ACROSS R2908.'will be processed after'
 */
void
ooaofooa_I_EVI_R2908_Link_will_be_processed_after( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextEvent_ID = right->Event_ID;
  left->I_EVI_R2908_will_be_processed_after = right; /* SR L1 */
  right->I_EVI_R2908_will_be_processed_before = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_EVI FROM <right> I_EVI ACROSS R2908.'will be processed after'
 */
void
ooaofooa_I_EVI_R2908_Unlink_will_be_processed_after( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextEvent_ID = 0;
  left->I_EVI_R2908_will_be_processed_after = 0; /* SR U1 */
  right->I_EVI_R2908_will_be_processed_before = 0; /* SR U2 */
}

/*
 * RELATE <left> I_EVI TO <right> I_EVI ACROSS R2908.'will be processed before'
 */
void
ooaofooa_I_EVI_R2908_Link_will_be_processed_before( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextEvent_ID = left->Event_ID;
  right->I_EVI_R2908_will_be_processed_after = left; /* SR L4 */
  left->I_EVI_R2908_will_be_processed_before = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_EVI FROM <right> I_EVI ACROSS R2908.'will be processed before'
 */
void
ooaofooa_I_EVI_R2908_Unlink_will_be_processed_before( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextEvent_ID = 0;
  right->I_EVI_R2908_will_be_processed_after = 0; /* SR U4 */
  left->I_EVI_R2908_will_be_processed_before = 0; /* SR U5 */
}

/*
 * RELATE CSME_CIE TO I_EVI ACROSS R2931
 */
void
ooaofooa_I_EVI_R2931_Link_has_waiting( ooaofooa_CSME_CIE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sent_By_CIE_ID = part->CIE_ID;
  form->CSME_CIE_R2931_has_target = part;
  Escher_SetInsertElement( &part->I_EVI_R2931_has_waiting, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CSME_CIE FROM I_EVI ACROSS R2931
 */
void
ooaofooa_I_EVI_R2931_Unlink_has_waiting( ooaofooa_CSME_CIE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sent_By_CIE_ID = 0;
  form->CSME_CIE_R2931_has_target = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2931_has_waiting, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_INS TO I_EVI ACROSS R2935
 */
void
ooaofooa_I_EVI_R2935_Link_is_target_of( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Target_Inst_ID = part->Inst_ID;
  form->I_INS_R2935_targets = part;
  Escher_SetInsertElement( &part->I_EVI_R2935_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_EVI ACROSS R2935
 */
void
ooaofooa_I_EVI_R2935_Unlink_is_target_of( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->I_INS_R2935_targets = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2935_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_INS TO I_EVI ACROSS R2937
 */
void
ooaofooa_I_EVI_R2937_Link_sends( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sent_By_Inst_ID = part->Inst_ID;
  form->I_INS_R2937_was_sent_from = part;
  Escher_SetInsertElement( &part->I_EVI_R2937_sends, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_EVI ACROSS R2937
 */
void
ooaofooa_I_EVI_R2937_Unlink_sends( ooaofooa_I_INS * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sent_By_Inst_ID = 0;
  form->I_INS_R2937_was_sent_from = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2937_sends, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE CSME_CIE TO I_EVI ACROSS R2938
 */
void
ooaofooa_I_EVI_R2938_Link_sends( ooaofooa_CSME_CIE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIE_ID = part->CIE_ID;
  form->CSME_CIE_R2938_was_sent_from = part;
  Escher_SetInsertElement( &part->I_EVI_R2938_sends, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE CSME_CIE FROM I_EVI ACROSS R2938
 */
void
ooaofooa_I_EVI_R2938_Unlink_sends( ooaofooa_CSME_CIE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->CIE_ID = 0;
  form->CSME_CIE_R2938_was_sent_from = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2938_sends, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> I_EVI TO <right> I_EVI ACROSS R2939.'will be processed before'
 */
void
ooaofooa_I_EVI_R2939_Link_will_be_processed_before( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_self_Event_ID = right->Event_ID;
  left->I_EVI_R2939_will_be_processed_before = right; /* SR L1 */
  right->I_EVI_R2939_will_be_processed_after = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_EVI FROM <right> I_EVI ACROSS R2939.'will be processed before'
 */
void
ooaofooa_I_EVI_R2939_Unlink_will_be_processed_before( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->next_self_Event_ID = 0;
  left->I_EVI_R2939_will_be_processed_before = 0; /* SR U1 */
  right->I_EVI_R2939_will_be_processed_after = 0; /* SR U2 */
}

/*
 * RELATE <left> I_EVI TO <right> I_EVI ACROSS R2939.'will be processed after'
 */
void
ooaofooa_I_EVI_R2939_Link_will_be_processed_after( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_self_Event_ID = left->Event_ID;
  right->I_EVI_R2939_will_be_processed_before = left; /* SR L4 */
  left->I_EVI_R2939_will_be_processed_after = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_EVI FROM <right> I_EVI ACROSS R2939.'will be processed after'
 */
void
ooaofooa_I_EVI_R2939_Unlink_will_be_processed_after( ooaofooa_I_EVI * left, ooaofooa_I_EVI * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->next_self_Event_ID = 0;
  right->I_EVI_R2939_will_be_processed_before = 0; /* SR U4 */
  left->I_EVI_R2939_will_be_processed_after = 0; /* SR U5 */
}

/*
 * RELATE I_EXE TO I_EVI ACROSS R2964
 */
void
ooaofooa_I_EVI_R2964_Link_houses( ooaofooa_I_EXE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2964_is_pending_in = part;
  Escher_SetInsertElement( &part->I_EVI_R2964_houses, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EXE FROM I_EVI ACROSS R2964
 */
void
ooaofooa_I_EVI_R2964_Unlink_houses( ooaofooa_I_EXE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Execution_Engine_ID = 0;
  form->I_EXE_R2964_is_pending_in = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2964_houses, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_EXE TO I_EVI ACROSS R2976
 */
void
ooaofooa_I_EVI_R2976_Link_sends( ooaofooa_I_EXE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Originating_Execution_Engine_ID = part->Execution_Engine_ID;
  form->I_EXE_R2976_originates_from = part;
  Escher_SetInsertElement( &part->I_EVI_R2976_sends, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_EXE FROM I_EVI ACROSS R2976
 */
void
ooaofooa_I_EVI_R2976_Unlink_sends( ooaofooa_I_EXE * part, ooaofooa_I_EVI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Originating_Execution_Engine_ID = 0;
  form->I_EXE_R2976_originates_from = 0;
  Escher_SetRemoveElement( &part->I_EVI_R2976_sends, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_EVI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_EVI * self = (ooaofooa_I_EVI *) instance;
  printf( "INSERT INTO I_EVI VALUES ( %ld,%d,%d,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,%ld,'%s' );\n",
    ((long)self->Event_ID & ESCHER_IDDUMP_MASK),
    self->isExecuting,
    self->isCreation,
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Target_Inst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextEvent_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sent_By_Inst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->next_self_Event_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sent_By_CIE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CIE_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Originating_Execution_Engine_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_EVI_container[ ooaofooa_I_EVI_MAX_EXTENT_SIZE ];
static ooaofooa_I_EVI ooaofooa_I_EVI_instances[ ooaofooa_I_EVI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_EVI_extent = {
  {0,0}, {0,0}, &ooaofooa_I_EVI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_EVI_instances,
  sizeof( ooaofooa_I_EVI ), 0, ooaofooa_I_EVI_MAX_EXTENT_SIZE
  };


