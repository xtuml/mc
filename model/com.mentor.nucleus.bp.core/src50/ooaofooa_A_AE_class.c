/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AE_class.c
 *
 * Class:       Accept Event  (A_AE)
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
ooaofooa_A_AE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_A_AE * self = (ooaofooa_A_AE *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_A_AE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_A_AE * ooaofooa_A_AE_instance = (ooaofooa_A_AE *) instance;
  ooaofooa_A_ACT * ooaofooa_A_ACTrelated_instance1 = ooaofooa_A_ACT_AnyWhere1( ooaofooa_A_AE_instance->Id );
  if ( ooaofooa_A_ACTrelated_instance1 ) {
    ooaofooa_A_AE_R1107_Link( ooaofooa_A_ACTrelated_instance1, ooaofooa_A_AE_instance );
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_A_AE *
ooaofooa_A_AE_AnyWhere1( Escher_UniqueID_t w_Id )
{
  ooaofooa_A_AE * w; 
  Escher_Iterator_s iter_A_AE;
  Escher_IteratorReset( &iter_A_AE, &pG_ooaofooa_A_AE_extent.active );
  while ( (w = (ooaofooa_A_AE *) Escher_IteratorNext( &iter_A_AE )) != 0 ) {
    if ( w->Id == w_Id ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE A_ACT TO A_AE ACROSS R1107
 */
void
ooaofooa_A_AE_R1107_Link( ooaofooa_A_ACT * supertype, ooaofooa_A_AE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for A_AE->A_ACT[R1107] */
  subtype->A_ACT_R1107 = supertype;
  /* Optimized linkage for A_ACT->A_AE[R1107] */
  supertype->R1107_subtype = subtype;
  supertype->R1107_object_id = ooaofooa_A_AE_CLASS_NUMBER;
}


/*
 * UNRELATE A_ACT FROM A_AE ACROSS R1107
 */
void
ooaofooa_A_AE_R1107_Unlink( ooaofooa_A_ACT * supertype, ooaofooa_A_AE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->A_ACT_R1107 = 0;
  supertype->R1107_subtype = 0;
  supertype->R1107_object_id = 0;
}


/* Accessors to A_AE[R1112] subtypes */


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_A_AE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_A_AE * self = (ooaofooa_A_AE *) instance;
  printf( "INSERT INTO A_AE VALUES ( %ld );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_A_AE_container[ ooaofooa_A_AE_MAX_EXTENT_SIZE ];
static ooaofooa_A_AE ooaofooa_A_AE_instances[ ooaofooa_A_AE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_A_AE_extent = {
  {0,0}, {0,0}, &ooaofooa_A_AE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_A_AE_instances,
  sizeof( ooaofooa_A_AE ), 0, ooaofooa_A_AE_MAX_EXTENT_SIZE
  };


