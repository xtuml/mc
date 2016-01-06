/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_TAH_class.h
 *
 * Class:       Transition Action Home  (SM_TAH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_TAH_CLASS_H
#define OOAOFOOA_SM_TAH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Transition Action Home  (SM_TAH)
 */
struct ooaofooa_SM_TAH {

  /* application analysis class attributes */
  Escher_UniqueID_t Act_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Trans_ID;  

  /* relationship storage */
  ooaofooa_SM_AH * SM_AH_R513;
  ooaofooa_SM_TXN * SM_TXN_R530;
};
void ooaofooa_SM_TAH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_TAH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_TAH_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_TAH_R513_Link( ooaofooa_SM_AH *, ooaofooa_SM_TAH * );
void ooaofooa_SM_TAH_R513_Unlink( ooaofooa_SM_AH *, ooaofooa_SM_TAH * );
void ooaofooa_SM_TAH_R530_Link_houses_action_for( ooaofooa_SM_TXN *, ooaofooa_SM_TAH * );
void ooaofooa_SM_TAH_R530_Unlink_houses_action_for( ooaofooa_SM_TXN *, ooaofooa_SM_TAH * );


#define ooaofooa_SM_TAH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_TAH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_TAH_CLASS_H */


