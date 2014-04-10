/*----------------------------------------------------------------------------
 * File:  ooaofooa_CN_DC_class.h
 *
 * Class:       Domain As Component  (CN_DC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CN_DC_CLASS_H
#define OOAOFOOA_CN_DC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Domain As Component  (CN_DC)
 */
struct ooaofooa_CN_DC {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Dom_ID;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R4204_defined_subject_matter_for;
  ooaofooa_S_DOM * S_DOM_R4204_has_subject_matter_of;
};
void ooaofooa_CN_DC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CN_DC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CN_DC_batch_relate( Escher_iHandle_t );

void ooaofooa_CN_DC_R4204_Link( ooaofooa_C_C *, ooaofooa_S_DOM *, ooaofooa_CN_DC * );
void ooaofooa_CN_DC_R4204_Unlink( ooaofooa_C_C *, ooaofooa_S_DOM *, ooaofooa_CN_DC * );


#define ooaofooa_CN_DC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CN_DC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CN_DC_CLASS_H */


