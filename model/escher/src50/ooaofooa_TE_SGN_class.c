/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SGN_class.c
 *
 * Class:       OAL sgn  (TE_SGN)
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
ooaofooa_TE_SGN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SGN * self = (ooaofooa_TE_SGN *) instance;
  /* Initialize application analysis class attributes.  */
  self->sm_evt = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->self_directed = ( '0' != *avlstring[ 2 ] );
  self->var_name = Escher_strcpy( self->var_name, avlstring[ 3 ] );
  self->event_label = Escher_strcpy( self->event_label, avlstring[ 4 ] );
  self->event_meaning = Escher_strcpy( self->event_meaning, avlstring[ 5 ] );
  self->parameters = Escher_strcpy( self->parameters, avlstring[ 6 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SGN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SGN * ooaofooa_TE_SGN_instance = (ooaofooa_TE_SGN *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_SGN_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_SGN_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_SGN_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_SGN ACROSS R2069
 */
void
ooaofooa_TE_SGN_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_SGN->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_SGN[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_SGN_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_SGN ACROSS R2069
 */
void
ooaofooa_TE_SGN_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SGN * subtype )
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
ooaofooa_TE_SGN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SGN * self = (ooaofooa_TE_SGN *) instance;
  printf( "INSERT INTO TE_SGN VALUES ( %ld,%d,'%s','%s','%s','%s',%ld );\n",
    ((long)self->sm_evt & ESCHER_IDDUMP_MASK),
    self->self_directed,
    ( 0 != self->var_name ) ? self->var_name : "",
    ( 0 != self->event_label ) ? self->event_label : "",
    ( 0 != self->event_meaning ) ? self->event_meaning : "",
    ( 0 != self->parameters ) ? self->parameters : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SGN_container[ ooaofooa_TE_SGN_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SGN ooaofooa_TE_SGN_instances[ ooaofooa_TE_SGN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SGN_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SGN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SGN_instances,
  sizeof( ooaofooa_TE_SGN ), 0, ooaofooa_TE_SGN_MAX_EXTENT_SIZE
  };


