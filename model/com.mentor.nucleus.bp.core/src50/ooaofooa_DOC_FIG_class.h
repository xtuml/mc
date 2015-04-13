/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_FIG_class.h
 *
 * Class:       figure  (DOC_FIG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_FIG_CLASS_H
#define OOAOFOOA_DOC_FIG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   figure  (DOC_FIG)
 */
struct ooaofooa_DOC_FIG {

  /* application analysis class attributes */
  c_t * title;  
  c_t * ident;  

  /* relationship storage */
  ooaofooa_DOC_IMG * DOC_IMG_R2313_showcases;
  ooaofooa_DOC_PAR * DOC_PAR_R2316;
};
void ooaofooa_DOC_FIG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_FIG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_FIG_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_FIG_op_render( ooaofooa_DOC_FIG * );
ooaofooa_DOC_FIG * ooaofooa_DOC_FIG_op_populate(  ooaofooa_DOC_PAR *, c_t *, c_t * );

void ooaofooa_DOC_FIG_R2316_Link_has( ooaofooa_DOC_PAR *, ooaofooa_DOC_FIG * );
void ooaofooa_DOC_FIG_R2316_Unlink_has( ooaofooa_DOC_PAR *, ooaofooa_DOC_FIG * );


#define ooaofooa_DOC_FIG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_FIG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_FIG_CLASS_H */


