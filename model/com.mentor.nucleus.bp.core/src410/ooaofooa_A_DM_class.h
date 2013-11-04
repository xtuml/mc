/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_DM_class.h
 *
 * Class:       Decision Merge Node  (A_DM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_DM_CLASS_H
#define OOAOFOOA_A_DM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Decision Merge Node  (A_DM)
 */
struct ooaofooa_A_DM {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_A_CTL * A_CTL_R1106;
};
void ooaofooa_A_DM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_DM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_DM_batch_relate( Escher_iHandle_t );

void ooaofooa_A_DM_R1106_Link( ooaofooa_A_CTL *, ooaofooa_A_DM * );
void ooaofooa_A_DM_R1106_Unlink( ooaofooa_A_CTL *, ooaofooa_A_DM * );


#define ooaofooa_A_DM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_DM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_DM_CLASS_H */


