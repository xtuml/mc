/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_FIO_class.c
 *
 * Class:       Select From Instances  (ACT_FIO)
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
ooaofooa_ACT_FIO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_FIO * self = (ooaofooa_ACT_FIO *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->is_implicit = ( '0' != *avlstring[ 3 ] );
  Escher_strcpy( self->cardinality, avlstring[ 4 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->extentLineNumber = Escher_atoi( avlstring[ 6 ] );
  self->extentColumn = Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_FIO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FIO * ooaofooa_ACT_FIO_instance = (ooaofooa_ACT_FIO *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FIO_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_FIO_R639_Link( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_FIO_instance );
  }
  {
  ooaofooa_O_OBJ * ooaofooa_O_OBJrelated_instance1 = ooaofooa_O_OBJ_AnyWhere1( ooaofooa_ACT_FIO_instance->Obj_ID );
  if ( ooaofooa_O_OBJrelated_instance1 ) {
    ooaofooa_ACT_FIO_R677_Link( ooaofooa_O_OBJrelated_instance1, ooaofooa_ACT_FIO_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_FIO_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_FIO_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_FIO_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_FIO ACROSS R603
 */
void
ooaofooa_ACT_FIO_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FIO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_FIO->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_FIO[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_FIO_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_FIO ACROSS R603
 */
void
ooaofooa_ACT_FIO_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_FIO * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAR TO ACT_FIO ACROSS R639
 */
void
ooaofooa_ACT_FIO_R639_Link( ooaofooa_V_VAR * part, ooaofooa_ACT_FIO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R639_selection = part;
  Escher_SetInsertElement( &part->ACT_FIO_R639, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_FIO ACROSS R639
 */
void
ooaofooa_ACT_FIO_R639_Unlink( ooaofooa_V_VAR * part, ooaofooa_ACT_FIO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R639_selection = 0;
  Escher_SetRemoveElement( &part->ACT_FIO_R639, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_OBJ TO ACT_FIO ACROSS R677
 */
void
ooaofooa_ACT_FIO_R677_Link( ooaofooa_O_OBJ * part, ooaofooa_ACT_FIO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = part->Obj_ID;
  form->O_OBJ_R677_from_extent_of = part;
  Escher_SetInsertElement( &part->ACT_FIO_R677, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_OBJ FROM ACT_FIO ACROSS R677
 */
void
ooaofooa_ACT_FIO_R677_Unlink( ooaofooa_O_OBJ * part, ooaofooa_ACT_FIO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Obj_ID = 0;
  form->O_OBJ_R677_from_extent_of = 0;
  Escher_SetRemoveElement( &part->ACT_FIO_R677, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_FIO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_FIO * self = (ooaofooa_ACT_FIO *) instance;
  printf( "INSERT INTO ACT_FIO VALUES ( %ld,%ld,%d,'%s',%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->is_implicit,
    self->cardinality,
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
static Escher_SetElement_s ooaofooa_ACT_FIO_container[ ooaofooa_ACT_FIO_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_FIO ooaofooa_ACT_FIO_instances[ ooaofooa_ACT_FIO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_FIO_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_FIO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_FIO_instances,
  sizeof( ooaofooa_ACT_FIO ), 0, ooaofooa_ACT_FIO_MAX_EXTENT_SIZE
  };


