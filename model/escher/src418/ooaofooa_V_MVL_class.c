/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_MVL_class.c
 *
 * Class:       Member Value Reference  (V_MVL)
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
ooaofooa_V_MVL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_MVL * self = (ooaofooa_V_MVL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Root_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Member_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->DT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_MVL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_MVL * ooaofooa_V_MVL_instance = (ooaofooa_V_MVL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MVL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_MVL_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_MVL_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_MVL_instance->Root_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_MVL_R837_Link_is_root_for( ooaofooa_V_VALrelated_instance1, ooaofooa_V_MVL_instance );
  }
  }
  {
  ooaofooa_S_MBR * ooaofooa_S_MBRrelated_instance1 = ooaofooa_S_MBR_AnyWhere1( ooaofooa_V_MVL_instance->Member_ID, ooaofooa_V_MVL_instance->DT_DT_ID );
  if ( ooaofooa_S_MBRrelated_instance1 ) {
    ooaofooa_V_MVL_R836_Link( ooaofooa_S_MBRrelated_instance1, ooaofooa_V_MVL_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_MVL ACROSS R801
 */
void
ooaofooa_V_MVL_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_MVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_MVL->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_MVL[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_MVL_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_MVL ACROSS R801
 */
void
ooaofooa_V_MVL_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_MVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE S_MBR TO V_MVL ACROSS R836
 */
void
ooaofooa_V_MVL_R836_Link( ooaofooa_S_MBR * part, ooaofooa_V_MVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = part->Member_ID;
  form->DT_DT_ID = part->Parent_DT_DT_ID;
  form->S_MBR_R836_is_value_of = part;
  Escher_SetInsertElement( &part->V_MVL_R836, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_MBR FROM V_MVL ACROSS R836
 */
void
ooaofooa_V_MVL_R836_Unlink( ooaofooa_S_MBR * part, ooaofooa_V_MVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Member_ID = 0;
  form->DT_DT_ID = 0;
  form->S_MBR_R836_is_value_of = 0;
  Escher_SetRemoveElement( &part->V_MVL_R836, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAL TO V_MVL ACROSS R837
 */
void
ooaofooa_V_MVL_R837_Link_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_MVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = part->Value_ID;
  form->V_VAL_R837 = part;
  part->V_MVL_R837_is_root_for = form;
}

/*
 * UNRELATE V_VAL FROM V_MVL ACROSS R837
 */
void
ooaofooa_V_MVL_R837_Unlink_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_MVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = 0;
  form->V_VAL_R837 = 0;
  part->V_MVL_R837_is_root_for = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_MVL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_MVL * self = (ooaofooa_V_MVL *) instance;
  printf( "INSERT INTO V_MVL VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Root_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Member_ID & ESCHER_IDDUMP_MASK),
    ((long)self->DT_DT_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_MVL_container[ ooaofooa_V_MVL_MAX_EXTENT_SIZE ];
static ooaofooa_V_MVL ooaofooa_V_MVL_instances[ ooaofooa_V_MVL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_MVL_extent = {
  {0,0}, {0,0}, &ooaofooa_V_MVL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_MVL_instances,
  sizeof( ooaofooa_V_MVL ), 0, ooaofooa_V_MVL_MAX_EXTENT_SIZE
  };


