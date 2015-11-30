/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CONTROL_class.c
 *
 * Class:       OAL control  (TE_CONTROL)
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
ooaofooa_TE_CONTROL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CONTROL * self = (ooaofooa_TE_CONTROL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_CONTROL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_CONTROL * ooaofooa_TE_CONTROL_instance = (ooaofooa_TE_CONTROL *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_CONTROL_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_CONTROL_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_CONTROL_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_CONTROL ACROSS R2069
 */
void
ooaofooa_TE_CONTROL_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_CONTROL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_CONTROL->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_CONTROL[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_CONTROL_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_CONTROL ACROSS R2069
 */
void
ooaofooa_TE_CONTROL_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_CONTROL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_SMT_R2069 = 0;
  supertype->R2069_subtype = 0;
  supertype->R2069_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_CONTROL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CONTROL * self = (ooaofooa_TE_CONTROL *) instance;
  printf( "INSERT INTO TE_CONTROL VALUES ( %ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CONTROL_container[ ooaofooa_TE_CONTROL_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CONTROL ooaofooa_TE_CONTROL_instances[ ooaofooa_TE_CONTROL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CONTROL_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CONTROL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CONTROL_instances,
  sizeof( ooaofooa_TE_CONTROL ), 0, ooaofooa_TE_CONTROL_MAX_EXTENT_SIZE
  };


