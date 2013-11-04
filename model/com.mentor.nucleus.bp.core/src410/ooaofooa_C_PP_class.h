/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_PP_class.h
 *
 * Class:       Property Parameter  (C_PP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_PP_CLASS_H
#define OOAOFOOA_C_PP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Property Parameter  (C_PP)
 */
struct ooaofooa_C_PP {

  /* application analysis class attributes */
  Escher_UniqueID_t PP_Id;  
  Escher_UniqueID_t Signal_Id;  
  Escher_UniqueID_t DT_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  i_t By_Ref;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Previous_PP_Id;  

  /* relationship storage */
  Escher_ObjectSet_s V_PVL_R843;
  Escher_ObjectSet_s V_EPR_R847;
  Escher_ObjectSet_s MSG_EPA_R1023_represents;
  ooaofooa_TE_PARM * TE_PARM_R2048;
  Escher_ObjectSet_s I_DIV_R2956;
  ooaofooa_C_EP * C_EP_R4006_parameterizes;
  ooaofooa_S_DT * S_DT_R4007_is_typed_by;
  Escher_ObjectSet_s S_DIM_R4017_may_have;
  ooaofooa_C_PP * C_PP_R4021_succeeds;
  ooaofooa_C_PP * C_PP_R4021_precedes;
};
void ooaofooa_C_PP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_PP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_PP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_PP * ooaofooa_C_PP_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_V_PVL_R843_From_C_PP( C_PP ) ( &((C_PP)->V_PVL_R843) )
#define ooaofooa_V_EPR_R847_From_C_PP( C_PP ) ( &((C_PP)->V_EPR_R847) )
#define ooaofooa_MSG_EPA_R1023_From_C_PP_represents( C_PP ) ( &((C_PP)->MSG_EPA_R1023_represents) )
/* Note:  C_PP->MSG_EPA[R1023] not navigated */
#define ooaofooa_I_DIV_R2956_From_C_PP( C_PP ) ( &((C_PP)->I_DIV_R2956) )
/* Note:  C_PP->I_DIV[R2956] not navigated */
void ooaofooa_C_PP_R4006_Link_is_parameter_to( ooaofooa_C_EP *, ooaofooa_C_PP * );
void ooaofooa_C_PP_R4006_Unlink_is_parameter_to( ooaofooa_C_EP *, ooaofooa_C_PP * );
void ooaofooa_C_PP_R4007_Link_Defines_the_type( ooaofooa_S_DT *, ooaofooa_C_PP * );
void ooaofooa_C_PP_R4007_Unlink_Defines_the_type( ooaofooa_S_DT *, ooaofooa_C_PP * );
#define ooaofooa_S_DIM_R4017_From_C_PP_may_have( C_PP ) ( &((C_PP)->S_DIM_R4017_may_have) )
      
/*
 * R4021 is Simple Reflexive:  0..1:0..1
 *  Formalizing C_PP succeeds participant
 *  Participant C_PP precedes formalizer
 */
/* Navigation phrase:  R4021.'succeeds' */
void ooaofooa_C_PP_R4021_Link_succeeds( ooaofooa_C_PP *, ooaofooa_C_PP * );
void ooaofooa_C_PP_R4021_Unlink_succeeds( ooaofooa_C_PP *, ooaofooa_C_PP * );
/* Navigation phrase:  R4021.'precedes' */
void ooaofooa_C_PP_R4021_Link_precedes( ooaofooa_C_PP *, ooaofooa_C_PP * );
void ooaofooa_C_PP_R4021_Unlink_precedes( ooaofooa_C_PP *, ooaofooa_C_PP * );


#define ooaofooa_C_PP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_PP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_PP_CLASS_H */


