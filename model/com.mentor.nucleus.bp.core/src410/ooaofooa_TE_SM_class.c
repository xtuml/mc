/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SM_class.c
 *
 * Class:       Extended State Machine  (TE_SM)
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
ooaofooa_TE_SM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SM * self = (ooaofooa_TE_SM *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->complete = ( '0' != *avlstring[ 2 ] );
  Escher_strcpy( self->initial_state, avlstring[ 3 ] );
  Escher_strcpy( self->SEMname, avlstring[ 4 ] );
  Escher_strcpy( self->action_array, avlstring[ 5 ] );
  Escher_strcpy( self->action_type, avlstring[ 6 ] );
  Escher_strcpy( self->events_union, avlstring[ 7 ] );
  Escher_strcpy( self->txn_action_array, avlstring[ 8 ] );
  self->txn_action_count = Escher_atoi( avlstring[ 9 ] );
  Escher_strcpy( self->state_names_array, avlstring[ 10 ] );
  self->num_states = Escher_atoi( avlstring[ 11 ] );
  self->num_events = Escher_atoi( avlstring[ 12 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  Escher_strcpy( self->te_classGeneratedName, avlstring[ 14 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SM * ooaofooa_TE_SM_instance = (ooaofooa_TE_SM *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SM_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_TE_SM_R2043_Link( ooaofooa_SM_SMrelated_instance1, ooaofooa_TE_SM_instance );
  }
  {
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = (ooaofooa_TE_CLASS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SM_instance->te_classGeneratedName ];
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_SM_R2072_Link( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_SM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_SM *
ooaofooa_TE_SM_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_SM * w; 
  Escher_Iterator_s iter_TE_SM;
  Escher_IteratorReset( &iter_TE_SM, &pG_ooaofooa_TE_SM_extent.active );
  while ( (w = (ooaofooa_TE_SM *) Escher_IteratorNext( &iter_TE_SM )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO TE_SM ACROSS R2043
 */
void
ooaofooa_TE_SM_R2043_Link( ooaofooa_SM_SM * part, ooaofooa_TE_SM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R2043 = part;
  part->TE_SM_R2043 = form;
}

/*
 * UNRELATE SM_SM FROM TE_SM ACROSS R2043
 */
void
ooaofooa_TE_SM_R2043_Unlink( ooaofooa_SM_SM * part, ooaofooa_TE_SM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SM_SM_R2043 = 0;
  part->TE_SM_R2043 = 0;
}

/*
 * RELATE TE_CLASS TO TE_SM ACROSS R2072
 */
void
ooaofooa_TE_SM_R2072_Link( ooaofooa_TE_CLASS * part, ooaofooa_TE_SM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_strcpy( form->te_classGeneratedName, part->GeneratedName );
  form->TE_CLASS_R2072 = part;
  Escher_SetInsertElement( &part->TE_SM_R2072, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_CLASS FROM TE_SM ACROSS R2072
 */
void
ooaofooa_TE_SM_R2072_Unlink( ooaofooa_TE_CLASS * part, ooaofooa_TE_SM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->te_classGeneratedName, 0, sizeof( form->te_classGeneratedName ) );
  form->TE_CLASS_R2072 = 0;
  Escher_SetRemoveElement( &part->TE_SM_R2072, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SM * self = (ooaofooa_TE_SM *) instance;
  printf( "INSERT INTO TE_SM VALUES ( %ld,%d,'%s','%s','%s','%s','%s','%s',%d,'%s',%d,%d,%ld,'%s' );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->complete,
    self->initial_state,
    self->SEMname,
    self->action_array,
    self->action_type,
    self->events_union,
    self->txn_action_array,
    self->txn_action_count,
    self->state_names_array,
    self->num_states,
    self->num_events,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    self->te_classGeneratedName );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SM_container[ ooaofooa_TE_SM_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SM ooaofooa_TE_SM_instances[ ooaofooa_TE_SM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SM_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SM_instances,
  sizeof( ooaofooa_TE_SM ), 0, ooaofooa_TE_SM_MAX_EXTENT_SIZE
  };


