/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_ROW_class.h
 *
 * Class:       row  (DOC_ROW)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_ROW_CLASS_H
#define OOAOFOOA_DOC_ROW_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   row  (DOC_ROW)
 */
struct ooaofooa_DOC_ROW {

  /* application analysis class attributes */
  bool head;  

  /* relationship storage */
  ooaofooa_DOC_ROW * DOC_ROW_R2303_precedes;
  ooaofooa_DOC_ROW * DOC_ROW_R2303_follows;
  ooaofooa_DOC_CELL * DOC_CELL_R2310_has_first;
  ooaofooa_DOC_TBL * DOC_TBL_R2317;
};
void ooaofooa_DOC_ROW_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_ROW_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_ROW_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_ROW_op_render( ooaofooa_DOC_ROW * );
ooaofooa_DOC_ROW * ooaofooa_DOC_ROW_op_populate(  c_t *[8], const i_t, c_t *[8], ooaofooa_DOC_ROW * );
void ooaofooa_DOC_ROW_op_validate( void );

      
/*
 * R2303 is Simple Reflexive:  0..1:0..1
 *  Formalizing DOC_ROW precedes participant
 *  Participant DOC_ROW follows formalizer
 */
/* Navigation phrase:  R2303.'precedes' */
void ooaofooa_DOC_ROW_R2303_Link_precedes( ooaofooa_DOC_ROW *, ooaofooa_DOC_ROW * );
void ooaofooa_DOC_ROW_R2303_Unlink_precedes( ooaofooa_DOC_ROW *, ooaofooa_DOC_ROW * );
/* Navigation phrase:  R2303.'follows' */
void ooaofooa_DOC_ROW_R2303_Link_follows( ooaofooa_DOC_ROW *, ooaofooa_DOC_ROW * );
void ooaofooa_DOC_ROW_R2303_Unlink_follows( ooaofooa_DOC_ROW *, ooaofooa_DOC_ROW * );
void ooaofooa_DOC_ROW_R2317_Link_has_first( ooaofooa_DOC_TBL *, ooaofooa_DOC_ROW * );
void ooaofooa_DOC_ROW_R2317_Unlink_has_first( ooaofooa_DOC_TBL *, ooaofooa_DOC_ROW * );


#define ooaofooa_DOC_ROW_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_ROW_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_ROW_CLASS_H */


