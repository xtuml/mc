/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_ACT_class.h
 *
 * Class:       Action  (SM_ACT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_ACT_CLASS_H
#define OOAOFOOA_SM_ACT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Action  (SM_ACT)
 */
struct ooaofooa_SM_ACT {

  /* application analysis class attributes */
  Escher_UniqueID_t Act_ID;  
  Escher_UniqueID_t SM_ID;  
  sys_ParseStatus_t Suc_Pars;  
  c_t Action_Semantics[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Action_Semantics_internal;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SM_AH * SM_AH_R514_resides_in;
  ooaofooa_SM_SM * SM_SM_R515;
  ooaofooa_ACT_TAB * ACT_TAB_R688;
  ooaofooa_ACT_SAB * ACT_SAB_R691;
  ooaofooa_TE_ACT * TE_ACT_R2022;
};
void ooaofooa_SM_ACT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_ACT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_ACT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_ACT * ooaofooa_SM_ACT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_SM_ACT_R515_Link_contains( ooaofooa_SM_SM *, ooaofooa_SM_ACT * );
void ooaofooa_SM_ACT_R515_Unlink_contains( ooaofooa_SM_SM *, ooaofooa_SM_ACT * );


#define ooaofooa_SM_ACT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_ACT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_ACT_CLASS_H */


