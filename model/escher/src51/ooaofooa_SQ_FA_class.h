/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_FA_class.h
 *
 * Class:       Formal Attribute  (SQ_FA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_FA_CLASS_H
#define OOAOFOOA_SQ_FA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Formal Attribute  (SQ_FA)
 */
struct ooaofooa_SQ_FA {

  /* application analysis class attributes */
  Escher_UniqueID_t Ia_ID;  

  /* relationship storage */
  ooaofooa_SQ_CPA * SQ_CPA_R947;
};
void ooaofooa_SQ_FA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_FA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_FA_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_FA_R947_Link( ooaofooa_SQ_CPA *, ooaofooa_SQ_FA * );
void ooaofooa_SQ_FA_R947_Unlink( ooaofooa_SQ_CPA *, ooaofooa_SQ_FA * );


#define ooaofooa_SQ_FA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_FA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_FA_CLASS_H */


