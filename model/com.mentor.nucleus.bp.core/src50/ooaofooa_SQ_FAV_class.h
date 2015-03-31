/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_FAV_class.h
 *
 * Class:       Formal Attribute Value  (SQ_FAV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_FAV_CLASS_H
#define OOAOFOOA_SQ_FAV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Formal Attribute Value  (SQ_FAV)
 */
struct ooaofooa_SQ_FAV {

  /* application analysis class attributes */
  Escher_UniqueID_t Av_ID;  

  /* relationship storage */
  ooaofooa_SQ_AV * SQ_AV_R948;
};
void ooaofooa_SQ_FAV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_FAV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_FAV_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_FAV_R948_Link( ooaofooa_SQ_AV *, ooaofooa_SQ_FAV * );
void ooaofooa_SQ_FAV_R948_Unlink( ooaofooa_SQ_AV *, ooaofooa_SQ_FAV * );


#define ooaofooa_SQ_FAV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_FAV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_FAV_CLASS_H */


