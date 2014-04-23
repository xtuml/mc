/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_TXN_class.c
 *
 * Class:       Transition  (SM_TXN)
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
ooaofooa_SM_TXN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_TXN * self = (ooaofooa_SM_TXN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Trans_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Trans_ID;
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_TXN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_TXN * ooaofooa_SM_TXN_instance = (ooaofooa_SM_TXN *) instance;
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere2( ooaofooa_SM_TXN_instance->SMstt_ID, ooaofooa_SM_TXN_instance->SM_ID, ooaofooa_SM_TXN_instance->SMspd_ID );
  if ( ooaofooa_SM_STATErelated_instance1 ) {
    ooaofooa_SM_TXN_R506_Link_is_destination_of( ooaofooa_SM_STATErelated_instance1, ooaofooa_SM_TXN_instance );
  }
  {
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_TXN_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_TXN_R505_Link_contains( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_TXN_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_TXN *
ooaofooa_SM_TXN_AnyWhere1( Escher_UniqueID_t w_Trans_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_TXN * w; 
  Escher_Iterator_s iter_SM_TXN;
  Escher_IteratorReset( &iter_SM_TXN, &pG_ooaofooa_SM_TXN_extent.active );
  while ( (w = (ooaofooa_SM_TXN *) Escher_IteratorNext( &iter_SM_TXN )) != 0 ) {
    if ( w->Trans_ID == w_Trans_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_TXN ACROSS R505
 */
void
ooaofooa_SM_TXN_R505_Link_contains( ooaofooa_SM_SM * part, ooaofooa_SM_TXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SM_SM_R505 = part;
  Escher_SetInsertElement( &part->SM_TXN_R505_contains, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_SM FROM SM_TXN ACROSS R505
 */
void
ooaofooa_SM_TXN_R505_Unlink_contains( ooaofooa_SM_SM * part, ooaofooa_SM_TXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_SM_R505 = 0;
  Escher_SetRemoveElement( &part->SM_TXN_R505_contains, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SM_STATE TO SM_TXN ACROSS R506
 */
void
ooaofooa_SM_TXN_R506_Link_is_destination_of( ooaofooa_SM_STATE * part, ooaofooa_SM_TXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMspd_ID = part->SMspd_ID;
  form->SMstt_ID = part->SMstt_ID;
  form->SM_ID = part->SM_ID;
  form->SM_STATE_R506_is_destined_to = part;
  Escher_SetInsertElement( &part->SM_TXN_R506_is_destination_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SM_STATE FROM SM_TXN ACROSS R506
 */
void
ooaofooa_SM_TXN_R506_Unlink_is_destination_of( ooaofooa_SM_STATE * part, ooaofooa_SM_TXN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMstt_ID = 0;
  form->SMspd_ID = 0;
  form->SM_STATE_R506_is_destined_to = 0;
  Escher_SetRemoveElement( &part->SM_TXN_R506_is_destination_of, (Escher_ObjectSet_s *) form );
}

/* Accessors to SM_TXN[R507] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_TXN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_TXN * self = (ooaofooa_SM_TXN *) instance;
  printf( "INSERT INTO SM_TXN VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Trans_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_TXN_container[ ooaofooa_SM_TXN_MAX_EXTENT_SIZE ];
static ooaofooa_SM_TXN ooaofooa_SM_TXN_instances[ ooaofooa_SM_TXN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_TXN_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_TXN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_TXN_instances,
  sizeof( ooaofooa_SM_TXN ), 0, ooaofooa_SM_TXN_MAX_EXTENT_SIZE
  };


