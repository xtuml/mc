/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_FJ_class.h
 *
 * Class:       Fork Join Node  (A_FJ)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_FJ_CLASS_H
#define OOAOFOOA_A_FJ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Fork Join Node  (A_FJ)
 */
struct ooaofooa_A_FJ {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Descrip;  
  c_t GuardCondition[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_A_CTL * A_CTL_R1106;
};
void ooaofooa_A_FJ_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_FJ_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_FJ_batch_relate( Escher_iHandle_t );

void ooaofooa_A_FJ_R1106_Link( ooaofooa_A_CTL *, ooaofooa_A_FJ * );
void ooaofooa_A_FJ_R1106_Unlink( ooaofooa_A_CTL *, ooaofooa_A_FJ * );


#define ooaofooa_A_FJ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_FJ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_FJ_CLASS_H */


