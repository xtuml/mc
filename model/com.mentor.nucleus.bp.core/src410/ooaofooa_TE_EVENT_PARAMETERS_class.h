/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EVENT_PARAMETERS_class.h
 *
 * Class:       OAL event_parameters  (TE_EVENT_PARAMETERS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_EVENT_PARAMETERS_CLASS_H
#define OOAOFOOA_TE_EVENT_PARAMETERS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL event_parameters  (TE_EVENT_PARAMETERS)
 */
struct ooaofooa_TE_EVENT_PARAMETERS {

  /* application analysis class attributes */
  c_t evt_msg_var[ESCHER_SYS_MAX_STRING_LEN];  
  c_t parameter[ESCHER_SYS_MAX_STRING_LEN];  
  c_t value[ESCHER_SYS_MAX_STRING_LEN];  
  c_t value_type[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_EVENT_PARAMETERS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_EVENT_PARAMETERS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_EVENT_PARAMETERS_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_EVENT_PARAMETERS_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_EVENT_PARAMETERS * );
void ooaofooa_TE_EVENT_PARAMETERS_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_EVENT_PARAMETERS * );


#define ooaofooa_TE_EVENT_PARAMETERS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_EVENT_PARAMETERS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_EVENT_PARAMETERS_CLASS_H */


