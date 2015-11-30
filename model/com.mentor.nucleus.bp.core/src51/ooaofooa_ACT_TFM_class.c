/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_TFM_class.c
 *
 * Class:       Operation Invocation  (ACT_TFM)
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
ooaofooa_ACT_TFM_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_TFM * self = (ooaofooa_ACT_TFM *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->operationNameLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->operationNameColumn = Escher_atoi( avlstring[ 5 ] );
  self->modelClassKeyLettersLineNumber = Escher_atoi( avlstring[ 6 ] );
  self->modelClassKeyLettersColumn = Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_TFM_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_TFM * ooaofooa_ACT_TFM_instance = (ooaofooa_ACT_TFM *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_TFM_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_ACT_TFM_R667_Link_is_target_of( ooaofooa_V_VARrelated_instance1, ooaofooa_ACT_TFM_instance );
  }
  {
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_TFM_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_ACT_TFM_R673_Link( ooaofooa_O_TFRrelated_instance1, ooaofooa_ACT_TFM_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_TFM_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_TFM_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_TFM_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_TFM *
ooaofooa_ACT_TFM_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_TFM * w; 
  Escher_Iterator_s iter_ACT_TFM;
  Escher_IteratorReset( &iter_ACT_TFM, &pG_ooaofooa_ACT_TFM_extent.active );
  while ( (w = (ooaofooa_ACT_TFM *) Escher_IteratorNext( &iter_ACT_TFM )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_TFM ACROSS R603
 */
void
ooaofooa_ACT_TFM_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_TFM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_TFM->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_TFM[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_TFM_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_TFM ACROSS R603
 */
void
ooaofooa_ACT_TFM_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_TFM * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAR TO ACT_TFM ACROSS R667
 */
void
ooaofooa_ACT_TFM_R667_Link_is_target_of( ooaofooa_V_VAR * part, ooaofooa_ACT_TFM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R667_has_target = part;
  Escher_SetInsertElement( &part->ACT_TFM_R667_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM ACT_TFM ACROSS R667
 */
void
ooaofooa_ACT_TFM_R667_Unlink_is_target_of( ooaofooa_V_VAR * part, ooaofooa_ACT_TFM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R667_has_target = 0;
  Escher_SetRemoveElement( &part->ACT_TFM_R667_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_TFR TO ACT_TFM ACROSS R673
 */
void
ooaofooa_ACT_TFM_R673_Link( ooaofooa_O_TFR * part, ooaofooa_ACT_TFM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R673_is_an_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_TFM_R673, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TFR FROM ACT_TFM ACROSS R673
 */
void
ooaofooa_ACT_TFM_R673_Unlink( ooaofooa_O_TFR * part, ooaofooa_ACT_TFM * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R673_is_an_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_TFM_R673, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_TFM_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_TFM * self = (ooaofooa_ACT_TFM *) instance;
  printf( "INSERT INTO ACT_TFM VALUES ( %ld,%ld,%ld,%d,%d,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->operationNameLineNumber,
    self->operationNameColumn,
    self->modelClassKeyLettersLineNumber,
    self->modelClassKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_TFM_container[ ooaofooa_ACT_TFM_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_TFM ooaofooa_ACT_TFM_instances[ ooaofooa_ACT_TFM_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_TFM_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_TFM_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_TFM_instances,
  sizeof( ooaofooa_ACT_TFM ), 0, ooaofooa_ACT_TFM_MAX_EXTENT_SIZE
  };


