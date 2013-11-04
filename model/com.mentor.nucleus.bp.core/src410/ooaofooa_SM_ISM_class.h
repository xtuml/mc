/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ISM_class.h
 *
 * Class:       Instance State Machine  (SM_ISM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_ISM_CLASS_H
#define OOAOFOOA_SM_ISM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance State Machine  (SM_ISM)
 */
struct ooaofooa_SM_ISM {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R517;
  ooaofooa_O_OBJ * O_OBJ_R518;
};
void ooaofooa_SM_ISM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_ISM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_ISM_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_ISM_R517_Link( ooaofooa_SM_SM *, ooaofooa_SM_ISM * );
void ooaofooa_SM_ISM_R517_Unlink( ooaofooa_SM_SM *, ooaofooa_SM_ISM * );
void ooaofooa_SM_ISM_R518_Link( ooaofooa_O_OBJ *, ooaofooa_SM_ISM * );
void ooaofooa_SM_ISM_R518_Unlink( ooaofooa_O_OBJ *, ooaofooa_SM_ISM * );


#define ooaofooa_SM_ISM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_ISM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_ISM_CLASS_H */


