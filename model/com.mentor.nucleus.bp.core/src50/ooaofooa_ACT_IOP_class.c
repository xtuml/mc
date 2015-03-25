/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_IOP_class.c
 *
 * Class:       Interface Operation Invocation  (ACT_IOP)
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
ooaofooa_ACT_IOP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_IOP * self = (ooaofooa_ACT_IOP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->opNameLineNumber = Escher_atoi( avlstring[ 2 ] );
  self->opNameColumn = Escher_atoi( avlstring[ 3 ] );
  self->ownerNameLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->ownerNameColumn = Escher_atoi( avlstring[ 5 ] );
  self->ProvidedOp_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->RequiredOp_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_IOP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_IOP * ooaofooa_ACT_IOP_instance = (ooaofooa_ACT_IOP *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_IOP_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_IOP_R629_Link_is_target_of( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_IOP_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_IOP_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_IOP_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_IOP_instance );
  }
  }
  {
  ooaofooa_SPR_PO * ooaofooa_SPR_POrelated_instance1 = ooaofooa_SPR_PO_AnyWhere1( ooaofooa_ACT_IOP_instance->ProvidedOp_Id );
  if ( ooaofooa_SPR_POrelated_instance1 ) {
    ooaofooa_ACT_IOP_R680_Link( ooaofooa_SPR_POrelated_instance1, ooaofooa_ACT_IOP_instance );
  }
  }
  {
  ooaofooa_SPR_RO * ooaofooa_SPR_ROrelated_instance1 = ooaofooa_SPR_RO_AnyWhere1( ooaofooa_ACT_IOP_instance->RequiredOp_Id );
  if ( ooaofooa_SPR_ROrelated_instance1 ) {
    ooaofooa_ACT_IOP_R657_Link( ooaofooa_SPR_ROrelated_instance1, ooaofooa_ACT_IOP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_IOP *
ooaofooa_ACT_IOP_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_IOP * w; 
  Escher_Iterator_s iter_ACT_IOP;
  Escher_IteratorReset( &iter_ACT_IOP, &pG_ooaofooa_ACT_IOP_extent.active );
  while ( (w = (ooaofooa_ACT_IOP *) Escher_IteratorNext( &iter_ACT_IOP )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_IOP ACROSS R603
 */
void
ooaofooa_ACT_IOP_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_IOP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_IOP->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_IOP[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_IOP_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_IOP ACROSS R603
 */
void
ooaofooa_ACT_IOP_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_IOP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO ACT_IOP ACROSS R629
 */
void
ooaofooa_ACT_IOP_R629_Link_is_target_of( ooaofooa_V_VAL * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R629_has_target = part;
  Escher_SetInsertElement( &part->ACT_IOP_R629_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAL FROM ACT_IOP ACROSS R629
 */
void
ooaofooa_ACT_IOP_R629_Unlink_is_target_of( ooaofooa_V_VAL * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R629_has_target = 0;
  Escher_SetRemoveElement( &part->ACT_IOP_R629_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SPR_RO TO ACT_IOP ACROSS R657
 */
void
ooaofooa_ACT_IOP_R657_Link( ooaofooa_SPR_RO * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->RequiredOp_Id = part->Id;
  form->SPR_RO_R657_is_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_IOP_R657, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_RO FROM ACT_IOP ACROSS R657
 */
void
ooaofooa_ACT_IOP_R657_Unlink( ooaofooa_SPR_RO * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->RequiredOp_Id = 0;
  form->SPR_RO_R657_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_IOP_R657, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SPR_PO TO ACT_IOP ACROSS R680
 */
void
ooaofooa_ACT_IOP_R680_Link( ooaofooa_SPR_PO * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ProvidedOp_Id = part->Id;
  form->SPR_PO_R680_is_invocation_of = part;
  Escher_SetInsertElement( &part->ACT_IOP_R680, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_PO FROM ACT_IOP ACROSS R680
 */
void
ooaofooa_ACT_IOP_R680_Unlink( ooaofooa_SPR_PO * part, ooaofooa_ACT_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ProvidedOp_Id = 0;
  form->SPR_PO_R680_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->ACT_IOP_R680, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_IOP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_IOP * self = (ooaofooa_ACT_IOP *) instance;
  printf( "INSERT INTO ACT_IOP VALUES ( %ld,%d,%d,%d,%d,%ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->opNameLineNumber,
    self->opNameColumn,
    self->ownerNameLineNumber,
    self->ownerNameColumn,
    ((long)self->ProvidedOp_Id & ESCHER_IDDUMP_MASK),
    ((long)self->RequiredOp_Id & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_IOP_container[ ooaofooa_ACT_IOP_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_IOP ooaofooa_ACT_IOP_instances[ ooaofooa_ACT_IOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_IOP_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_IOP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_IOP_instances,
  sizeof( ooaofooa_ACT_IOP ), 0, ooaofooa_ACT_IOP_MAX_EXTENT_SIZE
  };


