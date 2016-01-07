/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IOP_class.h
 *
 * Class:       Interface Operation Message  (MSG_IOP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_IOP_CLASS_H
#define OOAOFOOA_MSG_IOP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Operation Message  (MSG_IOP)
 */
struct ooaofooa_MSG_IOP {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_MSG_SM * MSG_SM_R1020;
  ooaofooa_C_IO * C_IO_R1022_sends;
};
void ooaofooa_MSG_IOP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_IOP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_IOP_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_IOP_R1020_Link( ooaofooa_MSG_SM *, ooaofooa_MSG_IOP * );
void ooaofooa_MSG_IOP_R1020_Unlink( ooaofooa_MSG_SM *, ooaofooa_MSG_IOP * );
void ooaofooa_MSG_IOP_R1022_Link_sent_by( ooaofooa_C_IO *, ooaofooa_MSG_IOP * );
void ooaofooa_MSG_IOP_R1022_Unlink_sent_by( ooaofooa_C_IO *, ooaofooa_MSG_IOP * );


#define ooaofooa_MSG_IOP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_IOP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_IOP_CLASS_H */


