/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CALLOUT_class.h
 *
 * Class:       user callout  (TE_CALLOUT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CALLOUT_CLASS_H
#define OOAOFOOA_TE_CALLOUT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   user callout  (TE_CALLOUT)
 */
struct ooaofooa_TE_CALLOUT {

  /* application analysis class attributes */
  c_t file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t initialization[ESCHER_SYS_MAX_STRING_LEN];  
  c_t pre_xtUML_initialization[ESCHER_SYS_MAX_STRING_LEN];  
  c_t post_xtUML_initialization[ESCHER_SYS_MAX_STRING_LEN];  
  c_t background_processing[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_cant_happen[ESCHER_SYS_MAX_STRING_LEN];  
  c_t pre_shutdown[ESCHER_SYS_MAX_STRING_LEN];  
  c_t post_shutdown[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_no_instance[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_free_list_empty[ESCHER_SYS_MAX_STRING_LEN];  
  c_t empty_handle_detected[ESCHER_SYS_MAX_STRING_LEN];  
  c_t object_pool_empty[ESCHER_SYS_MAX_STRING_LEN];  
  c_t node_list_empty[ESCHER_SYS_MAX_STRING_LEN];  
  c_t interleaved_bridge_overflow[ESCHER_SYS_MAX_STRING_LEN];  
  c_t self_event_queue_empty[ESCHER_SYS_MAX_STRING_LEN];  
  c_t non_self_event_queue_empty[ESCHER_SYS_MAX_STRING_LEN];  
  c_t persistence_error[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_CALLOUT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CALLOUT_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_CALLOUT_batch_relate 0



#define ooaofooa_TE_CALLOUT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CALLOUT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CALLOUT_CLASS_H */


