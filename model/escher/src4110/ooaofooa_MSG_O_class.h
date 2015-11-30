/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_O_class.h
 *
 * Class:       Operation Message  (MSG_O)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_O_CLASS_H
#define OOAOFOOA_MSG_O_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Message  (MSG_O)
 */
struct ooaofooa_MSG_O {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Tfr_ID;  

  /* relationship storage */
  ooaofooa_O_TFR * O_TFR_R1011_is_invocation_of;
  ooaofooa_MSG_SM * MSG_SM_R1020;
};
void ooaofooa_MSG_O_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_O_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_O_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_O_R1011_Link_is_invoked_by( ooaofooa_O_TFR *, ooaofooa_MSG_O * );
void ooaofooa_MSG_O_R1011_Unlink_is_invoked_by( ooaofooa_O_TFR *, ooaofooa_MSG_O * );
void ooaofooa_MSG_O_R1020_Link( ooaofooa_MSG_SM *, ooaofooa_MSG_O * );
void ooaofooa_MSG_O_R1020_Unlink( ooaofooa_MSG_SM *, ooaofooa_MSG_O * );


#define ooaofooa_MSG_O_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_O_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_O_CLASS_H */


