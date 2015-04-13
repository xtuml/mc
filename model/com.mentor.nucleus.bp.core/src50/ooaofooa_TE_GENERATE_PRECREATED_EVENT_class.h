/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_GENERATE_PRECREATED_EVENT_class.h
 *
 * Class:       OAL generate_precreated_event  (TE_GENERATE_PRECREATED_EVENT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_GENERATE_PRECREATED_EVENT_CLASS_H
#define OOAOFOOA_TE_GENERATE_PRECREATED_EVENT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL generate_precreated_event  (TE_GENERATE_PRECREATED_EVENT)
 */
struct ooaofooa_TE_GENERATE_PRECREATED_EVENT {

  /* application analysis class attributes */
  bool self_directed;  
  c_t * var_name;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_GENERATE_PRECREATED_EVENT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_GENERATE_PRECREATED_EVENT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_GENERATE_PRECREATED_EVENT_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_GENERATE_PRECREATED_EVENT_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE_PRECREATED_EVENT * );
void ooaofooa_TE_GENERATE_PRECREATED_EVENT_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_GENERATE_PRECREATED_EVENT * );


#define ooaofooa_TE_GENERATE_PRECREATED_EVENT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_GENERATE_PRECREATED_EVENT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_GENERATE_PRECREATED_EVENT_CLASS_H */


