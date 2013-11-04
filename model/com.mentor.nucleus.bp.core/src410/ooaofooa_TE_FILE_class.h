/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_FILE_class.h
 *
 * Class:       file  (TE_FILE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_FILE_CLASS_H
#define OOAOFOOA_TE_FILE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   file  (TE_FILE)
 */
struct ooaofooa_TE_FILE {

  /* application analysis class attributes */
  c_t hdr_file_ext[ESCHER_SYS_MAX_STRING_LEN];  
  c_t src_file_ext[ESCHER_SYS_MAX_STRING_LEN];  
  c_t obj_file_ext[ESCHER_SYS_MAX_STRING_LEN];  
  c_t sys_main[ESCHER_SYS_MAX_STRING_LEN];  
  c_t factory[ESCHER_SYS_MAX_STRING_LEN];  
  c_t events[ESCHER_SYS_MAX_STRING_LEN];  
  c_t nvs[ESCHER_SYS_MAX_STRING_LEN];  
  c_t nvs_bridge[ESCHER_SYS_MAX_STRING_LEN];  
  c_t sets[ESCHER_SYS_MAX_STRING_LEN];  
  c_t types[ESCHER_SYS_MAX_STRING_LEN];  
  c_t thread[ESCHER_SYS_MAX_STRING_LEN];  
  c_t trace[ESCHER_SYS_MAX_STRING_LEN];  
  c_t tim[ESCHER_SYS_MAX_STRING_LEN];  
  c_t callout[ESCHER_SYS_MAX_STRING_LEN];  
  c_t ilb[ESCHER_SYS_MAX_STRING_LEN];  
  c_t persist[ESCHER_SYS_MAX_STRING_LEN];  
  c_t xtumlload[ESCHER_SYS_MAX_STRING_LEN];  
  c_t interfaces[ESCHER_SYS_MAX_STRING_LEN];  
  c_t registers[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domain_color_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domain_source_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domain_include_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_source_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_include_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_color_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t bridge_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t datatype_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t event_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t class_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t domain_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_functions_mark[ESCHER_SYS_MAX_STRING_LEN];  
  c_t arc_path[ESCHER_SYS_MAX_STRING_LEN];  
  c_t root_path[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_FILE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_FILE_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_FILE_batch_relate 0



#define ooaofooa_TE_FILE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_FILE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_FILE_CLASS_H */


