/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RAVR_class.h
 *
 * Class:       Referential Attribute Visited Recorder  (O_RAVR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_RAVR_CLASS_H
#define OOAOFOOA_O_RAVR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Referential Attribute Visited Recorder  (O_RAVR)
 */
struct ooaofooa_O_RAVR {

  /* application analysis class attributes */
  Escher_UniqueID_t recorderId;  

  /* relationship storage */
  Escher_ObjectSet_s O_RATTR_R119_visited;
};
void ooaofooa_O_RAVR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_RAVR_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_O_RAVR_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_RAVR * ooaofooa_O_RAVR_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_O_RATTR_R119_From_O_RAVR_visited( O_RAVR ) ( &((O_RAVR)->O_RATTR_R119_visited) )
/* Note:  O_RAVR->O_RATTR[R119] not navigated */


#define ooaofooa_O_RAVR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_RAVR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_RAVR_CLASS_H */


