/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_BA_class.c
 *
 * Class:       Bridge Argument  (MSG_BA)
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
ooaofooa_MSG_BA_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_BA * self = (ooaofooa_MSG_BA *) instance;
  /* Initialize application analysis class attributes.  */
  self->Arg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->BParm_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_BA_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_BA * ooaofooa_MSG_BA_instance = (ooaofooa_MSG_BA *) instance;
  ooaofooa_MSG_A * ooaofooa_MSG_Arelated_instance1 = (ooaofooa_MSG_A *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_BA_instance->Arg_ID ];
  if ( ooaofooa_MSG_Arelated_instance1 ) {
    ooaofooa_MSG_BA_R1013_Link( ooaofooa_MSG_Arelated_instance1, ooaofooa_MSG_BA_instance );
  }
  {
  ooaofooa_S_BPARM * ooaofooa_S_BPARMrelated_instance1 = (ooaofooa_S_BPARM *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_BA_instance->BParm_ID ];
  if ( ooaofooa_S_BPARMrelated_instance1 ) {
    ooaofooa_MSG_BA_R1014_Link_represents( ooaofooa_S_BPARMrelated_instance1, ooaofooa_MSG_BA_instance );
  }
  }
}


/*
 * RELATE MSG_A TO MSG_BA ACROSS R1013
 */
void
ooaofooa_MSG_BA_R1013_Link( ooaofooa_MSG_A * supertype, ooaofooa_MSG_BA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Arg_ID = supertype->Arg_ID;
  /* Optimized linkage for MSG_BA->MSG_A[R1013] */
  subtype->MSG_A_R1013 = supertype;
  /* Optimized linkage for MSG_A->MSG_BA[R1013] */
  supertype->R1013_subtype = subtype;
  supertype->R1013_object_id = ooaofooa_MSG_BA_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_A FROM MSG_BA ACROSS R1013
 */
void
ooaofooa_MSG_BA_R1013_Unlink( ooaofooa_MSG_A * supertype, ooaofooa_MSG_BA * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_A_R1013 = 0;
  supertype->R1013_subtype = 0;
  supertype->R1013_object_id = 0;
}


/*
 * RELATE S_BPARM TO MSG_BA ACROSS R1014
 */
void
ooaofooa_MSG_BA_R1014_Link_represents( ooaofooa_S_BPARM * part, ooaofooa_MSG_BA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = part->BParm_ID;
  form->S_BPARM_R1014_is_represented_by = part;
  Escher_SetInsertElement( &part->MSG_BA_R1014_represents, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_BPARM FROM MSG_BA ACROSS R1014
 */
void
ooaofooa_MSG_BA_R1014_Unlink_represents( ooaofooa_S_BPARM * part, ooaofooa_MSG_BA * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->BParm_ID = 0;
  form->S_BPARM_R1014_is_represented_by = 0;
  Escher_SetRemoveElement( &part->MSG_BA_R1014_represents, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_BA_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_BA * self = (ooaofooa_MSG_BA *) instance;
  printf( "INSERT INTO MSG_BA VALUES ( %ld,%ld );\n",
    ((long)self->Arg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->BParm_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_BA_container[ ooaofooa_MSG_BA_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_BA ooaofooa_MSG_BA_instances[ ooaofooa_MSG_BA_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_BA_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_BA_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_BA_instances,
  sizeof( ooaofooa_MSG_BA ), 0, ooaofooa_MSG_BA_MAX_EXTENT_SIZE
  };


