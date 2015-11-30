/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_REL_class.h
 *
 * Class:       Relate  (ACT_REL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_REL_CLASS_H
#define OOAOFOOA_ACT_REL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Relate  (ACT_REL)
 */
struct ooaofooa_ACT_REL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t One_Side_Var_ID;  
  Escher_UniqueID_t Other_Side_Var_ID;  
  c_t relationship_phrase[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Rel_ID;  
  i_t associationNumberLineNumber;  
  i_t associationNumberColumn;  
  i_t associationPhraseLineNumber;  
  i_t associationPhraseColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R615_one;
  ooaofooa_V_VAR * V_VAR_R616_other;
  ooaofooa_R_REL * R_REL_R653_creates;
};
void ooaofooa_ACT_REL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_REL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_REL_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_REL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R615_Link_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R615_Unlink_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R616_Link_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R616_Unlink_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R653_Link( ooaofooa_R_REL *, ooaofooa_ACT_REL * );
void ooaofooa_ACT_REL_R653_Unlink( ooaofooa_R_REL *, ooaofooa_ACT_REL * );


#define ooaofooa_ACT_REL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_REL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_REL_CLASS_H */


