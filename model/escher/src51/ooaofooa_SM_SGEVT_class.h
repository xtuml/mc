/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SGEVT_class.h
 *
 * Class:       Signal Event  (SM_SGEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SGEVT_CLASS_H
#define OOAOFOOA_SM_SGEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Signal Event  (SM_SGEVT)
 */
struct ooaofooa_SM_SGEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  Escher_UniqueID_t Provided_Signal_Id;  
  Escher_UniqueID_t Required_Signal_Id;  
  c_t * signal_name;  

  /* relationship storage */
  ooaofooa_SM_SEVT * SM_SEVT_R526;
  ooaofooa_SPR_PS * SPR_PS_R528;
  ooaofooa_SPR_RS * SPR_RS_R529;
};
void ooaofooa_SM_SGEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SGEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_SGEVT_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_SGEVT_R526_Link( ooaofooa_SM_SEVT *, ooaofooa_SM_SGEVT * );
void ooaofooa_SM_SGEVT_R526_Unlink( ooaofooa_SM_SEVT *, ooaofooa_SM_SGEVT * );
void ooaofooa_SM_SGEVT_R528_Link( ooaofooa_SPR_PS *, ooaofooa_SM_SGEVT * );
void ooaofooa_SM_SGEVT_R528_Unlink( ooaofooa_SPR_PS *, ooaofooa_SM_SGEVT * );
void ooaofooa_SM_SGEVT_R529_Link( ooaofooa_SPR_RS *, ooaofooa_SM_SGEVT * );
void ooaofooa_SM_SGEVT_R529_Unlink( ooaofooa_SPR_RS *, ooaofooa_SM_SGEVT * );


#define ooaofooa_SM_SGEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SGEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SGEVT_CLASS_H */


