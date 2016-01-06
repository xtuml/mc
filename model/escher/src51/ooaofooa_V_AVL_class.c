/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_AVL_class.c
 *
 * Class:       Attribute Value Reference  (V_AVL)
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
ooaofooa_V_AVL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_AVL * self = (ooaofooa_V_AVL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Root_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Obj_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Attr_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_AVL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_AVL * ooaofooa_V_AVL_instance = (ooaofooa_V_AVL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_AVL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_AVL_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_AVL_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_AVL_instance->Root_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_AVL_R807_Link_is_root_for( ooaofooa_V_VALrelated_instance1, ooaofooa_V_AVL_instance );
  }
  }
  {
  ooaofooa_O_ATTR * ooaofooa_O_ATTRrelated_instance1 = ooaofooa_O_ATTR_AnyWhere1( ooaofooa_V_AVL_instance->Attr_ID, ooaofooa_V_AVL_instance->Obj_ID );
  if ( ooaofooa_O_ATTRrelated_instance1 ) {
    ooaofooa_V_AVL_R806_Link( ooaofooa_O_ATTRrelated_instance1, ooaofooa_V_AVL_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_AVL ACROSS R801
 */
void
ooaofooa_V_AVL_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_AVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_AVL->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_AVL[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_AVL_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_AVL ACROSS R801
 */
void
ooaofooa_V_AVL_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_AVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE O_ATTR TO V_AVL ACROSS R806
 */
void
ooaofooa_V_AVL_R806_Link( ooaofooa_O_ATTR * part, ooaofooa_V_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = part->Attr_ID;
  form->Obj_ID = part->Obj_ID;
  form->O_ATTR_R806_is_value_of = part;
  Escher_SetInsertElement( &part->V_AVL_R806, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_ATTR FROM V_AVL ACROSS R806
 */
void
ooaofooa_V_AVL_R806_Unlink( ooaofooa_O_ATTR * part, ooaofooa_V_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Attr_ID = 0;
  form->Obj_ID = 0;
  form->O_ATTR_R806_is_value_of = 0;
  Escher_SetRemoveElement( &part->V_AVL_R806, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE V_VAL TO V_AVL ACROSS R807
 */
void
ooaofooa_V_AVL_R807_Link_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = part->Value_ID;
  form->V_VAL_R807_has_root = part;
  part->V_AVL_R807_is_root_for = form;
}

/*
 * UNRELATE V_VAL FROM V_AVL ACROSS R807
 */
void
ooaofooa_V_AVL_R807_Unlink_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_AVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = 0;
  form->V_VAL_R807_has_root = 0;
  part->V_AVL_R807_is_root_for = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_AVL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_AVL * self = (ooaofooa_V_AVL *) instance;
  printf( "INSERT INTO V_AVL VALUES ( %ld,%ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Root_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Obj_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Attr_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_AVL_container[ ooaofooa_V_AVL_MAX_EXTENT_SIZE ];
static ooaofooa_V_AVL ooaofooa_V_AVL_instances[ ooaofooa_V_AVL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_AVL_extent = {
  {0,0}, {0,0}, &ooaofooa_V_AVL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_AVL_instances,
  sizeof( ooaofooa_V_AVL ), 0, ooaofooa_V_AVL_MAX_EXTENT_SIZE
  };


