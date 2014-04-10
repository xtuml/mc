/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_STF_class.c
 *
 * Class:       Stack Frame  (I_STF)
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
ooaofooa_I_STF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_STF * self = (ooaofooa_I_STF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->Stack_Frame_ID;
  self->Created_For_Wired_Bridge = ( '0' != *avlstring[ 2 ] );
  self->readyForInterrupt = ( '0' != *avlstring[ 3 ] );
  self->Bridge_Caller_Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 4 ] );
  self->Child_Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Top_Stack_Frame_Stack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->Stack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  self->Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 8 ] );
  self->Value_Q_Stack_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 9 ] );
  self->Blocking_Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_STF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_STF * ooaofooa_I_STF_instance = (ooaofooa_I_STF *) instance;
  ooaofooa_I_STACK * ooaofooa_I_STACKrelated_instance1 = (ooaofooa_I_STACK *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Top_Stack_Frame_Stack_ID ];
  if ( ooaofooa_I_STACKrelated_instance1 ) {
    ooaofooa_I_STF_R2929_Link_has_a_top( ooaofooa_I_STACKrelated_instance1, ooaofooa_I_STF_instance );
  }
  {
  ooaofooa_I_STACK * ooaofooa_I_STACKrelated_instance1 = (ooaofooa_I_STACK *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Stack_ID ];
  if ( ooaofooa_I_STACKrelated_instance1 ) {
    ooaofooa_I_STF_R2943_Link_executes( ooaofooa_I_STACKrelated_instance1, ooaofooa_I_STF_instance );
  }
  }
  {
  ooaofooa_I_STACK * ooaofooa_I_STACKrelated_instance1 = (ooaofooa_I_STACK *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Value_Q_Stack_ID ];
  if ( ooaofooa_I_STACKrelated_instance1 ) {
    ooaofooa_I_STF_R2967_Link_has_return_values_on( ooaofooa_I_STACKrelated_instance1, ooaofooa_I_STF_instance );
  }
  }
  {
  ooaofooa_I_STF * ooaofooa_I_STFrelated_instance1 = (ooaofooa_I_STF *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Child_Stack_Frame_ID ];
  if ( ooaofooa_I_STFrelated_instance1 ) {
    ooaofooa_I_STF_R2928_Link_previous_context( ooaofooa_I_STFrelated_instance1, ooaofooa_I_STF_instance );
  }
  }
  {
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_STF_R2954_Link_provides_context_for( ooaofooa_I_INSrelated_instance1, ooaofooa_I_STF_instance );
  }
  }
  {
  ooaofooa_I_STF * ooaofooa_I_STFrelated_instance1 = (ooaofooa_I_STF *) Escher_instance_cache[ (intptr_t) ooaofooa_I_STF_instance->Blocking_Stack_Frame_ID ];
  if ( ooaofooa_I_STFrelated_instance1 ) {
    ooaofooa_I_STF_R2965_Link_blocks( ooaofooa_I_STFrelated_instance1, ooaofooa_I_STF_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_STF *
ooaofooa_I_STF_AnyWhere1( Escher_UniqueID_t w_Stack_Frame_ID )
{
  ooaofooa_I_STF * w; 
  Escher_Iterator_s iter_I_STF;
  Escher_IteratorReset( &iter_I_STF, &pG_ooaofooa_I_STF_extent.active );
  while ( (w = (ooaofooa_I_STF *) Escher_IteratorNext( &iter_I_STF )) != 0 ) {
    if ( w->Stack_Frame_ID == w_Stack_Frame_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE <left> I_STF TO <right> I_STF ACROSS R2928.'next context'
 */
void
ooaofooa_I_STF_R2928_Link_next_context( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Child_Stack_Frame_ID = right->Stack_Frame_ID;
  left->I_STF_R2928_next_context = right; /* SR L1 */
  right->I_STF_R2928_previous_context = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_STF FROM <right> I_STF ACROSS R2928.'next context'
 */
void
ooaofooa_I_STF_R2928_Unlink_next_context( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Child_Stack_Frame_ID = 0;
  left->I_STF_R2928_next_context = 0; /* SR U1 */
  right->I_STF_R2928_previous_context = 0; /* SR U2 */
}

/*
 * RELATE <left> I_STF TO <right> I_STF ACROSS R2928.'previous context'
 */
void
ooaofooa_I_STF_R2928_Link_previous_context( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Child_Stack_Frame_ID = left->Stack_Frame_ID;
  right->I_STF_R2928_next_context = left; /* SR L4 */
  left->I_STF_R2928_previous_context = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_STF FROM <right> I_STF ACROSS R2928.'previous context'
 */
void
ooaofooa_I_STF_R2928_Unlink_previous_context( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Child_Stack_Frame_ID = 0;
  right->I_STF_R2928_next_context = 0; /* SR U4 */
  left->I_STF_R2928_previous_context = 0; /* SR U5 */
}

/*
 * RELATE I_STACK TO I_STF ACROSS R2929
 */
void
ooaofooa_I_STF_R2929_Link_has_a_top( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Top_Stack_Frame_Stack_ID = part->Stack_ID;
  form->I_STACK_R2929_is_processed_by = part;
  part->I_STF_R2929_has_a_top = form;
}

/*
 * UNRELATE I_STACK FROM I_STF ACROSS R2929
 */
void
ooaofooa_I_STF_R2929_Unlink_has_a_top( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Top_Stack_Frame_Stack_ID = 0;
  form->I_STACK_R2929_is_processed_by = 0;
  part->I_STF_R2929_has_a_top = 0;
}

/*
 * RELATE I_STACK TO I_STF ACROSS R2943
 */
void
ooaofooa_I_STF_R2943_Link_executes( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Stack_ID = part->Stack_ID;
  form->I_STACK_R2943_processed_by = part;
  Escher_SetInsertElement( &part->I_STF_R2943_executes, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_STACK FROM I_STF ACROSS R2943
 */
void
ooaofooa_I_STF_R2943_Unlink_executes( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Stack_ID = 0;
  form->I_STACK_R2943_processed_by = 0;
  Escher_SetRemoveElement( &part->I_STF_R2943_executes, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE I_INS TO I_STF ACROSS R2954
 */
void
ooaofooa_I_STF_R2954_Link_provides_context_for( ooaofooa_I_INS * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Inst_ID = part->Inst_ID;
  form->I_INS_R2954_has_context = part;
  Escher_SetInsertElement( &part->I_STF_R2954_provides_context_for, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_STF ACROSS R2954
 */
void
ooaofooa_I_STF_R2954_Unlink_provides_context_for( ooaofooa_I_INS * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Inst_ID = 0;
  form->I_INS_R2954_has_context = 0;
  Escher_SetRemoveElement( &part->I_STF_R2954_provides_context_for, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE <left> I_STF TO <right> I_STF ACROSS R2965.'blocked by'
 */
void
ooaofooa_I_STF_R2965_Link_blocked_by( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Blocking_Stack_Frame_ID = right->Stack_Frame_ID;
  left->I_STF_R2965_blocked_by = right; /* SR L1 */
  right->I_STF_R2965_blocks = left; /* SR L2 */
}

/*
 * UNRELATE <left> I_STF FROM <right> I_STF ACROSS R2965.'blocked by'
 */
void
ooaofooa_I_STF_R2965_Unlink_blocked_by( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->Blocking_Stack_Frame_ID = 0;
  left->I_STF_R2965_blocked_by = 0; /* SR U1 */
  right->I_STF_R2965_blocks = 0; /* SR U2 */
}

/*
 * RELATE <left> I_STF TO <right> I_STF ACROSS R2965.'blocks'
 */
void
ooaofooa_I_STF_R2965_Link_blocks( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Blocking_Stack_Frame_ID = left->Stack_Frame_ID;
  right->I_STF_R2965_blocked_by = left; /* SR L4 */
  left->I_STF_R2965_blocks = right; /* SR L5 */
}

/*
 * UNRELATE <left> I_STF FROM <right> I_STF ACROSS R2965.'blocks'
 */
void
ooaofooa_I_STF_R2965_Unlink_blocks( ooaofooa_I_STF * left, ooaofooa_I_STF * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->Blocking_Stack_Frame_ID = 0;
  right->I_STF_R2965_blocked_by = 0; /* SR U4 */
  left->I_STF_R2965_blocks = 0; /* SR U5 */
}

/*
 * RELATE I_STACK TO I_STF ACROSS R2967
 */
void
ooaofooa_I_STF_R2967_Link_has_return_values_on( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_Q_Stack_ID = part->Stack_ID;
  form->I_STACK_R2967_holds_return_value_for = part;
  Escher_SetInsertElement( &part->I_STF_R2967_has_return_values_on, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_STACK FROM I_STF ACROSS R2967
 */
void
ooaofooa_I_STF_R2967_Unlink_has_return_values_on( ooaofooa_I_STACK * part, ooaofooa_I_STF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Value_Q_Stack_ID = 0;
  form->I_STACK_R2967_holds_return_value_for = 0;
  Escher_SetRemoveElement( &part->I_STF_R2967_has_return_values_on, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_STF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_STF * self = (ooaofooa_I_STF *) instance;
  printf( "INSERT INTO I_STF VALUES ( %ld,%d,%d,%ld,%ld,%ld,%ld,%ld,%ld,%ld );\n",
    ((long)self->Stack_Frame_ID & ESCHER_IDDUMP_MASK),
    self->Created_For_Wired_Bridge,
    self->readyForInterrupt,
    ((long)self->Bridge_Caller_Stack_Frame_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Child_Stack_Frame_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Top_Stack_Frame_Stack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Stack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Inst_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Value_Q_Stack_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Blocking_Stack_Frame_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_STF_container[ ooaofooa_I_STF_MAX_EXTENT_SIZE ];
static ooaofooa_I_STF ooaofooa_I_STF_instances[ ooaofooa_I_STF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_STF_extent = {
  {0,0}, {0,0}, &ooaofooa_I_STF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_STF_instances,
  sizeof( ooaofooa_I_STF ), 0, ooaofooa_I_STF_MAX_EXTENT_SIZE
  };


