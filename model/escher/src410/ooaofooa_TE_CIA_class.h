/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CIA_class.h
 *
 * Class:       Class Info Array  (TE_CIA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CIA_CLASS_H
#define OOAOFOOA_TE_CIA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Info Array  (TE_CIA)
 */
struct ooaofooa_TE_CIA {

  /* application analysis class attributes */
  c_t class_info_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t class_info_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t active_count[ESCHER_SYS_MAX_STRING_LEN];  
  c_t class_count[ESCHER_SYS_MAX_STRING_LEN];  
  c_t count_type[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TE_CIA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CIA_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_CIA_batch_relate 0



#define ooaofooa_TE_CIA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CIA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CIA_CLASS_H */


