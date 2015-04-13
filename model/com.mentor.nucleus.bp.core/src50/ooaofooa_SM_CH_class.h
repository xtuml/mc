/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_CH_class.h
 *
 * Class:       Cant Happen  (SM_CH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_CH_CLASS_H
#define OOAOFOOA_SM_CH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Cant Happen  (SM_CH)
 */
struct ooaofooa_SM_CH {

  /* application analysis class attributes */
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMspd_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SM_SEME * SM_SEME_R504;
};
void ooaofooa_SM_CH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_CH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_CH_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_CH_R504_Link( ooaofooa_SM_SEME *, ooaofooa_SM_CH * );
void ooaofooa_SM_CH_R504_Unlink( ooaofooa_SM_SEME *, ooaofooa_SM_CH * );


#define ooaofooa_SM_CH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_CH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_CH_CLASS_H */


