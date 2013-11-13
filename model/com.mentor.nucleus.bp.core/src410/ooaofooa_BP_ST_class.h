/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_ST_class.h
 *
 * Class:       State Breakpoint  (BP_ST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_BP_ST_CLASS_H
#define OOAOFOOA_BP_ST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   State Breakpoint  (BP_ST)
 */
struct ooaofooa_BP_ST {

  /* application analysis class attributes */
  Escher_UniqueID_t Breakpoint_ID;  
  bool onEntry;  
  bool onExit;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  

  /* relationship storage */
  ooaofooa_BP_BP * BP_BP_R3102;
  ooaofooa_SM_STATE * SM_STATE_R3104_is_set_on;
};
void ooaofooa_BP_ST_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_BP_ST_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_BP_ST_batch_relate( Escher_iHandle_t );

void ooaofooa_BP_ST_R3102_Link( ooaofooa_BP_BP *, ooaofooa_BP_ST * );
void ooaofooa_BP_ST_R3102_Unlink( ooaofooa_BP_BP *, ooaofooa_BP_ST * );
void ooaofooa_BP_ST_R3104_Link_has_set( ooaofooa_SM_STATE *, ooaofooa_BP_ST * );
void ooaofooa_BP_ST_R3104_Unlink_has_set( ooaofooa_SM_STATE *, ooaofooa_BP_ST * );


#define ooaofooa_BP_ST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_BP_ST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_BP_ST_CLASS_H */


