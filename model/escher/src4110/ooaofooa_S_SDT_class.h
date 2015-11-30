/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SDT_class.h
 *
 * Class:       Structured Data Type  (S_SDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SDT_CLASS_H
#define OOAOFOOA_S_SDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Structured Data Type  (S_SDT)
 */
struct ooaofooa_S_SDT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R17;
  Escher_ObjectSet_s S_MBR_R44_has_member;
};
void ooaofooa_S_SDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SDT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_SDT * ooaofooa_S_SDT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_SDT_R17_Link( ooaofooa_S_DT *, ooaofooa_S_SDT * );
void ooaofooa_S_SDT_R17_Unlink( ooaofooa_S_DT *, ooaofooa_S_SDT * );
#define ooaofooa_S_MBR_R44_From_S_SDT_has_member( S_SDT ) ( &((S_SDT)->S_MBR_R44_has_member) )


#define ooaofooa_S_SDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SDT_CLASS_H */


