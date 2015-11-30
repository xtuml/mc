/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_F_class.h
 *
 * Class:       Function Message  (MSG_F)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_F_CLASS_H
#define OOAOFOOA_MSG_F_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Message  (MSG_F)
 */
struct ooaofooa_MSG_F {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Sync_ID;  

  /* relationship storage */
  ooaofooa_S_SYNC * S_SYNC_R1010_is_invocation_of;
  ooaofooa_MSG_SM * MSG_SM_R1020;
};
void ooaofooa_MSG_F_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_F_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_F_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_F_R1010_Link_is_invoked_by( ooaofooa_S_SYNC *, ooaofooa_MSG_F * );
void ooaofooa_MSG_F_R1010_Unlink_is_invoked_by( ooaofooa_S_SYNC *, ooaofooa_MSG_F * );
void ooaofooa_MSG_F_R1020_Link( ooaofooa_MSG_SM *, ooaofooa_MSG_F * );
void ooaofooa_MSG_F_R1020_Unlink( ooaofooa_MSG_SM *, ooaofooa_MSG_F * );


#define ooaofooa_MSG_F_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_F_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_F_CLASS_H */


