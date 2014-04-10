/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_BPARM_class.h
 *
 * Class:       Bridge Parameter  (S_BPARM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_BPARM_CLASS_H
#define OOAOFOOA_S_BPARM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Parameter  (S_BPARM)
 */
struct ooaofooa_S_BPARM {

  /* application analysis class attributes */
  Escher_UniqueID_t BParm_ID;  
  Escher_UniqueID_t Brg_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t DT_ID;  
  i_t By_Ref;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Previous_BParm_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_S_BRG * S_BRG_R21_contains;
  ooaofooa_S_DT * S_DT_R22_is_defined_by;
  Escher_ObjectSet_s S_DIM_R49_may_have;
  ooaofooa_S_BPARM * S_BPARM_R55_succeeds;
  ooaofooa_S_BPARM * S_BPARM_R55_precedes;
  Escher_ObjectSet_s V_PVL_R831;
  Escher_ObjectSet_s MSG_BA_R1014_represents;
  ooaofooa_TE_PARM * TE_PARM_R2028;
};
void ooaofooa_S_BPARM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_BPARM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_BPARM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_BPARM * ooaofooa_S_BPARM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_BPARM_R21_Link_is_part_of( ooaofooa_S_BRG *, ooaofooa_S_BPARM * );
void ooaofooa_S_BPARM_R21_Unlink_is_part_of( ooaofooa_S_BRG *, ooaofooa_S_BPARM * );
void ooaofooa_S_BPARM_R22_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_BPARM * );
void ooaofooa_S_BPARM_R22_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_BPARM * );
#define ooaofooa_S_DIM_R49_From_S_BPARM_may_have( S_BPARM ) ( &((S_BPARM)->S_DIM_R49_may_have) )
      
/*
 * R55 is Simple Reflexive:  0..1:0..1
 *  Formalizing S_BPARM succeeds participant
 *  Participant S_BPARM precedes formalizer
 */
/* Navigation phrase:  R55.'succeeds' */
void ooaofooa_S_BPARM_R55_Link_succeeds( ooaofooa_S_BPARM *, ooaofooa_S_BPARM * );
void ooaofooa_S_BPARM_R55_Unlink_succeeds( ooaofooa_S_BPARM *, ooaofooa_S_BPARM * );
/* Navigation phrase:  R55.'precedes' */
void ooaofooa_S_BPARM_R55_Link_precedes( ooaofooa_S_BPARM *, ooaofooa_S_BPARM * );
void ooaofooa_S_BPARM_R55_Unlink_precedes( ooaofooa_S_BPARM *, ooaofooa_S_BPARM * );
#define ooaofooa_V_PVL_R831_From_S_BPARM( S_BPARM ) ( &((S_BPARM)->V_PVL_R831) )
#define ooaofooa_MSG_BA_R1014_From_S_BPARM_represents( S_BPARM ) ( &((S_BPARM)->MSG_BA_R1014_represents) )
/* Note:  S_BPARM->MSG_BA[R1014] not navigated */


#define ooaofooa_S_BPARM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_BPARM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_BPARM_CLASS_H */


