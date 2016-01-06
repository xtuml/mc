/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BRIDGE_class.c
 *
 * Class:       OAL bridge  (TE_BRIDGE)
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
ooaofooa_TE_BRIDGE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_BRIDGE * self = (ooaofooa_TE_BRIDGE *) instance;
  /* Initialize application analysis class attributes.  */
  self->bridge_name = Escher_strcpy( self->bridge_name, avlstring[ 1 ] );
  self->parameters = Escher_strcpy( self->parameters, avlstring[ 2 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_BRIDGE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_BRIDGE * ooaofooa_TE_BRIDGE_instance = (ooaofooa_TE_BRIDGE *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_BRIDGE_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_BRIDGE_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_BRIDGE_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_BRIDGE ACROSS R2069
 */
void
ooaofooa_TE_BRIDGE_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_BRIDGE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_BRIDGE->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_BRIDGE[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_BRIDGE_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_BRIDGE ACROSS R2069
 */
void
ooaofooa_TE_BRIDGE_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_BRIDGE * subtype )
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
ooaofooa_TE_BRIDGE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_BRIDGE * self = (ooaofooa_TE_BRIDGE *) instance;
  printf( "INSERT INTO TE_BRIDGE VALUES ( '%s','%s',%ld );\n",
    ( 0 != self->bridge_name ) ? self->bridge_name : "",
    ( 0 != self->parameters ) ? self->parameters : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_BRIDGE_container[ ooaofooa_TE_BRIDGE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_BRIDGE ooaofooa_TE_BRIDGE_instances[ ooaofooa_TE_BRIDGE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_BRIDGE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_BRIDGE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_BRIDGE_instances,
  sizeof( ooaofooa_TE_BRIDGE ), 0, ooaofooa_TE_BRIDGE_MAX_EXTENT_SIZE
  };


