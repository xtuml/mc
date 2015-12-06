/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_ICQE_class.h
 *
 * Class:       Intercomponent Queue Entry  (I_ICQE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_ICQE_CLASS_H
#define OOAOFOOA_I_ICQE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Intercomponent Queue Entry  (I_ICQE)
 */
struct ooaofooa_I_ICQE {

  /* application analysis class attributes */
  Escher_UniqueID_t Stack_ID;  
  Escher_UniqueID_t Stack_Frame_ID;  
  Escher_UniqueID_t Execution_Engine_ID;  

  /* relationship storage */
  ooaofooa_I_STACK * I_STACK_R2966_is_enqueued_with;
  ooaofooa_I_STF * I_STF_R2966_has_queued;
  ooaofooa_I_EXE * I_EXE_R2977_enqueued_by;
};
void ooaofooa_I_ICQE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_ICQE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_ICQE_batch_relate( Escher_iHandle_t );

void ooaofooa_I_ICQE_R2966_Link( ooaofooa_I_STACK *, ooaofooa_I_STF *, ooaofooa_I_ICQE * );
void ooaofooa_I_ICQE_R2966_Unlink( ooaofooa_I_STACK *, ooaofooa_I_STF *, ooaofooa_I_ICQE * );
void ooaofooa_I_ICQE_R2977_Link( ooaofooa_I_EXE *, ooaofooa_I_ICQE * );
void ooaofooa_I_ICQE_R2977_Unlink( ooaofooa_I_EXE *, ooaofooa_I_ICQE * );


#define ooaofooa_I_ICQE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_ICQE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_ICQE_CLASS_H */


