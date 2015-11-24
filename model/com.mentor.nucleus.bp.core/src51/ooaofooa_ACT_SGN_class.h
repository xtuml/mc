/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SGN_class.h
 *
 * Class:       Signal Invocation  (ACT_SGN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SGN_CLASS_H
#define OOAOFOOA_ACT_SGN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Signal Invocation  (ACT_SGN)
 */
struct ooaofooa_ACT_SGN {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  i_t sigNameLineNumber;  
  i_t sigNameColumn;  
  i_t ownerNameLineNumber;  
  i_t ownerNameColumn;  
  Escher_UniqueID_t ProvidedSig_Id;  
  Escher_UniqueID_t RequiredSig_Id;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R630_has_target;
  ooaofooa_SPR_RS * SPR_RS_R660_is_invocation_of;
  Escher_ObjectSet_s V_PAR_R662_takes;
  ooaofooa_SPR_PS * SPR_PS_R663_is_invocation_of;
};
void ooaofooa_ACT_SGN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SGN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SGN_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_SGN * ooaofooa_ACT_SGN_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_SGN_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R630_Link_is_target_of( ooaofooa_V_VAL *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R630_Unlink_is_target_of( ooaofooa_V_VAL *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R660_Link( ooaofooa_SPR_RS *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R660_Unlink( ooaofooa_SPR_RS *, ooaofooa_ACT_SGN * );
#define ooaofooa_V_PAR_R662_From_ACT_SGN_takes( ACT_SGN ) ( &((ACT_SGN)->V_PAR_R662_takes) )
void ooaofooa_ACT_SGN_R663_Link( ooaofooa_SPR_PS *, ooaofooa_ACT_SGN * );
void ooaofooa_ACT_SGN_R663_Unlink( ooaofooa_SPR_PS *, ooaofooa_ACT_SGN * );


#define ooaofooa_ACT_SGN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SGN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SGN_CLASS_H */


