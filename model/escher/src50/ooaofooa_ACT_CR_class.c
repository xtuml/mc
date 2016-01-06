/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CR_class.c
 *
 * Class:       Create  (ACT_CR)
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
ooaofooa_ACT_CR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_CR * self = (ooaofooa_ACT_CR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->is_implicit = ( '0' != *avlstring[ 3 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->modelClassKeyLettersLineNumber = Escher_atoi( avlstring[ 5 ] );
  self->modelClassKeyLettersColumn = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_CR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CR * ooaofooa_ACT_CR_instance = (ooaofooa_ACT_CR *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_CR_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_CR_R633_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_CR_instance );
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_CR_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_CR_R671_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_CR_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_CR_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_CR_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_CR_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_CR ACROSS R603
 */
void
ooaofooa_ACT_CR_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_CR->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_CR[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_CR_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_CR ACROSS R603
 */
void
ooaofooa_ACT_CR_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_CR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAR TO ACT_CR ACROSS R633
 */
void
ooaofooa_ACT_CR_R633_Link( ooaofooa_V_VAR * part, ooaofooa_ACT_CR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R633_result = part;
  Escher_SetInsertElement( &part->ACT_CR_R633, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_CR ACROSS R633
 */
void
ooaofooa_ACT_CR_R633_Unlink( ooaofooa_V_VAR * part, ooaofooa_ACT_CR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R633_result = 0;
  Escher_SetRemoveElement( &part->ACT_CR_R633, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO ACT_CR ACROSS R671
 */
void
ooaofooa_ACT_CR_R671_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_CR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R671_instance_of = part;
  Escher_SetInsertElement( &part->ACT_CR_R671, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_CR ACROSS R671
 */
void
ooaofooa_ACT_CR_R671_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_CR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R671_instance_of = 0;
  Escher_SetRemoveElement( &part->ACT_CR_R671, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_CR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_CR * self = (ooaofooa_ACT_CR *) instance;
  printf( "INSERT INTO ACT_CR VALUES ( %ld,%ld,%d,%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    self->modelClassKeyLettersLineNumber,
    self->modelClassKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_CR_container[ ooaofooa_ACT_CR_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_CR ooaofooa_ACT_CR_instances[ ooaofooa_ACT_CR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_CR_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_CR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_CR_instances,
  sizeof( ooaofooa_ACT_CR ), 0, ooaofooa_ACT_CR_MAX_EXTENT_SIZE
  };


