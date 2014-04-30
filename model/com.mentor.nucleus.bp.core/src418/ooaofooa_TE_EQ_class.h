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
  c_t * ignored;  
  c_t * cant_happen;  
  c_t * system_events_union;  
  c_t * system_event_pool;  
  c_t * constant_type;  
  c_t * base_event_type;  
  c_t * base_variable;  
  c_t * max_events;  
  c_t * max_self_events;  
  c_t * max_nonself_events;  
  c_t * new;  
  c_t * allocate;  
  c_t * delete;  
  c_t * modify;  
  c_t * self;  
  c_t * non_self;  
  c_t * search_and_destroy;  
  c_t * run_flag;  
  c_t * event_message_variable;  
  c_t * scope;  

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


