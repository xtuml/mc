/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_THREAD_class.h
 *
 * Class:       Tasking Mark  (TM_THREAD)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_THREAD_CLASS_H
#define OOAOFOOA_TM_THREAD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Tasking Mark  (TM_THREAD)
 */
struct ooaofooa_TM_THREAD {

  /* application analysis class attributes */
  bool enabled;  
  c_t * flavor;  
  bool serialize;  
  i_t number_of_threads;  
  c_t * extra_initialization;  

};
void ooaofooa_TM_THREAD_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_THREAD_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_THREAD_batch_relate 0



#define ooaofooa_TM_THREAD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_THREAD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_THREAD_CLASS_H */


