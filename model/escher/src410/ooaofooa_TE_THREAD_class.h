/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_THREAD_class.h
 *
 * Class:       thread  (TE_THREAD)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_THREAD_CLASS_H
#define OOAOFOOA_TE_THREAD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   thread  (TE_THREAD)
 */
struct ooaofooa_TE_THREAD {

  /* application analysis class attributes */
  c_t file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t create[ESCHER_SYS_MAX_STRING_LEN];  
  c_t mutex_lock[ESCHER_SYS_MAX_STRING_LEN];  
  c_t mutex_unlock[ESCHER_SYS_MAX_STRING_LEN];  
  c_t nonbusy_wait[ESCHER_SYS_MAX_STRING_LEN];  
  c_t nonbusy_wake[ESCHER_SYS_MAX_STRING_LEN];  
  c_t shutdown[ESCHER_SYS_MAX_STRING_LEN];  
  bool enabled;  
  c_t flavor[ESCHER_SYS_MAX_STRING_LEN];  
  bool serialize;  
  i_t number_of_threads;  
  c_t extra_initialization[ESCHER_SYS_MAX_STRING_LEN];  
  c_t AUTOSAR_enabled[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_THREAD_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_THREAD_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_THREAD_batch_relate 0



#define ooaofooa_TE_THREAD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_THREAD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_THREAD_CLASS_H */


