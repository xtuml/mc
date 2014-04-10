/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQU_Q_class.h
 *
 * Class:       Query  (SQU_Q)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQU_Q_CLASS_H
#define OOAOFOOA_SQU_Q_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Query  (SQU_Q)
 */
struct ooaofooa_SQU_Q {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Engine_Id;  
  c_t pattern[ESCHER_SYS_MAX_STRING_LEN];  
  bool regEx;  
  bool caseSensitive;  
  sys_SearchScope_t scope;  

  /* relationship storage */
  ooaofooa_SEN_E * SEN_E_R9500_processed_by;
  void * R9600_subtype;
  Escher_ClassNumber_t R9600_object_id;
};
void ooaofooa_SQU_Q_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQU_Q_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQU_Q_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQU_Q * ooaofooa_SQU_Q_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQU_Q_R9500_Link_processes( ooaofooa_SEN_E *, ooaofooa_SQU_Q * );
void ooaofooa_SQU_Q_R9500_Unlink_processes( ooaofooa_SEN_E *, ooaofooa_SQU_Q * );

/* Accessors to SQU_Q[R9600] subtypes */
#define ooaofooa_SQU_D_R9600_From_SQU_Q( SQU_Q ) \
   ( (((SQU_Q)->R9600_object_id) == ooaofooa_SQU_D_CLASS_NUMBER) ? \
     ((ooaofooa_SQU_D *)((SQU_Q)->R9600_subtype)) : (0) )
/* Note:  SQU_Q->SQU_D[R9600] not navigated */
#define ooaofooa_SQU_R_R9600_From_SQU_Q( SQU_Q ) \
   ( (((SQU_Q)->R9600_object_id) == ooaofooa_SQU_R_CLASS_NUMBER) ? \
     ((ooaofooa_SQU_R *)((SQU_Q)->R9600_subtype)) : (0) )
/* Note:  SQU_Q->SQU_R[R9600] not navigated */
#define ooaofooa_SQU_DE_R9600_From_SQU_Q( SQU_Q ) \
   ( (((SQU_Q)->R9600_object_id) == ooaofooa_SQU_DE_CLASS_NUMBER) ? \
     ((ooaofooa_SQU_DE *)((SQU_Q)->R9600_subtype)) : (0) )
/* Note:  SQU_Q->SQU_DE[R9600] not navigated */
#define ooaofooa_SQU_A_R9600_From_SQU_Q( SQU_Q ) \
   ( (((SQU_Q)->R9600_object_id) == ooaofooa_SQU_A_CLASS_NUMBER) ? \
     ((ooaofooa_SQU_A *)((SQU_Q)->R9600_subtype)) : (0) )
/* Note:  SQU_Q->SQU_A[R9600] not navigated */



#define ooaofooa_SQU_Q_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQU_Q_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQU_Q_CLASS_H */


