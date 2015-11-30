/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_TARGET_class.h
 *
 * Class:       target  (TE_TARGET)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_TARGET_CLASS_H
#define OOAOFOOA_TE_TARGET_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   target  (TE_TARGET)
 */
struct ooaofooa_TE_TARGET {

  /* application analysis class attributes */
  c_t * language;  
  c_t * c2cplusplus_linkage_begin;  
  c_t * c2cplusplus_linkage_end;  
  c_t * main;  

};
void ooaofooa_TE_TARGET_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_TARGET_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TE_TARGET_batch_relate 0



#define ooaofooa_TE_TARGET_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_TARGET_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_TARGET_CLASS_H */


