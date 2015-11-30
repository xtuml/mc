/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_AI_class.c
 *
 * Class:       Assign to Member  (ACT_AI)
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
ooaofooa_ACT_AI_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_AI * self = (ooaofooa_ACT_AI *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->r_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->l_Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->attributeLineNumber = Escher_atoi( avlstring[ 4 ] );
  self->attributeColumn = Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_AI_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_AI * ooaofooa_ACT_AI_instance = (ooaofooa_ACT_AI *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_AI_instance->r_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_AI_R609_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_AI_instance );
  }
  {
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_AI_instance->l_Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_AI_R689_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_AI_instance );
  }
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_AI_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_AI_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_AI_instance );
  }
  }
}


/*
 * RELATE ACT_SMT TO ACT_AI ACROSS R603
 */
void
ooaofooa_ACT_AI_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_AI * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_AI->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_AI[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_AI_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_AI ACROSS R603
 */
void
ooaofooa_ACT_AI_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_AI * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE V_VAL TO ACT_AI ACROSS R609
 */
void
ooaofooa_ACT_AI_R609_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_AI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->r_Value_ID = part->Value_ID;
  form->V_VAL_R609_reads = part;
  part->ACT_AI_R609 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_AI ACROSS R609
 */
void
ooaofooa_ACT_AI_R609_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_AI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->r_Value_ID = 0;
  form->V_VAL_R609_reads = 0;
  part->ACT_AI_R609 = 0;
}

/*
 * RELATE V_VAL TO ACT_AI ACROSS R689
 */
void
ooaofooa_ACT_AI_R689_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_AI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->l_Value_ID = part->Value_ID;
  form->V_VAL_R689_writes = part;
  part->ACT_AI_R689 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_AI ACROSS R689
 */
void
ooaofooa_ACT_AI_R689_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_AI * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->l_Value_ID = 0;
  form->V_VAL_R689_writes = 0;
  part->ACT_AI_R689 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_AI_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_AI * self = (ooaofooa_ACT_AI *) instance;
  printf( "INSERT INTO ACT_AI VALUES ( %ld,%ld,%ld,%d,%d );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->r_Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->l_Value_ID & ESCHER_IDDUMP_MASK),
    self->attributeLineNumber,
    self->attributeColumn );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_AI_container[ ooaofooa_ACT_AI_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_AI ooaofooa_ACT_AI_instances[ ooaofooa_ACT_AI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_AI_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_AI_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_AI_instances,
  sizeof( ooaofooa_ACT_AI ), 0, ooaofooa_ACT_AI_MAX_EXTENT_SIZE
  };


