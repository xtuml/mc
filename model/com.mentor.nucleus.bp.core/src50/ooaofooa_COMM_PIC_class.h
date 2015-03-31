/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_PIC_class.h
 *
 * Class:       Participant in Communication  (COMM_PIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_COMM_PIC_CLASS_H
#define OOAOFOOA_COMM_PIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Participant in Communication  (COMM_PIC)
 */
struct ooaofooa_COMM_PIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Part_ID;  

  /* relationship storage */
  ooaofooa_COMM_COMM * COMM_COMM_R1126_is_displayed_in;
  ooaofooa_SQ_P * SQ_P_R1126_can_display;
};
void ooaofooa_COMM_PIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_COMM_PIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_COMM_PIC_batch_relate( Escher_iHandle_t );

void ooaofooa_COMM_PIC_R1126_Link( ooaofooa_COMM_COMM *, ooaofooa_SQ_P *, ooaofooa_COMM_PIC * );
void ooaofooa_COMM_PIC_R1126_Unlink( ooaofooa_COMM_COMM *, ooaofooa_SQ_P *, ooaofooa_COMM_PIC * );


#define ooaofooa_COMM_PIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_COMM_PIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_COMM_PIC_CLASS_H */


