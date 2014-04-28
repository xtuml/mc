/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SEL_class.h
 *
 * Class:       Select  (ACT_SEL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SEL_CLASS_H
#define OOAOFOOA_ACT_SEL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Select  (ACT_SEL)
 */
struct ooaofooa_ACT_SEL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  
  bool is_implicit;  
  c_t * cardinality;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R613_starting_point;
  ooaofooa_ACT_LNK * ACT_LNK_R637_starts_with;
  ooaofooa_V_VAR * V_VAR_R638_selection;
  void * R664_subtype;
  Escher_ClassNumber_t R664_object_id;
};
void ooaofooa_ACT_SEL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SEL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SEL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_SEL * ooaofooa_ACT_SEL_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_SEL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_SEL * );
void ooaofooa_ACT_SEL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_SEL * );
void ooaofooa_ACT_SEL_R613_Link( ooaofooa_V_VAL *, ooaofooa_ACT_SEL * );
void ooaofooa_ACT_SEL_R613_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_SEL * );
void ooaofooa_ACT_SEL_R638_Link( ooaofooa_V_VAR *, ooaofooa_ACT_SEL * );
void ooaofooa_ACT_SEL_R638_Unlink( ooaofooa_V_VAR *, ooaofooa_ACT_SEL * );

/* Accessors to ACT_SEL[R664] subtypes */
#define ooaofooa_ACT_SRW_R664_From_ACT_SEL( ACT_SEL ) \
   ( (((ACT_SEL)->R664_object_id) == ooaofooa_ACT_SRW_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_SRW *)((ACT_SEL)->R664_subtype)) : (0) )
#define ooaofooa_ACT_SR_R664_From_ACT_SEL( ACT_SEL ) \
   ( (((ACT_SEL)->R664_object_id) == ooaofooa_ACT_SR_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_SR *)((ACT_SEL)->R664_subtype)) : (0) )



#define ooaofooa_ACT_SEL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SEL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SEL_CLASS_H */


