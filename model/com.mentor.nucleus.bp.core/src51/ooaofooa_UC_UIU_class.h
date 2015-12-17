/*----------------------------------------------------------------------------
 * File:  ooaofooa_UC_UIU_class.h
 *
 * Class:       Use Case in Use Case  (UC_UIU)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_UC_UIU_CLASS_H
#define OOAOFOOA_UC_UIU_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Use Case in Use Case  (UC_UIU)
 */
struct ooaofooa_UC_UIU {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_UC_UCC * UC_UCC_R1208_is_shown_in;
  Escher_ObjectSet_s UC_UCC_R1209_has_children;
};
void ooaofooa_UC_UIU_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_UC_UIU_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_UC_UIU_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_UC_UIU * ooaofooa_UC_UIU_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_UC_UIU_R1208_Link_can_show( ooaofooa_UC_UCC *, ooaofooa_UC_UIU * );
void ooaofooa_UC_UIU_R1208_Unlink_can_show( ooaofooa_UC_UCC *, ooaofooa_UC_UIU * );
#define ooaofooa_UC_UCC_R1209_From_UC_UIU_has_children( UC_UIU ) ( &((UC_UIU)->UC_UCC_R1209_has_children) )
/* Note:  UC_UIU->UC_UCC[R1209] not navigated */


#define ooaofooa_UC_UIU_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_UC_UIU_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_UC_UIU_CLASS_H */


