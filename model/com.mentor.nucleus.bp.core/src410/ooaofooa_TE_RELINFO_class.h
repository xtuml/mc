/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELINFO_class.h
 *
 * Class:       relationship information  (TE_RELINFO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_RELINFO_CLASS_H
#define OOAOFOOA_TE_RELINFO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   relationship information  (TE_RELINFO)
 */
struct ooaofooa_TE_RELINFO {

  /* application analysis class attributes */
  Escher_UniqueID_t obj;  
  Escher_UniqueID_t related_obj;  
  Escher_UniqueID_t rel;  
  Escher_UniqueID_t rto;  
  Escher_UniqueID_t rgo;  
  Escher_UniqueID_t oir;  
  i_t multiplicity;  
  bool gen_link_methods;  
  c_t rel_phrase[ESCHER_SYS_MAX_STRING_LEN];  
  bool is_formalizer;  
  bool is_supertype;  
  bool generate_subtype;  
  bool gen_declaration;  

};
void ooaofooa_TE_RELINFO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_RELINFO_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_RELINFO_batch_relate 0



#define ooaofooa_TE_RELINFO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_RELINFO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_RELINFO_CLASS_H */


