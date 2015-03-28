/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_WHILE_class.c
 *
 * Class:       OAL while  (TE_WHILE)
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
ooaofooa_TE_WHILE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_WHILE * self = (ooaofooa_TE_WHILE *) instance;
  /* Initialize application analysis class attributes.  */
  self->condition = Escher_strcpy( self->condition, avlstring[ 1 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_WHILE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_WHILE * ooaofooa_TE_WHILE_instance = (ooaofooa_TE_WHILE *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_WHILE_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_WHILE_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_WHILE_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_WHILE ACROSS R2069
 */
void
ooaofooa_TE_WHILE_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_WHILE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_WHILE->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_WHILE[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_WHILE_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_WHILE ACROSS R2069
 */
void
ooaofooa_TE_WHILE_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_WHILE * subtype )
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
ooaofooa_TE_WHILE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_WHILE * self = (ooaofooa_TE_WHILE *) instance;
  printf( "INSERT INTO TE_WHILE VALUES ( '%s',%ld );\n",
    ( 0 != self->condition ) ? self->condition : "",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_WHILE_container[ ooaofooa_TE_WHILE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_WHILE ooaofooa_TE_WHILE_instances[ ooaofooa_TE_WHILE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_WHILE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_WHILE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_WHILE_instances,
  sizeof( ooaofooa_TE_WHILE ), 0, ooaofooa_TE_WHILE_MAX_EXTENT_SIZE
  };


