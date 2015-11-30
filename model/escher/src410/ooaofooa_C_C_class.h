/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_C_class.h
 *
 * Class:       Component  (C_C)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_C_CLASS_H
#define OOAOFOOA_C_C_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component  (C_C)
 */
struct ooaofooa_C_C {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t NestedComponent_Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  i_t Mult;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Root_Package_ID;  
  bool isRealized;  
  c_t Realized_Class_Path[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s ACT_BIC_R694;
  Escher_ObjectSet_s SQ_S_R952_can_show;
  Escher_ObjectSet_s SQ_COP_R955;
  Escher_ObjectSet_s A_A_R1115_contains;
  Escher_ObjectSet_s COMM_COMM_R1138_is_displayed_in;
  Escher_ObjectSet_s UC_UCC_R1213_can_display;
  ooaofooa_TE_C * TE_C_R2054;
  Escher_ObjectSet_s I_EXE_R2955_instance_being_verified_by;
  Escher_ObjectSet_s C_PO_R4010_communicates_through;
  Escher_ObjectSet_s CL_IC_R4201_is_represented_by;
  Escher_ObjectSet_s CN_CIC_R4202_can_nest;
  ooaofooa_CN_CIC * CN_CIC_R4203_is_nested_through;
  ooaofooa_CN_DC * CN_DC_R4204;
  Escher_ObjectSet_s CL_IC_R4205_nests;
  Escher_ObjectSet_s IP_IP_R4206_may_contain;
  ooaofooa_CP_CP * CP_CP_R4604_may_exist_in;
  ooaofooa_CP_CP * CP_CP_R4608_has_root;
  ooaofooa_PE_PE * PE_PE_R8001;
  Escher_ObjectSet_s PE_PE_R8003_contains;
  Escher_ObjectSet_s PE_CVS_R8004;
  Escher_ObjectSet_s PE_CRS_R8007_holds;
  Escher_ObjectSet_s PA_SIC_R9000;
  Escher_ObjectSet_s PA_DIC_R9002;
};
void ooaofooa_C_C_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_C_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_C_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_C * ooaofooa_C_C_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_BIC_R694_From_C_C( C_C ) ( &((C_C)->ACT_BIC_R694) )
#define ooaofooa_SQ_S_R952_From_C_C_can_show( C_C ) ( &((C_C)->SQ_S_R952_can_show) )
/* Note:  C_C->SQ_S[R952] not navigated */
#define ooaofooa_SQ_COP_R955_From_C_C( C_C ) ( &((C_C)->SQ_COP_R955) )
#define ooaofooa_A_A_R1115_From_C_C_contains( C_C ) ( &((C_C)->A_A_R1115_contains) )
/* Note:  C_C->A_A[R1115] not navigated */
#define ooaofooa_COMM_COMM_R1138_From_C_C_is_displayed_in( C_C ) ( &((C_C)->COMM_COMM_R1138_is_displayed_in) )
/* Note:  C_C->COMM_COMM[R1138] not navigated */
#define ooaofooa_UC_UCC_R1213_From_C_C_can_display( C_C ) ( &((C_C)->UC_UCC_R1213_can_display) )
/* Note:  C_C->UC_UCC[R1213] not navigated */
#define ooaofooa_I_EXE_R2955_From_C_C_instance_being_verified_by( C_C ) ( &((C_C)->I_EXE_R2955_instance_being_verified_by) )
/* Note:  C_C->I_EXE[R2955] not navigated */
#define ooaofooa_C_PO_R4010_From_C_C_communicates_through( C_C ) ( &((C_C)->C_PO_R4010_communicates_through) )
#define ooaofooa_CL_IC_R4201_From_C_C_is_represented_by( C_C ) ( &((C_C)->CL_IC_R4201_is_represented_by) )
#define ooaofooa_CN_CIC_R4202_From_C_C_can_nest( C_C ) ( &((C_C)->CN_CIC_R4202_can_nest) )
/* Note:  C_C->CN_CIC[R4202] not navigated */
void ooaofooa_C_C_R4203_Link_nests( ooaofooa_CN_CIC *, ooaofooa_C_C * );
void ooaofooa_C_C_R4203_Unlink_nests( ooaofooa_CN_CIC *, ooaofooa_C_C * );
#define ooaofooa_CL_IC_R4205_From_C_C_nests( C_C ) ( &((C_C)->CL_IC_R4205_nests) )
#define ooaofooa_IP_IP_R4206_From_C_C_may_contain( C_C ) ( &((C_C)->IP_IP_R4206_may_contain) )
/* Note:  C_C->IP_IP[R4206] not navigated */
void ooaofooa_C_C_R4604_Link_may_contain( ooaofooa_CP_CP *, ooaofooa_C_C * );
void ooaofooa_C_C_R4604_Unlink_may_contain( ooaofooa_CP_CP *, ooaofooa_C_C * );
void ooaofooa_C_C_R4608_Link_is_root_for( ooaofooa_CP_CP *, ooaofooa_C_C * );
void ooaofooa_C_C_R4608_Unlink_is_root_for( ooaofooa_CP_CP *, ooaofooa_C_C * );
void ooaofooa_C_C_R8001_Link( ooaofooa_PE_PE *, ooaofooa_C_C * );
void ooaofooa_C_C_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_C_C * );
#define ooaofooa_PE_PE_R8003_From_C_C_contains( C_C ) ( &((C_C)->PE_PE_R8003_contains) )
#define ooaofooa_PE_CVS_R8004_From_C_C( C_C ) ( &((C_C)->PE_CVS_R8004) )
#define ooaofooa_PE_CRS_R8007_From_C_C_holds( C_C ) ( &((C_C)->PE_CRS_R8007_holds) )
/* Note:  C_C->PE_CRS[R8007] not navigated */
#define ooaofooa_PA_SIC_R9000_From_C_C( C_C ) ( &((C_C)->PA_SIC_R9000) )
#define ooaofooa_PA_DIC_R9002_From_C_C( C_C ) ( &((C_C)->PA_DIC_R9002) )


#define ooaofooa_C_C_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_C_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_C_CLASS_H */


