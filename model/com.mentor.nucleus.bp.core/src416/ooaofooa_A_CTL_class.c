/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_CTL_class.c
 *
 * Class:       Control Node  (A_CTL)
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
ooaofooa_A_CTL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_CTL * self = (ooaofooa_A_CTL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_CTL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_CTL * ooaofooa_A_CTL_instance = (ooaofooa_A_CTL *) instance;
  ooaofooa_A_N * ooaofooa_A_Nrelated_instance1 = ooaofooa_A_N_AnyWhere1( ooaofooa_A_CTL_instance->Id );
  if ( ooaofooa_A_Nrelated_instance1 ) {
    ooaofooa_A_CTL_R1105_Link( ooaofooa_A_Nrelated_instance1, ooaofooa_A_CTL_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_CTL *
ooaofooa_A_CTL_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_A_CTL * w; 
  Escher_Iterator_s iter_A_CTL;
  Escher_IteratorReset( &iter_A_CTL, &pG_ooaofooa_A_CTL_extent.active );
  while ( (w = (ooaofooa_A_CTL *) Escher_IteratorNext( &iter_A_CTL )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE A_N TO A_CTL ACROSS R1105
 */
void
ooaofooa_A_CTL_R1105_Link( ooaofooa_A_N * supertype, ooaofooa_A_CTL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_CTL->A_N[R1105] */
  subtype->A_N_R1105 = supertype;
  /* Optimized linkage for A_N->A_CTL[R1105] */
  supertype->R1105_subtype = subtype;
  supertype->R1105_object_id = ooaofooa_A_CTL_CLASS_NUMBER;
}


/*
 * UNRELATE A_N FROM A_CTL ACROSS R1105
 */
void
ooaofooa_A_CTL_R1105_Unlink( ooaofooa_A_N * supertype, ooaofooa_A_CTL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_N_R1105 = 0;
  supertype->R1105_subtype = 0;
  supertype->R1105_object_id = 0;
}


/* Accessors to A_CTL[R1106] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_CTL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_CTL * self = (ooaofooa_A_CTL *) instance;
  printf( "INSERT INTO A_CTL VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_CTL_container[ ooaofooa_A_CTL_MAX_EXTENT_SIZE ];
static ooaofooa_A_CTL ooaofooa_A_CTL_instances[ ooaofooa_A_CTL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_CTL_extent = {
  {0,0}, {0,0}, &ooaofooa_A_CTL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_CTL_instances,
  sizeof( ooaofooa_A_CTL ), 0, ooaofooa_A_CTL_MAX_EXTENT_SIZE
  };


