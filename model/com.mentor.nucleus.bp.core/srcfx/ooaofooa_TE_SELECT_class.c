/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_class.c
 *
 * Class:       OAL select  (TE_SELECT)
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
ooaofooa_TE_SELECT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SELECT * self = (ooaofooa_TE_SELECT *) instance;
  /* Initialize application analysis class attributes.  */
  self->o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->is_implicit = ( '0' != *avlstring[ 2 ] );
  self->class_name = Escher_strcpy( self->class_name, avlstring[ 3 ] );
  self->target_class_name = Escher_strcpy( self->target_class_name, avlstring[ 4 ] );
  self->class_description = Escher_strcpy( self->class_description, avlstring[ 5 ] );
  self->multiplicity = Escher_strcpy( self->multiplicity, avlstring[ 6 ] );
  self->var_name = Escher_strcpy( self->var_name, avlstring[ 7 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SELECT_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT * ooaofooa_TE_SELECT_instance = (ooaofooa_TE_SELECT *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_SELECT_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_SELECT_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_SELECT_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_SELECT ACROSS R2069
 */
void
ooaofooa_TE_SELECT_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_SELECT->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_SELECT[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_SELECT_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_SELECT ACROSS R2069
 */
void
ooaofooa_TE_SELECT_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT * subtype )
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
ooaofooa_TE_SELECT_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT * self = (ooaofooa_TE_SELECT *) instance;
  printf( "INSERT INTO TE_SELECT VALUES ( %ld,%d,'%s','%s','%s','%s','%s',%ld );\n",
    ((long)self->o_obj & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ( 0 != self->class_name ) ? self->class_name : "",
    ( 0 != self->target_class_name ) ? self->target_class_name : "",
    ( 0 != self->class_description ) ? self->class_description : "",
    ( 0 != self->multiplicity ) ? self->multiplicity : "",
    ( 0 != self->var_name ) ? self->var_name : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SELECT_container[ ooaofooa_TE_SELECT_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SELECT ooaofooa_TE_SELECT_instances[ ooaofooa_TE_SELECT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SELECT_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SELECT_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SELECT_instances,
  sizeof( ooaofooa_TE_SELECT ), 0, ooaofooa_TE_SELECT_MAX_EXTENT_SIZE
  };


