/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CREATE_INSTANCE_class.c
 *
 * Class:       OAL create_instance  (TE_CREATE_INSTANCE)
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
ooaofooa_TE_CREATE_INSTANCE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_CREATE_INSTANCE * self = (ooaofooa_TE_CREATE_INSTANCE *) instance;
  /* Initialize application analysis class attributes.  */
  self->o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->is_implicit = ( '0' != *avlstring[ 2 ] );
  self->class_name = Escher_strcpy( self->class_name, avlstring[ 3 ] );
  self->var_name = Escher_strcpy( self->var_name, avlstring[ 4 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_CREATE_INSTANCE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_CREATE_INSTANCE * ooaofooa_TE_CREATE_INSTANCE_instance = (ooaofooa_TE_CREATE_INSTANCE *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_CREATE_INSTANCE_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_CREATE_INSTANCE_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_CREATE_INSTANCE_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_CREATE_INSTANCE ACROSS R2069
 */
void
ooaofooa_TE_CREATE_INSTANCE_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_CREATE_INSTANCE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_CREATE_INSTANCE->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_CREATE_INSTANCE[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_CREATE_INSTANCE_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_CREATE_INSTANCE ACROSS R2069
 */
void
ooaofooa_TE_CREATE_INSTANCE_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_CREATE_INSTANCE * subtype )
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
ooaofooa_TE_CREATE_INSTANCE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_CREATE_INSTANCE * self = (ooaofooa_TE_CREATE_INSTANCE *) instance;
  printf( "INSERT INTO TE_CREATE_INSTANCE VALUES ( %ld,%d,'%s','%s',%ld );\n",
    ((long)self->o_obj & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ( 0 != self->class_name ) ? self->class_name : "",
    ( 0 != self->var_name ) ? self->var_name : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_CREATE_INSTANCE_container[ ooaofooa_TE_CREATE_INSTANCE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_CREATE_INSTANCE ooaofooa_TE_CREATE_INSTANCE_instances[ ooaofooa_TE_CREATE_INSTANCE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_CREATE_INSTANCE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_CREATE_INSTANCE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_CREATE_INSTANCE_instances,
  sizeof( ooaofooa_TE_CREATE_INSTANCE ), 0, ooaofooa_TE_CREATE_INSTANCE_MAX_EXTENT_SIZE
  };


