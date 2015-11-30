/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_PAR_class.c
 *
 * Class:       Actual Parameter  (V_PAR)
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
ooaofooa_V_PAR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_PAR * self = (ooaofooa_V_PAR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Invocation_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  Escher_strcpy( self->Name, avlstring[ 4 ] );
  self->Next_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->labelLineNumber = Escher_atoi( avlstring[ 6 ] );
  self->labelColumn = Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_PAR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_PAR * ooaofooa_V_PAR_instance = (ooaofooa_V_PAR *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PAR_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_PAR_R800_Link_is_value_of( ooaofooa_V_VALrelated_instance1, ooaofooa_V_PAR_instance );
  }
  {
  ooaofooa_V_TRV * ooaofooa_V_TRVrelated_instance1 = ooaofooa_V_TRV_AnyWhere1( ooaofooa_V_PAR_instance->Invocation_Value_ID );
  if ( ooaofooa_V_TRVrelated_instance1 ) {
    ooaofooa_V_PAR_R811_Link_has( ooaofooa_V_TRVrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_V_MSV * ooaofooa_V_MSVrelated_instance1 = ooaofooa_V_MSV_AnyWhere1( ooaofooa_V_PAR_instance->Invocation_Value_ID );
  if ( ooaofooa_V_MSVrelated_instance1 ) {
    ooaofooa_V_PAR_R842_Link_has( ooaofooa_V_MSVrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_V_FNV * ooaofooa_V_FNVrelated_instance1 = ooaofooa_V_FNV_AnyWhere1( ooaofooa_V_PAR_instance->Invocation_Value_ID );
  if ( ooaofooa_V_FNVrelated_instance1 ) {
    ooaofooa_V_PAR_R817_Link_has( ooaofooa_V_FNVrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_V_BRV * ooaofooa_V_BRVrelated_instance1 = ooaofooa_V_BRV_AnyWhere1( ooaofooa_V_PAR_instance->Invocation_Value_ID );
  if ( ooaofooa_V_BRVrelated_instance1 ) {
    ooaofooa_V_PAR_R810_Link_has( ooaofooa_V_BRVrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_E_ESS * ooaofooa_E_ESSrelated_instance1 = ooaofooa_E_ESS_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_E_ESSrelated_instance1 ) {
    ooaofooa_V_PAR_R700_Link( ooaofooa_E_ESSrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_ACT_FNC * ooaofooa_ACT_FNCrelated_instance1 = ooaofooa_ACT_FNC_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_ACT_FNCrelated_instance1 ) {
    ooaofooa_V_PAR_R669_Link_takes( ooaofooa_ACT_FNCrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_ACT_BRG * ooaofooa_ACT_BRGrelated_instance1 = ooaofooa_ACT_BRG_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_ACT_BRGrelated_instance1 ) {
    ooaofooa_V_PAR_R628_Link_takes( ooaofooa_ACT_BRGrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_ACT_TFM * ooaofooa_ACT_TFMrelated_instance1 = ooaofooa_ACT_TFM_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_ACT_TFMrelated_instance1 ) {
    ooaofooa_V_PAR_R627_Link_takes( ooaofooa_ACT_TFMrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_ACT_IOP * ooaofooa_ACT_IOPrelated_instance1 = ooaofooa_ACT_IOP_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_ACT_IOPrelated_instance1 ) {
    ooaofooa_V_PAR_R679_Link_takes( ooaofooa_ACT_IOPrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_ACT_SGN * ooaofooa_ACT_SGNrelated_instance1 = ooaofooa_ACT_SGN_AnyWhere1( ooaofooa_V_PAR_instance->Statement_ID );
  if ( ooaofooa_ACT_SGNrelated_instance1 ) {
    ooaofooa_V_PAR_R662_Link_takes( ooaofooa_ACT_SGNrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
  {
  ooaofooa_V_PAR * ooaofooa_V_PARrelated_instance1 = ooaofooa_V_PAR_AnyWhere1( ooaofooa_V_PAR_instance->Next_Value_ID );
  if ( ooaofooa_V_PARrelated_instance1 ) {
    ooaofooa_V_PAR_R816_Link_precedes( ooaofooa_V_PARrelated_instance1, ooaofooa_V_PAR_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_PAR *
ooaofooa_V_PAR_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_PAR * w; 
  Escher_Iterator_s iter_V_PAR;
  Escher_IteratorReset( &iter_V_PAR, &pG_ooaofooa_V_PAR_extent.active );
  while ( (w = (ooaofooa_V_PAR *) Escher_IteratorNext( &iter_V_PAR )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_TFM TO V_PAR ACROSS R627
 */
void
ooaofooa_V_PAR_R627_Link_takes( ooaofooa_ACT_TFM * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_TFM_R627 = part;
  Escher_SetInsertElement( &part->V_PAR_R627_takes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_TFM FROM V_PAR ACROSS R627
 */
void
ooaofooa_V_PAR_R627_Unlink_takes( ooaofooa_ACT_TFM * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_TFM_R627 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R627_takes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_BRG TO V_PAR ACROSS R628
 */
void
ooaofooa_V_PAR_R628_Link_takes( ooaofooa_ACT_BRG * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_BRG_R628 = part;
  Escher_SetInsertElement( &part->V_PAR_R628_takes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_BRG FROM V_PAR ACROSS R628
 */
void
ooaofooa_V_PAR_R628_Unlink_takes( ooaofooa_ACT_BRG * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_BRG_R628 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R628_takes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_SGN TO V_PAR ACROSS R662
 */
void
ooaofooa_V_PAR_R662_Link_takes( ooaofooa_ACT_SGN * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_SGN_R662_taken_by = part;
  Escher_SetInsertElement( &part->V_PAR_R662_takes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_SGN FROM V_PAR ACROSS R662
 */
void
ooaofooa_V_PAR_R662_Unlink_takes( ooaofooa_ACT_SGN * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_SGN_R662_taken_by = 0;
  Escher_SetRemoveElement( &part->V_PAR_R662_takes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_FNC TO V_PAR ACROSS R669
 */
void
ooaofooa_V_PAR_R669_Link_takes( ooaofooa_ACT_FNC * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_FNC_R669 = part;
  Escher_SetInsertElement( &part->V_PAR_R669_takes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_FNC FROM V_PAR ACROSS R669
 */
void
ooaofooa_V_PAR_R669_Unlink_takes( ooaofooa_ACT_FNC * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_FNC_R669 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R669_takes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE ACT_IOP TO V_PAR ACROSS R679
 */
void
ooaofooa_V_PAR_R679_Link_takes( ooaofooa_ACT_IOP * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_IOP_R679_taken_by = part;
  Escher_SetInsertElement( &part->V_PAR_R679_takes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_IOP FROM V_PAR ACROSS R679
 */
void
ooaofooa_V_PAR_R679_Unlink_takes( ooaofooa_ACT_IOP * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_IOP_R679_taken_by = 0;
  Escher_SetRemoveElement( &part->V_PAR_R679_takes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE E_ESS TO V_PAR ACROSS R700
 */
void
ooaofooa_V_PAR_R700_Link( ooaofooa_E_ESS * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->E_ESS_R700 = part;
  Escher_SetInsertElement( &part->V_PAR_R700, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE E_ESS FROM V_PAR ACROSS R700
 */
void
ooaofooa_V_PAR_R700_Unlink( ooaofooa_E_ESS * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->E_ESS_R700 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R700, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAL TO V_PAR ACROSS R800
 */
void
ooaofooa_V_PAR_R800_Link_is_value_of( ooaofooa_V_VAL * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R800_has = part;
  part->V_PAR_R800_is_value_of = form;
}

/*
 * UNRELATE V_VAL FROM V_PAR ACROSS R800
 */
void
ooaofooa_V_PAR_R800_Unlink_is_value_of( ooaofooa_V_VAL * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_VAL_R800_has = 0;
  part->V_PAR_R800_is_value_of = 0;
}

/*
 * RELATE V_BRV TO V_PAR ACROSS R810
 */
void
ooaofooa_V_PAR_R810_Link_has( ooaofooa_V_BRV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Invocation_Value_ID = part->Value_ID;
  form->V_BRV_R810 = part;
  Escher_SetInsertElement( &part->V_PAR_R810_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_BRV FROM V_PAR ACROSS R810
 */
void
ooaofooa_V_PAR_R810_Unlink_has( ooaofooa_V_BRV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_BRV_R810 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R810_has, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_TRV TO V_PAR ACROSS R811
 */
void
ooaofooa_V_PAR_R811_Link_has( ooaofooa_V_TRV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Invocation_Value_ID = part->Value_ID;
  form->V_TRV_R811 = part;
  Escher_SetInsertElement( &part->V_PAR_R811_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_TRV FROM V_PAR ACROSS R811
 */
void
ooaofooa_V_PAR_R811_Unlink_has( ooaofooa_V_TRV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_TRV_R811 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R811_has, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> V_PAR TO <right> V_PAR ACROSS R816.'precedes'
 */
void
ooaofooa_V_PAR_R816_Link_precedes( ooaofooa_V_PAR * left, ooaofooa_V_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Value_ID = left->Value_ID;
  left->V_PAR_R816_precedes = right; /* SR L1 */
  right->V_PAR_R816_succeeds = left; /* SR L2 */
}

/*
 * UNRELATE <left> V_PAR FROM <right> V_PAR ACROSS R816.'precedes'
 */
void
ooaofooa_V_PAR_R816_Unlink_precedes( ooaofooa_V_PAR * left, ooaofooa_V_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Next_Value_ID = 0;
  left->V_PAR_R816_precedes = 0; /* SR U1 */
  right->V_PAR_R816_succeeds = 0; /* SR U2 */
}

/*
 * RELATE <left> V_PAR TO <right> V_PAR ACROSS R816.'succeeds'
 */
void
ooaofooa_V_PAR_R816_Link_succeeds( ooaofooa_V_PAR * left, ooaofooa_V_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Value_ID = right->Value_ID;
  right->V_PAR_R816_precedes = left; /* SR L4 */
  left->V_PAR_R816_succeeds = right; /* SR L5 */
}

/*
 * UNRELATE <left> V_PAR FROM <right> V_PAR ACROSS R816.'succeeds'
 */
void
ooaofooa_V_PAR_R816_Unlink_succeeds( ooaofooa_V_PAR * left, ooaofooa_V_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Next_Value_ID = 0;
  right->V_PAR_R816_precedes = 0; /* SR U4 */
  left->V_PAR_R816_succeeds = 0; /* SR U5 */
}

/*
 * RELATE V_FNV TO V_PAR ACROSS R817
 */
void
ooaofooa_V_PAR_R817_Link_has( ooaofooa_V_FNV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Invocation_Value_ID = part->Value_ID;
  form->V_FNV_R817 = part;
  Escher_SetInsertElement( &part->V_PAR_R817_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_FNV FROM V_PAR ACROSS R817
 */
void
ooaofooa_V_PAR_R817_Unlink_has( ooaofooa_V_FNV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_FNV_R817 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R817_has, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_MSV TO V_PAR ACROSS R842
 */
void
ooaofooa_V_PAR_R842_Link_has( ooaofooa_V_MSV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Invocation_Value_ID = part->Value_ID;
  form->V_MSV_R842 = part;
  Escher_SetInsertElement( &part->V_PAR_R842_has, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_MSV FROM V_PAR ACROSS R842
 */
void
ooaofooa_V_PAR_R842_Unlink_has( ooaofooa_V_MSV * part, ooaofooa_V_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->V_MSV_R842 = 0;
  Escher_SetRemoveElement( &part->V_PAR_R842_has, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_PAR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_PAR * self = (ooaofooa_V_PAR *) instance;
  printf( "INSERT INTO V_PAR VALUES ( %ld,%ld,%ld,'%s',%ld,%d,%d );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Invocation_Value_ID & ESCHER_IDDUMP_MASK),
    self->Name,
    ((long)self->Next_Value_ID & ESCHER_IDDUMP_MASK),
    self->labelLineNumber,
    self->labelColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_PAR_container[ ooaofooa_V_PAR_MAX_EXTENT_SIZE ];
static ooaofooa_V_PAR ooaofooa_V_PAR_instances[ ooaofooa_V_PAR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_PAR_extent = {
  {0,0}, {0,0}, &ooaofooa_V_PAR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_PAR_instances,
  sizeof( ooaofooa_V_PAR ), 0, ooaofooa_V_PAR_MAX_EXTENT_SIZE
  };


