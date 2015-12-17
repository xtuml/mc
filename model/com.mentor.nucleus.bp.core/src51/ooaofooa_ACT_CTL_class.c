/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CTL_class.c
 *
 * Class:       Control  (ACT_CTL)
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
ooaofooa_ACT_CTL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_CTL * self = (ooaofooa_ACT_CTL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_CTL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CTL * ooaofooa_ACT_CTL_instance = (ooaofooa_ACT_CTL *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_CTL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_CTL_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_CTL_instance );
  }
}


/*
 * RELATE ACT_SMT TO ACT_CTL ACROSS R603
 */
void
ooaofooa_ACT_CTL_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CTL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_CTL->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_CTL[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_CTL_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_CTL ACROSS R603
 */
void
ooaofooa_ACT_CTL_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CTL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_CTL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CTL * self = (ooaofooa_ACT_CTL *) instance;
  printf( "INSERT INTO ACT_CTL VALUES ( %ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_CTL_container[ ooaofooa_ACT_CTL_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_CTL ooaofooa_ACT_CTL_instances[ ooaofooa_ACT_CTL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_CTL_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_CTL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_CTL_instances,
  sizeof( ooaofooa_ACT_CTL ), 0, ooaofooa_ACT_CTL_MAX_EXTENT_SIZE
  };


