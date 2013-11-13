/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_EEP_class.h
 *
 * Class:       External Entity Participant  (SQ_EEP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_EEP_CLASS_H
#define OOAOFOOA_SQ_EEP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   External Entity Participant  (SQ_EEP)
 */
struct ooaofooa_SQ_EEP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t EE_ID;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  c_t InformalName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_S_EE * S_EE_R933_represents;
};
void ooaofooa_SQ_EEP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_EEP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_EEP_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_EEP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_EEP * );
void ooaofooa_SQ_EEP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_EEP * );
void ooaofooa_SQ_EEP_R933_Link_represents_participant_of( ooaofooa_S_EE *, ooaofooa_SQ_EEP * );
void ooaofooa_SQ_EEP_R933_Unlink_represents_participant_of( ooaofooa_S_EE *, ooaofooa_SQ_EEP * );


#define ooaofooa_SQ_EEP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_EEP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_EEP_CLASS_H */


