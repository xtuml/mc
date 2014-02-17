/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_PEVT_class.c
 *
 * Class:       Polymorphic Event  (SM_PEVT)
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
ooaofooa_SM_PEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_PEVT * self = (ooaofooa_SM_PEVT *) instance;
  /* Initialize application analysis class attributes.  */
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SMspd_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->localClassName = Escher_strcpy( self->localClassName, avlstring[ 4 ] );
  self->localClassKL = Escher_strcpy( self->localClassKL, avlstring[ 5 ] );
  self->localEventMning = Escher_strcpy( self->localEventMning, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_PEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_PEVT * ooaofooa_SM_PEVT_instance = (ooaofooa_SM_PEVT *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = ooaofooa_SM_EVT_AnyWhere2( ooaofooa_SM_PEVT_instance->SMevt_ID, ooaofooa_SM_PEVT_instance->SM_ID, ooaofooa_SM_PEVT_instance->SMspd_ID );
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_SM_PEVT_R525_Link( ooaofooa_SM_EVTrelated_instance1, ooaofooa_SM_PEVT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_PEVT *
ooaofooa_SM_PEVT_AnyWhere1( Escher_UniqueID_t w_SMevt_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_PEVT * w; 
  Escher_Iterator_s iter_SM_PEVT;
  Escher_IteratorReset( &iter_SM_PEVT, &pG_ooaofooa_SM_PEVT_extent.active );
  while ( (w = (ooaofooa_SM_PEVT *) Escher_IteratorNext( &iter_SM_PEVT )) != 0 ) {
    if ( w->SMevt_ID == w_SMevt_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_EVT TO SM_PEVT ACROSS R525
 */
void
ooaofooa_SM_PEVT_R525_Link( ooaofooa_SM_EVT * supertype, ooaofooa_SM_PEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SMspd_ID = supertype->SMspd_ID;
  /* Optimized linkage for SM_PEVT->SM_EVT[R525] */
  subtype->SM_EVT_R525 = supertype;
  /* Optimized linkage for SM_EVT->SM_PEVT[R525] */
  supertype->R525_subtype = subtype;
  supertype->R525_object_id = ooaofooa_SM_PEVT_CLASS_NUMBER;
}


/*
 * UNRELATE SM_EVT FROM SM_PEVT ACROSS R525
 */
void
ooaofooa_SM_PEVT_R525_Unlink( ooaofooa_SM_EVT * supertype, ooaofooa_SM_PEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMspd_ID = 0;
  subtype->SM_EVT_R525 = 0;
  supertype->R525_subtype = 0;
  supertype->R525_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_PEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_PEVT * self = (ooaofooa_SM_PEVT *) instance;
  printf( "INSERT INTO SM_PEVT VALUES ( %ld,%ld,%ld,'%s','%s','%s' );\n",
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMspd_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->localClassName ) ? self->localClassName : "",
    ( 0 != self->localClassKL ) ? self->localClassKL : "",
    ( 0 != self->localEventMning ) ? self->localEventMning : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_PEVT_container[ ooaofooa_SM_PEVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_PEVT ooaofooa_SM_PEVT_instances[ ooaofooa_SM_PEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_PEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_PEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_PEVT_instances,
  sizeof( ooaofooa_SM_PEVT ), 0, ooaofooa_SM_PEVT_MAX_EXTENT_SIZE
  };


