/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_IAM_class.h
 *
 * Class:       Informal Asynchronous Message  (MSG_IAM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_IAM_CLASS_H
#define OOAOFOOA_MSG_IAM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Informal Asynchronous Message  (MSG_IAM)
 */
struct ooaofooa_MSG_IAM {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  

  /* relationship storage */
  ooaofooa_MSG_AM * MSG_AM_R1019;
};
void ooaofooa_MSG_IAM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_IAM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_IAM_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_IAM_R1019_Link( ooaofooa_MSG_AM *, ooaofooa_MSG_IAM * );
void ooaofooa_MSG_IAM_R1019_Unlink( ooaofooa_MSG_AM *, ooaofooa_MSG_IAM * );


#define ooaofooa_MSG_IAM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_IAM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_IAM_CLASS_H */


