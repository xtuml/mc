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
  c_t * file;  
  c_t * initialization;  
  c_t * pre_xtUML_initialization;  
  c_t * post_xtUML_initialization;  
  c_t * background_processing;  
  c_t * event_cant_happen;  
  c_t * pre_shutdown;  
  c_t * post_shutdown;  
  c_t * event_no_instance;  
  c_t * event_free_list_empty;  
  c_t * empty_handle_detected;  
  c_t * object_pool_empty;  
  c_t * node_list_empty;  
  c_t * interleaved_bridge_overflow;  
  c_t * self_event_queue_empty;  
  c_t * non_self_event_queue_empty;  
  c_t * persistence_error;  

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


