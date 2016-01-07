/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_EV_class.c
 *
 * Class:       Event Breakpoint  (BP_EV)
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
ooaofooa_BP_EV_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_BP_EV * self = (ooaofooa_BP_EV *) instance;
  /* Initialize application analysis class attributes.  */
  self->Breakpoint_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->onEnqueue = ( '0' != *avlstring[ 2 ] );
  self->onDequeue = ( '0' != *avlstring[ 3 ] );
  self->onEventIgnored = ( '0' != *avlstring[ 4 ] );
  self->onCantHappen = ( '0' != *avlstring[ 5 ] );
  self->SMevt_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_BP_EV_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_BP_EV * ooaofooa_BP_EV_instance = (ooaofooa_BP_EV *) instance;
  ooaofooa_SM_EVT * ooaofooa_SM_EVTrelated_instance1 = (ooaofooa_SM_EVT *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_EV_instance->SMevt_ID ];
  if ( ooaofooa_SM_EVTrelated_instance1 ) {
    ooaofooa_BP_EV_R3103_Link_has_set( ooaofooa_SM_EVTrelated_instance1, ooaofooa_BP_EV_instance );
  }
  {
  ooaofooa_BP_BP * ooaofooa_BP_BPrelated_instance1 = (ooaofooa_BP_BP *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_EV_instance->Breakpoint_ID ];
  if ( ooaofooa_BP_BPrelated_instance1 ) {
    ooaofooa_BP_EV_R3102_Link( ooaofooa_BP_BPrelated_instance1, ooaofooa_BP_EV_instance );
  }
  }
}


/*
 * RELATE BP_BP TO BP_EV ACROSS R3102
 */
void
ooaofooa_BP_EV_R3102_Link( ooaofooa_BP_BP * supertype, ooaofooa_BP_EV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Breakpoint_ID = supertype->Breakpoint_ID;
  /* Optimized linkage for BP_EV->BP_BP[R3102] */
  subtype->BP_BP_R3102 = supertype;
  /* Optimized linkage for BP_BP->BP_EV[R3102] */
  supertype->R3102_subtype = subtype;
  supertype->R3102_object_id = ooaofooa_BP_EV_CLASS_NUMBER;
}


/*
 * UNRELATE BP_BP FROM BP_EV ACROSS R3102
 */
void
ooaofooa_BP_EV_R3102_Unlink( ooaofooa_BP_BP * supertype, ooaofooa_BP_EV * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->BP_BP_R3102 = 0;
  supertype->R3102_subtype = 0;
  supertype->R3102_object_id = 0;
}


/*
 * RELATE SM_EVT TO BP_EV ACROSS R3103
 */
void
ooaofooa_BP_EV_R3103_Link_has_set( ooaofooa_SM_EVT * part, ooaofooa_BP_EV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = part->SMevt_ID;
  form->SM_EVT_R3103_is_set_on = part;
  part->BP_EV_R3103_has_set = form;
}

/*
 * UNRELATE SM_EVT FROM BP_EV ACROSS R3103
 */
void
ooaofooa_BP_EV_R3103_Unlink_has_set( ooaofooa_SM_EVT * part, ooaofooa_BP_EV * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SMevt_ID = 0;
  form->SM_EVT_R3103_is_set_on = 0;
  part->BP_EV_R3103_has_set = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_BP_EV_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_BP_EV * self = (ooaofooa_BP_EV *) instance;
  printf( "INSERT INTO BP_EV VALUES ( %ld,%d,%d,%d,%d,%ld );\n",
    ((long)self->Breakpoint_ID & ESCHER_IDDUMP_MASK),
    self->onEnqueue,
    self->onDequeue,
    self->onEventIgnored,
    self->onCantHappen,
    ((long)self->SMevt_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_BP_EV_container[ ooaofooa_BP_EV_MAX_EXTENT_SIZE ];
static ooaofooa_BP_EV ooaofooa_BP_EV_instances[ ooaofooa_BP_EV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_BP_EV_extent = {
  {0,0}, {0,0}, &ooaofooa_BP_EV_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_BP_EV_instances,
  sizeof( ooaofooa_BP_EV ), 0, ooaofooa_BP_EV_MAX_EXTENT_SIZE
  };


