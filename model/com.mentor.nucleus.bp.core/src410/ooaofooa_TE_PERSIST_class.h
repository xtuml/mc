/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PERSIST_class.h
 *
 * Class:       persistence  (TE_PERSIST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_PERSIST_CLASS_H
#define OOAOFOOA_TE_PERSIST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   persistence  (TE_PERSIST)
 */
struct ooaofooa_TE_PERSIST {

  /* application analysis class attributes */
  c_t persist_file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t class_union[ESCHER_SYS_MAX_STRING_LEN];  
  c_t instance_cache_depth[ESCHER_SYS_MAX_STRING_LEN];  
  c_t link_cache_depth[ESCHER_SYS_MAX_STRING_LEN];  
  c_t check_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t post_link[ESCHER_SYS_MAX_STRING_LEN];  
  c_t link_type_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t link_type_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t factory_init[ESCHER_SYS_MAX_STRING_LEN];  
  c_t commit[ESCHER_SYS_MAX_STRING_LEN];  
  c_t restore[ESCHER_SYS_MAX_STRING_LEN];  
  c_t remove[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domainnum_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domainnum_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t classnum_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t classnum_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t index_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t index_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t instid_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t instid_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t dirty_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t dirty_name[ESCHER_SYS_MAX_STRING_LEN];  
  i_t dirty_dirty;  
  i_t dirty_clean;  

};
void ooaofooa_TE_PERSIST_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_PERSIST_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_PERSIST_batch_relate 0



#define ooaofooa_TE_PERSIST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_PERSIST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_PERSIST_CLASS_H */


