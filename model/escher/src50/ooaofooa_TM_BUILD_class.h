/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_BUILD_class.h
 *
 * Class:       build  (TM_BUILD)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_BUILD_CLASS_H
#define OOAOFOOA_TM_BUILD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   build  (TM_BUILD)
 */
struct ooaofooa_TM_BUILD {

  /* application analysis class attributes */
  c_t * package_to_build;  
  c_t * package_obj_name;  
  c_t * package_inst_name;  

};
void ooaofooa_TM_BUILD_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_BUILD_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_BUILD_batch_relate 0



#define ooaofooa_TM_BUILD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_BUILD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_BUILD_CLASS_H */


