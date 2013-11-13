/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_REL_class.c
 *
 * Class:       Relate  (ACT_REL)
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
ooaofooa_ACT_REL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_REL * self = (ooaofooa_ACT_REL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->One_Side_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Other_Side_Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->relationship_phrase, avlstring[ 4 ] );
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->associationNumberLineNumber = Escher_atoi( avlstring[ 6 ] );
  self->associationNumberColumn = Escher_atoi( avlstring[ 7 ] );
  self->associationPhraseLineNumber = Escher_atoi( avlstring[ 8 ] );
  self->associationPhraseColumn = Escher_atoi( avlstring[ 9 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_REL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_REL * ooaofooa_ACT_REL_instance = (ooaofooa_ACT_REL *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_REL_instance->One_Side_Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_REL_R615_Link_is_one_variable( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_REL_instance );
  }
  {
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_REL_instance->Other_Side_Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_REL_R616_Link_is_other_variable( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_REL_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_REL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_REL_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_REL_instance );
  }
  }
  {
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_ACT_REL_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_ACT_REL_R653_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_ACT_REL_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_REL ACROSS R603
 */
void
ooaofooa_ACT_REL_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_REL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_REL->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_REL[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_REL_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_REL ACROSS R603
 */
void
ooaofooa_ACT_REL_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_REL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAR TO ACT_REL ACROSS R615
 */
void
ooaofooa_ACT_REL_R615_Link_is_one_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->One_Side_Var_ID = part->Var_ID;
  form->V_VAR_R615_one = part;
  Escher_SetInsertElement( &part->ACT_REL_R615_is_one_variable, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_REL ACROSS R615
 */
void
ooaofooa_ACT_REL_R615_Unlink_is_one_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->One_Side_Var_ID = 0;
  form->V_VAR_R615_one = 0;
  Escher_SetRemoveElement( &part->ACT_REL_R615_is_one_variable, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAR TO ACT_REL ACROSS R616
 */
void
ooaofooa_ACT_REL_R616_Link_is_other_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Other_Side_Var_ID = part->Var_ID;
  form->V_VAR_R616_other = part;
  Escher_SetInsertElement( &part->ACT_REL_R616_is_other_variable, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_REL ACROSS R616
 */
void
ooaofooa_ACT_REL_R616_Unlink_is_other_variable( ooaofooa_V_VAR * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Other_Side_Var_ID = 0;
  form->V_VAR_R616_other = 0;
  Escher_SetRemoveElement( &part->ACT_REL_R616_is_other_variable, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_REL TO ACT_REL ACROSS R653
 */
void
ooaofooa_ACT_REL_R653_Link( ooaofooa_R_REL * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R653_creates = part;
  Escher_SetInsertElement( &part->ACT_REL_R653, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_REL FROM ACT_REL ACROSS R653
 */
void
ooaofooa_ACT_REL_R653_Unlink( ooaofooa_R_REL * part, ooaofooa_ACT_REL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = 0;
  form->R_REL_R653_creates = 0;
  Escher_SetRemoveElement( &part->ACT_REL_R653, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_REL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_REL * self = (ooaofooa_ACT_REL *) instance;
  printf( "INSERT INTO ACT_REL VALUES ( %ld,%ld,%ld,'%s',%ld,%d,%d,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->One_Side_Var_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Other_Side_Var_ID & ESCHER_IDDUMP_MASK),
    self->relationship_phrase,
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    self->associationNumberLineNumber,
    self->associationNumberColumn,
    self->associationPhraseLineNumber,
    self->associationPhraseColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_REL_container[ ooaofooa_ACT_REL_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_REL ooaofooa_ACT_REL_instances[ ooaofooa_ACT_REL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_REL_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_REL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_REL_instances,
  sizeof( ooaofooa_ACT_REL ), 0, ooaofooa_ACT_REL_MAX_EXTENT_SIZE
  };


