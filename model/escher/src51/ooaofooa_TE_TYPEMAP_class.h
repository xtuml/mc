/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TYPEMAP_class.h
 *
 * Class:       type map  (TE_TYPEMAP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_TYPEMAP_CLASS_H
#define OOAOFOOA_TE_TYPEMAP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   type map  (TE_TYPEMAP)
 */
struct ooaofooa_TE_TYPEMAP {

  /* application analysis class attributes */
  c_t * instance_index_name;  
  c_t * instance_index_type;  
  c_t * object_size_name;  
  c_t * object_size_type;  
  c_t * object_number_name;  
  c_t * object_number_type;  
  c_t * state_number_name;  
  c_t * state_number_type;  
  c_t * domain_number_name;  
  c_t * domain_number_type;  
  c_t * event_number_name;  
  c_t * event_number_type;  
  c_t * event_priority_name;  
  c_t * event_priority_type;  
  c_t * event_flags_name;  
  c_t * event_flags_type;  
  c_t * poly_return_name;  
  c_t * poly_return_type;  
  c_t * SEM_cell_name;  
  c_t * SEM_cell_type;  
  c_t * structured_data_types;  
  c_t * enumeration_info;  
  c_t * user_supplied_data_types;  

};
void ooaofooa_TE_TYPEMAP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_TYPEMAP_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_TYPEMAP_batch_relate 0



#define ooaofooa_TE_TYPEMAP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_TYPEMAP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_TYPEMAP_CLASS_H */


