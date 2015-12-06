/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_B_class.h
 *
 * Class:       Bridge Message  (MSG_B)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_B_CLASS_H
#define OOAOFOOA_MSG_B_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Message  (MSG_B)
 */
struct ooaofooa_MSG_B {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Brg_ID;  

  /* relationship storage */
  ooaofooa_S_BRG * S_BRG_R1012_is_invocation_of;
  ooaofooa_MSG_SM * MSG_SM_R1020;
};
void ooaofooa_MSG_B_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_B_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_B_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_B_R1012_Link_is_invoked_by( ooaofooa_S_BRG *, ooaofooa_MSG_B * );
void ooaofooa_MSG_B_R1012_Unlink_is_invoked_by( ooaofooa_S_BRG *, ooaofooa_MSG_B * );
void ooaofooa_MSG_B_R1020_Link( ooaofooa_MSG_SM *, ooaofooa_MSG_B * );
void ooaofooa_MSG_B_R1020_Unlink( ooaofooa_MSG_SM *, ooaofooa_MSG_B * );


#define ooaofooa_MSG_B_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_B_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_B_CLASS_H */


