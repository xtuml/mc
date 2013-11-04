/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EDT_class.c
 *
 * Class:       Enumeration Data Type  (S_EDT)
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
ooaofooa_S_EDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_EDT * self = (ooaofooa_S_EDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_EDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_EDT * ooaofooa_S_EDT_instance = (ooaofooa_S_EDT *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_EDT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_EDT_R17_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_EDT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_EDT *
ooaofooa_S_EDT_AnyWhere1( Escher_UniqueID_t w_DT_ID )
{
  ooaofooa_S_EDT * w; 
  Escher_Iterator_s iter_S_EDT;
  Escher_IteratorReset( &iter_S_EDT, &pG_ooaofooa_S_EDT_extent.active );
  while ( (w = (ooaofooa_S_EDT *) Escher_IteratorNext( &iter_S_EDT )) != 0 ) {
    if ( w->DT_ID == w_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DT TO S_EDT ACROSS R17
 */
void
ooaofooa_S_EDT_R17_Link( ooaofooa_S_DT * supertype, ooaofooa_S_EDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_EDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_EDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = ooaofooa_S_EDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_EDT ACROSS R17
 */
void
ooaofooa_S_EDT_R17_Unlink( ooaofooa_S_DT * supertype, ooaofooa_S_EDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->S_DT_R17 = 0;
  supertype->R17_subtype = 0;
  supertype->R17_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_S_EDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_EDT * self = (ooaofooa_S_EDT *) instance;
  printf( "INSERT INTO S_EDT VALUES ( %ld );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_EDT_container[ ooaofooa_S_EDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_EDT ooaofooa_S_EDT_instances[ ooaofooa_S_EDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_EDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_EDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_EDT_instances,
  sizeof( ooaofooa_S_EDT ), 0, ooaofooa_S_EDT_MAX_EXTENT_SIZE
  };


