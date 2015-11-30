/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_SYS_class.h
 *
 * Class:       System Model  (S_SYS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_SYS_CLASS_H
#define OOAOFOOA_S_SYS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   System Model  (S_SYS)
 */
struct ooaofooa_S_SYS {

  /* application analysis class attributes */
  Escher_UniqueID_t Sys_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  bool useGlobals;  

  /* relationship storage */
  Escher_ObjectSet_s S_DOM_R28;
  Escher_ObjectSet_s SQ_S_R950_can_show;
  Escher_ObjectSet_s A_A_R1113_contains;
  Escher_ObjectSet_s COMM_COMM_R1136_is_displayed_in;
  Escher_ObjectSet_s UC_UCC_R1211_can_display;
  Escher_ObjectSet_s EP_PKG_R1401_contains;
  Escher_ObjectSet_s EP_PKG_R1405_contains;
  ooaofooa_TE_SYS * TE_SYS_R2018;
  Escher_ObjectSet_s IP_IP_R4302_can_show;
  Escher_ObjectSet_s IP_IP_R4304;
  Escher_ObjectSet_s SLD_SDP_R4400;
  Escher_ObjectSet_s SLD_SDINP_R4402_is_system_of;
  Escher_ObjectSet_s SLD_SCINP_R4404_is_system_of;
  Escher_ObjectSet_s CP_CP_R4602_may_contain;
  Escher_ObjectSet_s CP_CP_R4606_has_many_defined;
  Escher_ObjectSet_s G_EIS_R9100;
};
void ooaofooa_S_SYS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_SYS_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_S_SYS_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_SYS * ooaofooa_S_SYS_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_S_DOM_R28_From_S_SYS( S_SYS ) ( &((S_SYS)->S_DOM_R28) )
/* Note:  S_SYS->S_DOM[R28] not navigated */
#define ooaofooa_SQ_S_R950_From_S_SYS_can_show( S_SYS ) ( &((S_SYS)->SQ_S_R950_can_show) )
/* Note:  S_SYS->SQ_S[R950] not navigated */
#define ooaofooa_A_A_R1113_From_S_SYS_contains( S_SYS ) ( &((S_SYS)->A_A_R1113_contains) )
/* Note:  S_SYS->A_A[R1113] not navigated */
#define ooaofooa_COMM_COMM_R1136_From_S_SYS_is_displayed_in( S_SYS ) ( &((S_SYS)->COMM_COMM_R1136_is_displayed_in) )
/* Note:  S_SYS->COMM_COMM[R1136] not navigated */
#define ooaofooa_UC_UCC_R1211_From_S_SYS_can_display( S_SYS ) ( &((S_SYS)->UC_UCC_R1211_can_display) )
/* Note:  S_SYS->UC_UCC[R1211] not navigated */
#define ooaofooa_EP_PKG_R1401_From_S_SYS_contains( S_SYS ) ( &((S_SYS)->EP_PKG_R1401_contains) )
#define ooaofooa_EP_PKG_R1405_From_S_SYS_contains( S_SYS ) ( &((S_SYS)->EP_PKG_R1405_contains) )
/* Note:  S_SYS->EP_PKG[R1405] not navigated */
#define ooaofooa_IP_IP_R4302_From_S_SYS_can_show( S_SYS ) ( &((S_SYS)->IP_IP_R4302_can_show) )
/* Note:  S_SYS->IP_IP[R4302] not navigated */
#define ooaofooa_IP_IP_R4304_From_S_SYS( S_SYS ) ( &((S_SYS)->IP_IP_R4304) )
/* Note:  S_SYS->IP_IP[R4304] not navigated */
#define ooaofooa_SLD_SDP_R4400_From_S_SYS( S_SYS ) ( &((S_SYS)->SLD_SDP_R4400) )
#define ooaofooa_SLD_SDINP_R4402_From_S_SYS_is_system_of( S_SYS ) ( &((S_SYS)->SLD_SDINP_R4402_is_system_of) )
/* Note:  S_SYS->SLD_SDINP[R4402] not navigated */
#define ooaofooa_SLD_SCINP_R4404_From_S_SYS_is_system_of( S_SYS ) ( &((S_SYS)->SLD_SCINP_R4404_is_system_of) )
/* Note:  S_SYS->SLD_SCINP[R4404] not navigated */
#define ooaofooa_CP_CP_R4602_From_S_SYS_may_contain( S_SYS ) ( &((S_SYS)->CP_CP_R4602_may_contain) )
/* Note:  S_SYS->CP_CP[R4602] not navigated */
#define ooaofooa_CP_CP_R4606_From_S_SYS_has_many_defined( S_SYS ) ( &((S_SYS)->CP_CP_R4606_has_many_defined) )
/* Note:  S_SYS->CP_CP[R4606] not navigated */
#define ooaofooa_G_EIS_R9100_From_S_SYS( S_SYS ) ( &((S_SYS)->G_EIS_R9100) )


#define ooaofooa_S_SYS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_SYS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_SYS_CLASS_H */


