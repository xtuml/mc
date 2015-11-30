/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_ENUMVAL_class.h
 *
 * Class:       Enumerator Value  (TM_ENUMVAL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_ENUMVAL_CLASS_H
#define OOAOFOOA_TM_ENUMVAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Enumerator Value  (TM_ENUMVAL)
 */
struct ooaofooa_TM_ENUMVAL {

  /* application analysis class attributes */
  c_t * Domain;  
  c_t * enumeration;  
  c_t * enumerator;  
  c_t * value;  

};
void ooaofooa_TM_ENUMVAL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_ENUMVAL_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_ENUMVAL_batch_relate 0



#define ooaofooa_TM_ENUMVAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_ENUMVAL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_ENUMVAL_CLASS_H */


