/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SDT_class.c
 *
 * Class:       Structured Data Type  (S_SDT)
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
ooaofooa_S_SDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_S_SDT * self = (ooaofooa_S_SDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_S_SDT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_S_SDT * ooaofooa_S_SDT_instance = (ooaofooa_S_SDT *) instance;
  ooaofooa_S_DT * ooaofooa_S_DTrelated_instance1 = ooaofooa_S_DT_AnyWhere1( ooaofooa_S_SDT_instance->DT_ID );
  if ( ooaofooa_S_DTrelated_instance1 ) {
    ooaofooa_S_SDT_R17_Link( ooaofooa_S_DTrelated_instance1, ooaofooa_S_SDT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_S_SDT *
ooaofooa_S_SDT_AnyWhere1( Escher_UniqueID_t w_DT_ID )
{
  ooaofooa_S_SDT * w; 
  Escher_Iterator_s iter_S_SDT;
  Escher_IteratorReset( &iter_S_SDT, &pG_ooaofooa_S_SDT_extent.active );
  while ( (w = (ooaofooa_S_SDT *) Escher_IteratorNext( &iter_S_SDT )) != 0 ) {
    if ( w->DT_ID == w_DT_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE S_DT TO S_SDT ACROSS R17
 */
void
ooaofooa_S_SDT_R17_Link( ooaofooa_S_DT * supertype, ooaofooa_S_SDT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_SDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_SDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = ooaofooa_S_SDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_SDT ACROSS R17
 */
void
ooaofooa_S_SDT_R17_Unlink( ooaofooa_S_DT * supertype, ooaofooa_S_SDT * subtype )
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
ooaofooa_S_SDT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_S_SDT * self = (ooaofooa_S_SDT *) instance;
  printf( "INSERT INTO S_SDT VALUES ( %ld );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_S_SDT_container[ ooaofooa_S_SDT_MAX_EXTENT_SIZE ];
static ooaofooa_S_SDT ooaofooa_S_SDT_instances[ ooaofooa_S_SDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_S_SDT_extent = {
  {0,0}, {0,0}, &ooaofooa_S_SDT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_S_SDT_instances,
  sizeof( ooaofooa_S_SDT ), 0, ooaofooa_S_SDT_MAX_EXTENT_SIZE
  };


