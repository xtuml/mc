/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_WHERE_class.h
 *
 * Class:       OAL select_where  (TE_SELECT_WHERE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SELECT_WHERE_CLASS_H
#define OOAOFOOA_TE_SELECT_WHERE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL select_where  (TE_SELECT_WHERE)
 */
struct ooaofooa_TE_SELECT_WHERE {

  /* application analysis class attributes */
  Escher_UniqueID_t o_obj;  
  bool is_implicit;  
  c_t * class_name;  
  c_t * oal_var_name;  
  c_t * class_description;  
  c_t * multiplicity;  
  c_t * var_name;  
  c_t * selected_var_name;  
  c_t * where_clause;  
  bool special;  
  i_t oid_id;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_SELECT_WHERE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SELECT_WHERE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SELECT_WHERE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_SELECT_WHERE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT_WHERE * );
void ooaofooa_TE_SELECT_WHERE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT_WHERE * );


#define ooaofooa_TE_SELECT_WHERE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SELECT_WHERE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SELECT_WHERE_CLASS_H */


