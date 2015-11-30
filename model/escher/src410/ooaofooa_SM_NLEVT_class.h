/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NLEVT_class.h
 *
 * Class:       Non Local Event  (SM_NLEVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_NLEVT_CLASS_H
#define OOAOFOOA_SM_NLEVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Non Local Event  (SM_NLEVT)
 */
struct ooaofooa_SM_NLEVT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  Escher_UniqueID_t polySMevt_ID;  
  Escher_UniqueID_t polySM_ID;  
  Escher_UniqueID_t polySMspd_ID;  
  c_t Local_Meaning[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_SM_SEVT * SM_SEVT_R526;
  ooaofooa_SM_PEVT * SM_PEVT_R527_is_defined_by;
};
void ooaofooa_SM_NLEVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_NLEVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_NLEVT_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_NLEVT_R526_Link( ooaofooa_SM_SEVT *, ooaofooa_SM_NLEVT * );
void ooaofooa_SM_NLEVT_R526_Unlink( ooaofooa_SM_SEVT *, ooaofooa_SM_NLEVT * );
void ooaofooa_SM_NLEVT_R527_Link_is_aliased_by( ooaofooa_SM_PEVT *, ooaofooa_SM_NLEVT * );
void ooaofooa_SM_NLEVT_R527_Unlink_is_aliased_by( ooaofooa_SM_PEVT *, ooaofooa_SM_NLEVT * );


#define ooaofooa_SM_NLEVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_NLEVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_NLEVT_CLASS_H */


