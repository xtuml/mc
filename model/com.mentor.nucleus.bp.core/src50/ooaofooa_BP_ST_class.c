/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_ST_class.c
 *
 * Class:       State Breakpoint  (BP_ST)
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
ooaofooa_BP_ST_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_BP_ST * self = (ooaofooa_BP_ST *) instance;
  /* Initialize application analysis class attributes.  */
  self->Breakpoint_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->onEntry = ( '0' != *avlstring[ 2 ] );
  self->onExit = ( '0' != *avlstring[ 3 ] );
  self->SM_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->SMstt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_BP_ST_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_BP_ST * ooaofooa_BP_ST_instance = (ooaofooa_BP_ST *) instance;
  ooaofooa_SM_STATE * ooaofooa_SM_STATErelated_instance1 = ooaofooa_SM_STATE_AnyWhere1( ooaofooa_BP_ST_instance->SMstt_ID, ooaofooa_BP_ST_instance->SM_ID );
  if ( ooaofooa_SM_STATErelated_instance1 ) {
    ooaofooa_BP_ST_R3104_Link_has_set( ooaofooa_SM_STATErelated_instance1, ooaofooa_BP_ST_instance );
  }
  {
  ooaofooa_BP_BP * ooaofooa_BP_BPrelated_instance1 = (ooaofooa_BP_BP *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_ST_instance->Breakpoint_ID ];
  if ( ooaofooa_BP_BPrelated_instance1 ) {
    ooaofooa_BP_ST_R3102_Link( ooaofooa_BP_BPrelated_instance1, ooaofooa_BP_ST_instance );
  }
  }
}


/*
 * RELATE BP_BP TO BP_ST ACROSS R3102
 */
void
ooaofooa_BP_ST_R3102_Link( ooaofooa_BP_BP * supertype, ooaofooa_BP_ST * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Breakpoint_ID = supertype->Breakpoint_ID;
  /* Optimized linkage for BP_ST->BP_BP[R3102] */
  subtype->BP_BP_R3102 = supertype;
  /* Optimized linkage for BP_BP->BP_ST[R3102] */
  supertype->R3102_subtype = subtype;
  supertype->R3102_object_id = ooaofooa_BP_ST_CLASS_NUMBER;
}


/*
 * UNRELATE BP_BP FROM BP_ST ACROSS R3102
 */
void
ooaofooa_BP_ST_R3102_Unlink( ooaofooa_BP_BP * supertype, ooaofooa_BP_ST * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->BP_BP_R3102 = 0;
  supertype->R3102_subtype = 0;
  supertype->R3102_object_id = 0;
}


/*
 * RELATE SM_STATE TO BP_ST ACROSS R3104
 */
void
ooaofooa_BP_ST_R3104_Link_has_set( ooaofooa_SM_STATE * part, ooaofooa_BP_ST * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = part->SM_ID;
  form->SMstt_ID = part->SMstt_ID;
  form->SM_STATE_R3104_is_set_on = part;
  part->BP_ST_R3104_has_set = form;
}

/*
 * UNRELATE SM_STATE FROM BP_ST ACROSS R3104
 */
void
ooaofooa_BP_ST_R3104_Unlink_has_set( ooaofooa_SM_STATE * part, ooaofooa_BP_ST * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SM_ID = 0;
  form->SMstt_ID = 0;
  form->SM_STATE_R3104_is_set_on = 0;
  part->BP_ST_R3104_has_set = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_BP_ST_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_BP_ST * self = (ooaofooa_BP_ST *) instance;
  printf( "INSERT INTO BP_ST VALUES ( %ld,%d,%d,%ld,%ld );\n",
    ((long)self->Breakpoint_ID & ESCHER_IDDUMP_MASK),
    self->onEntry,
    self->onExit,
    ((long)self->SM_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SMstt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_BP_ST_container[ ooaofooa_BP_ST_MAX_EXTENT_SIZE ];
static ooaofooa_BP_ST ooaofooa_BP_ST_instances[ ooaofooa_BP_ST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_BP_ST_extent = {
  {0,0}, {0,0}, &ooaofooa_BP_ST_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_BP_ST_instances,
  sizeof( ooaofooa_BP_ST ), 0, ooaofooa_BP_ST_MAX_EXTENT_SIZE
  };


