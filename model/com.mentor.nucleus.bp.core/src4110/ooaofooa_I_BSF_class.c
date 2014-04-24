/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_BSF_class.c
 *
 * Class:       Block in Stack Frame  (I_BSF)
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
ooaofooa_I_BSF_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_BSF * self = (ooaofooa_I_BSF *) instance;
  /* Initialize application analysis class attributes.  */
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Stack_Frame_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->isExecuting = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_BSF_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_BSF * ooaofooa_I_BSF_instance = (ooaofooa_I_BSF *) instance;
  ooaofooa_I_STF * ooaofooa_I_STFrelated_instance1 = (ooaofooa_I_STF *) Escher_instance_cache[ (intptr_t) ooaofooa_I_BSF_instance->Stack_Frame_ID ];
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance2 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_I_BSF_instance->Block_ID ];
  if ( ooaofooa_I_STFrelated_instance1 && ooaofooa_ACT_BLKrelated_instance2 ) {
    ooaofooa_I_BSF_R2923_Link( ooaofooa_ACT_BLKrelated_instance2, ooaofooa_I_STFrelated_instance1, ooaofooa_I_BSF_instance );
  }
  {
  ooaofooa_ACT_SMT * ooaofooa_ACT_SMTrelated_instance1 = (ooaofooa_ACT_SMT *) Escher_instance_cache[ (intptr_t) ooaofooa_I_BSF_instance->Statement_ID ];
  if ( ooaofooa_ACT_SMTrelated_instance1 ) {
    ooaofooa_I_BSF_R2941_Link_is_visited_within_scope_of( ooaofooa_ACT_SMTrelated_instance1, ooaofooa_I_BSF_instance );
  }
  }
}


/*
 * RELATE ACT_BLK TO I_STF ACROSS R2923 USING I_BSF
 */
void
ooaofooa_I_BSF_R2923_Link( ooaofooa_ACT_BLK * aone, ooaofooa_I_STF * aoth, ooaofooa_I_BSF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->Block_ID = aone->Block_ID;
  assr->Stack_Frame_ID = aoth->Stack_Frame_ID;
  /* Initialize optimized relationship storage extended attributes */
  assr->ACT_BLK_R2923_supplies_context_for = aone;
  assr->I_STF_R2923_is_executed_within_the_context_of = aoth;
  Escher_SetInsertElement( &aone->I_BSF_R2923, assr );
  Escher_SetInsertElement( &aoth->I_BSF_R2923, assr );
}

/*
 * UNRELATE ACT_BLK FROM I_STF ACROSS R2923 USING I_BSF
 */
void
ooaofooa_I_BSF_R2923_Unlink( ooaofooa_ACT_BLK * aone, ooaofooa_I_STF * aoth, ooaofooa_I_BSF * assr )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  assr->ACT_BLK_R2923_supplies_context_for = 0;
  assr->I_STF_R2923_is_executed_within_the_context_of = 0;
  Escher_SetRemoveElement( &aone->I_BSF_R2923, assr );
  Escher_SetRemoveElement( &aoth->I_BSF_R2923, assr );
}

/*
 * RELATE ACT_SMT TO I_BSF ACROSS R2941
 */
void
ooaofooa_I_BSF_R2941_Link_is_visited_within_scope_of( ooaofooa_ACT_SMT * part, ooaofooa_I_BSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = part->Statement_ID;
  form->ACT_SMT_R2941_is_currently_visiting = part;
  Escher_SetInsertElement( &part->I_BSF_R2941_is_visited_within_scope_of, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE ACT_SMT FROM I_BSF ACROSS R2941
 */
void
ooaofooa_I_BSF_R2941_Unlink_is_visited_within_scope_of( ooaofooa_ACT_SMT * part, ooaofooa_I_BSF * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Statement_ID = 0;
  form->ACT_SMT_R2941_is_currently_visiting = 0;
  Escher_SetRemoveElement( &part->I_BSF_R2941_is_visited_within_scope_of, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_BSF_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_BSF * self = (ooaofooa_I_BSF *) instance;
  printf( "INSERT INTO I_BSF VALUES ( %ld,%ld,%ld,%d );\n",
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Stack_Frame_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Statement_ID & ESCHER_IDDUMP_MASK),
    self->isExecuting );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_BSF_container[ ooaofooa_I_BSF_MAX_EXTENT_SIZE ];
static ooaofooa_I_BSF ooaofooa_I_BSF_instances[ ooaofooa_I_BSF_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_BSF_extent = {
  {0,0}, {0,0}, &ooaofooa_I_BSF_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_BSF_instances,
  sizeof( ooaofooa_I_BSF ), 0, ooaofooa_I_BSF_MAX_EXTENT_SIZE
  };


