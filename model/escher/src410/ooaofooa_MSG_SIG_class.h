/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_SIG_class.h
 *
 * Class:       Signal Message  (MSG_SIG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_SIG_CLASS_H
#define OOAOFOOA_MSG_SIG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Signal Message  (MSG_SIG)
 */
struct ooaofooa_MSG_SIG {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_MSG_AM * MSG_AM_R1019;
  ooaofooa_C_AS * C_AS_R1021_sends;
};
void ooaofooa_MSG_SIG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_SIG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_SIG_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_SIG_R1019_Link( ooaofooa_MSG_AM *, ooaofooa_MSG_SIG * );
void ooaofooa_MSG_SIG_R1019_Unlink( ooaofooa_MSG_AM *, ooaofooa_MSG_SIG * );
void ooaofooa_MSG_SIG_R1021_Link_sent_by( ooaofooa_C_AS *, ooaofooa_MSG_SIG * );
void ooaofooa_MSG_SIG_R1021_Unlink_sent_by( ooaofooa_C_AS *, ooaofooa_MSG_SIG * );


#define ooaofooa_MSG_SIG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_SIG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_SIG_CLASS_H */


