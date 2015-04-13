/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_TBL_class.h
 *
 * Class:       table  (DOC_TBL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_TBL_CLASS_H
#define OOAOFOOA_DOC_TBL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   table  (DOC_TBL)
 */
struct ooaofooa_DOC_TBL {

  /* application analysis class attributes */
  c_t * title;  
  i_t num_cols;  

  /* relationship storage */
  ooaofooa_DOC_PAR * DOC_PAR_R2315;
  ooaofooa_DOC_ROW * DOC_ROW_R2317_has_first;
};
void ooaofooa_DOC_TBL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_TBL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_TBL_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_TBL_op_render( ooaofooa_DOC_TBL * );
ooaofooa_DOC_TBL * ooaofooa_DOC_TBL_op_populate(  ooaofooa_DOC_PAR *, const i_t, c_t * );
void ooaofooa_DOC_TBL_op_validate( void );

void ooaofooa_DOC_TBL_R2315_Link_has( ooaofooa_DOC_PAR *, ooaofooa_DOC_TBL * );
void ooaofooa_DOC_TBL_R2315_Unlink_has( ooaofooa_DOC_PAR *, ooaofooa_DOC_TBL * );


#define ooaofooa_DOC_TBL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_TBL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_TBL_CLASS_H */


