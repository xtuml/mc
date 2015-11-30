/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_NSTXN_class.h
 *
 * Class:       New State Transition  (SM_NSTXN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_NSTXN_CLASS_H
#define OOAOFOOA_SM_NSTXN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   New State Transition  (SM_NSTXN)
 */
struct ooaofooa_SM_NSTXN {

  /* application analysis class attributes */
  Escher_UniqueID_t Trans_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t SMspd_ID;  

  /* relationship storage */
  ooaofooa_SM_SEME * SM_SEME_R504;
  ooaofooa_SM_TXN * SM_TXN_R507;
};
void ooaofooa_SM_NSTXN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_NSTXN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_NSTXN_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_NSTXN_R504_Link( ooaofooa_SM_SEME *, ooaofooa_SM_NSTXN * );
void ooaofooa_SM_NSTXN_R504_Unlink( ooaofooa_SM_SEME *, ooaofooa_SM_NSTXN * );
void ooaofooa_SM_NSTXN_R507_Link( ooaofooa_SM_TXN *, ooaofooa_SM_NSTXN * );
void ooaofooa_SM_NSTXN_R507_Unlink( ooaofooa_SM_TXN *, ooaofooa_SM_NSTXN * );


#define ooaofooa_SM_NSTXN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_NSTXN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_NSTXN_CLASS_H */


