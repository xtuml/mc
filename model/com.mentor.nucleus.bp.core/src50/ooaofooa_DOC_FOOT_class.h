/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_FOOT_class.h
 *
 * Class:       footer  (DOC_FOOT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_FOOT_CLASS_H
#define OOAOFOOA_DOC_FOOT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   footer  (DOC_FOOT)
 */
struct ooaofooa_DOC_FOOT {

  /* application analysis class attributes */
  c_t * text;  

  /* relationship storage */
  ooaofooa_DOC_SEC * DOC_SEC_R2308;
};
void ooaofooa_DOC_FOOT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_FOOT_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_DOC_FOOT_batch_relate 0



#define ooaofooa_DOC_FOOT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_FOOT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_FOOT_CLASS_H */


