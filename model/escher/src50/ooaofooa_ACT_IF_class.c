/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_IF_class.c
 *
 * Class:       If Stmt  (ACT_IF)
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
ooaofooa_ACT_IF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_ACT_IF * self = (ooaofooa_ACT_IF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Value_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->Elif_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Else_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_ACT_IF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_ACT_IF * ooaofooa_ACT_IF_instance = (ooaofooa_ACT_IF *) instance;
  ooaofooa_V_VAL * ooaofooa_V_VALrelated_instance1 = (ooaofooa_V_VAL *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_IF_instance->Value_ID ];
  if ( ooaofooa_V_VALrelated_instance1 ) {
    ooaofooa_ACT_IF_R625_Link( ooaofooa_V_VALrelated_instance1, ooaofooa_ACT_IF_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_IF_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_ACT_IF_R603_Link( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_ACT_IF_instance );
  }
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_ACT_IF_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_ACT_IF_R607_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_ACT_IF_instance );
  }
  }
  {
  ooaofooa_ACT_EL * ooaofooa_ACT_ELrelated_instance1 = ooaofooa_ACT_EL_AnyWhere1( ooaofooa_ACT_IF_instance->Elif_Statement_ID );
  if ( ooaofooa_ACT_ELrelated_instance1 ) {
    ooaofooa_ACT_IF_R690_Link( ooaofooa_ACT_ELrelated_instance1, ooaofooa_ACT_IF_instance );
  }
  }
  {
  ooaofooa_ACT_E * ooaofooa_ACT_Erelated_instance1 = ooaofooa_ACT_E_AnyWhere1( ooaofooa_ACT_IF_instance->Else_Statement_ID );
  if ( ooaofooa_ACT_Erelated_instance1 ) {
    ooaofooa_ACT_IF_R692_Link( ooaofooa_ACT_Erelated_instance1, ooaofooa_ACT_IF_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_ACT_IF *
ooaofooa_ACT_IF_AnyWhere1( Escher_UniqueID_t w_Statement_ID )
{
  ooaofooa_ACT_IF * w; 
  Escher_Iterator_s iter_ACT_IF;
  Escher_IteratorReset( &iter_ACT_IF, &pG_ooaofooa_ACT_IF_extent.active );
  while ( (w = (ooaofooa_ACT_IF *) Escher_IteratorNext( &iter_ACT_IF )) != 0 ) {
    if ( w->Statement_ID == w_Statement_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE ACT_SMT TO ACT_IF ACROSS R603
 */
void
ooaofooa_ACT_IF_R603_Link( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_IF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Statement_ID = supertype->Statement_ID;
  /* Optimized linkage for ACT_IF->ACT_SMT[R603] */
  subtype->ACT_SMT_R603 = supertype;
  /* Optimized linkage for ACT_SMT->ACT_IF[R603] */
  supertype->R603_subtype = subtype;
  supertype->R603_object_id = ooaofooa_ACT_IF_CLASS_NUMBER;
}


/*
 * UNRELATE ACT_SMT FROM ACT_IF ACROSS R603
 */
void
ooaofooa_ACT_IF_R603_Unlink( ooaofooa_ACT_SMT * supertype, ooaofooa_ACT_IF * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->ACT_SMT_R603 = 0;
  supertype->R603_subtype = 0;
  supertype->R603_object_id = 0;
}


/*
 * RELATE ACT_BLK TO ACT_IF ACROSS R607
 */
void
ooaofooa_ACT_IF_R607_Link( ooaofooa_ACT_BLK * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R607_controls = part;
  part->ACT_IF_R607 = form;
}

/*
 * UNRELATE ACT_BLK FROM ACT_IF ACROSS R607
 */
void
ooaofooa_ACT_IF_R607_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = 0;
  form->ACT_BLK_R607_controls = 0;
  part->ACT_IF_R607 = 0;
}

/*
 * RELATE V_VAL TO ACT_IF ACROSS R625
 */
void
ooaofooa_ACT_IF_R625_Link( ooaofooa_V_VAL * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = part->Value_ID;
  form->V_VAL_R625_test_result = part;
  part->ACT_IF_R625 = form;
}

/*
 * UNRELATE V_VAL FROM ACT_IF ACROSS R625
 */
void
ooaofooa_ACT_IF_R625_Unlink( ooaofooa_V_VAL * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_ID = 0;
  form->V_VAL_R625_test_result = 0;
  part->ACT_IF_R625 = 0;
}

/*
 * RELATE ACT_EL TO ACT_IF ACROSS R690
 */
void
ooaofooa_ACT_IF_R690_Link( ooaofooa_ACT_EL * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Elif_Statement_ID = part->Statement_ID;
  form->ACT_EL_R690_was_executing_when_halted = part;
  part->ACT_IF_R690 = form;
}

/*
 * UNRELATE ACT_EL FROM ACT_IF ACROSS R690
 */
void
ooaofooa_ACT_IF_R690_Unlink( ooaofooa_ACT_EL * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Elif_Statement_ID = 0;
  form->ACT_EL_R690_was_executing_when_halted = 0;
  part->ACT_IF_R690 = 0;
}

/*
 * RELATE ACT_E TO ACT_IF ACROSS R692
 */
void
ooaofooa_ACT_IF_R692_Link( ooaofooa_ACT_E * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Else_Statement_ID = part->Statement_ID;
  form->ACT_E_R692_was_executing_when_halted = part;
  part->ACT_IF_R692 = form;
}

/*
 * UNRELATE ACT_E FROM ACT_IF ACROSS R692
 */
void
ooaofooa_ACT_IF_R692_Unlink( ooaofooa_ACT_E * part, ooaofooa_ACT_IF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Else_Statement_ID = 0;
  form->ACT_E_R692_was_executing_when_halted = 0;
  part->ACT_IF_R692 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_ACT_IF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_ACT_IF * self = (ooaofooa_ACT_IF *) instance;
  printf( "INSERT INTO ACT_IF VALUES ( %ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Elif_Statement_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Else_Statement_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_ACT_IF_container[ ooaofooa_ACT_IF_MAX_EXTENT_SIZE ];
static ooaofooa_ACT_IF ooaofooa_ACT_IF_instances[ ooaofooa_ACT_IF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_ACT_IF_extent = {
  {0,0}, {0,0}, &ooaofooa_ACT_IF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_ACT_IF_instances,
  sizeof( ooaofooa_ACT_IF ), 0, ooaofooa_ACT_IF_MAX_EXTENT_SIZE
  };


