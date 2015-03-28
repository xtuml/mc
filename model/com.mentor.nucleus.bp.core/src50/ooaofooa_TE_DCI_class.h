/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DCI_class.h
 *
 * Class:       DomainClassInfo  (TE_DCI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DCI_CLASS_H
#define OOAOFOOA_TE_DCI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   DomainClassInfo  (TE_DCI)
 */
struct ooaofooa_TE_DCI {

  /* application analysis class attributes */
  Escher_UniqueID_t te_cID;  
  c_t * class_numbers;  
  c_t * persist_union;  
  c_t * task_list;  
  c_t * task_numbers;  
  c_t * max;  
  c_t * max_models;  
  c_t * init;  
  c_t * array_name;  

  /* relationship storage */
  ooaofooa_TE_C * TE_C_R2090;
};
void ooaofooa_TE_DCI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DCI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DCI_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_DCI_R2090_Link( ooaofooa_TE_C *, ooaofooa_TE_DCI * );
void ooaofooa_TE_DCI_R2090_Unlink( ooaofooa_TE_C *, ooaofooa_TE_DCI * );


#define ooaofooa_TE_DCI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DCI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DCI_CLASS_H */


