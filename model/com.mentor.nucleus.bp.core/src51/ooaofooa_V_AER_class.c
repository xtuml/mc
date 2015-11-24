/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_AER_class.c
 *
 * Class:       Array Element Reference  (V_AER)
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
ooaofooa_V_AER_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_AER * self = (ooaofooa_V_AER *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Root_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Index_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_AER_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_AER * ooaofooa_V_AER_instance = (ooaofooa_V_AER *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_AER_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_AER_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_AER_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_AER_instance->Root_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_AER_R838_Link_is_root_for( ooaofooa_V_VALrelated_instance1, ooaofooa_V_AER_instance );
  }
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_AER_instance->Index_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_AER_R839_Link_provides_index_of( ooaofooa_V_VALrelated_instance1, ooaofooa_V_AER_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_AER ACROSS R801
 */
void
ooaofooa_V_AER_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_AER * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_AER->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_AER[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_AER_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_AER ACROSS R801
 */
void
ooaofooa_V_AER_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_AER * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE V_VAL TO V_AER ACROSS R838
 */
void
ooaofooa_V_AER_R838_Link_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_AER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = part->Value_ID;
  form->V_VAL_R838_has_root = part;
  part->V_AER_R838_is_root_for = form;
}

/*
 * UNRELATE V_VAL FROM V_AER ACROSS R838
 */
void
ooaofooa_V_AER_R838_Unlink_is_root_for( ooaofooa_V_VAL * part, ooaofooa_V_AER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Root_Value_ID = 0;
  form->V_VAL_R838_has_root = 0;
  part->V_AER_R838_is_root_for = 0;
}

/*
 * RELATE V_VAL TO V_AER ACROSS R839
 */
void
ooaofooa_V_AER_R839_Link_provides_index_of( ooaofooa_V_VAL * part, ooaofooa_V_AER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Index_Value_ID = part->Value_ID;
  form->V_VAL_R839_has_index = part;
  part->V_AER_R839_provides_index_of = form;
}

/*
 * UNRELATE V_VAL FROM V_AER ACROSS R839
 */
void
ooaofooa_V_AER_R839_Unlink_provides_index_of( ooaofooa_V_VAL * part, ooaofooa_V_AER * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Index_Value_ID = 0;
  form->V_VAL_R839_has_index = 0;
  part->V_AER_R839_provides_index_of = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_AER_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_AER * self = (ooaofooa_V_AER *) instance;
  printf( "INSERT INTO V_AER VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Root_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Index_Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_AER_container[ ooaofooa_V_AER_MAX_EXTENT_SIZE ];
static ooaofooa_V_AER ooaofooa_V_AER_instances[ ooaofooa_V_AER_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_AER_extent = {
  {0,0}, {0,0}, &ooaofooa_V_AER_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_AER_instances,
  sizeof( ooaofooa_V_AER ), 0, ooaofooa_V_AER_MAX_EXTENT_SIZE
  };


