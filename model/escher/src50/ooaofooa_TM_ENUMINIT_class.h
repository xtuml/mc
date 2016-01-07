/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_ENUMINIT_class.h
 *
 * Class:       Enumeration Init  (TM_ENUMINIT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_ENUMINIT_CLASS_H
#define OOAOFOOA_TM_ENUMINIT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Enumeration Init  (TM_ENUMINIT)
 */
struct ooaofooa_TM_ENUMINIT {

  /* application analysis class attributes */
  c_t * Domain;  
  c_t * enumeration;  
  c_t * value;  

};
void ooaofooa_TM_ENUMINIT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_ENUMINIT_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_ENUMINIT_batch_relate 0



#define ooaofooa_TM_ENUMINIT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_ENUMINIT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_ENUMINIT_CLASS_H */


