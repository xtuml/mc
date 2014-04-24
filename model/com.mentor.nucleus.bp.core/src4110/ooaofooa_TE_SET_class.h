/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SET_class.h
 *
 * Class:       set  (TE_SET)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SET_CLASS_H
#define OOAOFOOA_TE_SET_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   set  (TE_SET)
 */
struct ooaofooa_TE_SET {

  /* application analysis class attributes */
  c_t * number_of_containoids;  
  c_t * iterator_class_name;  
  c_t * factory;  
  c_t * init;  
  c_t * copy;  
  c_t * clear;  
  c_t * insert_element;  
  c_t * insert_instance;  
  c_t * insert_block;  
  c_t * remove_element;  
  c_t * remove_instance;  
  c_t * element_count;  
  c_t * contains;  
  c_t * equality;  
  c_t * emptiness;  
  c_t * get_any;  
  c_t * iterator_reset;  
  c_t * iterator_next;  
  c_t * base_class;  
  c_t * element_type;  
  c_t * scope;  
  c_t * module;  

  /* relationship storage */
  Escher_ObjectSet_s TE_EXTENT_R2066;
};
void ooaofooa_TE_SET_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SET_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_SET_batch_relate 0

#define ooaofooa_TE_EXTENT_R2066_From_TE_SET( TE_SET ) ( &((TE_SET)->TE_EXTENT_R2066) )


#define ooaofooa_TE_SET_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SET_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SET_CLASS_H */


