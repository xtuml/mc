/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_MIS_class.h
 *
 * Class:       Message In Sequence  (SQ_MIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_MIS_CLASS_H
#define OOAOFOOA_SQ_MIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message In Sequence  (SQ_MIS)
 */
struct ooaofooa_SQ_MIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_SQ_S * SQ_S_R953_contained_in;
  ooaofooa_MSG_M * MSG_M_R954_provides_containment;
};
void ooaofooa_SQ_MIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_MIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_MIS_batch_relate( Escher_iHandle_t );

void ooaofooa_SQ_MIS_R953_Link_contains( ooaofooa_SQ_S *, ooaofooa_SQ_MIS * );
void ooaofooa_SQ_MIS_R953_Unlink_contains( ooaofooa_SQ_S *, ooaofooa_SQ_MIS * );
void ooaofooa_SQ_MIS_R954_Link_contained_through( ooaofooa_MSG_M *, ooaofooa_SQ_MIS * );
void ooaofooa_SQ_MIS_R954_Unlink_contained_through( ooaofooa_MSG_M *, ooaofooa_SQ_MIS * );


#define ooaofooa_SQ_MIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_MIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_MIS_CLASS_H */


