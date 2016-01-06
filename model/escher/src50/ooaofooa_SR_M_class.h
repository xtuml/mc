/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_M_class.h
 *
 * Class:       Match  (SR_M)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SR_M_CLASS_H
#define OOAOFOOA_SR_M_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Match  (SR_M)
 */
struct ooaofooa_SR_M {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Result_Id;  

  /* relationship storage */
  ooaofooa_SR_SR * SR_SR_R9800_provides_for;
  void * R9801_subtype;
  Escher_ClassNumber_t R9801_object_id;
};
void ooaofooa_SR_M_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SR_M_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SR_M_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SR_M * ooaofooa_SR_M_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SR_M_R9800_Link_consists_of( ooaofooa_SR_SR *, ooaofooa_SR_M * );
void ooaofooa_SR_M_R9800_Unlink_consists_of( ooaofooa_SR_SR *, ooaofooa_SR_M * );

/* Accessors to SR_M[R9801] subtypes */
#define ooaofooa_SR_NM_R9801_From_SR_M( SR_M ) \
   ( (((SR_M)->R9801_object_id) == ooaofooa_SR_NM_CLASS_NUMBER) ? \
     ((ooaofooa_SR_NM *)((SR_M)->R9801_subtype)) : (0) )
/* Note:  SR_M->SR_NM[R9801] not navigated */
#define ooaofooa_SR_CM_R9801_From_SR_M( SR_M ) \
   ( (((SR_M)->R9801_object_id) == ooaofooa_SR_CM_CLASS_NUMBER) ? \
     ((ooaofooa_SR_CM *)((SR_M)->R9801_subtype)) : (0) )
/* Note:  SR_M->SR_CM[R9801] not navigated */



#define ooaofooa_SR_M_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SR_M_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SR_M_CLASS_H */


