/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FOR_class.c
 *
 * Class:       For Stmt  (ACT_FOR)
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
ooaofooa_ACT_FOR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_FOR * self = (ooaofooa_ACT_FOR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->is_implicit = ( '0' != *avlstring[ 3 ] );
  self->Loop_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Set_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_FOR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FOR * ooaofooa_ACT_FOR_instance = (ooaofooa_ACT_FOR *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FOR_instance->Loop_Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_FOR_R614_Link_is_loop_variable( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_FOR_instance );
  }
  {
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FOR_instance->Set_Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_FOR_R652_Link_is_set_variable( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_FOR_instance );
  }
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_FOR_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_FOR_R670_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_FOR_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FOR_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_FOR_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_FOR_instance );
  }
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FOR_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_FOR_R605_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_FOR_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_FOR ACROSS R603
 */
void
ooaofooa_ACT_FOR_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FOR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_FOR->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_FOR[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_FOR_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_FOR ACROSS R603
 */
void
ooaofooa_ACT_FOR_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FOR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE ACT_BLK TO ACT_FOR ACROSS R605
 */
void
ooaofooa_ACT_FOR_R605_Link( ooaofooa_ACT_BLK * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R605_controls = part;
  part->ACT_FOR_R605 = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_FOR ACROSS R605
 */
void
ooaofooa_ACT_FOR_R605_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R605_controls = 0;
  part->ACT_FOR_R605 = 0;
}

/*
 * RELATE V_VAR TO ACT_FOR ACROSS R614
 */
void
ooaofooa_ACT_FOR_R614_Link_is_loop_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Loop_Var_ID = part->Var_ID;
  form->V_VAR_R614_loop = part;
  Escher_SetInsertElement( &part->ACT_FOR_R614_is_loop_variable, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_FOR ACROSS R614
 */
void
ooaofooa_ACT_FOR_R614_Unlink_is_loop_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Loop_Var_ID = 0;
  form->V_VAR_R614_loop = 0;
  Escher_SetRemoveElement( &part->ACT_FOR_R614_is_loop_variable, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAR TO ACT_FOR ACROSS R652
 */
void
ooaofooa_ACT_FOR_R652_Link_is_set_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Set_Var_ID = part->Var_ID;
  form->V_VAR_R652_set = part;
  Escher_SetInsertElement( &part->ACT_FOR_R652_is_set_variable, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_FOR ACROSS R652
 */
void
ooaofooa_ACT_FOR_R652_Unlink_is_set_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Set_Var_ID = 0;
  form->V_VAR_R652_set = 0;
  Escher_SetRemoveElement( &part->ACT_FOR_R652_is_set_variable, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO ACT_FOR ACROSS R670
 */
void
ooaofooa_ACT_FOR_R670_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R670_iterates_a_set_of = part;
  Escher_SetInsertElement( &part->ACT_FOR_R670, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_FOR ACROSS R670
 */
void
ooaofooa_ACT_FOR_R670_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_FOR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R670_iterates_a_set_of = 0;
  Escher_SetRemoveElement( &part->ACT_FOR_R670, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_FOR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FOR * self = (ooaofooa_ACT_FOR *) instance;
  printf( "INSERT INTO ACT_FOR VALUES ( %ld,%ld,%d,%ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ((long)self->Loop_Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Set_Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_FOR_container[ ooaofooa_ACT_FOR_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_FOR ooaofooa_ACT_FOR_instances[ ooaofooa_ACT_FOR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_FOR_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_FOR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_FOR_instances,
  sizeof( ooaofooa_ACT_FOR ), 0, ooaofooa_ACT_FOR_MAX_EXTENT_SIZE
  };


