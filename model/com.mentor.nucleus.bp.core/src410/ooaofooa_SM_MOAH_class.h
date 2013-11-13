/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MOAH_class.h
 *
 * Class:       Moore Action Home  (SM_MOAH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_MOAH_CLASS_H
#define OOAOFOOA_SM_MOAH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Moore Action Home  (SM_MOAH)
 */
struct ooaofooa_SM_MOAH {

  /* application analysis class attributes */
  Escher_UniqueID_t Act_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  

  /* relationship storage */
  ooaofooa_SM_MOORE * SM_MOORE_R511;
  ooaofooa_SM_STATE * SM_STATE_R511;
  ooaofooa_SM_AH * SM_AH_R513;
};
void ooaofooa_SM_MOAH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_MOAH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_MOAH_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_MOAH_R511_Link( ooaofooa_SM_MOORE *, ooaofooa_SM_STATE *, ooaofooa_SM_MOAH * );
void ooaofooa_SM_MOAH_R511_Unlink( ooaofooa_SM_MOORE *, ooaofooa_SM_STATE *, ooaofooa_SM_MOAH * );
void ooaofooa_SM_MOAH_R513_Link( ooaofooa_SM_AH *, ooaofooa_SM_MOAH * );
void ooaofooa_SM_MOAH_R513_Unlink( ooaofooa_SM_AH *, ooaofooa_SM_MOAH * );


#define ooaofooa_SM_MOAH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_MOAH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_MOAH_CLASS_H */


