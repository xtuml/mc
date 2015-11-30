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
  c_t * hdr_file_ext;  
  c_t * src_file_ext;  
  c_t * obj_file_ext;  
  c_t * sys_main;  
  c_t * factory;  
  c_t * events;  
  c_t * nvs;  
  c_t * nvs_bridge;  
  c_t * sets;  
  c_t * types;  
  c_t * thread;  
  c_t * trace;  
  c_t * tim;  
  c_t * callout;  
  c_t * ilb;  
  c_t * persist;  
  c_t * xtumlload;  
  c_t * interfaces;  
  c_t * registers;  
  c_t * domain_color_path;  
  c_t * domain_source_path;  
  c_t * domain_include_path;  
  c_t * system_source_path;  
  c_t * system_include_path;  
  c_t * system_color_path;  
  c_t * bridge_mark;  
  c_t * system_mark;  
  c_t * datatype_mark;  
  c_t * event_mark;  
  c_t * class_mark;  
  c_t * domain_mark;  
  c_t * system_functions_mark;  
  c_t * arc_path;  
  c_t * root_path;  

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


