/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_PVL_class.c
 *
 * Class:       Parameter Value  (V_PVL)
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
ooaofooa_V_PVL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_V_PVL * self = (ooaofooa_V_PVL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->PP_Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_V_PVL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_V_PVL * ooaofooa_V_PVL_instance = (ooaofooa_V_PVL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PVL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_V_PVL_R801_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_V_PVL_instance );
  }
  {
  ooaofooa_S_BPARM * ooaofooa_S_BPARMrelated_instance1 = (ooaofooa_S_BPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PVL_instance->BParm_ID ];
  if ( ooaofooa_S_BPARMrelated_instance1 ) {
    ooaofooa_V_PVL_R831_Link( ooaofooa_S_BPARMrelated_instance1, ooaofooa_V_PVL_instance );
  }
  }
  {
  ooaofooa_S_SPARM * ooaofooa_S_SPARMrelated_instance1 = (ooaofooa_S_SPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PVL_instance->SParm_ID ];
  if ( ooaofooa_S_SPARMrelated_instance1 ) {
    ooaofooa_V_PVL_R832_Link( ooaofooa_S_SPARMrelated_instance1, ooaofooa_V_PVL_instance );
  }
  }
  {
  ooaofooa_O_TPARM * ooaofooa_O_TPARMrelated_instance1 = (ooaofooa_O_TPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PVL_instance->TParm_ID ];
  if ( ooaofooa_O_TPARMrelated_instance1 ) {
    ooaofooa_V_PVL_R833_Link( ooaofooa_O_TPARMrelated_instance1, ooaofooa_V_PVL_instance );
  }
  }
  {
  ooaofooa_C_PP * ooaofooa_C_PPrelated_instance1 = (ooaofooa_C_PP *) Escher_instance_cache[ (intptr_t) ooaofooa_V_PVL_instance->PP_Id ];
  if ( ooaofooa_C_PPrelated_instance1 ) {
    ooaofooa_V_PVL_R843_Link( ooaofooa_C_PPrelated_instance1, ooaofooa_V_PVL_instance );
  }
  }
}


/*
 * RELATE V_VAL TO V_PVL ACROSS R801
 */
void
ooaofooa_V_PVL_R801_Link( ooaofooa_V_VAL * supertype, ooaofooa_V_PVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Value_ID = supertype->Value_ID;
  /* Optimized linkage for V_PVL->V_VAL[R801] */
  subtype->V_VAL_R801 = supertype;
  /* Optimized linkage for V_VAL->V_PVL[R801] */
  supertype->R801_subtype = subtype;
  supertype->R801_object_id = ooaofooa_V_PVL_CLASS_NUMBER;
}


/*
 * UNRELATE V_VAL FROM V_PVL ACROSS R801
 */
void
ooaofooa_V_PVL_R801_Unlink( ooaofooa_V_VAL * supertype, ooaofooa_V_PVL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->V_VAL_R801 = 0;
  supertype->R801_subtype = 0;
  supertype->R801_object_id = 0;
}


/*
 * RELATE S_BPARM TO V_PVL ACROSS R831
 */
void
ooaofooa_V_PVL_R831_Link( ooaofooa_S_BPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = part->BParm_ID;
  form->S_BPARM_R831_is_a_value_of = part;
  Escher_SetInsertElement( &part->V_PVL_R831, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BPARM FROM V_PVL ACROSS R831
 */
void
ooaofooa_V_PVL_R831_Unlink( ooaofooa_S_BPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = 0;
  form->S_BPARM_R831_is_a_value_of = 0;
  Escher_SetRemoveElement( &part->V_PVL_R831, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE S_SPARM TO V_PVL ACROSS R832
 */
void
ooaofooa_V_PVL_R832_Link( ooaofooa_S_SPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = part->SParm_ID;
  form->S_SPARM_R832_is_a_value_of = part;
  Escher_SetInsertElement( &part->V_PVL_R832, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SPARM FROM V_PVL ACROSS R832
 */
void
ooaofooa_V_PVL_R832_Unlink( ooaofooa_S_SPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = 0;
  form->S_SPARM_R832_is_a_value_of = 0;
  Escher_SetRemoveElement( &part->V_PVL_R832, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE O_TPARM TO V_PVL ACROSS R833
 */
void
ooaofooa_V_PVL_R833_Link( ooaofooa_O_TPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = part->TParm_ID;
  form->O_TPARM_R833_is_a_value_of = part;
  Escher_SetInsertElement( &part->V_PVL_R833, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TPARM FROM V_PVL ACROSS R833
 */
void
ooaofooa_V_PVL_R833_Unlink( ooaofooa_O_TPARM * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = 0;
  form->O_TPARM_R833_is_a_value_of = 0;
  Escher_SetRemoveElement( &part->V_PVL_R833, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PP TO V_PVL ACROSS R843
 */
void
ooaofooa_V_PVL_R843_Link( ooaofooa_C_PP * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = part->PP_Id;
  form->C_PP_R843_is_a_value_of = part;
  Escher_SetInsertElement( &part->V_PVL_R843, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_PP FROM V_PVL ACROSS R843
 */
void
ooaofooa_V_PVL_R843_Unlink( ooaofooa_C_PP * part, ooaofooa_V_PVL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->PP_Id = 0;
  form->C_PP_R843_is_a_value_of = 0;
  Escher_SetRemoveElement( &part->V_PVL_R843, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_V_PVL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_V_PVL * self = (ooaofooa_V_PVL *) instance;
  printf( "INSERT INTO V_PVL VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->BParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->TParm_ID & ESCHER_IDDUMP_MASK),
    ((long)self->PP_Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_V_PVL_container[ ooaofooa_V_PVL_MAX_EXTENT_SIZE ];
static ooaofooa_V_PVL ooaofooa_V_PVL_instances[ ooaofooa_V_PVL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_V_PVL_extent = {
  {0,0}, {0,0}, &ooaofooa_V_PVL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_V_PVL_instances,
  sizeof( ooaofooa_V_PVL ), 0, ooaofooa_V_PVL_MAX_EXTENT_SIZE
  };


