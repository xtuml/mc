/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EQ_class.h
 *
 * Class:       event queue  (TE_EQ)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_EQ_CLASS_H
#define OOAOFOOA_TE_EQ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   event queue  (TE_EQ)
 */
struct ooaofooa_TE_EQ {

  /* application analysis class attributes */
  c_t ignored[ESCHER_SYS_MAX_STRING_LEN];  
  c_t cant_happen[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_events_union[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_event_pool[ESCHER_SYS_MAX_STRING_LEN];  
  c_t constant_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t base_event_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t base_variable[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_events[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_self_events[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_nonself_events[ESCHER_SYS_MAX_STRING_LEN];  
  c_t new[ESCHER_SYS_MAX_STRING_LEN];  
  c_t allocate[ESCHER_SYS_MAX_STRING_LEN];  
  c_t delete[ESCHER_SYS_MAX_STRING_LEN];  
  c_t modify[ESCHER_SYS_MAX_STRING_LEN];  
  c_t self[ESCHER_SYS_MAX_STRING_LEN];  
  c_t non_self[ESCHER_SYS_MAX_STRING_LEN];  
  c_t search_and_destroy[ESCHER_SYS_MAX_STRING_LEN];  
  c_t run_flag[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_message_variable[ESCHER_SYS_MAX_STRING_LEN];  
  c_t scope[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_EQ_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_EQ_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_EQ_batch_relate 0



#define ooaofooa_TE_EQ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_EQ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_EQ_CLASS_H */


