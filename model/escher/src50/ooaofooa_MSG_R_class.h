/*----------------------------------------------------------------------------
 * File:  ooaofooa_MSG_R_class.h
 *
 * Class:       Return Message  (MSG_R)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_MSG_R_CLASS_H
#define OOAOFOOA_MSG_R_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Return Message  (MSG_R)
 */
struct ooaofooa_MSG_R {

  /* application analysis class attributes */
  Escher_UniqueID_t Msg_ID;  
  c_t * Name;  
  c_t * Descrip;  
  c_t * GuardCondition;  
  c_t * ResultTarget;  
  c_t * ReturnValue;  
  c_t * SequenceNumb;  

  /* relationship storage */
  ooaofooa_MSG_M * MSG_M_R1018;
};
void ooaofooa_MSG_R_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_MSG_R_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_MSG_R_batch_relate( Escher_iHandle_t );

void ooaofooa_MSG_R_R1018_Link( ooaofooa_MSG_M *, ooaofooa_MSG_R * );
void ooaofooa_MSG_R_R1018_Unlink( ooaofooa_MSG_M *, ooaofooa_MSG_R * );


#define ooaofooa_MSG_R_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_MSG_R_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_MSG_R_CLASS_H */


