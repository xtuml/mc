/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_DOC_class.h
 *
 * Class:       document  (DOC_DOC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_DOC_CLASS_H
#define OOAOFOOA_DOC_DOC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   document  (DOC_DOC)
 */
struct ooaofooa_DOC_DOC {

  /* application analysis class attributes */
  c_t * title;  
  c_t * subtitle;  
  c_t * author;  
  c_t * font_family;  
  c_t * company;  
  c_t * copyright;  
  c_t * filename;  
  c_t * model_image_ext;  

  /* relationship storage */
  ooaofooa_DOC_SEC * DOC_SEC_R2300_has_first;
  ooaofooa_DOC_ADDR * DOC_ADDR_R2301;
  ooaofooa_DOC_DATE * DOC_DATE_R2302;
};
void ooaofooa_DOC_DOC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_DOC_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_DOC_DOC_batch_relate 0
void ooaofooa_DOC_DOC_op_render( ooaofooa_DOC_DOC * );
void ooaofooa_DOC_DOC_op_validate( ooaofooa_DOC_DOC * );



#define ooaofooa_DOC_DOC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_DOC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_DOC_CLASS_H */


