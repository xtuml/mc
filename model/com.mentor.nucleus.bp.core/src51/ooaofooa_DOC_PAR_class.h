/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_PAR_class.h
 *
 * Class:       paragraph  (DOC_PAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_PAR_CLASS_H
#define OOAOFOOA_DOC_PAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   paragraph  (DOC_PAR)
 */
struct ooaofooa_DOC_PAR {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  Escher_UniqueID_t sectionID;  
  c_t * text;  
  c_t * ptext;  
  bool formatted;  

  /* relationship storage */
  ooaofooa_DOC_SEC * DOC_SEC_R2305;
  ooaofooa_DOC_PAR * DOC_PAR_R2314_follows;
  ooaofooa_DOC_PAR * DOC_PAR_R2314_precedes;
  ooaofooa_DOC_TBL * DOC_TBL_R2315_has;
  ooaofooa_DOC_FIG * DOC_FIG_R2316_has;
  ooaofooa_DOC_CELL * DOC_CELL_R2318;
  ooaofooa_DOC_IMG * DOC_IMG_R2319;
};
void ooaofooa_DOC_PAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_PAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_PAR_batch_relate( Escher_iHandle_t );
void ooaofooa_DOC_PAR_op_render( ooaofooa_DOC_PAR * );
ooaofooa_DOC_PAR * ooaofooa_DOC_PAR_op_populate(  ooaofooa_DOC_SEC *, ooaofooa_DOC_PAR *, c_t * );
void ooaofooa_DOC_PAR_op_validate( void );

void ooaofooa_DOC_PAR_R2305_Link_has_first( ooaofooa_DOC_SEC *, ooaofooa_DOC_PAR * );
void ooaofooa_DOC_PAR_R2305_Unlink_has_first( ooaofooa_DOC_SEC *, ooaofooa_DOC_PAR * );
      
/*
 * R2314 is Simple Reflexive:  0..1:0..1
 *  Formalizing DOC_PAR follows participant
 *  Participant DOC_PAR precedes formalizer
 */
/* Navigation phrase:  R2314.'follows' */
void ooaofooa_DOC_PAR_R2314_Link_follows( ooaofooa_DOC_PAR *, ooaofooa_DOC_PAR * );
void ooaofooa_DOC_PAR_R2314_Unlink_follows( ooaofooa_DOC_PAR *, ooaofooa_DOC_PAR * );
/* Navigation phrase:  R2314.'precedes' */
void ooaofooa_DOC_PAR_R2314_Link_precedes( ooaofooa_DOC_PAR *, ooaofooa_DOC_PAR * );
void ooaofooa_DOC_PAR_R2314_Unlink_precedes( ooaofooa_DOC_PAR *, ooaofooa_DOC_PAR * );


#define ooaofooa_DOC_PAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_PAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_PAR_CLASS_H */


