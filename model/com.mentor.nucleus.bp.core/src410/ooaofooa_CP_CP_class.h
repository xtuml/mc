/*----------------------------------------------------------------------------
 * File:  ooaofooa_CP_CP_class.h
 *
 * Class:       Component Package  (CP_CP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CP_CP_CLASS_H
#define OOAOFOOA_CP_CP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Package  (CP_CP)
 */
struct ooaofooa_CP_CP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t ParentLink_Id;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Containing_Sys_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  Escher_ObjectSet_s SQ_S_R951_can_show;
  Escher_ObjectSet_s A_A_R1114_contains;
  Escher_ObjectSet_s COMM_COMM_R1137_is_displayed_in;
  Escher_ObjectSet_s UC_UCC_R1212_can_display;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
  Escher_ObjectSet_s CP_CPINP_R4600_may_nest;
  ooaofooa_CP_CPINP * CP_CPINP_R4601_is_nested_through;
  ooaofooa_S_SYS * S_SYS_R4602_may_be_contained_within;
  Escher_ObjectSet_s C_C_R4604_may_contain;
  Escher_ObjectSet_s CL_IC_R4605_contains;
  ooaofooa_S_SYS * S_SYS_R4606_is_containing_system;
  Escher_ObjectSet_s IP_IP_R4607_may_contain;
  Escher_ObjectSet_s C_C_R4608_is_root_for;
  Escher_ObjectSet_s PA_SICP_R9001;
};
void ooaofooa_CP_CP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CP_CP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CP_CP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CP_CP * ooaofooa_CP_CP_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_SQ_S_R951_From_CP_CP_can_show( CP_CP ) ( &((CP_CP)->SQ_S_R951_can_show) )
/* Note:  CP_CP->SQ_S[R951] not navigated */
#define ooaofooa_A_A_R1114_From_CP_CP_contains( CP_CP ) ( &((CP_CP)->A_A_R1114_contains) )
/* Note:  CP_CP->A_A[R1114] not navigated */
#define ooaofooa_COMM_COMM_R1137_From_CP_CP_is_displayed_in( CP_CP ) ( &((CP_CP)->COMM_COMM_R1137_is_displayed_in) )
/* Note:  CP_CP->COMM_COMM[R1137] not navigated */
#define ooaofooa_UC_UCC_R1212_From_CP_CP_can_display( CP_CP ) ( &((CP_CP)->UC_UCC_R1212_can_display) )
/* Note:  CP_CP->UC_UCC[R1212] not navigated */
void ooaofooa_CP_CP_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_CP_CP * );
void ooaofooa_CP_CP_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_CP_CP * );
#define ooaofooa_CP_CPINP_R4600_From_CP_CP_may_nest( CP_CP ) ( &((CP_CP)->CP_CPINP_R4600_may_nest) )
/* Note:  CP_CP->CP_CPINP[R4600] not navigated */
void ooaofooa_CP_CP_R4601_Link_provides_nesting( ooaofooa_CP_CPINP *, ooaofooa_CP_CP * );
void ooaofooa_CP_CP_R4601_Unlink_provides_nesting( ooaofooa_CP_CPINP *, ooaofooa_CP_CP * );
void ooaofooa_CP_CP_R4602_Link_may_contain( ooaofooa_S_SYS *, ooaofooa_CP_CP * );
void ooaofooa_CP_CP_R4602_Unlink_may_contain( ooaofooa_S_SYS *, ooaofooa_CP_CP * );
#define ooaofooa_C_C_R4604_From_CP_CP_may_contain( CP_CP ) ( &((CP_CP)->C_C_R4604_may_contain) )
/* Note:  CP_CP->C_C[R4604] not navigated */
#define ooaofooa_CL_IC_R4605_From_CP_CP_contains( CP_CP ) ( &((CP_CP)->CL_IC_R4605_contains) )
/* Note:  CP_CP->CL_IC[R4605] not navigated */
void ooaofooa_CP_CP_R4606_Link_has_many_defined( ooaofooa_S_SYS *, ooaofooa_CP_CP * );
void ooaofooa_CP_CP_R4606_Unlink_has_many_defined( ooaofooa_S_SYS *, ooaofooa_CP_CP * );
#define ooaofooa_IP_IP_R4607_From_CP_CP_may_contain( CP_CP ) ( &((CP_CP)->IP_IP_R4607_may_contain) )
/* Note:  CP_CP->IP_IP[R4607] not navigated */
#define ooaofooa_C_C_R4608_From_CP_CP_is_root_for( CP_CP ) ( &((CP_CP)->C_C_R4608_is_root_for) )
/* Note:  CP_CP->C_C[R4608] not navigated */
#define ooaofooa_PA_SICP_R9001_From_CP_CP( CP_CP ) ( &((CP_CP)->PA_SICP_R9001) )


#define ooaofooa_CP_CP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CP_CP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CP_CP_CLASS_H */


