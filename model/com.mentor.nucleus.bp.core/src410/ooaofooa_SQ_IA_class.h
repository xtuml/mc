/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_IA_class.h
 *
 * Class:       Informal Attribute  (SQ_IA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_IA_CLASS_H
#define OOAOFOOA_SQ_IA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Informal Attribute  (SQ_IA)
 */
struct ooaofooa_SQ_IA {

  /* application analysis class attributes */
  Escher_UniqueID_t Ia_ID;  

  /* relationship storage */
  ooaofooa_SQ_CPA * SQ_CPA_R947;
};
void ooaofooa_SQ_IA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_IA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_IA_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_IA_R947_Link( ooaofooa_SQ_CPA *, ooaofooa_SQ_IA * );
void ooaofooa_SQ_IA_R947_Unlink( ooaofooa_SQ_CPA *, ooaofooa_SQ_IA * );


#define ooaofooa_SQ_IA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_IA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_IA_CLASS_H */


