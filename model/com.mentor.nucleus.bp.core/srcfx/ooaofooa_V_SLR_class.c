/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_SLR_class.c
 *
 * Class:       Selected Reference  (V_SLR)
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
ooaofooa_V_SLR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_SLR * self = (ooaofooa_V_SLR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Op_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_SLR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_SLR * ooaofooa_V_SLR_instance = (ooaofooa_V_SLR *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_SLR_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_SLR_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_SLR_instance );
  }
  {
  ooaofooa_V_TRV * ooaofooa_V_TRVrelated_instance1 = ooaofooa_V_TRV_AnyWhere1( ooaofooa_V_SLR_instance->Op_Value_ID );
  if ( ooaofooa_V_TRVrelated_instance1 ) {
    ooaofooa_V_SLR_R825_Link( ooaofooa_V_TRVrelated_instance1, ooaofooa_V_SLR_instance );
  }
  }
  {
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_V_SLR_instance->Attr_ID, ooaofooa_V_SLR_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_V_SLR_R812_Link( ooaofooa_O_ATTRrelated_instance1, ooaofooa_V_SLR_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_SLR ACROSS R801
 */
void
ooaofooa_V_SLR_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_SLR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_SLR->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_SLR[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_SLR_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_SLR ACROSS R801
 */
void
ooaofooa_V_SLR_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_SLR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE O_ATTR TO V_SLR ACROSS R812
 */
void
ooaofooa_V_SLR_R812_Link( ooaofooa_O_ATTR * part, ooaofooa_V_SLR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R812_member = part;
  Escher_SetInsertElement( &part->V_SLR_R812, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM V_SLR ACROSS R812
 */
void
ooaofooa_V_SLR_R812_Unlink( ooaofooa_O_ATTR * part, ooaofooa_V_SLR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_ATTR_R812_member = 0;
  Escher_SetRemoveElement( &part->V_SLR_R812, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_TRV TO V_SLR ACROSS R825
 */
void
ooaofooa_V_SLR_R825_Link( ooaofooa_V_TRV * part, ooaofooa_V_SLR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Op_Value_ID = part->Value_ID;
  form->V_TRV_R825_value = part;
  part->V_SLR_R825 = form;
}

/*
 * UNRELATE V_TRV FROM V_SLR ACROSS R825
 */
void
ooaofooa_V_SLR_R825_Unlink( ooaofooa_V_TRV * part, ooaofooa_V_SLR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Op_Value_ID = 0;
  form->V_TRV_R825_value = 0;
  part->V_SLR_R825 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_SLR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_SLR * self = (ooaofooa_V_SLR *) instance;
  printf( "INSERT INTO V_SLR VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Op_Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_SLR_container[ ooaofooa_V_SLR_MAX_EXTENT_SIZE ];
static ooaofooa_V_SLR ooaofooa_V_SLR_instances[ ooaofooa_V_SLR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_SLR_extent = {
  {0,0}, {0,0}, &ooaofooa_V_SLR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_SLR_instances,
  sizeof( ooaofooa_V_SLR ), 0, ooaofooa_V_SLR_MAX_EXTENT_SIZE
  };


