/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FNC_class.c
 *
 * Class:       Function Invocation  (ACT_FNC)
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
ooaofooa_ACT_FNC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_FNC * self = (ooaofooa_ACT_FNC *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->functionNameLineNumber = Escher_atoi( avlstring[ 3 ] );
  self->functionNameColumn = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_FNC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FNC * ooaofooa_ACT_FNC_instance = (ooaofooa_ACT_FNC *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FNC_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_FNC_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_FNC_instance );
  }
  {
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_ACT_FNC_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_ACT_FNC_R675_Link( ooaofooa_S_SYNCrelated_instance1, ooaofooa_ACT_FNC_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_FNC *
ooaofooa_ACT_FNC_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_FNC * w; 
  Escher_Iterator_s iter_ACT_FNC;
  Escher_IteratorReset( &iter_ACT_FNC, &pG_ooaofooa_ACT_FNC_extent.active );
  while ( (w = (ooaofooa_ACT_FNC *) Escher_IteratorNext( &iter_ACT_FNC )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_FNC ACROSS R603
 */
void
ooaofooa_ACT_FNC_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_FNC->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_FNC[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_FNC_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_FNC ACROSS R603
 */
void
ooaofooa_ACT_FNC_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FNC * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE S_SYNC TO ACT_FNC ACROSS R675
 */
void
ooaofooa_ACT_FNC_R675_Link( ooaofooa_S_SYNC * part, ooaofooa_ACT_FNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R675_is_an_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_FNC_R675, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM ACT_FNC ACROSS R675
 */
void
ooaofooa_ACT_FNC_R675_Unlink( ooaofooa_S_SYNC * part, ooaofooa_ACT_FNC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R675_is_an_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_FNC_R675, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_FNC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FNC * self = (ooaofooa_ACT_FNC *) instance;
  printf( "INSERT INTO ACT_FNC VALUES ( %ld,%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK),
    self->functionNameLineNumber,
    self->functionNameColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_FNC_container[ ooaofooa_ACT_FNC_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_FNC ooaofooa_ACT_FNC_instances[ ooaofooa_ACT_FNC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_FNC_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_FNC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_FNC_instances,
  sizeof( ooaofooa_ACT_FNC ), 0, ooaofooa_ACT_FNC_MAX_EXTENT_SIZE
  };


