/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_TPARM_class.h
 *
 * Class:       Operation Parameter  (O_TPARM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_TPARM_CLASS_H
#define OOAOFOOA_O_TPARM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Parameter  (O_TPARM)
 */
struct ooaofooa_O_TPARM {

  /* application analysis class attributes */
  Escher_UniqueID_t TParm_ID;  
  Escher_UniqueID_t Tfr_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t DT_ID;  
  i_t By_Ref;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Previous_TParm_ID;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_O_TFR * O_TFR_R117_is_part_of_;
  ooaofooa_S_DT * S_DT_R118_is_defined_by;
  Escher_ObjectSet_s S_DIM_R121_may_have;
  ooaofooa_O_TPARM * O_TPARM_R124_succeeds;
  ooaofooa_O_TPARM * O_TPARM_R124_precedes;
  Escher_ObjectSet_s V_PVL_R833;
  Escher_ObjectSet_s MSG_OA_R1015_represents;
  ooaofooa_TE_PARM * TE_PARM_R2029;
};
void ooaofooa_O_TPARM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_TPARM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_TPARM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_TPARM * ooaofooa_O_TPARM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_O_TPARM_R117_Link_contains( ooaofooa_O_TFR *, ooaofooa_O_TPARM * );
void ooaofooa_O_TPARM_R117_Unlink_contains( ooaofooa_O_TFR *, ooaofooa_O_TPARM * );
void ooaofooa_O_TPARM_R118_Link_defines_the_type_of_( ooaofooa_S_DT *, ooaofooa_O_TPARM * );
void ooaofooa_O_TPARM_R118_Unlink_defines_the_type_of_( ooaofooa_S_DT *, ooaofooa_O_TPARM * );
#define ooaofooa_S_DIM_R121_From_O_TPARM_may_have( O_TPARM ) ( &((O_TPARM)->S_DIM_R121_may_have) )
      
/*
 * R124 is Simple Reflexive:  0..1:0..1
 *  Formalizing O_TPARM succeeds participant
 *  Participant O_TPARM precedes formalizer
 */
/* Navigation phrase:  R124.'succeeds' */
void ooaofooa_O_TPARM_R124_Link_succeeds( ooaofooa_O_TPARM *, ooaofooa_O_TPARM * );
void ooaofooa_O_TPARM_R124_Unlink_succeeds( ooaofooa_O_TPARM *, ooaofooa_O_TPARM * );
/* Navigation phrase:  R124.'precedes' */
void ooaofooa_O_TPARM_R124_Link_precedes( ooaofooa_O_TPARM *, ooaofooa_O_TPARM * );
void ooaofooa_O_TPARM_R124_Unlink_precedes( ooaofooa_O_TPARM *, ooaofooa_O_TPARM * );
#define ooaofooa_V_PVL_R833_From_O_TPARM( O_TPARM ) ( &((O_TPARM)->V_PVL_R833) )
#define ooaofooa_MSG_OA_R1015_From_O_TPARM_represents( O_TPARM ) ( &((O_TPARM)->MSG_OA_R1015_represents) )
/* Note:  O_TPARM->MSG_OA[R1015] not navigated */


#define ooaofooa_O_TPARM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_TPARM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_TPARM_CLASS_H */


