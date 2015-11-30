/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ASSIGN_class.c
 *
 * Class:       OAL assign  (TE_ASSIGN)
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
ooaofooa_TE_ASSIGN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_ASSIGN * self = (ooaofooa_TE_ASSIGN *) instance;
  /* Initialize application analysis class attributes.  */
  self->isImplicit = ( '0' != *avlstring[ 1 ] );
  self->dimensions = Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->array_spec, avlstring[ 3 ] );
  Escher_strcpy( self->left_declaration, avlstring[ 4 ] );
  self->Core_Typ = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->lval, avlstring[ 6 ] );
  Escher_strcpy( self->rval, avlstring[ 7 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->rval_dimensions = Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_ASSIGN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_ASSIGN * ooaofooa_TE_ASSIGN_instance = (ooaofooa_TE_ASSIGN *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_ASSIGN_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_ASSIGN_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_ASSIGN_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_ASSIGN ACROSS R2069
 */
void
ooaofooa_TE_ASSIGN_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_ASSIGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_ASSIGN->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_ASSIGN[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_ASSIGN_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_ASSIGN ACROSS R2069
 */
void
ooaofooa_TE_ASSIGN_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_ASSIGN * subtype )
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
ooaofooa_TE_ASSIGN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_ASSIGN * self = (ooaofooa_TE_ASSIGN *) instance;
  printf( "INSERT INTO TE_ASSIGN VALUES ( %d,%d,'%s','%s',%d,'%s','%s',%ld,%d );\n",
    self->isImplicit,
    self->dimensions,
    self->array_spec,
    self->left_declaration,
    self->Core_Typ,
    self->lval,
    self->rval,
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->rval_dimensions );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_ASSIGN_container[ ooaofooa_TE_ASSIGN_MAX_EXTENT_SIZE ];
static ooaofooa_TE_ASSIGN ooaofooa_TE_ASSIGN_instances[ ooaofooa_TE_ASSIGN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_ASSIGN_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_ASSIGN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_ASSIGN_instances,
  sizeof( ooaofooa_TE_ASSIGN ), 0, ooaofooa_TE_ASSIGN_MAX_EXTENT_SIZE
  };


