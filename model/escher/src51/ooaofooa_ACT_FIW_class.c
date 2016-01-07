/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FIW_class.c
 *
 * Class:       Select From Instances Where  (ACT_FIW)
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
ooaofooa_ACT_FIW_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_FIW * self = (ooaofooa_ACT_FIW *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->is_implicit = ( '0' != *avlstring[ 3 ] );
  self->cardinality = Escher_strcpy( self->cardinality, avlstring[ 4 ] );
  self->Where_Clause_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->extentLineNumber = Escher_atoi( avlstring[ 7 ] );
  self->extentColumn = Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_FIW_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FIW * ooaofooa_ACT_FIW_instance = (ooaofooa_ACT_FIW *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FIW_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_FIW_R665_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_FIW_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FIW_instance->Where_Clause_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_FIW_R610_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_FIW_instance );
  }
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_FIW_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_FIW_R676_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_FIW_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FIW_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_FIW_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_FIW_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_FIW ACROSS R603
 */
void
ooaofooa_ACT_FIW_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FIW * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_FIW->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_FIW[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_FIW_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_FIW ACROSS R603
 */
void
ooaofooa_ACT_FIW_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FIW * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO ACT_FIW ACROSS R610
 */
void
ooaofooa_ACT_FIW_R610_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Where_Clause_Value_ID = part->Value_ID;
  form->V_VAL_R610_where_clause = part;
  part->ACT_FIW_R610 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_FIW ACROSS R610
 */
void
ooaofooa_ACT_FIW_R610_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Where_Clause_Value_ID = 0;
  form->V_VAL_R610_where_clause = 0;
  part->ACT_FIW_R610 = 0;
}

/*
 * RELATE V_VAR TO ACT_FIW ACROSS R665
 */
void
ooaofooa_ACT_FIW_R665_Link( ooaofooa_V_VAR * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R665_result = part;
  Escher_SetInsertElement( &part->ACT_FIW_R665, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_FIW ACROSS R665
 */
void
ooaofooa_ACT_FIW_R665_Unlink( ooaofooa_V_VAR * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R665_result = 0;
  Escher_SetRemoveElement( &part->ACT_FIW_R665, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO ACT_FIW ACROSS R676
 */
void
ooaofooa_ACT_FIW_R676_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R676_from_extent_of = part;
  Escher_SetInsertElement( &part->ACT_FIW_R676, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_FIW ACROSS R676
 */
void
ooaofooa_ACT_FIW_R676_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_FIW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R676_from_extent_of = 0;
  Escher_SetRemoveElement( &part->ACT_FIW_R676, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_FIW_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FIW * self = (ooaofooa_ACT_FIW *) instance;
  printf( "INSERT INTO ACT_FIW VALUES ( %ld,%ld,%d,'%s',%ld,%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ( 0 != self->cardinality ) ? self->cardinality : "",
    ((long)self->Where_Clause_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->extentLineNumber,
    self->extentColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_FIW_container[ ooaofooa_ACT_FIW_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_FIW ooaofooa_ACT_FIW_instances[ ooaofooa_ACT_FIW_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_FIW_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_FIW_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_FIW_instances,
  sizeof( ooaofooa_ACT_FIW ), 0, ooaofooa_ACT_FIW_MAX_EXTENT_SIZE
  };


