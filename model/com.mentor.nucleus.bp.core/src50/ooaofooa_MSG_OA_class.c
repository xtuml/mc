/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_OA_class.c
 *
 * Class:       Operation Argument  (MSG_OA)
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
ooaofooa_MSG_OA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_OA * self = (ooaofooa_MSG_OA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->TParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_OA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_OA * ooaofooa_MSG_OA_instance = (ooaofooa_MSG_OA *) instance;
  ooaofooa_O_TPARM * ooaofooa_O_TPARMrelated_instance1 = (ooaofooa_O_TPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_OA_instance->TParm_ID ];
  if ( ooaofooa_O_TPARMrelated_instance1 ) {
    ooaofooa_MSG_OA_R1015_Link_represents( ooaofooa_O_TPARMrelated_instance1, ooaofooa_MSG_OA_instance );
  }
  {
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_OA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_OA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_OA_instance );
  }
  }
}


/*
 * RELATE MSG_A TO MSG_OA ACROSS R1013
 */
void
ooaofooa_MSG_OA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_OA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_OA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_OA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_OA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_OA ACROSS R1013
 */
void
ooaofooa_MSG_OA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_OA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * RELATE O_TPARM TO MSG_OA ACROSS R1015
 */
void
ooaofooa_MSG_OA_R1015_Link_represents( ooaofooa_O_TPARM * part, ooaofooa_MSG_OA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = part->TParm_ID;
  form->O_TPARM_R1015_is_represented_by = part;
  Escher_SetInsertElement( &part->MSG_OA_R1015_represents, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE O_TPARM FROM MSG_OA ACROSS R1015
 */
void
ooaofooa_MSG_OA_R1015_Unlink_represents( ooaofooa_O_TPARM * part, ooaofooa_MSG_OA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->TParm_ID = 0;
  form->O_TPARM_R1015_is_represented_by = 0;
  Escher_SetRemoveElement( &part->MSG_OA_R1015_represents, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_OA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_OA * self = (ooaofooa_MSG_OA *) instance;
  printf( "INSERT INTO MSG_OA VALUES ( %ld,%ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->TParm_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_OA_container[ ooaofooa_MSG_OA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_OA ooaofooa_MSG_OA_instances[ ooaofooa_MSG_OA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_OA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_OA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_OA_instances,
  sizeof( ooaofooa_MSG_OA ), 0, ooaofooa_MSG_OA_MAX_EXTENT_SIZE
  };


