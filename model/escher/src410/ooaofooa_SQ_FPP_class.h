/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_FPP_class.h
 *
 * Class:       Function Package Participant  (SQ_FPP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_FPP_CLASS_H
#define OOAOFOOA_SQ_FPP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Package Participant  (SQ_FPP)
 */
struct ooaofooa_SQ_FPP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t FunPack_ID;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  c_t InformalName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_S_FPK * S_FPK_R932_represents;
};
void ooaofooa_SQ_FPP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_FPP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_FPP_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_FPP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_FPP * );
void ooaofooa_SQ_FPP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_FPP * );
void ooaofooa_SQ_FPP_R932_Link_represents_participant_of( ooaofooa_S_FPK *, ooaofooa_SQ_FPP * );
void ooaofooa_SQ_FPP_R932_Unlink_represents_participant_of( ooaofooa_S_FPK *, ooaofooa_SQ_FPP * );


#define ooaofooa_SQ_FPP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_FPP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_FPP_CLASS_H */


