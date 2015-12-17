/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_UNR_class.h
 *
 * Class:       Unrelate  (ACT_UNR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_UNR_CLASS_H
#define OOAOFOOA_ACT_UNR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Unrelate  (ACT_UNR)
 */
struct ooaofooa_ACT_UNR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t One_Side_Var_ID;  
  Escher_UniqueID_t Other_Side_Var_ID;  
  c_t * relationship_phrase;  
  Escher_UniqueID_t Rel_ID;  
  i_t associationNumberLineNumber;  
  i_t associationNumberColumn;  
  i_t associationPhraseLineNumber;  
  i_t associationPhraseColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAR * V_VAR_R620_one;
  ooaofooa_V_VAR * V_VAR_R621_other;
  ooaofooa_R_REL * R_REL_R655_destroys;
};
void ooaofooa_ACT_UNR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_UNR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_UNR_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_UNR_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R620_Link_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R620_Unlink_is_one_variable( ooaofooa_V_VAR *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R621_Link_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R621_Unlink_is_other_variable( ooaofooa_V_VAR *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R655_Link( ooaofooa_R_REL *, ooaofooa_ACT_UNR * );
void ooaofooa_ACT_UNR_R655_Unlink( ooaofooa_R_REL *, ooaofooa_ACT_UNR * );


#define ooaofooa_ACT_UNR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_UNR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_UNR_CLASS_H */


