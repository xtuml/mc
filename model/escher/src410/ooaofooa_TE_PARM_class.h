/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PARM_class.h
 *
 * Class:       Extended Parameter  (TE_PARM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_PARM_CLASS_H
#define OOAOFOOA_TE_PARM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Parameter  (TE_PARM)
 */
struct ooaofooa_TE_PARM {

  /* application analysis class attributes */
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  i_t Order;  
  c_t ParamBuffer[ESCHER_SYS_MAX_STRING_LEN];  
  c_t OALParamBuffer[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t ID;  
  Escher_UniqueID_t nextID;  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  i_t By_Ref;  
  Escher_UniqueID_t te_dtID;  
  i_t dimensions;  
  Escher_UniqueID_t te_dimID;  
  c_t array_spec[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t AbaID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMedi_ID;  
  Escher_UniqueID_t SParm_ID;  
  Escher_UniqueID_t TParm_ID;  
  Escher_UniqueID_t PP_Id;  
  Escher_UniqueID_t BParm_ID;  

  /* relationship storage */
  ooaofooa_S_BPARM * S_BPARM_R2028;
  ooaofooa_O_TPARM * O_TPARM_R2029;
  ooaofooa_S_SPARM * S_SPARM_R2030;
  ooaofooa_SM_EVTDI * SM_EVTDI_R2031;
  ooaofooa_TE_PARM * TE_PARM_R2041_precedes;
  ooaofooa_TE_PARM * TE_PARM_R2041_succeeds;
  ooaofooa_C_PP * C_PP_R2048;
  ooaofooa_TE_DT * TE_DT_R2049;
  ooaofooa_TE_DIM * TE_DIM_R2056_has_first;
  ooaofooa_TE_ABA * TE_ABA_R2062;
  Escher_ObjectSet_s TE_PAR_R2091;
};
void ooaofooa_TE_PARM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_PARM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_PARM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_PARM * ooaofooa_TE_PARM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_PARM_R2028_Link( ooaofooa_S_BPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2028_Unlink( ooaofooa_S_BPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2029_Link( ooaofooa_O_TPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2029_Unlink( ooaofooa_O_TPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2030_Link( ooaofooa_S_SPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2030_Unlink( ooaofooa_S_SPARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2031_Link( ooaofooa_SM_EVTDI *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2031_Unlink( ooaofooa_SM_EVTDI *, ooaofooa_TE_PARM * );
      
/*
 * R2041 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_PARM precedes participant
 *  Participant TE_PARM succeeds formalizer
 */
/* Navigation phrase:  R2041.'precedes' */
void ooaofooa_TE_PARM_R2041_Link_precedes( ooaofooa_TE_PARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2041_Unlink_precedes( ooaofooa_TE_PARM *, ooaofooa_TE_PARM * );
/* Navigation phrase:  R2041.'succeeds' */
void ooaofooa_TE_PARM_R2041_Link_succeeds( ooaofooa_TE_PARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2041_Unlink_succeeds( ooaofooa_TE_PARM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2048_Link( ooaofooa_C_PP *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2048_Unlink( ooaofooa_C_PP *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2049_Link( ooaofooa_TE_DT *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2049_Unlink( ooaofooa_TE_DT *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2056_Link_diments( ooaofooa_TE_DIM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2056_Unlink_diments( ooaofooa_TE_DIM *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2062_Link( ooaofooa_TE_ABA *, ooaofooa_TE_PARM * );
void ooaofooa_TE_PARM_R2062_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_PARM * );
#define ooaofooa_TE_PAR_R2091_From_TE_PARM( TE_PARM ) ( &((TE_PARM)->TE_PAR_R2091) )


#define ooaofooa_TE_PARM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_PARM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_PARM_CLASS_H */


