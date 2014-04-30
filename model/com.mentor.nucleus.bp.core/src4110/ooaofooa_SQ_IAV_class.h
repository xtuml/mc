/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_IAV_class.h
 *
 * Class:       Informal Attribute Value  (SQ_IAV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_IAV_CLASS_H
#define OOAOFOOA_SQ_IAV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Informal Attribute Value  (SQ_IAV)
 */
struct ooaofooa_SQ_IAV {

  /* application analysis class attributes */
  Escher_UniqueID_t Av_ID;  

  /* relationship storage */
  ooaofooa_SQ_AV * SQ_AV_R948;
};
void ooaofooa_SQ_IAV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_IAV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_IAV_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_IAV_R948_Link( ooaofooa_SQ_AV *, ooaofooa_SQ_IAV * );
void ooaofooa_SQ_IAV_R948_Unlink( ooaofooa_SQ_AV *, ooaofooa_SQ_IAV * );


#define ooaofooa_SQ_IAV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_IAV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_IAV_CLASS_H */


