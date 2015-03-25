/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_SQE_class.h
 *
 * Class:       Self Queue Entry  (I_SQE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_SQE_CLASS_H
#define OOAOFOOA_I_SQE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Self Queue Entry  (I_SQE)
 */
struct ooaofooa_I_SQE {

  /* application analysis class attributes */
  Escher_UniqueID_t Self_Queue_Entry_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Event_ID;  
  Escher_UniqueID_t Next_Self_Queue_Entry_ID;  

  /* relationship storage */
  ooaofooa_I_EXE * I_EXE_R2946;
  ooaofooa_I_EVI * I_EVI_R2946;
  ooaofooa_I_SQE * I_SQE_R2947_follows;
  ooaofooa_I_SQE * I_SQE_R2947_precedes;
};
void ooaofooa_I_SQE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_SQE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_SQE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_SQE * ooaofooa_I_SQE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_I_SQE_R2946_Link( ooaofooa_I_EXE *, ooaofooa_I_EVI *, ooaofooa_I_SQE * );
void ooaofooa_I_SQE_R2946_Unlink( ooaofooa_I_EXE *, ooaofooa_I_EVI *, ooaofooa_I_SQE * );
      
/*
 * R2947 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_SQE follows participant
 *  Participant I_SQE precedes formalizer
 */
/* Navigation phrase:  R2947.'follows' */
void ooaofooa_I_SQE_R2947_Link_follows( ooaofooa_I_SQE *, ooaofooa_I_SQE * );
void ooaofooa_I_SQE_R2947_Unlink_follows( ooaofooa_I_SQE *, ooaofooa_I_SQE * );
/* Navigation phrase:  R2947.'precedes' */
void ooaofooa_I_SQE_R2947_Link_precedes( ooaofooa_I_SQE *, ooaofooa_I_SQE * );
void ooaofooa_I_SQE_R2947_Unlink_precedes( ooaofooa_I_SQE *, ooaofooa_I_SQE * );


#define ooaofooa_I_SQE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_SQE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_SQE_CLASS_H */


