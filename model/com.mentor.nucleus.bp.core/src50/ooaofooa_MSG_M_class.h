/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_M_class.h
 *
 * Class:       Message  (MSG_M)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_M_CLASS_H
#define OOAOFOOA_MSG_M_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message  (MSG_M)
 */
struct ooaofooa_MSG_M {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Receiver_Part_ID;  
  Escher_UniqueID_t Sender_Part_ID;  
  bool participatesInCommunication;  

  /* relationship storage */
  ooaofooa_SQ_MIS * SQ_MIS_R954_contained_through;
  Escher_ObjectSet_s MSG_A_R1000_has_an_informal;
  Escher_ObjectSet_s MSG_A_R1001_has_a_formal;
  ooaofooa_SQ_P * SQ_P_R1007_has_destination;
  ooaofooa_SQ_P * SQ_P_R1008_has_source;
  void * R1018_subtype;
  Escher_ClassNumber_t R1018_object_id;
  ooaofooa_COMM_MIC * COMM_MIC_R1135;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_MSG_M_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_M_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_M_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_MSG_M * ooaofooa_MSG_M_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_MSG_A_R1000_From_MSG_M_has_an_informal( MSG_M ) ( &((MSG_M)->MSG_A_R1000_has_an_informal) )
/* Note:  MSG_M->MSG_A[R1000] not navigated */
#define ooaofooa_MSG_A_R1001_From_MSG_M_has_a_formal( MSG_M ) ( &((MSG_M)->MSG_A_R1001_has_a_formal) )
/* Note:  MSG_M->MSG_A[R1001] not navigated */
void ooaofooa_MSG_M_R1007_Link_receives( ooaofooa_SQ_P *, ooaofooa_MSG_M * );
void ooaofooa_MSG_M_R1007_Unlink_receives( ooaofooa_SQ_P *, ooaofooa_MSG_M * );
void ooaofooa_MSG_M_R1008_Link_sends( ooaofooa_SQ_P *, ooaofooa_MSG_M * );
void ooaofooa_MSG_M_R1008_Unlink_sends( ooaofooa_SQ_P *, ooaofooa_MSG_M * );

/* Accessors to MSG_M[R1018] subtypes */
#define ooaofooa_MSG_AM_R1018_From_MSG_M( MSG_M ) \
   ( (((MSG_M)->R1018_object_id) == ooaofooa_MSG_AM_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_AM *)((MSG_M)->R1018_subtype)) : (0) )
#define ooaofooa_MSG_SM_R1018_From_MSG_M( MSG_M ) \
   ( (((MSG_M)->R1018_object_id) == ooaofooa_MSG_SM_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_SM *)((MSG_M)->R1018_subtype)) : (0) )
#define ooaofooa_MSG_R_R1018_From_MSG_M( MSG_M ) \
   ( (((MSG_M)->R1018_object_id) == ooaofooa_MSG_R_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_R *)((MSG_M)->R1018_subtype)) : (0) )

void ooaofooa_MSG_M_R8001_Link( ooaofooa_PE_PE *, ooaofooa_MSG_M * );
void ooaofooa_MSG_M_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_MSG_M * );


#define ooaofooa_MSG_M_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_M_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_M_CLASS_H */


