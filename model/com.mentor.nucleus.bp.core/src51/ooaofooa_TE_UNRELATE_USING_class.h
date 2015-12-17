/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_UNRELATE_USING_class.h
 *
 * Class:       OAL urelate_using  (TE_UNRELATE_USING)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_UNRELATE_USING_CLASS_H
#define OOAOFOOA_TE_UNRELATE_USING_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL urelate_using  (TE_UNRELATE_USING)
 */
struct ooaofooa_TE_UNRELATE_USING {

  /* application analysis class attributes */
  Escher_UniqueID_t one_o_obj;  
  Escher_UniqueID_t oth_o_obj;  
  Escher_UniqueID_t ass_o_obj;  
  Escher_UniqueID_t r_rel;  
  bool is_reflexive;  
  i_t relationship_number;  
  c_t * relationship_phrase;  
  c_t * one_var_name;  
  c_t * oth_var_name;  
  c_t * ass_var_name;  
  c_t * one_rel_phrase;  
  c_t * oth_rel_phrase;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_UNRELATE_USING_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_UNRELATE_USING_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_UNRELATE_USING_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_UNRELATE_USING_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_UNRELATE_USING * );
void ooaofooa_TE_UNRELATE_USING_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_UNRELATE_USING * );


#define ooaofooa_TE_UNRELATE_USING_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_UNRELATE_USING_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_UNRELATE_USING_CLASS_H */


