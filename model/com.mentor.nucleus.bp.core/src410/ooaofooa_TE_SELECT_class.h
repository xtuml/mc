/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SELECT_class.h
 *
 * Class:       OAL select  (TE_SELECT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SELECT_CLASS_H
#define OOAOFOOA_TE_SELECT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL select  (TE_SELECT)
 */
struct ooaofooa_TE_SELECT {

  /* application analysis class attributes */
  Escher_UniqueID_t o_obj;  
  bool is_implicit;  
  c_t class_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t target_class_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t class_description[ESCHER_SYS_MAX_STRING_LEN];  
  c_t multiplicity[ESCHER_SYS_MAX_STRING_LEN];  
  c_t var_name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_SELECT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SELECT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SELECT_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_SELECT_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT * );
void ooaofooa_TE_SELECT_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_SELECT * );


#define ooaofooa_TE_SELECT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SELECT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SELECT_CLASS_H */


