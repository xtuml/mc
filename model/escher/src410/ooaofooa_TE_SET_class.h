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
  c_t number_of_containoids[ESCHER_SYS_MAX_STRING_LEN];  
  c_t iterator_class_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t factory[ESCHER_SYS_MAX_STRING_LEN];  
  c_t init[ESCHER_SYS_MAX_STRING_LEN];  
  c_t copy[ESCHER_SYS_MAX_STRING_LEN];  
  c_t clear[ESCHER_SYS_MAX_STRING_LEN];  
  c_t insert_element[ESCHER_SYS_MAX_STRING_LEN];  
  c_t insert_instance[ESCHER_SYS_MAX_STRING_LEN];  
  c_t insert_block[ESCHER_SYS_MAX_STRING_LEN];  
  c_t remove_element[ESCHER_SYS_MAX_STRING_LEN];  
  c_t remove_instance[ESCHER_SYS_MAX_STRING_LEN];  
  c_t element_count[ESCHER_SYS_MAX_STRING_LEN];  
  c_t contains[ESCHER_SYS_MAX_STRING_LEN];  
  c_t equality[ESCHER_SYS_MAX_STRING_LEN];  
  c_t emptiness[ESCHER_SYS_MAX_STRING_LEN];  
  c_t get_any[ESCHER_SYS_MAX_STRING_LEN];  
  c_t iterator_reset[ESCHER_SYS_MAX_STRING_LEN];  
  c_t iterator_next[ESCHER_SYS_MAX_STRING_LEN];  
  c_t base_class[ESCHER_SYS_MAX_STRING_LEN];  
  c_t element_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t scope[ESCHER_SYS_MAX_STRING_LEN];  
  c_t module[ESCHER_SYS_MAX_STRING_LEN];  

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


