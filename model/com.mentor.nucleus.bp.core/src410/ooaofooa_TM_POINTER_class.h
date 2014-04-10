/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_POINTER_class.h
 *
 * Class:       Data Type Pointer  (TM_POINTER)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_POINTER_CLASS_H
#define OOAOFOOA_TM_POINTER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type Pointer  (TM_POINTER)
 */
struct ooaofooa_TM_POINTER {

  /* application analysis class attributes */
  c_t Domain[ESCHER_SYS_MAX_STRING_LEN];  
  c_t DT_name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t pointer_type[ESCHER_SYS_MAX_STRING_LEN];  
  c_t include_file[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_TM_POINTER_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_POINTER_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_POINTER_batch_relate 0



#define ooaofooa_TM_POINTER_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_POINTER_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_POINTER_CLASS_H */


