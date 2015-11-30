/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_WHERE_class.c
 *
 * Class:       OAL select_where  (TE_SELECT_WHERE)
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
ooaofooa_TE_SELECT_WHERE_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SELECT_WHERE * self = (ooaofooa_TE_SELECT_WHERE *) instance;
  /* Initialize application analysis class attributes.  */
  self->o_obj = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->is_implicit = ( '0' != *avlstring[ 2 ] );
  Escher_strcpy( self->class_name, avlstring[ 3 ] );
  Escher_strcpy( self->oal_var_name, avlstring[ 4 ] );
  Escher_strcpy( self->class_description, avlstring[ 5 ] );
  Escher_strcpy( self->multiplicity, avlstring[ 6 ] );
  Escher_strcpy( self->var_name, avlstring[ 7 ] );
  Escher_strcpy( self->selected_var_name, avlstring[ 8 ] );
  Escher_strcpy( self->where_clause, avlstring[ 9 ] );
  self->special = ( '0' != *avlstring[ 10 ] );
  self->oid_id = Escher_atoi( avlstring[ 11 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SELECT_WHERE_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT_WHERE * ooaofooa_TE_SELECT_WHERE_instance = (ooaofooa_TE_SELECT_WHERE *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_SELECT_WHERE_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_SELECT_WHERE_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_SELECT_WHERE_instance );
  }
}


/*
 * RELATE TE_SMT TO TE_SELECT_WHERE ACROSS R2069
 */
void
ooaofooa_TE_SELECT_WHERE_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT_WHERE * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_SELECT_WHERE->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_SELECT_WHERE[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_SELECT_WHERE_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_SELECT_WHERE ACROSS R2069
 */
void
ooaofooa_TE_SELECT_WHERE_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT_WHERE * subtype )
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
ooaofooa_TE_SELECT_WHERE_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT_WHERE * self = (ooaofooa_TE_SELECT_WHERE *) instance;
  printf( "INSERT INTO TE_SELECT_WHERE VALUES ( %ld,%d,'%s','%s','%s','%s','%s','%s','%s',%d,%d,%ld );\n",
    ((long)self->o_obj & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    self->class_name,
    self->oal_var_name,
    self->class_description,
    self->multiplicity,
    self->var_name,
    self->selected_var_name,
    self->where_clause,
    self->special,
    self->oid_id,
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SELECT_WHERE_container[ ooaofooa_TE_SELECT_WHERE_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SELECT_WHERE ooaofooa_TE_SELECT_WHERE_instances[ ooaofooa_TE_SELECT_WHERE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SELECT_WHERE_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SELECT_WHERE_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SELECT_WHERE_instances,
  sizeof( ooaofooa_TE_SELECT_WHERE ), 0, ooaofooa_TE_SELECT_WHERE_MAX_EXTENT_SIZE
  };


