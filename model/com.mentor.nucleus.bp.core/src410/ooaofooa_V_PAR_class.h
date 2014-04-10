/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_PAR_class.h
 *
 * Class:       Actual Parameter  (V_PAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_PAR_CLASS_H
#define OOAOFOOA_V_PAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Actual Parameter  (V_PAR)
 */
struct ooaofooa_V_PAR {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Invocation_Value_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Next_Value_ID;  
  i_t labelLineNumber;  
  i_t labelColumn;  

  /* relationship storage */
  ooaofooa_ACT_TFM * ACT_TFM_R627;
  ooaofooa_ACT_BRG * ACT_BRG_R628;
  ooaofooa_ACT_SGN * ACT_SGN_R662_taken_by;
  ooaofooa_ACT_FNC * ACT_FNC_R669;
  ooaofooa_ACT_IOP * ACT_IOP_R679_taken_by;
  ooaofooa_E_ESS * E_ESS_R700;
  ooaofooa_V_VAL * V_VAL_R800_has;
  ooaofooa_V_BRV * V_BRV_R810;
  ooaofooa_V_TRV * V_TRV_R811;
  ooaofooa_V_PAR * V_PAR_R816_precedes;
  ooaofooa_V_PAR * V_PAR_R816_succeeds;
  ooaofooa_V_FNV * V_FNV_R817;
  ooaofooa_V_MSV * V_MSV_R842;
  ooaofooa_TE_PAR * TE_PAR_R2063;
};
void ooaofooa_V_PAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_PAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_PAR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_PAR * ooaofooa_V_PAR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_PAR_R627_Link_takes( ooaofooa_ACT_TFM *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R627_Unlink_takes( ooaofooa_ACT_TFM *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R628_Link_takes( ooaofooa_ACT_BRG *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R628_Unlink_takes( ooaofooa_ACT_BRG *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R662_Link_takes( ooaofooa_ACT_SGN *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R662_Unlink_takes( ooaofooa_ACT_SGN *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R669_Link_takes( ooaofooa_ACT_FNC *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R669_Unlink_takes( ooaofooa_ACT_FNC *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R679_Link_takes( ooaofooa_ACT_IOP *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R679_Unlink_takes( ooaofooa_ACT_IOP *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R700_Link( ooaofooa_E_ESS *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R700_Unlink( ooaofooa_E_ESS *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R800_Link_is_value_of( ooaofooa_V_VAL *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R800_Unlink_is_value_of( ooaofooa_V_VAL *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R810_Link_has( ooaofooa_V_BRV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R810_Unlink_has( ooaofooa_V_BRV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R811_Link_has( ooaofooa_V_TRV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R811_Unlink_has( ooaofooa_V_TRV *, ooaofooa_V_PAR * );
      
/*
 * R816 is Simple Reflexive:  0..1:0..1
 *  Formalizing V_PAR precedes participant
 *  Participant V_PAR succeeds formalizer
 */
/* Navigation phrase:  R816.'precedes' */
void ooaofooa_V_PAR_R816_Link_precedes( ooaofooa_V_PAR *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R816_Unlink_precedes( ooaofooa_V_PAR *, ooaofooa_V_PAR * );
/* Navigation phrase:  R816.'succeeds' */
void ooaofooa_V_PAR_R816_Link_succeeds( ooaofooa_V_PAR *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R816_Unlink_succeeds( ooaofooa_V_PAR *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R817_Link_has( ooaofooa_V_FNV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R817_Unlink_has( ooaofooa_V_FNV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R842_Link_has( ooaofooa_V_MSV *, ooaofooa_V_PAR * );
void ooaofooa_V_PAR_R842_Unlink_has( ooaofooa_V_MSV *, ooaofooa_V_PAR * );


#define ooaofooa_V_PAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_PAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_PAR_CLASS_H */


