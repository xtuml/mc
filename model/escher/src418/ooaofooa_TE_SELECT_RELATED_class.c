/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_RELATED_class.c
 *
 * Class:       OAL select_related  (TE_SELECT_RELATED)
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
ooaofooa_TE_SELECT_RELATED_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_SELECT_RELATED * self = (ooaofooa_TE_SELECT_RELATED *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->link_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->starting_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->where_clause_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->starting_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->result_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->by_where = ( '0' != *avlstring[ 7 ] );
  self->where_clause = Escher_strcpy( self->where_clause, avlstring[ 8 ] );
  self->where_clause_OAL = Escher_strcpy( self->where_clause_OAL, avlstring[ 9 ] );
  self->multiplicity = Escher_strcpy( self->multiplicity, avlstring[ 10 ] );
  self->is_implicit = ( '0' != *avlstring[ 11 ] );
  self->result_var = Escher_strcpy( self->result_var, avlstring[ 12 ] );
  self->result_var_OAL = Escher_strcpy( self->result_var_OAL, avlstring[ 13 ] );
  self->start_many = ( '0' != *avlstring[ 14 ] );
  self->start_var = Escher_strcpy( self->start_var, avlstring[ 15 ] );
  self->start_var_OAL = Escher_strcpy( self->start_var_OAL, avlstring[ 16 ] );
  self->te_classGeneratedName = Escher_strcpy( self->te_classGeneratedName, avlstring[ 17 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_SELECT_RELATED_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT_RELATED * ooaofooa_TE_SELECT_RELATED_instance = (ooaofooa_TE_SELECT_RELATED *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_SELECT_RELATED_instance->Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2069_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  {
  ooaofooa_TE_VAL * ooaofooa_TE_VALrelated_instance1 = ooaofooa_TE_VAL_AnyWhere1( ooaofooa_TE_SELECT_RELATED_instance->starting_Value_ID );
  if ( ooaofooa_TE_VALrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2070_Link_starts( ooaofooa_TE_VALrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
  {
  ooaofooa_TE_VAR * ooaofooa_TE_VARrelated_instance1 = ooaofooa_TE_VAR_AnyWhere1( ooaofooa_TE_SELECT_RELATED_instance->starting_Var_ID );
  if ( ooaofooa_TE_VARrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2094_Link_holds_start_of( ooaofooa_TE_VARrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
  {
  ooaofooa_TE_VAR * ooaofooa_TE_VARrelated_instance1 = ooaofooa_TE_VAR_AnyWhere1( ooaofooa_TE_SELECT_RELATED_instance->result_Var_ID );
  if ( ooaofooa_TE_VARrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2093_Link_gets_result_of( ooaofooa_TE_VARrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
  {
  ooaofooa_TE_LNK * ooaofooa_TE_LNKrelated_instance1 = (ooaofooa_TE_LNK *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SELECT_RELATED_instance->link_ID ];
  if ( ooaofooa_TE_LNKrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2073_Link( ooaofooa_TE_LNKrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
  {
  ooaofooa_TE_VAL * ooaofooa_TE_VALrelated_instance1 = ooaofooa_TE_VAL_AnyWhere1( ooaofooa_TE_SELECT_RELATED_instance->where_clause_Value_ID );
  if ( ooaofooa_TE_VALrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2074_Link_filters( ooaofooa_TE_VALrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
  {
  ooaofooa_TE_CLASS * ooaofooa_TE_CLASSrelated_instance1 = (ooaofooa_TE_CLASS *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_SELECT_RELATED_instance->te_classGeneratedName ];
  if ( ooaofooa_TE_CLASSrelated_instance1 ) {
    ooaofooa_TE_SELECT_RELATED_R2077_Link( ooaofooa_TE_CLASSrelated_instance1, ooaofooa_TE_SELECT_RELATED_instance );
  }
  }
}


/*
 * RELATE TE_SMT TO TE_SELECT_RELATED ACROSS R2069
 */
void
ooaofooa_TE_SELECT_RELATED_R2069_Link( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT_RELATED * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for TE_SELECT_RELATED->TE_SMT[R2069] */
  subtype->TE_SMT_R2069 = supertype;
  /* Optimized linkage for TE_SMT->TE_SELECT_RELATED[R2069] */
  supertype->R2069_subtype = subtype;
  supertype->R2069_object_id = ooaofooa_TE_SELECT_RELATED_CLASS_NUMBER;
}


/*
 * UNRELATE TE_SMT FROM TE_SELECT_RELATED ACROSS R2069
 */
void
ooaofooa_TE_SELECT_RELATED_R2069_Unlink( ooaofooa_TE_SMT * supertype, ooaofooa_TE_SELECT_RELATED * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_SMT_R2069 = 0;
  supertype->R2069_subtype = 0;
  supertype->R2069_object_id = 0;
}


/*
 * RELATE TE_VAL TO TE_SELECT_RELATED ACROSS R2070
 */
void
ooaofooa_TE_SELECT_RELATED_R2070_Link_starts( ooaofooa_TE_VAL * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->starting_Value_ID = part->Value_ID;
  form->TE_VAL_R2070_starts_from = part;
  part->TE_SELECT_RELATED_R2070_starts = form;
}

/*
 * UNRELATE TE_VAL FROM TE_SELECT_RELATED ACROSS R2070
 */
void
ooaofooa_TE_SELECT_RELATED_R2070_Unlink_starts( ooaofooa_TE_VAL * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->starting_Value_ID = 0;
  form->TE_VAL_R2070_starts_from = 0;
  part->TE_SELECT_RELATED_R2070_starts = 0;
}

/*
 * RELATE TE_LNK TO TE_SELECT_RELATED ACROSS R2073
 */
void
ooaofooa_TE_SELECT_RELATED_R2073_Link( ooaofooa_TE_LNK * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->link_ID = part->ID;
  form->TE_LNK_R2073_has_first = part;
  part->TE_SELECT_RELATED_R2073 = form;
}

/*
 * UNRELATE TE_LNK FROM TE_SELECT_RELATED ACROSS R2073
 */
void
ooaofooa_TE_SELECT_RELATED_R2073_Unlink( ooaofooa_TE_LNK * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->link_ID = 0;
  form->TE_LNK_R2073_has_first = 0;
  part->TE_SELECT_RELATED_R2073 = 0;
}

/*
 * RELATE TE_VAL TO TE_SELECT_RELATED ACROSS R2074
 */
void
ooaofooa_TE_SELECT_RELATED_R2074_Link_filters( ooaofooa_TE_VAL * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->where_clause_Value_ID = part->Value_ID;
  form->TE_VAL_R2074_is_where_clause_of = part;
  part->TE_SELECT_RELATED_R2074_filters = form;
}

/*
 * UNRELATE TE_VAL FROM TE_SELECT_RELATED ACROSS R2074
 */
void
ooaofooa_TE_SELECT_RELATED_R2074_Unlink_filters( ooaofooa_TE_VAL * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->where_clause_Value_ID = 0;
  form->TE_VAL_R2074_is_where_clause_of = 0;
  part->TE_SELECT_RELATED_R2074_filters = 0;
}

/*
 * RELATE TE_CLASS TO TE_SELECT_RELATED ACROSS R2077
 */
void
ooaofooa_TE_SELECT_RELATED_R2077_Link( ooaofooa_TE_CLASS * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_classGeneratedName = Escher_strcpy( form->te_classGeneratedName, part->GeneratedName );
  form->TE_CLASS_R2077 = part;
  part->TE_SELECT_RELATED_R2077 = form;
}

/*
 * UNRELATE TE_CLASS FROM TE_SELECT_RELATED ACROSS R2077
 */
void
ooaofooa_TE_SELECT_RELATED_R2077_Unlink( ooaofooa_TE_CLASS * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  Escher_memset( &form->te_classGeneratedName, 0, sizeof( form->te_classGeneratedName ) );
  form->TE_CLASS_R2077 = 0;
  part->TE_SELECT_RELATED_R2077 = 0;
}

/*
 * RELATE TE_VAR TO TE_SELECT_RELATED ACROSS R2093
 */
void
ooaofooa_TE_SELECT_RELATED_R2093_Link_gets_result_of( ooaofooa_TE_VAR * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->result_Var_ID = part->Var_ID;
  form->TE_VAR_R2093_stores_result_into = part;
  part->TE_SELECT_RELATED_R2093_gets_result_of = form;
}

/*
 * UNRELATE TE_VAR FROM TE_SELECT_RELATED ACROSS R2093
 */
void
ooaofooa_TE_SELECT_RELATED_R2093_Unlink_gets_result_of( ooaofooa_TE_VAR * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->result_Var_ID = 0;
  form->TE_VAR_R2093_stores_result_into = 0;
  part->TE_SELECT_RELATED_R2093_gets_result_of = 0;
}

/*
 * RELATE TE_VAR TO TE_SELECT_RELATED ACROSS R2094
 */
void
ooaofooa_TE_SELECT_RELATED_R2094_Link_holds_start_of( ooaofooa_TE_VAR * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->starting_Var_ID = part->Var_ID;
  form->TE_VAR_R2094_starts_with = part;
  part->TE_SELECT_RELATED_R2094_holds_start_of = form;
}

/*
 * UNRELATE TE_VAR FROM TE_SELECT_RELATED ACROSS R2094
 */
void
ooaofooa_TE_SELECT_RELATED_R2094_Unlink_holds_start_of( ooaofooa_TE_VAR * part, ooaofooa_TE_SELECT_RELATED * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->starting_Var_ID = 0;
  form->TE_VAR_R2094_starts_with = 0;
  part->TE_SELECT_RELATED_R2094_holds_start_of = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_SELECT_RELATED_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_SELECT_RELATED * self = (ooaofooa_TE_SELECT_RELATED *) instance;
  printf( "INSERT INTO TE_SELECT_RELATED VALUES ( %ld,%ld,%ld,%ld,%ld,%ld,%d,'%s','%s','%s',%d,'%s','%s',%d,'%s','%s','%s' );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->link_ID & ESCHER_IDDUMP_MASK),
    ((long)self->starting_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->where_clause_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->starting_Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->result_Var_ID & ESCHER_IDDUMP_MASK),
    self->by_where,
    ( 0 != self->where_clause ) ? self->where_clause : "",
    ( 0 != self->where_clause_OAL ) ? self->where_clause_OAL : "",
    ( 0 != self->multiplicity ) ? self->multiplicity : "",
    self->is_implicit,
    ( 0 != self->result_var ) ? self->result_var : "",
    ( 0 != self->result_var_OAL ) ? self->result_var_OAL : "",
    self->start_many,
    ( 0 != self->start_var ) ? self->start_var : "",
    ( 0 != self->start_var_OAL ) ? self->start_var_OAL : "",
    ( 0 != self->te_classGeneratedName ) ? self->te_classGeneratedName : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_SELECT_RELATED_container[ ooaofooa_TE_SELECT_RELATED_MAX_EXTENT_SIZE ];
static ooaofooa_TE_SELECT_RELATED ooaofooa_TE_SELECT_RELATED_instances[ ooaofooa_TE_SELECT_RELATED_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_SELECT_RELATED_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_SELECT_RELATED_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_SELECT_RELATED_instances,
  sizeof( ooaofooa_TE_SELECT_RELATED ), 0, ooaofooa_TE_SELECT_RELATED_MAX_EXTENT_SIZE
  };


