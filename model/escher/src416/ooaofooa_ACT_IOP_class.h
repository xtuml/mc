/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_IOP_class.h
 *
 * Class:       Interface Operation Invocation  (ACT_IOP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_IOP_CLASS_H
#define OOAOFOOA_ACT_IOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Operation Invocation  (ACT_IOP)
 */
struct ooaofooa_ACT_IOP {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  i_t opNameLineNumber;  
  i_t opNameColumn;  
  i_t ownerNameLineNumber;  
  i_t ownerNameColumn;  
  Escher_UniqueID_t ProvidedOp_Id;  
  Escher_UniqueID_t RequiredOp_Id;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R629_has_target;
  ooaofooa_SPR_RO * SPR_RO_R657_is_invocation_of;
  Escher_ObjectSet_s V_PAR_R679_takes;
  ooaofooa_SPR_PO * SPR_PO_R680_is_invocation_of;
};
void ooaofooa_ACT_IOP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_IOP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_IOP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_IOP * ooaofooa_ACT_IOP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_IOP_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R629_Link_is_target_of( ooaofooa_V_VAL *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R629_Unlink_is_target_of( ooaofooa_V_VAL *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R657_Link( ooaofooa_SPR_RO *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R657_Unlink( ooaofooa_SPR_RO *, ooaofooa_ACT_IOP * );
#define ooaofooa_V_PAR_R679_From_ACT_IOP_takes( ACT_IOP ) ( &((ACT_IOP)->V_PAR_R679_takes) )
void ooaofooa_ACT_IOP_R680_Link( ooaofooa_SPR_PO *, ooaofooa_ACT_IOP * );
void ooaofooa_ACT_IOP_R680_Unlink( ooaofooa_SPR_PO *, ooaofooa_ACT_IOP * );


#define ooaofooa_ACT_IOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_IOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_IOP_CLASS_H */


