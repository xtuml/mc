/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_RU_class.h
 *
 * Class:       Relate Using  (ACT_RU)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_RU_CLASS_H
#define OOAOFOOA_ACT_RU_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Relate Using  (ACT_RU)
 */
struct ooaofooa_ACT_RU {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t One_Side_Var_ID;  
  Escher_UniqueID_t Other_Side_Var_ID;  
  Escher_UniqueID_t Associative_Var_ID;  
  c_t * relationship_phrase;  
  Escher_UniqueID_t Rel_ID;  
  i_t associationNumberLineNumber;  
  i_t associationNumberColumn;  
  i_t associationPhraseLineNumber;  
  i_t associationPhraseColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R617_one;
  ooaofooa_V_VAR * V_VAR_R618_other;
  ooaofooa_V_VAR * V_VAR_R619_using;
  ooaofooa_R_REL * R_REL_R654_creates;
};
void ooaofooa_ACT_RU_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_RU_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_RU_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_RU_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R617_Link_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R617_Unlink_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R618_Link_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R618_Unlink_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R619_Link_is_using_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R619_Unlink_is_using_variable( ooaofooa_V_VAR *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R654_Link( ooaofooa_R_REL *, ooaofooa_ACT_RU * );
void ooaofooa_ACT_RU_R654_Unlink( ooaofooa_R_REL *, ooaofooa_ACT_RU * );


#define ooaofooa_ACT_RU_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_RU_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_RU_CLASS_H */


