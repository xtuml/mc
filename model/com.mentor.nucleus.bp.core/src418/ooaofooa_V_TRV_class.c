/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TRV_class.c
 *
 * Class:       Operation Value  (V_TRV)
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
ooaofooa_V_TRV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_TRV * self = (ooaofooa_V_TRV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Tfr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Var_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->ParmListOK = ( '0' != *avlstring[ 4 ] );
  self->modelClassKeyLettersLineNumber = Escher_atoi( avlstring[ 5 ] );
  self->modelClassKeyLettersColumn = Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_TRV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_TRV * ooaofooa_V_TRV_instance = (ooaofooa_V_TRV *) instance;
  ooaofooa_V_VAR * ooaofooa_V_VARrelated_instance1 = (ooaofooa_V_VAR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TRV_instance->Var_ID ];
  if ( ooaofooa_V_VARrelated_instance1 ) {
    ooaofooa_V_TRV_R830_Link_variable( ooaofooa_V_VARrelated_instance1, ooaofooa_V_TRV_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TRV_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_TRV_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_TRV_instance );
  }
  }
  {
  ooaofooa_O_TFR * ooaofooa_O_TFRrelated_instance1 = (ooaofooa_O_TFR *) Escher_instance_cache[ (intptr_t) ooaofooa_V_TRV_instance->Tfr_ID ];
  if ( ooaofooa_O_TFRrelated_instance1 ) {
    ooaofooa_V_TRV_R829_Link( ooaofooa_O_TFRrelated_instance1, ooaofooa_V_TRV_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_V_TRV *
ooaofooa_V_TRV_AnyWhere1( Escher_UniqueID_t w_Value_ID )
{
  ooaofooa_V_TRV * w; 
  Escher_Iterator_s iter_V_TRV;
  Escher_IteratorReset( &iter_V_TRV, &pG_ooaofooa_V_TRV_extent.active );
  while ( (w = (ooaofooa_V_TRV *) Escher_IteratorNext( &iter_V_TRV )) != 0 ) {
    if ( w->Value_ID == w_Value_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE V_VAL TO V_TRV ACROSS R801
 */
void
ooaofooa_V_TRV_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_TRV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_TRV->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_TRV[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_TRV_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_TRV ACROSS R801
 */
void
ooaofooa_V_TRV_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_TRV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE O_TFR TO V_TRV ACROSS R829
 */
void
ooaofooa_V_TRV_R829_Link( ooaofooa_O_TFR * part, ooaofooa_V_TRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = part->Tfr_ID;
  form->O_TFR_R829 = part;
  Escher_SetInsertElement( &part->V_TRV_R829, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TFR FROM V_TRV ACROSS R829
 */
void
ooaofooa_V_TRV_R829_Unlink( ooaofooa_O_TFR * part, ooaofooa_V_TRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Tfr_ID = 0;
  form->O_TFR_R829 = 0;
  Escher_SetRemoveElement( &part->V_TRV_R829, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAR TO V_TRV ACROSS R830
 */
void
ooaofooa_V_TRV_R830_Link_variable( ooaofooa_V_VAR * part, ooaofooa_V_TRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = part->Var_ID;
  form->V_VAR_R830 = part;
  Escher_SetInsertElement( &part->V_TRV_R830_variable, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE V_VAR FROM V_TRV ACROSS R830
 */
void
ooaofooa_V_TRV_R830_Unlink_variable( ooaofooa_V_VAR * part, ooaofooa_V_TRV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Var_ID = 0;
  form->V_VAR_R830 = 0;
  Escher_SetRemoveElement( &part->V_TRV_R830_variable, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_TRV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_TRV * self = (ooaofooa_V_TRV *) instance;
  printf( "INSERT INTO V_TRV VALUES ( %ld,%ld,%ld,%d,%d,%d );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Tfr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Var_ID & ESCHER_IDDUMP_MASK),
    self->ParmListOK,
    self->modelClassKeyLettersLineNumber,
    self->modelClassKeyLettersColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_TRV_container[ ooaofooa_V_TRV_MAX_EXTENT_SIZE ];
static ooaofooa_V_TRV ooaofooa_V_TRV_instances[ ooaofooa_V_TRV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_TRV_extent = {
  {0,0}, {0,0}, &ooaofooa_V_TRV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_TRV_instances,
  sizeof( ooaofooa_V_TRV ), 0, ooaofooa_V_TRV_MAX_EXTENT_SIZE
  };


