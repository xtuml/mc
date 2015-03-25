/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_GENERATE_class.h
 *
 * Class:       OAL generate  (TE_GENERATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_GENERATE_CLASS_H
#define OOAOFOOA_TE_GENERATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL generate  (TE_GENERATE)
 */
struct ooaofooa_TE_GENERATE {

  /* application analysis class attributes */
  Escher_UniqueID_t sm_evt;  
  bool self_directed;  
  c_t * var_name;  
  c_t * event_label;  
  c_t * event_meaning;  
  c_t * parameters;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_GENERATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_GENERATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_GENERATE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_GENERATE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE * );
void ooaofooa_TE_GENERATE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE * );


#define ooaofooa_TE_GENERATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_GENERATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_GENERATE_CLASS_H */


