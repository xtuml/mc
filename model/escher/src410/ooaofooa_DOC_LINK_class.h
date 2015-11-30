/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_LINK_class.h
 *
 * Class:       link  (DOC_LINK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_LINK_CLASS_H
#define OOAOFOOA_DOC_LINK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   link  (DOC_LINK)
 */
struct ooaofooa_DOC_LINK {

  /* application analysis class attributes */
  c_t target[ESCHER_SYS_MAX_STRING_LEN];  
  c_t text[ESCHER_SYS_MAX_STRING_LEN];  

};
void ooaofooa_DOC_LINK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_LINK_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_DOC_LINK_batch_relate 0



#define ooaofooa_DOC_LINK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_LINK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_LINK_CLASS_H */


