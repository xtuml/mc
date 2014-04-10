/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SEVT_class.c
 *
 * Class:       SEM Event  (SM_SEVT)
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
ooaofooa_SM_SEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_SEVT * self = (ooaofooa_SM_SEVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_SEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_SEVT * ooaofooa_SM_SEVT_instance = (ooaofooa_SM_SEVT *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = ooaofooa_SM_EVT_AnyWhere2( ooaofooa_SM_SEVT_instance->SMevt_ID, ooaofooa_SM_SEVT_instance->SM_ID, ooaofooa_SM_SEVT_instance->SMspd_ID );
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_SM_SEVT_R525_Link( ooaofooa_SM_EVTrelated_instance1, ooaofooa_SM_SEVT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_SEVT *
ooaofooa_SM_SEVT_AnyWhere1( Escher_UniqueID_t w_SMevt_ID, Escher_UniqueID_t w_SM_ID, Escher_UniqueID_t w_SMspd_ID )
{
  ooaofooa_SM_SEVT * w; 
  Escher_Iterator_s iter_SM_SEVT;
  Escher_IteratorReset( &iter_SM_SEVT, &pG_ooaofooa_SM_SEVT_extent.active );
  while ( (w = (ooaofooa_SM_SEVT *) Escher_IteratorNext( &iter_SM_SEVT )) != 0 ) {
    if ( w->SMevt_ID == w_SMevt_ID && w->SM_ID == w_SM_ID && w->SMspd_ID == w_SMspd_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_EVT TO SM_SEVT ACROSS R525
 */
void
ooaofooa_SM_SEVT_R525_Link( ooaofooa_SM_EVT * supertype, ooaofooa_SM_SEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SMspd_ID = supertype->SMspd_ID;
  /* Optimized linkage for SM_SEVT->SM_EVT[R525] */
  subtype->SM_EVT_R525 = supertype;
  /* Optimized linkage for SM_EVT->SM_SEVT[R525] */
  supertype->R525_subtype = subtype;
  supertype->R525_object_id = ooaofooa_SM_SEVT_CLASS_NUMBER;
}


/*
 * UNRELATE SM_EVT FROM SM_SEVT ACROSS R525
 */
void
ooaofooa_SM_SEVT_R525_Unlink( ooaofooa_SM_EVT * supertype, ooaofooa_SM_SEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_EVT_R525 = 0;
  supertype->R525_subtype = 0;
  supertype->R525_object_id = 0;
}


/* Accessors to SM_SEVT[R526] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_SEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_SEVT * self = (ooaofooa_SM_SEVT *) instance;
  printf( "INSERT INTO SM_SEVT VALUES ( %ld,%ld,%ld );\n",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_SEVT_container[ ooaofooa_SM_SEVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_SEVT ooaofooa_SM_SEVT_instances[ ooaofooa_SM_SEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_SEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_SEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_SEVT_instances,
  sizeof( ooaofooa_SM_SEVT ), 0, ooaofooa_SM_SEVT_MAX_EXTENT_SIZE
  };


