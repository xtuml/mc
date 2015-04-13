/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_SIS_class.h
 *
 * Class:       Sequence in Sequence  (SQ_SIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_SIS_CLASS_H
#define OOAOFOOA_SQ_SIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Sequence in Sequence  (SQ_SIS)
 */
struct ooaofooa_SQ_SIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_SQ_S * SQ_S_R911_is_shown_in;
  Escher_ObjectSet_s SQ_S_R928_has_children;
};
void ooaofooa_SQ_SIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_SIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_SIS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_SIS * ooaofooa_SQ_SIS_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_SIS_R911_Link_can_show( ooaofooa_SQ_S *, ooaofooa_SQ_SIS * );
void ooaofooa_SQ_SIS_R911_Unlink_can_show( ooaofooa_SQ_S *, ooaofooa_SQ_SIS * );
#define ooaofooa_SQ_S_R928_From_SQ_SIS_has_children( SQ_SIS ) ( &((SQ_SIS)->SQ_S_R928_has_children) )
/* Note:  SQ_SIS->SQ_S[R928] not navigated */


#define ooaofooa_SQ_SIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_SIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_SIS_CLASS_H */


