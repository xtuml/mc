/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AIA_class.h
 *
 * Class:       Activity In Activity  (A_AIA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_AIA_CLASS_H
#define OOAOFOOA_A_AIA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Activity In Activity  (A_AIA)
 */
struct ooaofooa_A_AIA {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_A_A * A_A_R1109;
  Escher_ObjectSet_s A_A_R1110_has_children;
};
void ooaofooa_A_AIA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_AIA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_AIA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_AIA * ooaofooa_A_AIA_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_AIA_R1109_Link_is_parent_via( ooaofooa_A_A *, ooaofooa_A_AIA * );
void ooaofooa_A_AIA_R1109_Unlink_is_parent_via( ooaofooa_A_A *, ooaofooa_A_AIA * );
#define ooaofooa_A_A_R1110_From_A_AIA_has_children( A_AIA ) ( &((A_AIA)->A_A_R1110_has_children) )
/* Note:  A_AIA->A_A[R1110] not navigated */


#define ooaofooa_A_AIA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_AIA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_AIA_CLASS_H */


