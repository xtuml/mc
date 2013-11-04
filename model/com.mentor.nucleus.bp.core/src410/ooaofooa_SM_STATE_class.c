/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_STATE_class.c
 *
 * Class:       State Machine State  (SM_STATE)
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
ooaofooa_SM_STATE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_STATE * self = (ooaofooa_SM_STATE *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->SMstt_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Name, avlstring[ 4 ] );
  self->Numb = Escher_atoi( avlstring[ 5 ] );
  self->Final = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_STATE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_STATE * ooaofooa_SM_STATE_instance = (ooaofooa_SM_STATE *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_STATE_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_STATE_R501_Link_is_decomposed_into( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_STATE_instance );
  }
  {
  ooaofooa_SM_SUPDT * ooaofooa_SM_SUPDTrelated_instance1 = ooaofooa_SM_SUPDT_AnyWhere1( ooaofooa_SM_STATE_instance->SMspd_ID, ooaofooa_SM_STATE_instance->SM_ID );
  if ( ooaofooa_SM_SUPDTrelated_instance1 ) {
    ooaofooa_SM_STATE_R521_Link_is_delivered_by_received_event_to( ooaofooa_SM_SUPDTrelated_instance1, ooaofooa_SM_STATE_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_STATE *
ooaofooa_SM_STATE_AnyWhere1( Escher_UniqueID_t w_SMstt_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_STATE * w; 
  Escher_Iterator_s iter_SM_STATE;
  Escher_IteratorReset( &iter_SM_STATE, &pG_ooaofooa_SM_STATE_extent.active );
  while ( (w = (ooaofooa_SM_STATE *) Escher_IteratorNext( &iter_SM_STATE )) != 0 ) {
    if ( w->SMstt_ID == w_SMstt_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_STATE *
ooaofooa_SM_STATE_AnyWhere2( Escher_UniqueID_t w_SMstt_ID, Escher_UniqueID_t w_SM_ID, Escher_UniqueID_t w_SMspd_ID )
{
  ooaofooa_SM_STATE * w; 
  Escher_Iterator_s iter_SM_STATE;
  Escher_IteratorReset( &iter_SM_STATE, &pG_ooaofooa_SM_STATE_extent.active );
  while ( (w = (ooaofooa_SM_STATE *) Escher_IteratorNext( &iter_SM_STATE )) != 0 ) {
    if ( w->SMstt_ID == w_SMstt_ID && w->SM_ID == w_SM_ID && w->SMspd_ID == w_SMspd_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_STATE ACROSS R501
 */
void
ooaofooa_SM_STATE_R501_Link_is_decomposed_into( ooaofooa_SM_SM * part, ooaofooa_SM_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R501 = part;
  Escher_SetInsertElement( &part->SM_STATE_R501_is_decomposed_into, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_STATE ACROSS R501
 */
void
ooaofooa_SM_STATE_R501_Unlink_is_decomposed_into( ooaofooa_SM_SM * part, ooaofooa_SM_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R501 = 0;
  Escher_SetRemoveElement( &part->SM_STATE_R501_is_decomposed_into, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_SUPDT TO SM_STATE ACROSS R521
 */
void
ooaofooa_SM_STATE_R521_Link_is_delivered_by_received_event_to( ooaofooa_SM_SUPDT * part, ooaofooa_SM_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMspd_ID = part->SMspd_ID;
  form->SM_ID = part->SM_ID;
  form->SM_SUPDT_R521_receives_asynchronous_data_via = part;
  Escher_SetInsertElement( &part->SM_STATE_R521_is_delivered_by_received_event_to, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SUPDT FROM SM_STATE ACROSS R521
 */
void
ooaofooa_SM_STATE_R521_Unlink_is_delivered_by_received_event_to( ooaofooa_SM_SUPDT * part, ooaofooa_SM_STATE * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SUPDT_R521_receives_asynchronous_data_via = 0;
  Escher_SetRemoveElement( &part->SM_STATE_R521_is_delivered_by_received_event_to, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_STATE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_STATE * self = (ooaofooa_SM_STATE *) instance;
  printf( "INSERT INTO SM_STATE VALUES ( %ld,%ld,%ld,'%s',%d,%d );\n",
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->Numb,
    self->Final );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_STATE_container[ ooaofooa_SM_STATE_MAX_EXTENT_SIZE ];
static ooaofooa_SM_STATE ooaofooa_SM_STATE_instances[ ooaofooa_SM_STATE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_STATE_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_STATE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_STATE_instances,
  sizeof( ooaofooa_SM_STATE ), 0, ooaofooa_SM_STATE_MAX_EXTENT_SIZE
  };


