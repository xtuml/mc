/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_UNRELATE_USING_class.c
 *
 * Class:       OAL urelate_using  (TE_UNRELATE_USING)
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
ooaofooa_TE_UNRELATE_USING_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_UNRELATE_USING * self = (ooaofooa_TE_UNRELATE_USING *) instance;
  /* Initialize application analysis class attributes.  */
  self->one_o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->oth_o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->ass_o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->r_rel = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->is_reflexive = ( '0' != *avlstring[ 5 ] );
  self->relationship_number = Escher_atoi( avlstring[ 6 ] );
  self->relationship_phrase = Escher_strcpy( self->relationship_phrase, avlstring[ 7 ] );
  self->one_var_name = Escher_strcpy( self->one_var_name, avlstring[ 8 ] );
  self->oth_var_name = Escher_strcpy( self->oth_var_name, avlstring[ 9 ] );
  self->ass_var_name = Escher_strcpy( self->ass_var_name, avlstring[ 10 ] );
  self->one_rel_phrase = Escher_strcpy( self->one_rel_phrase, avlstring[ 11 ] );
  self->oth_rel_phrase = Escher_strcpy( self->oth_rel_phrase, avlstring[ 12 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 13 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_UNRELATE_USING_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_UNRELATE_USING * ooaofooa_TE_UNRELATE_USING_instance = (ooaofooa_TE_UNRELATE_USING *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_UNRELATE_USING_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_UNRELATE_USING_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_UNRELATE_USING_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_UNRELATE_USING ACROSS R2069
 */
void
ooaofooa_TE_UNRELATE_USING_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_UNRELATE_USING * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_UNRELATE_USING->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_UNRELATE_USING[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_UNRELATE_USING_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_UNRELATE_USING ACROSS R2069
 */
void
ooaofooa_TE_UNRELATE_USING_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_UNRELATE_USING * subtype )
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
ooaofooa_TE_UNRELATE_USING_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_UNRELATE_USING * self = (ooaofooa_TE_UNRELATE_USING *) instance;
  printf( "INSERT INTO TE_UNRELATE_USING VALUES ( %ld,%ld,%ld,%ld,%d,%d,'%s','%s','%s','%s','%s','%s',%ld );\n",
    ((long)self->one_o_obj & ESCHER_IDDUMP_MASK),
    ((long)self->oth_o_obj & ESCHER_IDDUMP_MASK),
    ((long)self->ass_o_obj & ESCHER_IDDUMP_MASK),
    ((long)self->r_rel & ESCHER_IDDUMP_MASK),
    self->is_reflexive,
    self->relationship_number,
    ( 0 != self->relationship_phrase ) ? self->relationship_phrase : "",
    ( 0 != self->one_var_name ) ? self->one_var_name : "",
    ( 0 != self->oth_var_name ) ? self->oth_var_name : "",
    ( 0 != self->ass_var_name ) ? self->ass_var_name : "",
    ( 0 != self->one_rel_phrase ) ? self->one_rel_phrase : "",
    ( 0 != self->oth_rel_phrase ) ? self->oth_rel_phrase : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_UNRELATE_USING_container[ ooaofooa_TE_UNRELATE_USING_MAX_EXTENT_SIZE ];
static ooaofooa_TE_UNRELATE_USING ooaofooa_TE_UNRELATE_USING_instances[ ooaofooa_TE_UNRELATE_USING_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_UNRELATE_USING_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_UNRELATE_USING_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_UNRELATE_USING_instances,
  sizeof( ooaofooa_TE_UNRELATE_USING ), 0, ooaofooa_TE_UNRELATE_USING_MAX_EXTENT_SIZE
  };


