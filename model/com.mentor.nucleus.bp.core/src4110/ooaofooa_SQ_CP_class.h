/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_CP_class.h
 *
 * Class:       Class Participant  (SQ_CP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_CP_CLASS_H
#define OOAOFOOA_SQ_CP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Participant  (SQ_CP)
 */
struct ooaofooa_SQ_CP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Obj_ID;  
  c_t * Label;  
  c_t * InformalName;  
  c_t * Descrip;  
  bool isFormal;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  Escher_ObjectSet_s SQ_CPA_R935_may_have;
  ooaofooa_O_OBJ * O_OBJ_R939_represents;
};
void ooaofooa_SQ_CP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_CP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_CP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_CP * ooaofooa_SQ_CP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_CP_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_CP * );
void ooaofooa_SQ_CP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_CP * );
#define ooaofooa_SQ_CPA_R935_From_SQ_CP_may_have( SQ_CP ) ( &((SQ_CP)->SQ_CPA_R935_may_have) )
void ooaofooa_SQ_CP_R939_Link_represents_participant_of( ooaofooa_O_OBJ *, ooaofooa_SQ_CP * );
void ooaofooa_SQ_CP_R939_Unlink_represents_participant_of( ooaofooa_O_OBJ *, ooaofooa_SQ_CP * );


#define ooaofooa_SQ_CP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_CP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_CP_CLASS_H */


