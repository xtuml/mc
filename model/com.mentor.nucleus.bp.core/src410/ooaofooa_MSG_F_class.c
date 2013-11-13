/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_F_class.c
 *
 * Class:       Function Message  (MSG_F)
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
ooaofooa_MSG_F_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_F * self = (ooaofooa_MSG_F *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Sync_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_F_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_F * ooaofooa_MSG_F_instance = (ooaofooa_MSG_F *) instance;
  ooaofooa_MSG_SM * ooaofooa_MSG_SMrelated_instance1 = ooaofooa_MSG_SM_AnyWhere1( ooaofooa_MSG_F_instance->Msg_ID );
  if ( ooaofooa_MSG_SMrelated_instance1 ) {
    ooaofooa_MSG_F_R1020_Link( ooaofooa_MSG_SMrelated_instance1, ooaofooa_MSG_F_instance );
  }
  {
  ooaofooa_S_SYNC * ooaofooa_S_SYNCrelated_instance1 = ooaofooa_S_SYNC_AnyWhere1( ooaofooa_MSG_F_instance->Sync_ID );
  if ( ooaofooa_S_SYNCrelated_instance1 ) {
    ooaofooa_MSG_F_R1010_Link_is_invoked_by( ooaofooa_S_SYNCrelated_instance1, ooaofooa_MSG_F_instance );
  }
  }
}


/*
 * RELATE S_SYNC TO MSG_F ACROSS R1010
 */
void
ooaofooa_MSG_F_R1010_Link_is_invoked_by( ooaofooa_S_SYNC * part, ooaofooa_MSG_F * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = part->Sync_ID;
  form->S_SYNC_R1010_is_invocation_of = part;
  Escher_SetInsertElement( &part->MSG_F_R1010_is_invoked_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE S_SYNC FROM MSG_F ACROSS R1010
 */
void
ooaofooa_MSG_F_R1010_Unlink_is_invoked_by( ooaofooa_S_SYNC * part, ooaofooa_MSG_F * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sync_ID = 0;
  form->S_SYNC_R1010_is_invocation_of = 0;
  Escher_SetRemoveElement( &part->MSG_F_R1010_is_invoked_by, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE MSG_SM TO MSG_F ACROSS R1020
 */
void
ooaofooa_MSG_F_R1020_Link( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_F * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_F->MSG_SM[R1020] */
  subtype->MSG_SM_R1020 = supertype;
  /* Optimized linkage for MSG_SM->MSG_F[R1020] */
  supertype->R1020_subtype = subtype;
  supertype->R1020_object_id = ooaofooa_MSG_F_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_SM FROM MSG_F ACROSS R1020
 */
void
ooaofooa_MSG_F_R1020_Unlink( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_F * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_SM_R1020 = 0;
  supertype->R1020_subtype = 0;
  supertype->R1020_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_F_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_F * self = (ooaofooa_MSG_F *) instance;
  printf( "INSERT INTO MSG_F VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sync_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_F_container[ ooaofooa_MSG_F_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_F ooaofooa_MSG_F_instances[ ooaofooa_MSG_F_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_F_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_F_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_F_instances,
  sizeof( ooaofooa_MSG_F ), 0, ooaofooa_MSG_F_MAX_EXTENT_SIZE
  };


