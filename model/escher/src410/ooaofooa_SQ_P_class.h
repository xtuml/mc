/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_P_class.h
 *
 * Class:       Interaction Participant  (SQ_P)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_P_CLASS_H
#define OOAOFOOA_SQ_P_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interaction Participant  (SQ_P)
 */
struct ooaofooa_SQ_P {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Sequence_Package_ID;  

  /* relationship storage */
  ooaofooa_SQ_S * SQ_S_R929_participates_in;
  void * R930_subtype;
  Escher_ClassNumber_t R930_object_id;
  ooaofooa_SQ_LS * SQ_LS_R940_is_source_of_span;
  Escher_ObjectSet_s MSG_M_R1007_receives;
  Escher_ObjectSet_s MSG_M_R1008_sends;
  ooaofooa_COMM_PIC * COMM_PIC_R1126;
  Escher_ObjectSet_s COMM_LNK_R1133_is_start_point;
  Escher_ObjectSet_s COMM_LNK_R1134_is_destination;
  ooaofooa_UC_PIUC * UC_PIUC_R1203;
  Escher_ObjectSet_s UC_UCA_R1206_is_source;
  Escher_ObjectSet_s UC_UCA_R1207_is_destination;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_SQ_P_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_P_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_P_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_P * ooaofooa_SQ_P_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_P_R929_Link_contains( ooaofooa_SQ_S *, ooaofooa_SQ_P * );
void ooaofooa_SQ_P_R929_Unlink_contains( ooaofooa_SQ_S *, ooaofooa_SQ_P * );

/* Accessors to SQ_P[R930] subtypes */
#define ooaofooa_SQ_CIP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_CIP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_CIP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_EEP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_EEP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_EEP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_FPP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_FPP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_FPP *)((SQ_P)->R930_subtype)) : (0) )
/* Note:  SQ_P->SQ_FPP[R930] not navigated */
#define ooaofooa_SQ_CP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_CP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_CP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_AP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_AP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_AP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_LS_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_LS_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_LS *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_IA_UCP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_IA_UCP_CLASS_NUMBER) ? \
     ((ooaofooa_IA_UCP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_COP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_COP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_COP *)((SQ_P)->R930_subtype)) : (0) )
#define ooaofooa_SQ_PP_R930_From_SQ_P( SQ_P ) \
   ( (((SQ_P)->R930_object_id) == ooaofooa_SQ_PP_CLASS_NUMBER) ? \
     ((ooaofooa_SQ_PP *)((SQ_P)->R930_subtype)) : (0) )

#define ooaofooa_MSG_M_R1007_From_SQ_P_receives( SQ_P ) ( &((SQ_P)->MSG_M_R1007_receives) )
/* Note:  SQ_P->MSG_M[R1007] not navigated */
#define ooaofooa_MSG_M_R1008_From_SQ_P_sends( SQ_P ) ( &((SQ_P)->MSG_M_R1008_sends) )
/* Note:  SQ_P->MSG_M[R1008] not navigated */
#define ooaofooa_COMM_LNK_R1133_From_SQ_P_is_start_point( SQ_P ) ( &((SQ_P)->COMM_LNK_R1133_is_start_point) )
/* Note:  SQ_P->COMM_LNK[R1133] not navigated */
#define ooaofooa_COMM_LNK_R1134_From_SQ_P_is_destination( SQ_P ) ( &((SQ_P)->COMM_LNK_R1134_is_destination) )
/* Note:  SQ_P->COMM_LNK[R1134] not navigated */
#define ooaofooa_UC_UCA_R1206_From_SQ_P_is_source( SQ_P ) ( &((SQ_P)->UC_UCA_R1206_is_source) )
/* Note:  SQ_P->UC_UCA[R1206] not navigated */
#define ooaofooa_UC_UCA_R1207_From_SQ_P_is_destination( SQ_P ) ( &((SQ_P)->UC_UCA_R1207_is_destination) )
/* Note:  SQ_P->UC_UCA[R1207] not navigated */
void ooaofooa_SQ_P_R8001_Link( ooaofooa_PE_PE *, ooaofooa_SQ_P * );
void ooaofooa_SQ_P_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_SQ_P * );


#define ooaofooa_SQ_P_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_P_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_P_CLASS_H */


