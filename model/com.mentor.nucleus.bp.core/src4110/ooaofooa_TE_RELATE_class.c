/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELATE_class.c
 *
 * Class:       OAL relate  (TE_RELATE)
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
ooaofooa_TE_RELATE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_RELATE * self = (ooaofooa_TE_RELATE *) instance;
  /* Initialize application analysis class attributes.  */
  self->one_o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->oth_o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->r_rel = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->is_reflexive = ( '0' != *avlstring[ 4 ] );
  self->relationship_number = Escher_atoi( avlstring[ 5 ] );
  self->relationship_phrase = Escher_strcpy( self->relationship_phrase, avlstring[ 6 ] );
  self->one_var_name = Escher_strcpy( self->one_var_name, avlstring[ 7 ] );
  self->oth_var_name = Escher_strcpy( self->oth_var_name, avlstring[ 8 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_RELATE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_RELATE * ooaofooa_TE_RELATE_instance = (ooaofooa_TE_RELATE *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_RELATE_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_RELATE_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_RELATE_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_RELATE ACROSS R2069
 */
void
ooaofooa_TE_RELATE_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_RELATE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_RELATE->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_RELATE[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_RELATE_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_RELATE ACROSS R2069
 */
void
ooaofooa_TE_RELATE_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_RELATE * subtype )
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
ooaofooa_TE_RELATE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_RELATE * self = (ooaofooa_TE_RELATE *) instance;
  printf( "INSERT INTO TE_RELATE VALUES ( %ld,%ld,%ld,%d,%d,'%s','%s','%s',%ld );\n",
    ((long)self->one_o_obj & ESCHER_IDDUMP_MASK),
    ((long)self->oth_o_obj & ESCHER_IDDUMP_MASK),
    ((long)self->r_rel & ESCHER_IDDUMP_MASK),
    self->is_reflexive,
    self->relationship_number,
    ( 0 != self->relationship_phrase ) ? self->relationship_phrase : "",
    ( 0 != self->one_var_name ) ? self->one_var_name : "",
    ( 0 != self->oth_var_name ) ? self->oth_var_name : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_RELATE_container[ ooaofooa_TE_RELATE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_RELATE ooaofooa_TE_RELATE_instances[ ooaofooa_TE_RELATE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_RELATE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_RELATE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_RELATE_instances,
  sizeof( ooaofooa_TE_RELATE ), 0, ooaofooa_TE_RELATE_MAX_EXTENT_SIZE
  };


