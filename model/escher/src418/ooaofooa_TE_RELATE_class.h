/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELATE_class.h
 *
 * Class:       OAL relate  (TE_RELATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_RELATE_CLASS_H
#define OOAOFOOA_TE_RELATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL relate  (TE_RELATE)
 */
struct ooaofooa_TE_RELATE {

  /* application analysis class attributes */
  Escher_UniqueID_t one_o_obj;  
  Escher_UniqueID_t oth_o_obj;  
  Escher_UniqueID_t r_rel;  
  bool is_reflexive;  
  i_t relationship_number;  
  c_t * relationship_phrase;  
  c_t * one_var_name;  
  c_t * oth_var_name;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_RELATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_RELATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_RELATE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_RELATE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_RELATE * );
void ooaofooa_TE_RELATE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_RELATE * );


#define ooaofooa_TE_RELATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_RELATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_RELATE_CLASS_H */


