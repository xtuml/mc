/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_FOR_class.c
 *
 * Class:       OAL for  (TE_FOR)
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
ooaofooa_TE_FOR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_FOR * self = (ooaofooa_TE_FOR *) instance;
  /* Initialize application analysis class attributes.  */
  self->isImplicit = ( '0' != *avlstring[ 1 ] );
  Escher_strcpy( self->class_name, avlstring[ 2 ] );
  Escher_strcpy( self->loop_variable, avlstring[ 3 ] );
  Escher_strcpy( self->set_variable, avlstring[ 4 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_FOR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_FOR * ooaofooa_TE_FOR_instance = (ooaofooa_TE_FOR *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_FOR_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_FOR_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_FOR_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_FOR ACROSS R2069
 */
void
ooaofooa_TE_FOR_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_FOR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_FOR->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_FOR[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_FOR_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_FOR ACROSS R2069
 */
void
ooaofooa_TE_FOR_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_FOR * subtype )
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
ooaofooa_TE_FOR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_FOR * self = (ooaofooa_TE_FOR *) instance;
  printf( "INSERT INTO TE_FOR VALUES ( %d,'%s','%s','%s',%ld );\n",
    self->isImplicit,
    self->class_name,
    self->loop_variable,
    self->set_variable,
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_FOR_container[ ooaofooa_TE_FOR_MAX_EXTENT_SIZE ];
static ooaofooa_TE_FOR ooaofooa_TE_FOR_instances[ ooaofooa_TE_FOR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_FOR_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_FOR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_FOR_instances,
  sizeof( ooaofooa_TE_FOR ), 0, ooaofooa_TE_FOR_MAX_EXTENT_SIZE
  };


