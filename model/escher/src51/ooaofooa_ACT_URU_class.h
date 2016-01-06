/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_URU_class.h
 *
 * Class:       Unrelate Using  (ACT_URU)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_URU_CLASS_H
#define OOAOFOOA_ACT_URU_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Unrelate Using  (ACT_URU)
 */
struct ooaofooa_ACT_URU {

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
  ooaofooa_V_VAR * V_VAR_R622_one;
  ooaofooa_V_VAR * V_VAR_R623_other;
  ooaofooa_V_VAR * V_VAR_R624_using;
  ooaofooa_R_REL * R_REL_R656_destroys;
};
void ooaofooa_ACT_URU_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_URU_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_URU_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_URU_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R622_Link_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R622_Unlink_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R623_Link_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R623_Unlink_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R624_Link_is_using_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R624_Unlink_is_using_variable( ooaofooa_V_VAR *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R656_Link( ooaofooa_R_REL *, ooaofooa_ACT_URU * );
void ooaofooa_ACT_URU_R656_Unlink( ooaofooa_R_REL *, ooaofooa_ACT_URU * );


#define ooaofooa_ACT_URU_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_URU_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_URU_CLASS_H */


