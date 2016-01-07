/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_ISM_class.h
 *
 * Class:       Informal Synchronous Message  (MSG_ISM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_ISM_CLASS_H
#define OOAOFOOA_MSG_ISM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Informal Synchronous Message  (MSG_ISM)
 */
struct ooaofooa_MSG_ISM {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  

  /* relationship storage */
  ooaofooa_MSG_SM * MSG_SM_R1020;
};
void ooaofooa_MSG_ISM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_ISM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_ISM_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_ISM_R1020_Link( ooaofooa_MSG_SM *, ooaofooa_MSG_ISM * );
void ooaofooa_MSG_ISM_R1020_Unlink( ooaofooa_MSG_SM *, ooaofooa_MSG_ISM * );


#define ooaofooa_MSG_ISM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_ISM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_ISM_CLASS_H */


