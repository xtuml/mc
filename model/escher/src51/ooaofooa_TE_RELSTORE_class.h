/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_RELSTORE_class.h
 *
 * Class:       relationship storage  (TE_RELSTORE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_RELSTORE_CLASS_H
#define OOAOFOOA_TE_RELSTORE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   relationship storage  (TE_RELSTORE)
 */
struct ooaofooa_TE_RELSTORE {

  /* application analysis class attributes */
  c_t * data_declare;  
  c_t * data_init;  
  c_t * link_calls;  
  i_t link_index;  
  c_t * data_fini;  
  c_t * self_name;  

};
void ooaofooa_TE_RELSTORE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_RELSTORE_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_RELSTORE_batch_relate 0



#define ooaofooa_TE_RELSTORE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_RELSTORE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_RELSTORE_CLASS_H */


