/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TIM_class.h
 *
 * Class:       timer  (TE_TIM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_TIM_CLASS_H
#define OOAOFOOA_TE_TIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   timer  (TE_TIM)
 */
struct ooaofooa_TE_TIM {

  /* application analysis class attributes */
  c_t max_timers[ESCHER_SYS_MAX_STRING_LEN];  
  bool keyed_timer_support;  
  bool recurring_timer_support;  
  bool timer_event_search_and_destroy;  
  c_t internal_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t scope[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_name[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_TIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_TIM_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_TIM_batch_relate 0



#define ooaofooa_TE_TIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_TIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_TIM_CLASS_H */


