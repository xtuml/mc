/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_RS_class.h
 *
 * Class:       Required Signal  (SPR_RS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_RS_CLASS_H
#define OOAOFOOA_SPR_RS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Required Signal  (SPR_RS)
 */
struct ooaofooa_SPR_RS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  
  c_t * Action_Semantics;  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  

  /* relationship storage */
  ooaofooa_SM_SGEVT * SM_SGEVT_R529;
  Escher_ObjectSet_s ACT_SGN_R660;
  ooaofooa_ACT_RSB * ACT_RSB_R684;
  ooaofooa_TE_MACT * TE_MACT_R2053;
  ooaofooa_SPR_REP * SPR_REP_R4502;
};
void ooaofooa_SPR_RS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_RS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_RS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_RS * ooaofooa_SPR_RS_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_SGN_R660_From_SPR_RS( SPR_RS ) ( &((SPR_RS)->ACT_SGN_R660) )
void ooaofooa_SPR_RS_R4502_Link( ooaofooa_SPR_REP *, ooaofooa_SPR_RS * );
void ooaofooa_SPR_RS_R4502_Unlink( ooaofooa_SPR_REP *, ooaofooa_SPR_RS * );


#define ooaofooa_SPR_RS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_RS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_RS_CLASS_H */


