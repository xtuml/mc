/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_PP_class.h
 *
 * Class:       Package Participant  (SQ_PP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_PP_CLASS_H
#define OOAOFOOA_SQ_PP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Package Participant  (SQ_PP)
 */
struct ooaofooa_SQ_PP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Package_ID;  
  c_t * Label;  
  c_t * InformalName;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_EP_PKG * EP_PKG_R956_represents;
};
void ooaofooa_SQ_PP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_PP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_PP_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_PP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_PP * );
void ooaofooa_SQ_PP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_PP * );
void ooaofooa_SQ_PP_R956_Link_represents_participant_of( ooaofooa_EP_PKG *, ooaofooa_SQ_PP * );
void ooaofooa_SQ_PP_R956_Unlink_represents_participant_of( ooaofooa_EP_PKG *, ooaofooa_SQ_PP * );


#define ooaofooa_SQ_PP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_PP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_PP_CLASS_H */


