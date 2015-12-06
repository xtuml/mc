/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_BIN_class.c
 *
 * Class:       Binary Operation  (V_BIN)
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
ooaofooa_V_BIN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_BIN * self = (ooaofooa_V_BIN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Right_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Left_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Operator = Escher_strcpy( self->Operator, avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_BIN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_BIN * ooaofooa_V_BIN_instance = (ooaofooa_V_BIN *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_BIN_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_BIN_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_BIN_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_BIN_instance->Left_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_BIN_R802_Link_is_left_operand_to( ooaofooa_V_VALrelated_instance1, ooaofooa_V_BIN_instance );
  }
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_BIN_instance->Right_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_BIN_R803_Link_is_right_operand_to( ooaofooa_V_VALrelated_instance1, ooaofooa_V_BIN_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_BIN ACROSS R801
 */
void
ooaofooa_V_BIN_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_BIN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_BIN->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_BIN[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_BIN_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_BIN ACROSS R801
 */
void
ooaofooa_V_BIN_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_BIN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE V_VAL TO V_BIN ACROSS R802
 */
void
ooaofooa_V_BIN_R802_Link_is_left_operand_to( ooaofooa_V_VAL * part, ooaofooa_V_BIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Left_Value_ID = part->Value_ID;
  form->V_VAL_R802_has_left = part;
  part->V_BIN_R802_is_left_operand_to = form;
}

/*
 * UNRELATE V_VAL FROM V_BIN ACROSS R802
 */
void
ooaofooa_V_BIN_R802_Unlink_is_left_operand_to( ooaofooa_V_VAL * part, ooaofooa_V_BIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Left_Value_ID = 0;
  form->V_VAL_R802_has_left = 0;
  part->V_BIN_R802_is_left_operand_to = 0;
}

/*
 * RELATE V_VAL TO V_BIN ACROSS R803
 */
void
ooaofooa_V_BIN_R803_Link_is_right_operand_to( ooaofooa_V_VAL * part, ooaofooa_V_BIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Right_Value_ID = part->Value_ID;
  form->V_VAL_R803_has_right = part;
  part->V_BIN_R803_is_right_operand_to = form;
}

/*
 * UNRELATE V_VAL FROM V_BIN ACROSS R803
 */
void
ooaofooa_V_BIN_R803_Unlink_is_right_operand_to( ooaofooa_V_VAL * part, ooaofooa_V_BIN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Right_Value_ID = 0;
  form->V_VAL_R803_has_right = 0;
  part->V_BIN_R803_is_right_operand_to = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_BIN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_BIN * self = (ooaofooa_V_BIN *) instance;
  printf( "INSERT INTO V_BIN VALUES ( %ld,%ld,%ld,'%s' );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Right_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Left_Value_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Operator ) ? self->Operator : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_BIN_container[ ooaofooa_V_BIN_MAX_EXTENT_SIZE ];
static ooaofooa_V_BIN ooaofooa_V_BIN_instances[ ooaofooa_V_BIN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_BIN_extent = {
  {0,0}, {0,0}, &ooaofooa_V_BIN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_BIN_instances,
  sizeof( ooaofooa_V_BIN ), 0, ooaofooa_V_BIN_MAX_EXTENT_SIZE
  };


