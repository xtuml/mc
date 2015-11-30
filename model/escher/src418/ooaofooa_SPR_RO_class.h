/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_RO_class.h
 *
 * Class:       Required Operation  (SPR_RO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_RO_CLASS_H
#define OOAOFOOA_SPR_RO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Required Operation  (SPR_RO)
 */
struct ooaofooa_SPR_RO {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  c_t * Descrip;  
  c_t * Action_Semantics;  
  c_t * Action_Semantics_internal;  
  sys_ParseStatus_t Suc_Pars;  

  /* relationship storage */
  Escher_ObjectSet_s ACT_IOP_R657;
  ooaofooa_ACT_ROB * ACT_ROB_R685;
  ooaofooa_TE_MACT * TE_MACT_R2052;
  ooaofooa_SPR_REP * SPR_REP_R4502;
};
void ooaofooa_SPR_RO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_RO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_RO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_RO * ooaofooa_SPR_RO_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_IOP_R657_From_SPR_RO( SPR_RO ) ( &((SPR_RO)->ACT_IOP_R657) )
void ooaofooa_SPR_RO_R4502_Link( ooaofooa_SPR_REP *, ooaofooa_SPR_RO * );
void ooaofooa_SPR_RO_R4502_Unlink( ooaofooa_SPR_REP *, ooaofooa_SPR_RO * );


#define ooaofooa_SPR_RO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_RO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_RO_CLASS_H */


