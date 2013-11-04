/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_SIMP_class.h
 *
 * Class:       Simple Association  (R_SIMP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_SIMP_CLASS_H
#define OOAOFOOA_R_SIMP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Simple Association  (R_SIMP)
 */
struct ooaofooa_R_SIMP {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R206;
  Escher_ObjectSet_s R_PART_R207_relates;
  ooaofooa_R_FORM * R_FORM_R208_relates;
};
void ooaofooa_R_SIMP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_SIMP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_SIMP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_SIMP * ooaofooa_R_SIMP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_R_SIMP_R206_Link( ooaofooa_R_REL *, ooaofooa_R_SIMP * );
void ooaofooa_R_SIMP_R206_Unlink( ooaofooa_R_REL *, ooaofooa_R_SIMP * );
#define ooaofooa_R_PART_R207_From_R_SIMP_relates( R_SIMP ) ( &((R_SIMP)->R_PART_R207_relates) )


#define ooaofooa_R_SIMP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_SIMP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_SIMP_CLASS_H */


