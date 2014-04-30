/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IOP_class.c
 *
 * Class:       Interface Operation Message  (MSG_IOP)
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
ooaofooa_MSG_IOP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_IOP * self = (ooaofooa_MSG_IOP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Id = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_IOP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IOP * ooaofooa_MSG_IOP_instance = (ooaofooa_MSG_IOP *) instance;
  ooaofooa_MSG_SM * ooaofooa_MSG_SMrelated_instance1 = ooaofooa_MSG_SM_AnyWhere1( ooaofooa_MSG_IOP_instance->Msg_ID );
  if ( ooaofooa_MSG_SMrelated_instance1 ) {
    ooaofooa_MSG_IOP_R1020_Link( ooaofooa_MSG_SMrelated_instance1, ooaofooa_MSG_IOP_instance );
  }
  {
  ooaofooa_C_IO * ooaofooa_C_IOrelated_instance1 = ooaofooa_C_IO_AnyWhere1( ooaofooa_MSG_IOP_instance->Id );
  if ( ooaofooa_C_IOrelated_instance1 ) {
    ooaofooa_MSG_IOP_R1022_Link_sent_by( ooaofooa_C_IOrelated_instance1, ooaofooa_MSG_IOP_instance );
  }
  }
}


/*
 * RELATE MSG_SM TO MSG_IOP ACROSS R1020
 */
void
ooaofooa_MSG_IOP_R1020_Link( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_IOP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Msg_ID;
  /* Optimized linkage for MSG_IOP->MSG_SM[R1020] */
  subtype->MSG_SM_R1020 = supertype;
  /* Optimized linkage for MSG_SM->MSG_IOP[R1020] */
  supertype->R1020_subtype = subtype;
  supertype->R1020_object_id = ooaofooa_MSG_IOP_CLASS_NUMBER;
}


/*
 * UNRELATE MSG_SM FROM MSG_IOP ACROSS R1020
 */
void
ooaofooa_MSG_IOP_R1020_Unlink( ooaofooa_MSG_SM * supertype, ooaofooa_MSG_IOP * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->MSG_SM_R1020 = 0;
  supertype->R1020_subtype = 0;
  supertype->R1020_object_id = 0;
}


/*
 * RELATE C_IO TO MSG_IOP ACROSS R1022
 */
void
ooaofooa_MSG_IOP_R1022_Link_sent_by( ooaofooa_C_IO * part, ooaofooa_MSG_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = part->Id;
  form->C_IO_R1022_sends = part;
  Escher_SetInsertElement( &part->MSG_IOP_R1022_sent_by, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_IO FROM MSG_IOP ACROSS R1022
 */
void
ooaofooa_MSG_IOP_R1022_Unlink_sent_by( ooaofooa_C_IO * part, ooaofooa_MSG_IOP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Id = 0;
  form->C_IO_R1022_sends = 0;
  Escher_SetRemoveElement( &part->MSG_IOP_R1022_sent_by, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_IOP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_IOP * self = (ooaofooa_MSG_IOP *) instance;
  printf( "INSERT INTO MSG_IOP VALUES ( %ld,%ld );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Id & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_IOP_container[ ooaofooa_MSG_IOP_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_IOP ooaofooa_MSG_IOP_instances[ ooaofooa_MSG_IOP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_IOP_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_IOP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_IOP_instances,
  sizeof( ooaofooa_MSG_IOP ), 0, ooaofooa_MSG_IOP_MAX_EXTENT_SIZE
  };


