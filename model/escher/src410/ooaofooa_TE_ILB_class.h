/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ILB_class.h
 *
 * Class:       interleaved bridge  (TE_ILB)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ILB_CLASS_H
#define OOAOFOOA_TE_ILB_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   interleaved bridge  (TE_ILB)
 */
struct ooaofooa_TE_ILB {

  /* application analysis class attributes */
  c_t file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t define_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t data_define_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t interleave_bridge[ESCHER_SYS_MAX_STRING_LEN];  
  c_t interleave_bridge_done[ESCHER_SYS_MAX_STRING_LEN];  
  c_t get_data[ESCHER_SYS_MAX_STRING_LEN];  
  c_t dispatch[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_ILB_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ILB_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_ILB_batch_relate 0



#define ooaofooa_TE_ILB_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ILB_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ILB_CLASS_H */


