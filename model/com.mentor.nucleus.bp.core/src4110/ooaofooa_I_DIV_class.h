/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_DIV_class.h
 *
 * Class:       Data Item Value  (I_DIV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_DIV_CLASS_H
#define OOAOFOOA_I_DIV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Item Value  (I_DIV)
 */
struct ooaofooa_I_DIV {

  /* application analysis class attributes */
  Escher_UniqueID_t DIV_ID;  
  Escher_UniqueID_t Event_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t PP_Id;  

  /* relationship storage */
  ooaofooa_I_EVI * I_EVI_R2933;
  ooaofooa_SM_EVTDI * SM_EVTDI_R2934;
  ooaofooa_C_PP * C_PP_R2956;
};
void ooaofooa_I_DIV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_DIV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_DIV_batch_relate( Escher_iHandle_t );

void ooaofooa_I_DIV_R2933_Link( ooaofooa_I_EVI *, ooaofooa_I_DIV * );
void ooaofooa_I_DIV_R2933_Unlink( ooaofooa_I_EVI *, ooaofooa_I_DIV * );
void ooaofooa_I_DIV_R2934_Link( ooaofooa_SM_EVTDI *, ooaofooa_I_DIV * );
void ooaofooa_I_DIV_R2934_Unlink( ooaofooa_SM_EVTDI *, ooaofooa_I_DIV * );
void ooaofooa_I_DIV_R2956_Link( ooaofooa_C_PP *, ooaofooa_I_DIV * );
void ooaofooa_I_DIV_R2956_Unlink( ooaofooa_C_PP *, ooaofooa_I_DIV * );


#define ooaofooa_I_DIV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_DIV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_DIV_CLASS_H */


