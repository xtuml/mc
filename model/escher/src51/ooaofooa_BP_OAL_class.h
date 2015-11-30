/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_OAL_class.h
 *
 * Class:       OAL Breakpoint  (BP_OAL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_BP_OAL_CLASS_H
#define OOAOFOOA_BP_OAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL Breakpoint  (BP_OAL)
 */
struct ooaofooa_BP_OAL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Breakpoint_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R3101_is_set_on_a;
  ooaofooa_BP_BP * BP_BP_R3102;
};
void ooaofooa_BP_OAL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_BP_OAL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_BP_OAL_batch_relate( Escher_iHandle_t );

void ooaofooa_BP_OAL_R3101_Link( ooaofooa_ACT_SMT *, ooaofooa_BP_OAL * );
void ooaofooa_BP_OAL_R3101_Unlink( ooaofooa_ACT_SMT *, ooaofooa_BP_OAL * );
void ooaofooa_BP_OAL_R3102_Link( ooaofooa_BP_BP *, ooaofooa_BP_OAL * );
void ooaofooa_BP_OAL_R3102_Unlink( ooaofooa_BP_BP *, ooaofooa_BP_OAL * );


#define ooaofooa_BP_OAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_BP_OAL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_BP_OAL_CLASS_H */


