/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_SM_class.h
 *
 * Class:       Synchronous Message  (MSG_SM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_SM_CLASS_H
#define OOAOFOOA_MSG_SM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Synchronous Message  (MSG_SM)
 */
struct ooaofooa_MSG_SM {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  c_t * InformalName;  
  c_t * Descrip;  
  c_t * GuardCondition;  
  c_t * ResultTarget;  
  c_t * ReturnValue;  
  bool isFormal;  
  c_t * Label;  
  c_t * SequenceNumb;  

  /* relationship storage */
  ooaofooa_MSG_M * MSG_M_R1018;
  void * R1020_subtype;
  Escher_ClassNumber_t R1020_object_id;
};
void ooaofooa_MSG_SM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_SM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_SM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_MSG_SM * ooaofooa_MSG_SM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_MSG_SM_R1018_Link( ooaofooa_MSG_M *, ooaofooa_MSG_SM * );
void ooaofooa_MSG_SM_R1018_Unlink( ooaofooa_MSG_M *, ooaofooa_MSG_SM * );

/* Accessors to MSG_SM[R1020] subtypes */
#define ooaofooa_MSG_F_R1020_From_MSG_SM( MSG_SM ) \
   ( (((MSG_SM)->R1020_object_id) == ooaofooa_MSG_F_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_F *)((MSG_SM)->R1020_subtype)) : (0) )
#define ooaofooa_MSG_O_R1020_From_MSG_SM( MSG_SM ) \
   ( (((MSG_SM)->R1020_object_id) == ooaofooa_MSG_O_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_O *)((MSG_SM)->R1020_subtype)) : (0) )
#define ooaofooa_MSG_B_R1020_From_MSG_SM( MSG_SM ) \
   ( (((MSG_SM)->R1020_object_id) == ooaofooa_MSG_B_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_B *)((MSG_SM)->R1020_subtype)) : (0) )
#define ooaofooa_MSG_ISM_R1020_From_MSG_SM( MSG_SM ) \
   ( (((MSG_SM)->R1020_object_id) == ooaofooa_MSG_ISM_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_ISM *)((MSG_SM)->R1020_subtype)) : (0) )
/* Note:  MSG_SM->MSG_ISM[R1020] not navigated */
#define ooaofooa_MSG_IOP_R1020_From_MSG_SM( MSG_SM ) \
   ( (((MSG_SM)->R1020_object_id) == ooaofooa_MSG_IOP_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_IOP *)((MSG_SM)->R1020_subtype)) : (0) )



#define ooaofooa_MSG_SM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_SM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_SM_CLASS_H */


