/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MOORE_class.c
 *
 * Class:       Moore State Machine  (SM_MOORE)
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
ooaofooa_SM_MOORE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SM_MOORE * self = (ooaofooa_SM_MOORE *) instance;
  /* Initialize application analysis class attributes.  */
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SM_MOORE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SM_MOORE * ooaofooa_SM_MOORE_instance = (ooaofooa_SM_MOORE *) instance;
  ooaofooa_SM_SM * ooaofooa_SM_SMrelated_instance1 = (ooaofooa_SM_SM *) Escher_instance_cache[ (intptr_t) ooaofooa_SM_MOORE_instance->SM_ID ];
  if ( ooaofooa_SM_SMrelated_instance1 ) {
    ooaofooa_SM_MOORE_R510_Link( ooaofooa_SM_SMrelated_instance1, ooaofooa_SM_MOORE_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_SM_MOORE *
ooaofooa_SM_MOORE_AnyWhere1( Escher_UniqueID_t w_SM_ID )
{
  ooaofooa_SM_MOORE * w; 
  Escher_Iterator_s iter_SM_MOORE;
  Escher_IteratorReset( &iter_SM_MOORE, &pG_ooaofooa_SM_MOORE_extent.active );
  while ( (w = (ooaofooa_SM_MOORE *) Escher_IteratorNext( &iter_SM_MOORE )) != 0 ) {
    if ( w->SM_ID == w_SM_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SM_SM TO SM_MOORE ACROSS R510
 */
void
ooaofooa_SM_MOORE_R510_Link( ooaofooa_SM_SM * supertype, ooaofooa_SM_MOORE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SM_ID = supertype->SM_ID;
  /* Optimized linkage for SM_MOORE->SM_SM[R510] */
  subtype->SM_SM_R510 = supertype;
  /* Optimized linkage for SM_SM->SM_MOORE[R510] */
  supertype->R510_subtype = subtype;
  supertype->R510_object_id = ooaofooa_SM_MOORE_CLASS_NUMBER;
}


/*
 * UNRELATE SM_SM FROM SM_MOORE ACROSS R510
 */
void
ooaofooa_SM_MOORE_R510_Unlink( ooaofooa_SM_SM * supertype, ooaofooa_SM_MOORE * subtype )
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
ooaofooa_SM_MOORE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SM_MOORE * self = (ooaofooa_SM_MOORE *) instance;
  printf( "INSERT INTO SM_MOORE VALUES ( %ld );\n",
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SM_MOORE_container[ ooaofooa_SM_MOORE_MAX_EXTENT_SIZE ];
static ooaofooa_SM_MOORE ooaofooa_SM_MOORE_instances[ ooaofooa_SM_MOORE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SM_MOORE_extent = {
  {0,0}, {0,0}, &ooaofooa_SM_MOORE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SM_MOORE_instances,
  sizeof( ooaofooa_SM_MOORE ), 0, ooaofooa_SM_MOORE_MAX_EXTENT_SIZE
  };


