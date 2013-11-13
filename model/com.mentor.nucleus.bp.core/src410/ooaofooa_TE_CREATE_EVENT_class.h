/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CREATE_EVENT_class.h
 *
 * Class:       OAL create_event  (TE_CREATE_EVENT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CREATE_EVENT_CLASS_H
#define OOAOFOOA_TE_CREATE_EVENT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL create_event  (TE_CREATE_EVENT)
 */
struct ooaofooa_TE_CREATE_EVENT {

  /* application analysis class attributes */
  Escher_UniqueID_t sm_evt;  
  bool is_implicit;  
  c_t class_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_meaning[ESCHER_SYS_MAX_STRING_LEN];  
  c_t oal_var_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t var_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t recipient_var_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t parameters[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_CREATE_EVENT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CREATE_EVENT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CREATE_EVENT_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_CREATE_EVENT_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_CREATE_EVENT * );
void ooaofooa_TE_CREATE_EVENT_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_CREATE_EVENT * );


#define ooaofooa_TE_CREATE_EVENT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CREATE_EVENT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CREATE_EVENT_CLASS_H */


