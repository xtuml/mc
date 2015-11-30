/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_RELATED_class.h
 *
 * Class:       OAL select_related  (TE_SELECT_RELATED)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SELECT_RELATED_CLASS_H
#define OOAOFOOA_TE_SELECT_RELATED_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL select_related  (TE_SELECT_RELATED)
 */
struct ooaofooa_TE_SELECT_RELATED {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t link_ID;  
  Escher_UniqueID_t starting_Value_ID;  
  Escher_UniqueID_t where_clause_Value_ID;  
  Escher_UniqueID_t starting_Var_ID;  
  Escher_UniqueID_t result_Var_ID;  
  bool by_where;  
  c_t * where_clause;  
  c_t * where_clause_OAL;  
  c_t * multiplicity;  
  bool is_implicit;  
  c_t * result_var;  
  c_t * result_var_OAL;  
  bool start_many;  
  c_t * start_var;  
  c_t * start_var_OAL;  
  c_t * te_classGeneratedName;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
  ooaofooa_TE_VAL * TE_VAL_R2070_starts_from;
  ooaofooa_TE_LNK * TE_LNK_R2073_has_first;
  ooaofooa_TE_VAL * TE_VAL_R2074_is_where_clause_of;
  ooaofooa_TE_CLASS * TE_CLASS_R2077;
  ooaofooa_TE_VAR * TE_VAR_R2093_stores_result_into;
  ooaofooa_TE_VAR * TE_VAR_R2094_starts_with;
};
void ooaofooa_TE_SELECT_RELATED_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SELECT_RELATED_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SELECT_RELATED_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_SELECT_RELATED_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2070_Link_starts( ooaofooa_TE_VAL *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2070_Unlink_starts( ooaofooa_TE_VAL *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2073_Link( ooaofooa_TE_LNK *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2073_Unlink( ooaofooa_TE_LNK *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2074_Link_filters( ooaofooa_TE_VAL *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2074_Unlink_filters( ooaofooa_TE_VAL *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2077_Link( ooaofooa_TE_CLASS *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2077_Unlink( ooaofooa_TE_CLASS *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2093_Link_gets_result_of( ooaofooa_TE_VAR *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2093_Unlink_gets_result_of( ooaofooa_TE_VAR *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2094_Link_holds_start_of( ooaofooa_TE_VAR *, ooaofooa_TE_SELECT_RELATED * );
void ooaofooa_TE_SELECT_RELATED_R2094_Unlink_holds_start_of( ooaofooa_TE_VAR *, ooaofooa_TE_SELECT_RELATED * );


#define ooaofooa_TE_SELECT_RELATED_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SELECT_RELATED_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SELECT_RELATED_CLASS_H */


