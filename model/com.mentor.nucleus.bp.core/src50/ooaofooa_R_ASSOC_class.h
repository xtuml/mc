/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_ASSOC_class.h
 *
 * Class:       Linked Association  (R_ASSOC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_ASSOC_CLASS_H
#define OOAOFOOA_R_ASSOC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Linked Association  (R_ASSOC)
 */
struct ooaofooa_R_ASSOC {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R206;
  ooaofooa_R_AONE * R_AONE_R209_relates;
  ooaofooa_R_AOTH * R_AOTH_R210_relates;
  ooaofooa_R_ASSR * R_ASSR_R211_uses_a_formalizer;
};
void ooaofooa_R_ASSOC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_ASSOC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_ASSOC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_ASSOC * ooaofooa_R_ASSOC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_R_ASSOC_R206_Link( ooaofooa_R_REL *, ooaofooa_R_ASSOC * );
void ooaofooa_R_ASSOC_R206_Unlink( ooaofooa_R_REL *, ooaofooa_R_ASSOC * );


#define ooaofooa_R_ASSOC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_ASSOC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_ASSOC_CLASS_H */


