/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_COMM_class.h
 *
 * Class:       Communication  (COMM_COMM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_COMM_COMM_CLASS_H
#define OOAOFOOA_COMM_COMM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Communication  (COMM_COMM)
 */
struct ooaofooa_COMM_COMM {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Dom_ID;  
  Escher_UniqueID_t SS_ID;  
  Escher_UniqueID_t CIC_Package_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Component_Package_ID;  
  Escher_UniqueID_t Component_Id;  

  /* relationship storage */
  Escher_ObjectSet_s COMM_PIC_R1126;
  ooaofooa_COMM_CIC * COMM_CIC_R1129_is_connection_to_parent;
  ooaofooa_COMM_CIC * COMM_CIC_R1130_has_children;
  ooaofooa_S_SS * S_SS_R1131_can_be_displayed_in;
  ooaofooa_S_DOM * S_DOM_R1132_can_be_displayed_in;
  Escher_ObjectSet_s COMM_MIC_R1135;
  ooaofooa_S_SYS * S_SYS_R1136;
  ooaofooa_CP_CP * CP_CP_R1137;
  ooaofooa_C_C * C_C_R1138;
  ooaofooa_EP_SPKG * EP_SPKG_R1402;
};
void ooaofooa_COMM_COMM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_COMM_COMM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_COMM_COMM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_COMM_COMM * ooaofooa_COMM_COMM_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_COMM_PIC_R1126_From_COMM_COMM( COMM_COMM ) ( &((COMM_COMM)->COMM_PIC_R1126) )
void ooaofooa_COMM_COMM_R1129_Link_has_children( ooaofooa_COMM_CIC *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1129_Unlink_has_children( ooaofooa_COMM_CIC *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1131_Link_can_display( ooaofooa_S_SS *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1131_Unlink_can_display( ooaofooa_S_SS *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1132_Link_can_display( ooaofooa_S_DOM *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1132_Unlink_can_display( ooaofooa_S_DOM *, ooaofooa_COMM_COMM * );
#define ooaofooa_COMM_MIC_R1135_From_COMM_COMM( COMM_COMM ) ( &((COMM_COMM)->COMM_MIC_R1135) )
void ooaofooa_COMM_COMM_R1136_Link_is_displayed_in( ooaofooa_S_SYS *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1136_Unlink_is_displayed_in( ooaofooa_S_SYS *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1137_Link_is_displayed_in( ooaofooa_CP_CP *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1137_Unlink_is_displayed_in( ooaofooa_CP_CP *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1138_Link_is_displayed_in( ooaofooa_C_C *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1138_Unlink_is_displayed_in( ooaofooa_C_C *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1402_Link( ooaofooa_EP_SPKG *, ooaofooa_COMM_COMM * );
void ooaofooa_COMM_COMM_R1402_Unlink( ooaofooa_EP_SPKG *, ooaofooa_COMM_COMM * );


#define ooaofooa_COMM_COMM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_COMM_COMM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_COMM_COMM_CLASS_H */


