/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SPARM_class.h
 *
 * Class:       Function Parameter  (S_SPARM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SPARM_CLASS_H
#define OOAOFOOA_S_SPARM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Parameter  (S_SPARM)
 */
struct ooaofooa_S_SPARM {

  /* application analysis class attributes */
  Escher_UniqueID_t SParm_ID;  
  Escher_UniqueID_t Sync_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t DT_ID;  
  i_t By_Ref;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Previous_SParm_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_S_SYNC * S_SYNC_R24_is_defined_for;
  ooaofooa_S_DT * S_DT_R26_is_typed_by_;
  Escher_ObjectSet_s S_DIM_R52_may_have;
  ooaofooa_S_SPARM * S_SPARM_R54_succeeds;
  ooaofooa_S_SPARM * S_SPARM_R54_precedes;
  Escher_ObjectSet_s V_PVL_R832;
  Escher_ObjectSet_s MSG_FA_R1016_represents;
  ooaofooa_TE_PARM * TE_PARM_R2030;
};
void ooaofooa_S_SPARM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SPARM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_SPARM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_SPARM * ooaofooa_S_SPARM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_SPARM_R24_Link_defines( ooaofooa_S_SYNC *, ooaofooa_S_SPARM * );
void ooaofooa_S_SPARM_R24_Unlink_defines( ooaofooa_S_SYNC *, ooaofooa_S_SPARM * );
void ooaofooa_S_SPARM_R26_Link_describes_type_of( ooaofooa_S_DT *, ooaofooa_S_SPARM * );
void ooaofooa_S_SPARM_R26_Unlink_describes_type_of( ooaofooa_S_DT *, ooaofooa_S_SPARM * );
#define ooaofooa_S_DIM_R52_From_S_SPARM_may_have( S_SPARM ) ( &((S_SPARM)->S_DIM_R52_may_have) )
      
/*
 * R54 is Simple Reflexive:  0..1:0..1
 *  Formalizing S_SPARM succeeds participant
 *  Participant S_SPARM precedes formalizer
 */
/* Navigation phrase:  R54.'succeeds' */
void ooaofooa_S_SPARM_R54_Link_succeeds( ooaofooa_S_SPARM *, ooaofooa_S_SPARM * );
void ooaofooa_S_SPARM_R54_Unlink_succeeds( ooaofooa_S_SPARM *, ooaofooa_S_SPARM * );
/* Navigation phrase:  R54.'precedes' */
void ooaofooa_S_SPARM_R54_Link_precedes( ooaofooa_S_SPARM *, ooaofooa_S_SPARM * );
void ooaofooa_S_SPARM_R54_Unlink_precedes( ooaofooa_S_SPARM *, ooaofooa_S_SPARM * );
#define ooaofooa_V_PVL_R832_From_S_SPARM( S_SPARM ) ( &((S_SPARM)->V_PVL_R832) )
#define ooaofooa_MSG_FA_R1016_From_S_SPARM_represents( S_SPARM ) ( &((S_SPARM)->MSG_FA_R1016_represents) )
/* Note:  S_SPARM->MSG_FA[R1016] not navigated */


#define ooaofooa_S_SPARM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SPARM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SPARM_CLASS_H */


