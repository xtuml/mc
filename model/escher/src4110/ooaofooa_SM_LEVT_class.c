/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_LEVT_class.c
 *
 * Class:       Local Event  (SM_LEVT)
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
ooaofooa_SM_LEVT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_LEVT * self = (ooaofooa_SM_LEVT *) instance;
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
void ooaofooa_SM_LEVT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_LEVT * ooaofooa_SM_LEVT_instance = (ooaofooa_SM_LEVT *) instance;
  ooaofooa_SM_SEVT * ooaofooa_SM_SEVTrelated_instance1 = ooaofooa_SM_SEVT_AnyWhere1( ooaofooa_SM_LEVT_instance->SMevt_ID, ooaofooa_SM_LEVT_instance->SM_ID, ooaofooa_SM_LEVT_instance->SMspd_ID );
  if ( ooaofooa_SM_SEVTrelated_instance1 ) {
    ooaofooa_SM_LEVT_R526_Link( ooaofooa_SM_SEVTrelated_instance1, ooaofooa_SM_LEVT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_LEVT *
ooaofooa_SM_LEVT_AnyWhere1( Escher_UniqueID_t w_SMevt_ID, Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_LEVT * w; 
  Escher_Iterator_s iter_SM_LEVT;
  Escher_IteratorReset( &iter_SM_LEVT, &pG_ooaofooa_SM_LEVT_extent.active );
  while ( (w = (ooaofooa_SM_LEVT *) Escher_IteratorNext( &iter_SM_LEVT )) != 0 ) {
    if ( w->SMevt_ID == w_SMevt_ID && w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SEVT TO SM_LEVT ACROSS R526
 */
void
ooaofooa_SM_LEVT_R526_Link( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_LEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMevt_ID = supertype->SMevt_ID;
  subtype->SM_ID = supertype->SM_ID;
  subtype->SMspd_ID = supertype->SMspd_ID;
  /* Optimized linkage for SM_LEVT->SM_SEVT[R526] */
  subtype->SM_SEVT_R526 = supertype;
  /* Optimized linkage for SM_SEVT->SM_LEVT[R526] */
  supertype->R526_subtype = subtype;
  supertype->R526_object_id = ooaofooa_SM_LEVT_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SEVT FROM SM_LEVT ACROSS R526
 */
void
ooaofooa_SM_LEVT_R526_Unlink( ooaofooa_SM_SEVT * supertype, ooaofooa_SM_LEVT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SMspd_ID = 0;
  subtype->SM_SEVT_R526 = 0;
  supertype->R526_subtype = 0;
  supertype->R526_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_LEVT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_LEVT * self = (ooaofooa_SM_LEVT *) instance;
  printf( "INSERT INTO SM_LEVT VALUES ( %ld,%ld,%ld );\n",
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
static Escher_SetElement_s ooaofooa_SM_LEVT_container[ ooaofooa_SM_LEVT_MAX_EXTENT_SIZE ];
static ooaofooa_SM_LEVT ooaofooa_SM_LEVT_instances[ ooaofooa_SM_LEVT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_LEVT_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_LEVT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_LEVT_instances,
  sizeof( ooaofooa_SM_LEVT ), 0, ooaofooa_SM_LEVT_MAX_EXTENT_SIZE
  };


