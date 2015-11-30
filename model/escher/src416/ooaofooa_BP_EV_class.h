/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_EV_class.h
 *
 * Class:       Event Breakpoint  (BP_EV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_BP_EV_CLASS_H
#define OOAOFOOA_BP_EV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Breakpoint  (BP_EV)
 */
struct ooaofooa_BP_EV {

  /* application analysis class attributes */
  Escher_UniqueID_t Breakpoint_ID;  
  bool onEnqueue;  
  bool onDequeue;  
  bool onEventIgnored;  
  bool onCantHappen;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_BP_BP * BP_BP_R3102;
  ooaofooa_SM_EVT * SM_EVT_R3103_is_set_on;
};
void ooaofooa_BP_EV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_BP_EV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_BP_EV_batch_relate( Escher_iHandle_t );

void ooaofooa_BP_EV_R3102_Link( ooaofooa_BP_BP *, ooaofooa_BP_EV * );
void ooaofooa_BP_EV_R3102_Unlink( ooaofooa_BP_BP *, ooaofooa_BP_EV * );
void ooaofooa_BP_EV_R3103_Link_has_set( ooaofooa_SM_EVT *, ooaofooa_BP_EV * );
void ooaofooa_BP_EV_R3103_Unlink_has_set( ooaofooa_SM_EVT *, ooaofooa_BP_EV * );


#define ooaofooa_BP_EV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_BP_EV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_BP_EV_CLASS_H */


