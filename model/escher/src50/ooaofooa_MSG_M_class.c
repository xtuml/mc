/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_M_class.c
 *
 * Class:       Message  (MSG_M)
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
ooaofooa_MSG_M_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_MSG_M * self = (ooaofooa_MSG_M *) instance;
  /* Initialize application analysis class attributes.  */
  self->Msg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Receiver_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Sender_Part_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 3 ] );
  self->participatesInCommunication = ( '0' != *avlstring[ 4 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_MSG_M_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_MSG_M * ooaofooa_MSG_M_instance = (ooaofooa_MSG_M *) instance;
  ooaofooa_PE_PE * ooaofooa_PE_PErelated_instance1 = (ooaofooa_PE_PE *) Escher_instance_cache[ (intptr_t) ooaofooa_MSG_M_instance->Msg_ID ];
  if ( ooaofooa_PE_PErelated_instance1 ) {
    ooaofooa_MSG_M_R8001_Link( ooaofooa_PE_PErelated_instance1, ooaofooa_MSG_M_instance );
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_MSG_M_instance->Sender_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_MSG_M_R1007_Link_receives( ooaofooa_SQ_Prelated_instance1, ooaofooa_MSG_M_instance );
  }
  }
  {
  ooaofooa_SQ_P * ooaofooa_SQ_Prelated_instance1 = ooaofooa_SQ_P_AnyWhere1( ooaofooa_MSG_M_instance->Receiver_Part_ID );
  if ( ooaofooa_SQ_Prelated_instance1 ) {
    ooaofooa_MSG_M_R1008_Link_sends( ooaofooa_SQ_Prelated_instance1, ooaofooa_MSG_M_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_MSG_M *
ooaofooa_MSG_M_AnyWhere1( Escher_UniqueID_t w_Msg_ID )
{
  ooaofooa_MSG_M * w; 
  Escher_Iterator_s iter_MSG_M;
  Escher_IteratorReset( &iter_MSG_M, &pG_ooaofooa_MSG_M_extent.active );
  while ( (w = (ooaofooa_MSG_M *) Escher_IteratorNext( &iter_MSG_M )) != 0 ) {
    if ( w->Msg_ID == w_Msg_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE SQ_P TO MSG_M ACROSS R1007
 */
void
ooaofooa_MSG_M_R1007_Link_receives( ooaofooa_SQ_P * part, ooaofooa_MSG_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sender_Part_ID = part->Part_ID;
  form->SQ_P_R1007_has_destination = part;
  Escher_SetInsertElement( &part->MSG_M_R1007_receives, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM MSG_M ACROSS R1007
 */
void
ooaofooa_MSG_M_R1007_Unlink_receives( ooaofooa_SQ_P * part, ooaofooa_MSG_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Sender_Part_ID = 0;
  form->SQ_P_R1007_has_destination = 0;
  Escher_SetRemoveElement( &part->MSG_M_R1007_receives, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE SQ_P TO MSG_M ACROSS R1008
 */
void
ooaofooa_MSG_M_R1008_Link_sends( ooaofooa_SQ_P * part, ooaofooa_MSG_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Receiver_Part_ID = part->Part_ID;
  form->SQ_P_R1008_has_source = part;
  Escher_SetInsertElement( &part->MSG_M_R1008_sends, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE SQ_P FROM MSG_M ACROSS R1008
 */
void
ooaofooa_MSG_M_R1008_Unlink_sends( ooaofooa_SQ_P * part, ooaofooa_MSG_M * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Receiver_Part_ID = 0;
  form->SQ_P_R1008_has_source = 0;
  Escher_SetRemoveElement( &part->MSG_M_R1008_sends, (Escher_ObjectSet_s *) form );
}

/* Accessors to MSG_M[R1018] subtypes */


/*
 * RELATE PE_PE TO MSG_M ACROSS R8001
 */
void
ooaofooa_MSG_M_R8001_Link( ooaofooa_PE_PE * supertype, ooaofooa_MSG_M * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->Msg_ID = supertype->Element_ID;
  /* Optimized linkage for MSG_M->PE_PE[R8001] */
  subtype->PE_PE_R8001 = supertype;
  /* Optimized linkage for PE_PE->MSG_M[R8001] */
  supertype->R8001_subtype = subtype;
  supertype->R8001_object_id = ooaofooa_MSG_M_CLASS_NUMBER;
}


/*
 * UNRELATE PE_PE FROM MSG_M ACROSS R8001
 */
void
ooaofooa_MSG_M_R8001_Unlink( ooaofooa_PE_PE * supertype, ooaofooa_MSG_M * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->PE_PE_R8001 = 0;
  supertype->R8001_subtype = 0;
  supertype->R8001_object_id = 0;
}


/*
 * Dump instances in SQL format.
 */
void
ooaofooa_MSG_M_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_MSG_M * self = (ooaofooa_MSG_M *) instance;
  printf( "INSERT INTO MSG_M VALUES ( %ld,%ld,%ld,%d );\n",
    ((long)self->Msg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Receiver_Part_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Sender_Part_ID & ESCHER_IDDUMP_MASK),
    self->participatesInCommunication );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_MSG_M_container[ ooaofooa_MSG_M_MAX_EXTENT_SIZE ];
static ooaofooa_MSG_M ooaofooa_MSG_M_instances[ ooaofooa_MSG_M_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_MSG_M_extent = {
  {0,0}, {0,0}, &ooaofooa_MSG_M_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_MSG_M_instances,
  sizeof( ooaofooa_MSG_M ), 0, ooaofooa_MSG_M_MAX_EXTENT_SIZE
  };


