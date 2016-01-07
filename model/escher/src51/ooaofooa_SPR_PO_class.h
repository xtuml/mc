/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PO_class.h
 *
 * Class:       Provided Operation  (SPR_PO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_PO_CLASS_H
#define OOAOFOOA_SPR_PO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provided Operation  (SPR_PO)
 */
struct ooaofooa_SPR_PO {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  
  c_t * Action_Semantics;  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  

  /* relationship storage */
  Escher_ObjectSet_s ACT_IOP_R680;
  ooaofooa_ACT_POB * ACT_POB_R687;
  ooaofooa_TE_MACT * TE_MACT_R2050;
  ooaofooa_SPR_PEP * SPR_PEP_R4503;
};
void ooaofooa_SPR_PO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_PO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_PO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_PO * ooaofooa_SPR_PO_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_IOP_R680_From_SPR_PO( SPR_PO ) ( &((SPR_PO)->ACT_IOP_R680) )
void ooaofooa_SPR_PO_R4503_Link( ooaofooa_SPR_PEP *, ooaofooa_SPR_PO * );
void ooaofooa_SPR_PO_R4503_Unlink( ooaofooa_SPR_PEP *, ooaofooa_SPR_PO * );


#define ooaofooa_SPR_PO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_PO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_PO_CLASS_H */


