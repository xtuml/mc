/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ASM_class.h
 *
 * Class:       Class State Machine  (SM_ASM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_ASM_CLASS_H
#define OOAOFOOA_SM_ASM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class State Machine  (SM_ASM)
 */
struct ooaofooa_SM_ASM {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R517;
  ooaofooa_O_OBJ * O_OBJ_R519;
};
void ooaofooa_SM_ASM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_ASM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_ASM_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_ASM_R517_Link( ooaofooa_SM_SM *, ooaofooa_SM_ASM * );
void ooaofooa_SM_ASM_R517_Unlink( ooaofooa_SM_SM *, ooaofooa_SM_ASM * );
void ooaofooa_SM_ASM_R519_Link( ooaofooa_O_OBJ *, ooaofooa_SM_ASM * );
void ooaofooa_SM_ASM_R519_Unlink( ooaofooa_O_OBJ *, ooaofooa_SM_ASM * );


#define ooaofooa_SM_ASM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_ASM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_ASM_CLASS_H */


