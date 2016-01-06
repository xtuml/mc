/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LEN_class.c
 *
 * Class:       Literal Enumerator  (V_LEN)
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
ooaofooa_V_LEN_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_LEN * self = (ooaofooa_V_LEN *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Enum_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->dataTypeNameLineNumber = Escher_atoi( avlstring[ 3 ] );
  self->dataTypeNameColumn = Escher_atoi( avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_LEN_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_LEN * ooaofooa_V_LEN_instance = (ooaofooa_V_LEN *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_LEN_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_LEN_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_LEN_instance );
  }
  {
  ooaofooa_S_ENUM * ooaofooa_S_ENUMrelated_instance1 = (ooaofooa_S_ENUM *) Escher_instance_cache[ (intptr_t) ooaofooa_V_LEN_instance->Enum_ID ];
  if ( ooaofooa_S_ENUMrelated_instance1 ) {
    ooaofooa_V_LEN_R824_Link_is_value_of( ooaofooa_S_ENUMrelated_instance1, ooaofooa_V_LEN_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_LEN ACROSS R801
 */
void
ooaofooa_V_LEN_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_LEN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_LEN->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_LEN[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_LEN_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_LEN ACROSS R801
 */
void
ooaofooa_V_LEN_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_LEN * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE S_ENUM TO V_LEN ACROSS R824
 */
void
ooaofooa_V_LEN_R824_Link_is_value_of( ooaofooa_S_ENUM * part, ooaofooa_V_LEN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Enum_ID = part->Enum_ID;
  form->S_ENUM_R824_has_value = part;
  Escher_SetInsertElement( &part->V_LEN_R824_is_value_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_ENUM FROM V_LEN ACROSS R824
 */
void
ooaofooa_V_LEN_R824_Unlink_is_value_of( ooaofooa_S_ENUM * part, ooaofooa_V_LEN * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Enum_ID = 0;
  form->S_ENUM_R824_has_value = 0;
  Escher_SetRemoveElement( &part->V_LEN_R824_is_value_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_LEN_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_LEN * self = (ooaofooa_V_LEN *) instance;
  printf( "INSERT INTO V_LEN VALUES ( %ld,%ld,%d,%d );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Enum_ID & ESCHER_IDDUMP_MASK),
    self->dataTypeNameLineNumber,
    self->dataTypeNameColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_LEN_container[ ooaofooa_V_LEN_MAX_EXTENT_SIZE ];
static ooaofooa_V_LEN ooaofooa_V_LEN_instances[ ooaofooa_V_LEN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_LEN_extent = {
  {0,0}, {0,0}, &ooaofooa_V_LEN_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_LEN_instances,
  sizeof( ooaofooa_V_LEN ), 0, ooaofooa_V_LEN_MAX_EXTENT_SIZE
  };


