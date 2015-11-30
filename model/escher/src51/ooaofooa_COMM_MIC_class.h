/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_MIC_class.h
 *
 * Class:       Message in Communication  (COMM_MIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_COMM_MIC_CLASS_H
#define OOAOFOOA_COMM_MIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message in Communication  (COMM_MIC)
 */
struct ooaofooa_COMM_MIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Msg_ID;  

  /* relationship storage */
  ooaofooa_COMM_COMM * COMM_COMM_R1135_can_be_displayed_in;
  ooaofooa_MSG_M * MSG_M_R1135_may_display;
};
void ooaofooa_COMM_MIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_COMM_MIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_COMM_MIC_batch_relate( Escher_iHandle_t );

void ooaofooa_COMM_MIC_R1135_Link( ooaofooa_COMM_COMM *, ooaofooa_MSG_M *, ooaofooa_COMM_MIC * );
void ooaofooa_COMM_MIC_R1135_Unlink( ooaofooa_COMM_COMM *, ooaofooa_MSG_M *, ooaofooa_COMM_MIC * );


#define ooaofooa_COMM_MIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_COMM_MIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_COMM_MIC_CLASS_H */


