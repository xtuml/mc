/*----------------------------------------------------------------------------
 * File:  ooaofooa_IA_UCP_class.h
 *
 * Class:       Use Case Participant  (IA_UCP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_IA_UCP_CLASS_H
#define OOAOFOOA_IA_UCP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Use Case Participant  (IA_UCP)
 */
struct ooaofooa_IA_UCP {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
};
void ooaofooa_IA_UCP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_IA_UCP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_IA_UCP_batch_relate( Escher_iHandle_t );

void ooaofooa_IA_UCP_R930_Link( ooaofooa_SQ_P *, ooaofooa_IA_UCP * );
void ooaofooa_IA_UCP_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_IA_UCP * );


#define ooaofooa_IA_UCP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_IA_UCP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_IA_UCP_CLASS_H */


