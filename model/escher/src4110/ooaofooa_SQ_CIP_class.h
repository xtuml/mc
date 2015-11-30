/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CIP_class.h
 *
 * Class:       Class Instance Participant  (SQ_CIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_CIP_CLASS_H
#define OOAOFOOA_SQ_CIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Instance Participant  (SQ_CIP)
 */
struct ooaofooa_SQ_CIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Obj_ID;  
  c_t * Name;  
  c_t * InformalClassName;  
  c_t * Label;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  ooaofooa_O_OBJ * O_OBJ_R934_represents;
  Escher_ObjectSet_s SQ_AV_R936_contains_informal;
  Escher_ObjectSet_s SQ_AV_R937_contains_formal;
};
void ooaofooa_SQ_CIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_CIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_CIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_CIP * ooaofooa_SQ_CIP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_CIP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_CIP * );
void ooaofooa_SQ_CIP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_CIP * );
void ooaofooa_SQ_CIP_R934_Link_represents_participant_of( ooaofooa_O_OBJ *, ooaofooa_SQ_CIP * );
void ooaofooa_SQ_CIP_R934_Unlink_represents_participant_of( ooaofooa_O_OBJ *, ooaofooa_SQ_CIP * );
#define ooaofooa_SQ_AV_R936_From_SQ_CIP_contains_informal( SQ_CIP ) ( &((SQ_CIP)->SQ_AV_R936_contains_informal) )
/* Note:  SQ_CIP->SQ_AV[R936] not navigated */
#define ooaofooa_SQ_AV_R937_From_SQ_CIP_contains_formal( SQ_CIP ) ( &((SQ_CIP)->SQ_AV_R937_contains_formal) )
/* Note:  SQ_CIP->SQ_AV[R937] not navigated */


#define ooaofooa_SQ_CIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_CIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_CIP_CLASS_H */


