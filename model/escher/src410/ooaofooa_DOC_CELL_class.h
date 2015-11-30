/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_CELL_class.h
 *
 * Class:       cell  (DOC_CELL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_CELL_CLASS_H
#define OOAOFOOA_DOC_CELL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   cell  (DOC_CELL)
 */
struct ooaofooa_DOC_CELL {

  /* application analysis class attributes */
  c_t text[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_DOC_CELL * DOC_CELL_R2304_precedes;
  ooaofooa_DOC_CELL * DOC_CELL_R2304_follows;
  ooaofooa_DOC_ROW * DOC_ROW_R2310;
  ooaofooa_DOC_PAR * DOC_PAR_R2318_contains;
};
void ooaofooa_DOC_CELL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_CELL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_CELL_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_CELL_op_render( ooaofooa_DOC_CELL * );
ooaofooa_DOC_CELL * ooaofooa_DOC_CELL_op_populate_paragraph(  ooaofooa_DOC_CELL *, c_t[ESCHER_SYS_MAX_STRING_LEN] );
ooaofooa_DOC_CELL * ooaofooa_DOC_CELL_op_populate_image(  c_t[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_DOC_CELL * );

      
/*
 * R2304 is Simple Reflexive:  0..1:0..1
 *  Formalizing DOC_CELL precedes participant
 *  Participant DOC_CELL follows formalizer
 */
/* Navigation phrase:  R2304.'precedes' */
void ooaofooa_DOC_CELL_R2304_Link_precedes( ooaofooa_DOC_CELL *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2304_Unlink_precedes( ooaofooa_DOC_CELL *, ooaofooa_DOC_CELL * );
/* Navigation phrase:  R2304.'follows' */
void ooaofooa_DOC_CELL_R2304_Link_follows( ooaofooa_DOC_CELL *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2304_Unlink_follows( ooaofooa_DOC_CELL *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2310_Link_has_first( ooaofooa_DOC_ROW *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2310_Unlink_has_first( ooaofooa_DOC_ROW *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2318_Link( ooaofooa_DOC_PAR *, ooaofooa_DOC_CELL * );
void ooaofooa_DOC_CELL_R2318_Unlink( ooaofooa_DOC_PAR *, ooaofooa_DOC_CELL * );


#define ooaofooa_DOC_CELL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_CELL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_CELL_CLASS_H */


