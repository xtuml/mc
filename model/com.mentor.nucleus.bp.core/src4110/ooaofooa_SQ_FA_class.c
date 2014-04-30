/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_FA_class.c
 *
 * Class:       Formal Attribute  (SQ_FA)
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
ooaofooa_SQ_FA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SQ_FA * self = (ooaofooa_SQ_FA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Ia_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SQ_FA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SQ_FA * ooaofooa_SQ_FA_instance = (ooaofooa_SQ_FA *) instance;
  ooaofooa_SQ_CPA * ooaofooa_SQ_CPArelated_instance1 = (ooaofooa_SQ_CPA *) Escher_instance_cache[ (intptr_t) ooaofooa_SQ_FA_instance->Ia_ID ];
  if ( ooaofooa_SQ_CPArelated_instance1 ) {
    ooaofooa_SQ_FA_R947_Link( ooaofooa_SQ_CPArelated_instance1, ooaofooa_SQ_FA_instance );
  }
}


/*
 * RELATE SQ_CPA TO SQ_FA ACROSS R947
 */
void
ooaofooa_SQ_FA_R947_Link( ooaofooa_SQ_CPA * supertype, ooaofooa_SQ_FA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Ia_ID = supertype->Ia_ID;
  /* Optimized linkage for SQ_FA->SQ_CPA[R947] */
  subtype->SQ_CPA_R947 = supertype;
  /* Optimized linkage for SQ_CPA->SQ_FA[R947] */
  supertype->R947_subtype = subtype;
  supertype->R947_object_id = ooaofooa_SQ_FA_CLASS_NUMBER;
}


/*
 * UNRELATE SQ_CPA FROM SQ_FA ACROSS R947
 */
void
ooaofooa_SQ_FA_R947_Unlink( ooaofooa_SQ_CPA * supertype, ooaofooa_SQ_FA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SQ_CPA_R947 = 0;
  supertype->R947_subtype = 0;
  supertype->R947_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SQ_FA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SQ_FA * self = (ooaofooa_SQ_FA *) instance;
  printf( "INSERT INTO SQ_FA VALUES ( %ld );\n",
    ((long)self->Ia_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SQ_FA_container[ ooaofooa_SQ_FA_MAX_EXTENT_SIZE ];
static ooaofooa_SQ_FA ooaofooa_SQ_FA_instances[ ooaofooa_SQ_FA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SQ_FA_extent = {
  {0,0}, {0,0}, &ooaofooa_SQ_FA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SQ_FA_instances,
  sizeof( ooaofooa_SQ_FA ), 0, ooaofooa_SQ_FA_MAX_EXTENT_SIZE
  };


