/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_CIC_class.h
 *
 * Class:       Communication in Communication  (COMM_CIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_COMM_CIC_CLASS_H
#define OOAOFOOA_COMM_CIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Communication in Communication  (COMM_CIC)
 */
struct ooaofooa_COMM_CIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  Escher_ObjectSet_s COMM_COMM_R1129_has_children;
  ooaofooa_COMM_COMM * COMM_COMM_R1130_is_shown_in;
};
void ooaofooa_COMM_CIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_COMM_CIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_COMM_CIC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_COMM_CIC * ooaofooa_COMM_CIC_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_COMM_COMM_R1129_From_COMM_CIC_has_children( COMM_CIC ) ( &((COMM_CIC)->COMM_COMM_R1129_has_children) )
/* Note:  COMM_CIC->COMM_COMM[R1129] not navigated */
void ooaofooa_COMM_CIC_R1130_Link_has_children( ooaofooa_COMM_COMM *, ooaofooa_COMM_CIC * );
void ooaofooa_COMM_CIC_R1130_Unlink_has_children( ooaofooa_COMM_COMM *, ooaofooa_COMM_CIC * );


#define ooaofooa_COMM_CIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_COMM_CIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_COMM_CIC_CLASS_H */


