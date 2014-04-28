/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_EQE_class.h
 *
 * Class:       Event Queue Entry  (I_EQE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_EQE_CLASS_H
#define OOAOFOOA_I_EQE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Queue Entry  (I_EQE)
 */
struct ooaofooa_I_EQE {

  /* application analysis class attributes */
  Escher_UniqueID_t Event_Queue_Entry_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Event_ID;  
  Escher_UniqueID_t Next_Event_Queue_Entry_ID;  

  /* relationship storage */
  ooaofooa_I_EXE * I_EXE_R2944;
  ooaofooa_I_EVI * I_EVI_R2944;
  ooaofooa_I_EQE * I_EQE_R2945_follows;
  ooaofooa_I_EQE * I_EQE_R2945_precedes;
};
void ooaofooa_I_EQE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_EQE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_EQE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_EQE * ooaofooa_I_EQE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_I_EQE_R2944_Link( ooaofooa_I_EXE *, ooaofooa_I_EVI *, ooaofooa_I_EQE * );
void ooaofooa_I_EQE_R2944_Unlink( ooaofooa_I_EXE *, ooaofooa_I_EVI *, ooaofooa_I_EQE * );
      
/*
 * R2945 is Simple Reflexive:  0..1:0..1
 *  Formalizing I_EQE follows participant
 *  Participant I_EQE precedes formalizer
 */
/* Navigation phrase:  R2945.'follows' */
void ooaofooa_I_EQE_R2945_Link_follows( ooaofooa_I_EQE *, ooaofooa_I_EQE * );
void ooaofooa_I_EQE_R2945_Unlink_follows( ooaofooa_I_EQE *, ooaofooa_I_EQE * );
/* Navigation phrase:  R2945.'precedes' */
void ooaofooa_I_EQE_R2945_Link_precedes( ooaofooa_I_EQE *, ooaofooa_I_EQE * );
void ooaofooa_I_EQE_R2945_Unlink_precedes( ooaofooa_I_EQE *, ooaofooa_I_EQE * );


#define ooaofooa_I_EQE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_EQE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_EQE_CLASS_H */


