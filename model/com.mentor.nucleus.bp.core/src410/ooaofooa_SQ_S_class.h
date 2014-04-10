/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_S_class.h
 *
 * Class:       Sequence  (SQ_S)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_S_CLASS_H
#define OOAOFOOA_SQ_S_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Sequence  (SQ_S)
 */
struct ooaofooa_SQ_S {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Dom_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t SS_ID;  
  Escher_UniqueID_t Prev_Package_ID;  
  c_t * Descrip;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Component_Package_ID;  
  Escher_UniqueID_t Component_Id;  

  /* relationship storage */
  ooaofooa_SQ_SIS * SQ_SIS_R911_can_show;
  ooaofooa_S_DOM * S_DOM_R913_is_shown_in;
  ooaofooa_S_SS * S_SS_R914_is_shown_in;
  ooaofooa_SQ_SIS * SQ_SIS_R928_is_displayed_in;
  Escher_ObjectSet_s SQ_P_R929_contains;
  ooaofooa_S_SYS * S_SYS_R950;
  ooaofooa_CP_CP * CP_CP_R951;
  ooaofooa_C_C * C_C_R952;
  Escher_ObjectSet_s SQ_MIS_R953_contains;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
};
void ooaofooa_SQ_S_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_S_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_S_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_S * ooaofooa_SQ_S_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_S_R913_Link_can_show( ooaofooa_S_DOM *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R913_Unlink_can_show( ooaofooa_S_DOM *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R914_Link_can_show( ooaofooa_S_SS *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R914_Unlink_can_show( ooaofooa_S_SS *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R928_Link_has_children( ooaofooa_SQ_SIS *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R928_Unlink_has_children( ooaofooa_SQ_SIS *, ooaofooa_SQ_S * );
#define ooaofooa_SQ_P_R929_From_SQ_S_contains( SQ_S ) ( &((SQ_S)->SQ_P_R929_contains) )
/* Note:  SQ_S->SQ_P[R929] not navigated */
void ooaofooa_SQ_S_R950_Link_can_show( ooaofooa_S_SYS *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R950_Unlink_can_show( ooaofooa_S_SYS *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R951_Link_can_show( ooaofooa_CP_CP *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R951_Unlink_can_show( ooaofooa_CP_CP *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R952_Link_can_show( ooaofooa_C_C *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R952_Unlink_can_show( ooaofooa_C_C *, ooaofooa_SQ_S * );
#define ooaofooa_SQ_MIS_R953_From_SQ_S_contains( SQ_S ) ( &((SQ_S)->SQ_MIS_R953_contains) )
/* Note:  SQ_S->SQ_MIS[R953] not navigated */
void ooaofooa_SQ_S_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_SQ_S * );
void ooaofooa_SQ_S_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_SQ_S * );


#define ooaofooa_SQ_S_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_S_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_S_CLASS_H */


