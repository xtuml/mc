/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_FA_class.c
 *
 * Class:       Function Argument  (MSG_FA)
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
ooaofooa_MSG_FA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_FA * self = (ooaofooa_MSG_FA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->SParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_FA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_FA * ooaofooa_MSG_FA_instance = (ooaofooa_MSG_FA *) instance;
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_FA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_FA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_FA_instance );
  }
  {
  ooaofooa_S_SPARM * ooaofooa_S_SPARMrelated_instance1 = (ooaofooa_S_SPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_FA_instance->SParm_ID ];
  if ( ooaofooa_S_SPARMrelated_instance1 ) {
    ooaofooa_MSG_FA_R1016_Link_represents( ooaofooa_S_SPARMrelated_instance1, ooaofooa_MSG_FA_instance );
  }
  }
}


/*
 * RELATE MSG_A TO MSG_FA ACROSS R1013
 */
void
ooaofooa_MSG_FA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_FA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_FA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_FA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_FA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_FA ACROSS R1013
 */
void
ooaofooa_MSG_FA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_FA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * RELATE S_SPARM TO MSG_FA ACROSS R1016
 */
void
ooaofooa_MSG_FA_R1016_Link_represents( ooaofooa_S_SPARM * part, ooaofooa_MSG_FA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = part->SParm_ID;
  form->S_SPARM_R1016_is_represented_by = part;
  Escher_SetInsertElement( &part->MSG_FA_R1016_represents, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SPARM FROM MSG_FA ACROSS R1016
 */
void
ooaofooa_MSG_FA_R1016_Unlink_represents( ooaofooa_S_SPARM * part, ooaofooa_MSG_FA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->SParm_ID = 0;
  form->S_SPARM_R1016_is_represented_by = 0;
  Escher_SetRemoveElement( &part->MSG_FA_R1016_represents, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_FA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_FA * self = (ooaofooa_MSG_FA *) instance;
  printf( "INSERT INTO MSG_FA VALUES ( %ld,%ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->SParm_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_FA_container[ ooaofooa_MSG_FA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_FA ooaofooa_MSG_FA_instances[ ooaofooa_MSG_FA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_FA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_FA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_FA_instances,
  sizeof( ooaofooa_MSG_FA ), 0, ooaofooa_MSG_FA_MAX_EXTENT_SIZE
  };


