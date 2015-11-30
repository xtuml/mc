/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_EA_class.h
 *
 * Class:       Event Argument  (MSG_EA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_EA_CLASS_H
#define OOAOFOOA_MSG_EA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Argument  (MSG_EA)
 */
struct ooaofooa_MSG_EA {

  /* application analysis class attributes */
  Escher_UniqueID_t Arg_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMedi_ID;  

  /* relationship storage */
  ooaofooa_MSG_A * MSG_A_R1013;
  ooaofooa_SM_EVTDI * SM_EVTDI_R1017_is_represented_by;
};
void ooaofooa_MSG_EA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_EA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_EA_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_EA_R1013_Link( ooaofooa_MSG_A *, ooaofooa_MSG_EA * );
void ooaofooa_MSG_EA_R1013_Unlink( ooaofooa_MSG_A *, ooaofooa_MSG_EA * );
void ooaofooa_MSG_EA_R1017_Link_represents( ooaofooa_SM_EVTDI *, ooaofooa_MSG_EA * );
void ooaofooa_MSG_EA_R1017_Unlink_represents( ooaofooa_SM_EVTDI *, ooaofooa_MSG_EA * );


#define ooaofooa_MSG_EA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_EA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_EA_CLASS_H */


