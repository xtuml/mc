/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_CM_class.c
 *
 * Class:       Content Match  (SR_CM)
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
ooaofooa_SR_CM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_SR_CM * self = (ooaofooa_SR_CM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->startPosition = Escher_atoi( avlstring[ 2 ] );
  self->matchLength = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_SR_CM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_SR_CM * ooaofooa_SR_CM_instance = (ooaofooa_SR_CM *) instance;
  ooaofooa_SR_M * ooaofooa_SR_Mrelated_instance1 = (ooaofooa_SR_M *) Escher_instance_cache[ (intptr_t) ooaofooa_SR_CM_instance->Id ];
  if ( ooaofooa_SR_Mrelated_instance1 ) {
    ooaofooa_SR_CM_R9801_Link( ooaofooa_SR_Mrelated_instance1, ooaofooa_SR_CM_instance );
  }
}


/*
 * RELATE SR_M TO SR_CM ACROSS R9801
 */
void
ooaofooa_SR_CM_R9801_Link( ooaofooa_SR_M * supertype, ooaofooa_SR_CM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Id = supertype->Id;
  /* Optimized linkage for SR_CM->SR_M[R9801] */
  subtype->SR_M_R9801 = supertype;
  /* Optimized linkage for SR_M->SR_CM[R9801] */
  supertype->R9801_subtype = subtype;
  supertype->R9801_object_id = ooaofooa_SR_CM_CLASS_NUMBER;
}


/*
 * UNRELATE SR_M FROM SR_CM ACROSS R9801
 */
void
ooaofooa_SR_CM_R9801_Unlink( ooaofooa_SR_M * supertype, ooaofooa_SR_CM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->SR_M_R9801 = 0;
  supertype->R9801_subtype = 0;
  supertype->R9801_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_SR_CM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_SR_CM * self = (ooaofooa_SR_CM *) instance;
  printf( "INSERT INTO SR_CM VALUES ( %ld,%d,%d );\n",
    ((long)self->Id & ESCHER_IDDUMP_MASK),
    self->startPosition,
    self->matchLength );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_SR_CM_container[ ooaofooa_SR_CM_MAX_EXTENT_SIZE ];
static ooaofooa_SR_CM ooaofooa_SR_CM_instances[ ooaofooa_SR_CM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_SR_CM_extent = {
  {0,0}, {0,0}, &ooaofooa_SR_CM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_SR_CM_instances,
  sizeof( ooaofooa_SR_CM ), 0, ooaofooa_SR_CM_MAX_EXTENT_SIZE
  };


