/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_TM_class.h
 *
 * Class:       Timing Mark  (SQ_TM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_TM_CLASS_H
#define OOAOFOOA_SQ_TM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Timing Mark  (SQ_TM)
 */
struct ooaofooa_SQ_TM {

  /* application analysis class attributes */
  Escher_UniqueID_t Mark_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Part_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SQ_LS * SQ_LS_R931_marks_a_point_in_time;
  Escher_ObjectSet_s SQ_TS_R941_defines_start_of;
  Escher_ObjectSet_s SQ_TS_R942_defines_end_of;
};
void ooaofooa_SQ_TM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_TM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_TM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_TM * ooaofooa_SQ_TM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_TM_R931_Link_has_a_point_in_time_referenced_by( ooaofooa_SQ_LS *, ooaofooa_SQ_TM * );
void ooaofooa_SQ_TM_R931_Unlink_has_a_point_in_time_referenced_by( ooaofooa_SQ_LS *, ooaofooa_SQ_TM * );
#define ooaofooa_SQ_TS_R941_From_SQ_TM_defines_start_of( SQ_TM ) ( &((SQ_TM)->SQ_TS_R941_defines_start_of) )
#define ooaofooa_SQ_TS_R942_From_SQ_TM_defines_end_of( SQ_TM ) ( &((SQ_TM)->SQ_TS_R942_defines_end_of) )
/* Note:  SQ_TM->SQ_TS[R942] not navigated */


#define ooaofooa_SQ_TM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_TM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_TM_CLASS_H */


