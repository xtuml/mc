/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_ACT_class.c
 *
 * Class:       Action Node  (A_ACT)
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
ooaofooa_A_ACT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_ACT * self = (ooaofooa_A_ACT *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_ACT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_ACT * ooaofooa_A_ACT_instance = (ooaofooa_A_ACT *) instance;
  ooaofooa_A_N * ooaofooa_A_Nrelated_instance1 = ooaofooa_A_N_AnyWhere1( ooaofooa_A_ACT_instance->Id );
  if ( ooaofooa_A_Nrelated_instance1 ) {
    ooaofooa_A_ACT_R1105_Link( ooaofooa_A_Nrelated_instance1, ooaofooa_A_ACT_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_ACT *
ooaofooa_A_ACT_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_A_ACT * w; 
  Escher_Iterator_s iter_A_ACT;
  Escher_IteratorReset( &iter_A_ACT, &pG_ooaofooa_A_ACT_extent.active );
  while ( (w = (ooaofooa_A_ACT *) Escher_IteratorNext( &iter_A_ACT )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE A_N TO A_ACT ACROSS R1105
 */
void
ooaofooa_A_ACT_R1105_Link( ooaofooa_A_N * supertype, ooaofooa_A_ACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_ACT->A_N[R1105] */
  subtype->A_N_R1105 = supertype;
  /* Optimized linkage for A_N->A_ACT[R1105] */
  supertype->R1105_subtype = subtype;
  supertype->R1105_object_id = ooaofooa_A_ACT_CLASS_NUMBER;
}


/*
 * UNRELATE A_N FROM A_ACT ACROSS R1105
 */
void
ooaofooa_A_ACT_R1105_Unlink( ooaofooa_A_N * supertype, ooaofooa_A_ACT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_N_R1105 = 0;
  supertype->R1105_subtype = 0;
  supertype->R1105_object_id = 0;
}


/* Accessors to A_ACT[R1107] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_ACT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_ACT * self = (ooaofooa_A_ACT *) instance;
  printf( "INSERT INTO A_ACT VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_ACT_container[ ooaofooa_A_ACT_MAX_EXTENT_SIZE ];
static ooaofooa_A_ACT ooaofooa_A_ACT_instances[ ooaofooa_A_ACT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_ACT_extent = {
  {0,0}, {0,0}, &ooaofooa_A_ACT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_ACT_instances,
  sizeof( ooaofooa_A_ACT ), 0, ooaofooa_A_ACT_MAX_EXTENT_SIZE
  };


