/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_SUPDT_class.h
 *
 * Class:       Event Supplemental Data  (SM_SUPDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_SUPDT_CLASS_H
#define OOAOFOOA_SM_SUPDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Supplemental Data  (SM_SUPDT)
 */
struct ooaofooa_SM_SUPDT {

  /* application analysis class attributes */
  Escher_UniqueID_t SMspd_ID;  
  Escher_UniqueID_t SM_ID;  
  bool Non_Local;  

  /* relationship storage */
  Escher_ObjectSet_s SM_EVT_R520_defines_signature_of;
  Escher_ObjectSet_s SM_STATE_R521_is_delivered_by_received_event_to;
  Escher_ObjectSet_s SM_SDI_R522;
  ooaofooa_SM_SM * SM_SM_R523_is_assigned_to;
};
void ooaofooa_SM_SUPDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_SUPDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_SUPDT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_SUPDT * ooaofooa_SM_SUPDT_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_SM_EVT_R520_From_SM_SUPDT_defines_signature_of( SM_SUPDT ) ( &((SM_SUPDT)->SM_EVT_R520_defines_signature_of) )
/* Note:  SM_SUPDT->SM_EVT[R520] not navigated */
#define ooaofooa_SM_STATE_R521_From_SM_SUPDT_is_delivered_by_received_event_to( SM_SUPDT ) ( &((SM_SUPDT)->SM_STATE_R521_is_delivered_by_received_event_to) )
/* Note:  SM_SUPDT->SM_STATE[R521] not navigated */
#define ooaofooa_SM_SDI_R522_From_SM_SUPDT( SM_SUPDT ) ( &((SM_SUPDT)->SM_SDI_R522) )
void ooaofooa_SM_SUPDT_R523_Link_contains( ooaofooa_SM_SM *, ooaofooa_SM_SUPDT * );
void ooaofooa_SM_SUPDT_R523_Unlink_contains( ooaofooa_SM_SM *, ooaofooa_SM_SUPDT * );


#define ooaofooa_SM_SUPDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_SUPDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_SUPDT_CLASS_H */


