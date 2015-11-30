/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MEALY_class.c
 *
 * Class:       Mealy State Machine  (SM_MEALY)
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
ooaofooa_SM_MEALY_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_MEALY * self = (ooaofooa_SM_MEALY *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_MEALY_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_MEALY * ooaofooa_SM_MEALY_instance = (ooaofooa_SM_MEALY *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_MEALY_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_MEALY_R510_Link( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_MEALY_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_MEALY *
ooaofooa_SM_MEALY_AnyWhere1( Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_MEALY * w; 
  Escher_Iterator_s iter_SM_MEALY;
  Escher_IteratorReset( &iter_SM_MEALY, &pG_ooaofooa_SM_MEALY_extent.active );
  while ( (w = (ooaofooa_SM_MEALY *) Escher_IteratorNext( &iter_SM_MEALY )) != 0 ) {
    if ( w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_MEALY ACROSS R510
 */
void
ooaofooa_SM_MEALY_R510_Link( ooaofooa_SM_SM * supertype, ooaofooa_SM_MEALY * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_MEALY->SM_SM[R510] */
  subtype->SM_SM_R510 = supertype;
  /* Optimized linkage for SM_SM->SM_MEALY[R510] */
  supertype->R510_subtype = subtype;
  supertype->R510_object_id = ooaofooa_SM_MEALY_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SM FROM SM_MEALY ACROSS R510
 */
void
ooaofooa_SM_MEALY_R510_Unlink( ooaofooa_SM_SM * supertype, ooaofooa_SM_MEALY * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_SM_R510 = 0;
  supertype->R510_subtype = 0;
  supertype->R510_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SM_MEALY_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_MEALY * self = (ooaofooa_SM_MEALY *) instance;
  printf( "INSERT INTO SM_MEALY VALUES ( %ld );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_MEALY_container[ ooaofooa_SM_MEALY_MAX_EXTENT_SIZE ];
static ooaofooa_SM_MEALY ooaofooa_SM_MEALY_instances[ ooaofooa_SM_MEALY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_MEALY_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_MEALY_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_MEALY_instances,
  sizeof( ooaofooa_SM_MEALY ), 0, ooaofooa_SM_MEALY_MAX_EXTENT_SIZE
  };


