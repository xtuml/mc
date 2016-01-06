/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_HEAD_class.h
 *
 * Class:       header  (DOC_HEAD)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_HEAD_CLASS_H
#define OOAOFOOA_DOC_HEAD_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   header  (DOC_HEAD)
 */
struct ooaofooa_DOC_HEAD {

  /* application analysis class attributes */
  c_t * text;  

  /* relationship storage */
  ooaofooa_DOC_SEC * DOC_SEC_R2309;
};
void ooaofooa_DOC_HEAD_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_HEAD_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_DOC_HEAD_batch_relate 0



#define ooaofooa_DOC_HEAD_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_HEAD_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_HEAD_CLASS_H */


