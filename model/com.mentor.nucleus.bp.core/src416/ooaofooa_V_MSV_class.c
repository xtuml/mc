/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_MSV_class.c
 *
 * Class:       Message Value  (V_MSV)
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
ooaofooa_V_MSV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_MSV * self = (ooaofooa_V_MSV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->PEP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->REP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->ParmListOK = ( '0' != *avlstring[ 4 ] );
  self->ownerNameLineNumber = Escher_atoi( avlstring[ 5 ] );
  self->ownerNameColumn = Escher_atoi( avlstring[ 6 ] );
  self->Target_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_MSV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_MSV * ooaofooa_V_MSV_instance = (ooaofooa_V_MSV *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MSV_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_MSV_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_MSV_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MSV_instance->Target_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_MSV_R851_Link_is_target_of( ooaofooa_V_VALrelated_instance1, ooaofooa_V_MSV_instance );
  }
  }
  {
  ooaofooa_SPR_PEP * ooaofooa_SPR_PEPrelated_instance1 = (ooaofooa_SPR_PEP *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MSV_instance->PEP_Id ];
  if ( ooaofooa_SPR_PEPrelated_instance1 ) {
    ooaofooa_V_MSV_R841_Link( ooaofooa_SPR_PEPrelated_instance1, ooaofooa_V_MSV_instance );
  }
  }
  {
  ooaofooa_SPR_REP * ooaofooa_SPR_REPrelated_instance1 = (ooaofooa_SPR_REP *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MSV_instance->REP_Id ];
  if ( ooaofooa_SPR_REPrelated_instance1 ) {
    ooaofooa_V_MSV_R845_Link( ooaofooa_SPR_REPrelated_instance1, ooaofooa_V_MSV_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_MSV *
ooaofooa_V_MSV_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_MSV * w; 
  Escher_Iterator_s iter_V_MSV;
  Escher_IteratorReset( &iter_V_MSV, &pG_ooaofooa_V_MSV_extent.active );
  while ( (w = (ooaofooa_V_MSV *) Escher_IteratorNext( &iter_V_MSV )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAL TO V_MSV ACROSS R801
 */
void
ooaofooa_V_MSV_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_MSV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_MSV->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_MSV[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_MSV_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_MSV ACROSS R801
 */
void
ooaofooa_V_MSV_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_MSV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE SPR_PEP TO V_MSV ACROSS R841
 */
void
ooaofooa_V_MSV_R841_Link( ooaofooa_SPR_PEP * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PEP_Id = part->Id;
  form->SPR_PEP_R841 = part;
  Escher_SetInsertElement( &part->V_MSV_R841, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_PEP FROM V_MSV ACROSS R841
 */
void
ooaofooa_V_MSV_R841_Unlink( ooaofooa_SPR_PEP * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PEP_Id = 0;
  form->SPR_PEP_R841 = 0;
  Escher_SetRemoveElement( &part->V_MSV_R841, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SPR_REP TO V_MSV ACROSS R845
 */
void
ooaofooa_V_MSV_R845_Link( ooaofooa_SPR_REP * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->REP_Id = part->Id;
  form->SPR_REP_R845 = part;
  Escher_SetInsertElement( &part->V_MSV_R845, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SPR_REP FROM V_MSV ACROSS R845
 */
void
ooaofooa_V_MSV_R845_Unlink( ooaofooa_SPR_REP * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->REP_Id = 0;
  form->SPR_REP_R845 = 0;
  Escher_SetRemoveElement( &part->V_MSV_R845, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAL TO V_MSV ACROSS R851
 */
void
ooaofooa_V_MSV_R851_Link_is_target_of( ooaofooa_V_VAL * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Target_Value_ID = part->Value_ID;
  form->V_VAL_R851_has_target = part;
  Escher_SetInsertElement( &part->V_MSV_R851_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAL FROM V_MSV ACROSS R851
 */
void
ooaofooa_V_MSV_R851_Unlink_is_target_of( ooaofooa_V_VAL * part, ooaofooa_V_MSV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Target_Value_ID = 0;
  form->V_VAL_R851_has_target = 0;
  Escher_SetRemoveElement( &part->V_MSV_R851_is_target_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_MSV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_MSV * self = (ooaofooa_V_MSV *) instance;
  printf( "INSERT INTO V_MSV VALUES ( %ld,%ld,%ld,%d,%d,%d,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PEP_Id & ESCHER_IDDUMP_MASK),
    ((long)self->REP_Id & ESCHER_IDDUMP_MASK),
    self->ParmListOK,
    self->ownerNameLineNumber,
    self->ownerNameColumn,
    ((long)self->Target_Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_MSV_container[ ooaofooa_V_MSV_MAX_EXTENT_SIZE ];
static ooaofooa_V_MSV ooaofooa_V_MSV_instances[ ooaofooa_V_MSV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_MSV_extent = {
  {0,0}, {0,0}, &ooaofooa_V_MSV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_MSV_instances,
  sizeof( ooaofooa_V_MSV ), 0, ooaofooa_V_MSV_MAX_EXTENT_SIZE
  };


