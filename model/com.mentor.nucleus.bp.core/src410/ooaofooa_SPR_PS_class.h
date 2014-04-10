/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PS_class.h
 *
 * Class:       Provided Signal  (SPR_PS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_PS_CLASS_H
#define OOAOFOOA_SPR_PS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provided Signal  (SPR_PS)
 */
struct ooaofooa_SPR_PS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t Action_Semantics[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  

  /* relationship storage */
  ooaofooa_SM_SGEVT * SM_SGEVT_R528;
  Escher_ObjectSet_s ACT_SGN_R663;
  ooaofooa_ACT_PSB * ACT_PSB_R686;
  ooaofooa_TE_MACT * TE_MACT_R2051;
  ooaofooa_SPR_PEP * SPR_PEP_R4503;
};
void ooaofooa_SPR_PS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_PS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_PS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_PS * ooaofooa_SPR_PS_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_SGN_R663_From_SPR_PS( SPR_PS ) ( &((SPR_PS)->ACT_SGN_R663) )
void ooaofooa_SPR_PS_R4503_Link( ooaofooa_SPR_PEP *, ooaofooa_SPR_PS * );
void ooaofooa_SPR_PS_R4503_Unlink( ooaofooa_SPR_PEP *, ooaofooa_SPR_PS * );


#define ooaofooa_SPR_PS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_PS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_PS_CLASS_H */


