/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_INSTANCE_class.h
 *
 * Class:       instance  (TE_INSTANCE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_INSTANCE_CLASS_H
#define OOAOFOOA_TE_INSTANCE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   instance  (TE_INSTANCE)
 */
struct ooaofooa_TE_INSTANCE {

  /* application analysis class attributes */
  c_t create[ESCHER_SYS_MAX_STRING_LEN];  
  c_t create_persistent[ESCHER_SYS_MAX_STRING_LEN];  
  c_t delete[ESCHER_SYS_MAX_STRING_LEN];  
  c_t delete_persistent[ESCHER_SYS_MAX_STRING_LEN];  
  c_t self[ESCHER_SYS_MAX_STRING_LEN];  
  c_t global_self[ESCHER_SYS_MAX_STRING_LEN];  
  c_t base[ESCHER_SYS_MAX_STRING_LEN];  
  c_t handle[ESCHER_SYS_MAX_STRING_LEN];  
  c_t factory_init[ESCHER_SYS_MAX_STRING_LEN];  
  c_t base_class[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_extent[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_association_extent[ESCHER_SYS_MAX_STRING_LEN];  
  c_t max_transient_extent[ESCHER_SYS_MAX_STRING_LEN];  
  c_t current_state[ESCHER_SYS_MAX_STRING_LEN];  
  c_t scope[ESCHER_SYS_MAX_STRING_LEN];  
  c_t get_dci[ESCHER_SYS_MAX_STRING_LEN];  
  c_t get_event_dispatcher[ESCHER_SYS_MAX_STRING_LEN];  
  c_t get_thread_assignment[ESCHER_SYS_MAX_STRING_LEN];  
  c_t module[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_TE_EXTENT * TE_EXTENT_R2066;
};
void ooaofooa_TE_INSTANCE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_INSTANCE_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_INSTANCE_batch_relate 0



#define ooaofooa_TE_INSTANCE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_INSTANCE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_INSTANCE_CLASS_H */


