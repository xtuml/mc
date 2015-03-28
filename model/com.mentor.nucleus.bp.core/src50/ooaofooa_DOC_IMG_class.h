/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_IMG_class.h
 *
 * Class:       image  (DOC_IMG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_IMG_CLASS_H
#define OOAOFOOA_DOC_IMG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   image  (DOC_IMG)
 */
struct ooaofooa_DOC_IMG {

  /* application analysis class attributes */
  c_t * target;  

  /* relationship storage */
  ooaofooa_DOC_FIG * DOC_FIG_R2313_is_subject_of;
  ooaofooa_DOC_PAR * DOC_PAR_R2319_is_subject_of;
};
void ooaofooa_DOC_IMG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_IMG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_IMG_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_IMG_op_render( ooaofooa_DOC_IMG * );

void ooaofooa_DOC_IMG_R2313_Link_showcases( ooaofooa_DOC_FIG *, ooaofooa_DOC_IMG * );
void ooaofooa_DOC_IMG_R2313_Unlink_showcases( ooaofooa_DOC_FIG *, ooaofooa_DOC_IMG * );
void ooaofooa_DOC_IMG_R2319_Link( ooaofooa_DOC_PAR *, ooaofooa_DOC_IMG * );
void ooaofooa_DOC_IMG_R2319_Unlink( ooaofooa_DOC_PAR *, ooaofooa_DOC_IMG * );


#define ooaofooa_DOC_IMG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_IMG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_IMG_CLASS_H */


