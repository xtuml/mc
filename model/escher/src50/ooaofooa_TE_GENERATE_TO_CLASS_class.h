/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_GENERATE_TO_CLASS_class.h
 *
 * Class:       OAL generate_to_class  (TE_GENERATE_TO_CLASS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_GENERATE_TO_CLASS_CLASS_H
#define OOAOFOOA_TE_GENERATE_TO_CLASS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL generate_to_class  (TE_GENERATE_TO_CLASS)
 */
struct ooaofooa_TE_GENERATE_TO_CLASS {

  /* application analysis class attributes */
  Escher_UniqueID_t sm_evt;  
  bool self_directed;  
  c_t * var_name;  
  c_t * event_label;  
  c_t * even_meaning;  
  c_t * parameters;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_GENERATE_TO_CLASS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_GENERATE_TO_CLASS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_GENERATE_TO_CLASS_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_GENERATE_TO_CLASS_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE_TO_CLASS * );
void ooaofooa_TE_GENERATE_TO_CLASS_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE_TO_CLASS * );


#define ooaofooa_TE_GENERATE_TO_CLASS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_GENERATE_TO_CLASS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_GENERATE_TO_CLASS_CLASS_H */


