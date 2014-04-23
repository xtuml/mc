/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GPR_class.c
 *
 * Class:       Generate Preexisting Event  (E_GPR)
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
ooaofooa_E_GPR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_E_GPR * self = (ooaofooa_E_GPR *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_E_GPR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_E_GPR * ooaofooa_E_GPR_instance = (ooaofooa_E_GPR *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_E_GPR_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_E_GPR_R714_Link_holds_event_to_be_generated_by( ooaofooa_V_VALrelated_instance1, ooaofooa_E_GPR_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_E_GPR_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_E_GPR_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_E_GPR_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO E_GPR ACROSS R603
 */
void
ooaofooa_E_GPR_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_E_GPR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for E_GPR->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->E_GPR[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_E_GPR_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM E_GPR ACROSS R603
 */
void
ooaofooa_E_GPR_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_E_GPR * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO E_GPR ACROSS R714
 */
void
ooaofooa_E_GPR_R714_Link_holds_event_to_be_generated_by( ooaofooa_V_VAL * part, ooaofooa_E_GPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R714_generates_event_held_by = part;
  part->E_GPR_R714_holds_event_to_be_generated_by = form;
}

/*
 * UNRELATE V_VAL FROM E_GPR ACROSS R714
 */
void
ooaofooa_E_GPR_R714_Unlink_holds_event_to_be_generated_by( ooaofooa_V_VAL * part, ooaofooa_E_GPR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R714_generates_event_held_by = 0;
  part->E_GPR_R714_holds_event_to_be_generated_by = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_E_GPR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_E_GPR * self = (ooaofooa_E_GPR *) instance;
  printf( "INSERT INTO E_GPR VALUES ( %ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_E_GPR_container[ ooaofooa_E_GPR_MAX_EXTENT_SIZE ];
static ooaofooa_E_GPR ooaofooa_E_GPR_instances[ ooaofooa_E_GPR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_E_GPR_extent = {
  {0,0}, {0,0}, &ooaofooa_E_GPR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_E_GPR_instances,
  sizeof( ooaofooa_E_GPR ), 0, ooaofooa_E_GPR_MAX_EXTENT_SIZE
  };


