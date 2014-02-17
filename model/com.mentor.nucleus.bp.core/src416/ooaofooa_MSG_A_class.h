/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_A_class.h
 *
 * Class:       Message Argument  (MSG_A)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_A_CLASS_H
#define OOAOFOOA_MSG_A_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message Argument  (MSG_A)
 */
struct ooaofooa_MSG_A {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t Informal_Msg_ID;  
  Escher_UniqueID_t Formal_Msg_ID;  
  c_t * Label;  
  c_t * Value;  
  c_t * InformalName;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_MSG_M * MSG_M_R1000_belongs_to_informal;
  ooaofooa_MSG_M * MSG_M_R1001_belongs_to_formal;
  void * R1013_subtype;
  Escher_ClassNumber_t R1013_object_id;
};
void ooaofooa_MSG_A_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_A_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_A_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_MSG_A * ooaofooa_MSG_A_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_MSG_A_R1000_Link_has_an_informal( ooaofooa_MSG_M *, ooaofooa_MSG_A * );
void ooaofooa_MSG_A_R1000_Unlink_has_an_informal( ooaofooa_MSG_M *, ooaofooa_MSG_A * );
void ooaofooa_MSG_A_R1001_Link_has_a_formal( ooaofooa_MSG_M *, ooaofooa_MSG_A * );
void ooaofooa_MSG_A_R1001_Unlink_has_a_formal( ooaofooa_MSG_M *, ooaofooa_MSG_A * );

/* Accessors to MSG_A[R1013] subtypes */
#define ooaofooa_MSG_BA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_BA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_BA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_BA[R1013] not navigated */
#define ooaofooa_MSG_OA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_OA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_OA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_OA[R1013] not navigated */
#define ooaofooa_MSG_FA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_FA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_FA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_FA[R1013] not navigated */
#define ooaofooa_MSG_EA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_EA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_EA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_EA[R1013] not navigated */
#define ooaofooa_MSG_IA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_IA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_IA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_IA[R1013] not navigated */
#define ooaofooa_MSG_EPA_R1013_From_MSG_A( MSG_A ) \
   ( (((MSG_A)->R1013_object_id) == ooaofooa_MSG_EPA_CLASS_NUMBER) ? \
     ((ooaofooa_MSG_EPA *)((MSG_A)->R1013_subtype)) : (0) )
/* Note:  MSG_A->MSG_EPA[R1013] not navigated */



#define ooaofooa_MSG_A_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_A_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_A_CLASS_H */


