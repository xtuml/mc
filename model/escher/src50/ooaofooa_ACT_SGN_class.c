/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SGN_class.c
 *
 * Class:       Signal Invocation  (ACT_SGN)
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
ooaofooa_ACT_SGN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_SGN * self = (ooaofooa_ACT_SGN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->sigNameLineNumber = Escher_atoi( avlstring[ 2 ] );
  self->sigNameColumn = Escher_atoi( avlstring[ 3 ] );
  self->ownerNameLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->ownerNameColumn = Escher_atoi( avlstring[ 5 ] );
  self->ProvidedSig_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->RequiredSig_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_SGN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SGN * ooaofooa_ACT_SGN_instance = (ooaofooa_ACT_SGN *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SGN_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_SGN_R630_Link_is_target_of( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_SGN_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_SGN_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_SGN_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_SGN_instance );
  }
  }
  {
  ooaofooa_SPR_PS * ooaofooa_SPR_PSrelated_instance1 = ooaofooa_SPR_PS_AnyWhere1( ooaofooa_ACT_SGN_instance->ProvidedSig_Id );
  if ( ooaofooa_SPR_PSrelated_instance1 ) {
    ooaofooa_ACT_SGN_R663_Link( ooaofooa_SPR_PSrelated_instance1, ooaofooa_ACT_SGN_instance );
  }
  }
  {
  ooaofooa_SPR_RS * ooaofooa_SPR_RSrelated_instance1 = ooaofooa_SPR_RS_AnyWhere1( ooaofooa_ACT_SGN_instance->RequiredSig_Id );
  if ( ooaofooa_SPR_RSrelated_instance1 ) {
    ooaofooa_ACT_SGN_R660_Link( ooaofooa_SPR_RSrelated_instance1, ooaofooa_ACT_SGN_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_SGN *
ooaofooa_ACT_SGN_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_SGN * w; 
  Escher_Iterator_s iter_ACT_SGN;
  Escher_IteratorReset( &iter_ACT_SGN, &pG_ooaofooa_ACT_SGN_extent.active );
  while ( (w = (ooaofooa_ACT_SGN *) Escher_IteratorNext( &iter_ACT_SGN )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_SGN ACROSS R603
 */
void
ooaofooa_ACT_SGN_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_SGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_SGN->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_SGN[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_SGN_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_SGN ACROSS R603
 */
void
ooaofooa_ACT_SGN_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_SGN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO ACT_SGN ACROSS R630
 */
void
ooaofooa_ACT_SGN_R630_Link_is_target_of( ooaofooa_V_VAL * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R630_has_target = part;
  Escher_SetInsertElement( &part->ACT_SGN_R630_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAL FROM ACT_SGN ACROSS R630
 */
void
ooaofooa_ACT_SGN_R630_Unlink_is_target_of( ooaofooa_V_VAL * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R630_has_target = 0;
  Escher_SetRemoveElement( &part->ACT_SGN_R630_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SPR_RS TO ACT_SGN ACROSS R660
 */
void
ooaofooa_ACT_SGN_R660_Link( ooaofooa_SPR_RS * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->RequiredSig_Id = part->Id;
  form->SPR_RS_R660_is_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_SGN_R660, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_RS FROM ACT_SGN ACROSS R660
 */
void
ooaofooa_ACT_SGN_R660_Unlink( ooaofooa_SPR_RS * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->RequiredSig_Id = 0;
  form->SPR_RS_R660_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_SGN_R660, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SPR_PS TO ACT_SGN ACROSS R663
 */
void
ooaofooa_ACT_SGN_R663_Link( ooaofooa_SPR_PS * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ProvidedSig_Id = part->Id;
  form->SPR_PS_R663_is_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_SGN_R663, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_PS FROM ACT_SGN ACROSS R663
 */
void
ooaofooa_ACT_SGN_R663_Unlink( ooaofooa_SPR_PS * part, ooaofooa_ACT_SGN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ProvidedSig_Id = 0;
  form->SPR_PS_R663_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_SGN_R663, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_SGN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_SGN * self = (ooaofooa_ACT_SGN *) instance;
  printf( "INSERT INTO ACT_SGN VALUES ( %ld,%d,%d,%d,%d,%ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->sigNameLineNumber,
    self->sigNameColumn,
    self->ownerNameLineNumber,
    self->ownerNameColumn,
    ((long)self->ProvidedSig_Id & ESCHER_IDDUMP_MASK),
    ((long)self->RequiredSig_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_SGN_container[ ooaofooa_ACT_SGN_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_SGN ooaofooa_ACT_SGN_instances[ ooaofooa_ACT_SGN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_SGN_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_SGN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_SGN_instances,
  sizeof( ooaofooa_ACT_SGN ), 0, ooaofooa_ACT_SGN_MAX_EXTENT_SIZE
  };


