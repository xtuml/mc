/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_EIGN_class.h
 *
 * Class:       Event Ignored  (SM_EIGN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_EIGN_CLASS_H
#define OOAOFOOA_SM_EIGN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Ignored  (SM_EIGN)
 */
struct ooaofooa_SM_EIGN {

  /* application analysis class attributes */
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SM_SEME * SM_SEME_R504;
};
void ooaofooa_SM_EIGN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_EIGN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_EIGN_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_EIGN_R504_Link( ooaofooa_SM_SEME *, ooaofooa_SM_EIGN * );
void ooaofooa_SM_EIGN_R504_Unlink( ooaofooa_SM_SEME *, ooaofooa_SM_EIGN * );


#define ooaofooa_SM_EIGN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_EIGN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_EIGN_CLASS_H */


