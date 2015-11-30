/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_AM_class.h
 *
 * Class:       Asynchronous Message  (MSG_AM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_AM_CLASS_H
#define OOAOFOOA_MSG_AM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Asynchronous Message  (MSG_AM)
 */
struct ooaofooa_MSG_AM {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  c_t InformalName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t GuardCondition[ESCHER_SYS_MAX_STRING_LEN];  
  c_t DurationObservation[ESCHER_SYS_MAX_STRING_LEN];  
  c_t DurationConstraint[ESCHER_SYS_MAX_STRING_LEN];  
  bool isFormal;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  c_t SequenceNumb[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_MSG_M * MSG_M_R1018;
  void * R1019_subtype;
  Escher_ClassNumber_t R1019_object_id;
};
void ooaofooa_MSG_AM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_AM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_AM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_MSG_AM * ooaofooa_MSG_AM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_MSG_AM_R1018_Link( ooaofooa_MSG_M *, ooaofooa_MSG_AM * );
void ooaofooa_MSG_AM_R1018_Unlink( ooaofooa_MSG_M *, ooaofooa_MSG_AM * );

/* Accessors to MSG_AM[R1019] subtypes */
#define ooaofooa_MSG_E_R1019_From_MSG_AM( MSG_AM ) \
   ( (((MSG_AM)->R1019_object_id) == ooaofooa_MSG_E_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_E *)((MSG_AM)->R1019_subtype)) : (0) )
#define ooaofooa_MSG_IAM_R1019_From_MSG_AM( MSG_AM ) \
   ( (((MSG_AM)->R1019_object_id) == ooaofooa_MSG_IAM_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_IAM *)((MSG_AM)->R1019_subtype)) : (0) )
/* Note:  MSG_AM->MSG_IAM[R1019] not navigated */
#define ooaofooa_MSG_SIG_R1019_From_MSG_AM( MSG_AM ) \
   ( (((MSG_AM)->R1019_object_id) == ooaofooa_MSG_SIG_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_SIG *)((MSG_AM)->R1019_subtype)) : (0) )



#define ooaofooa_MSG_AM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_AM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_AM_CLASS_H */


