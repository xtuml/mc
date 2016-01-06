/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_OAL_class.c
 *
 * Class:       OAL Breakpoint  (BP_OAL)
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
ooaofooa_BP_OAL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_BP_OAL * self = (ooaofooa_BP_OAL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Breakpoint_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_BP_OAL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_BP_OAL * ooaofooa_BP_OAL_instance = (ooaofooa_BP_OAL *) instance;
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_OAL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_BP_OAL_R3101_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_BP_OAL_instance );
  }
  {
  ooaofooa_BP_BP * ooaofooa_BP_BPrelated_instance1 = (ooaofooa_BP_BP *) Escher_instance_cache[ (intptr_t) ooaofooa_BP_OAL_instance->Breakpoint_ID ];
  if ( ooaofooa_BP_BPrelated_instance1 ) {
    ooaofooa_BP_OAL_R3102_Link( ooaofooa_BP_BPrelated_instance1, ooaofooa_BP_OAL_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO BP_OAL ACROSS R3101
 */
void
ooaofooa_BP_OAL_R3101_Link( ooaofooa_ACT_SMT * part, ooaofooa_BP_OAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_SMT_R3101_is_set_on_a = part;
  part->BP_OAL_R3101 = form;
}

/*
 * UNRELATE ACT_SMT FROM BP_OAL ACROSS R3101
 */
void
ooaofooa_BP_OAL_R3101_Unlink( ooaofooa_ACT_SMT * part, ooaofooa_BP_OAL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = 0;
  form->ACT_SMT_R3101_is_set_on_a = 0;
  part->BP_OAL_R3101 = 0;
}

/*
 * RELATE BP_BP TO BP_OAL ACROSS R3102
 */
void
ooaofooa_BP_OAL_R3102_Link( ooaofooa_BP_BP * supertype, ooaofooa_BP_OAL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Breakpoint_ID = supertype->Breakpoint_ID;
  /* Optimized linkage for BP_OAL->BP_BP[R3102] */
  subtype->BP_BP_R3102 = supertype;
  /* Optimized linkage for BP_BP->BP_OAL[R3102] */
  supertype->R3102_subtype = subtype;
  supertype->R3102_object_id = ooaofooa_BP_OAL_CLASS_NUMBER;
}


/*
 * UNRELATE BP_BP FROM BP_OAL ACROSS R3102
 */
void
ooaofooa_BP_OAL_R3102_Unlink( ooaofooa_BP_BP * supertype, ooaofooa_BP_OAL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->BP_BP_R3102 = 0;
  supertype->R3102_subtype = 0;
  supertype->R3102_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_BP_OAL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_BP_OAL * self = (ooaofooa_BP_OAL *) instance;
  printf( "INSERT INTO BP_OAL VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Breakpoint_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_BP_OAL_container[ ooaofooa_BP_OAL_MAX_EXTENT_SIZE ];
static ooaofooa_BP_OAL ooaofooa_BP_OAL_instances[ ooaofooa_BP_OAL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_BP_OAL_extent = {
  {0,0}, {0,0}, &ooaofooa_BP_OAL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_BP_OAL_instances,
  sizeof( ooaofooa_BP_OAL ), 0, ooaofooa_BP_OAL_MAX_EXTENT_SIZE
  };


