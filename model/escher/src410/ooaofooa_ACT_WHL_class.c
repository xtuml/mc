/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_WHL_class.c
 *
 * Class:       While Stmt  (ACT_WHL)
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
ooaofooa_ACT_WHL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_WHL * self = (ooaofooa_ACT_WHL *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_WHL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_WHL * ooaofooa_ACT_WHL_instance = (ooaofooa_ACT_WHL *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_WHL_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_WHL_R626_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_WHL_instance );
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_WHL_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_WHL_R608_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_WHL_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_WHL_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_WHL_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_WHL_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_WHL ACROSS R603
 */
void
ooaofooa_ACT_WHL_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_WHL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_WHL->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_WHL[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_WHL_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_WHL ACROSS R603
 */
void
ooaofooa_ACT_WHL_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_WHL * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE ACT_BLK TO ACT_WHL ACROSS R608
 */
void
ooaofooa_ACT_WHL_R608_Link( ooaofooa_ACT_BLK * part, ooaofooa_ACT_WHL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R608_controls = part;
  part->ACT_WHL_R608 = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_WHL ACROSS R608
 */
void
ooaofooa_ACT_WHL_R608_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_ACT_WHL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R608_controls = 0;
  part->ACT_WHL_R608 = 0;
}

/*
 * RELATE V_VAL TO ACT_WHL ACROSS R626
 */
void
ooaofooa_ACT_WHL_R626_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_WHL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R626_continue_result = part;
  part->ACT_WHL_R626 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_WHL ACROSS R626
 */
void
ooaofooa_ACT_WHL_R626_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_WHL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R626_continue_result = 0;
  part->ACT_WHL_R626 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_WHL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_WHL * self = (ooaofooa_ACT_WHL *) instance;
  printf( "INSERT INTO ACT_WHL VALUES ( %ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_WHL_container[ ooaofooa_ACT_WHL_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_WHL ooaofooa_ACT_WHL_instances[ ooaofooa_ACT_WHL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_WHL_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_WHL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_WHL_instances,
  sizeof( ooaofooa_ACT_WHL ), 0, ooaofooa_ACT_WHL_MAX_EXTENT_SIZE
  };


