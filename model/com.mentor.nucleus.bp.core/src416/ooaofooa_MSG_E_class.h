/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_E_class.h
 *
 * Class:       Event Message  (MSG_E)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_E_CLASS_H
#define OOAOFOOA_MSG_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Message  (MSG_E)
 */
struct ooaofooa_MSG_E {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t SMevt_ID;  

  /* relationship storage */
  ooaofooa_SM_EVT * SM_EVT_R1009_generates;
  ooaofooa_MSG_AM * MSG_AM_R1019;
};
void ooaofooa_MSG_E_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_E_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_E_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_E_R1009_Link_is_generated_by( ooaofooa_SM_EVT *, ooaofooa_MSG_E * );
void ooaofooa_MSG_E_R1009_Unlink_is_generated_by( ooaofooa_SM_EVT *, ooaofooa_MSG_E * );
void ooaofooa_MSG_E_R1019_Link( ooaofooa_MSG_AM *, ooaofooa_MSG_E * );
void ooaofooa_MSG_E_R1019_Unlink( ooaofooa_MSG_AM *, ooaofooa_MSG_E * );


#define ooaofooa_MSG_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_E_CLASS_H */


