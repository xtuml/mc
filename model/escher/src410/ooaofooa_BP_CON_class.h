/*----------------------------------------------------------------------------
 * File:  ooaofooa_BP_CON_class.h
 *
 * Class:       Condition  (BP_CON)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_BP_CON_CLASS_H
#define OOAOFOOA_BP_CON_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Condition  (BP_CON)
 */
struct ooaofooa_BP_CON {

  /* application analysis class attributes */
  Escher_UniqueID_t Breakpoint_ID;  
  c_t Expression[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_BP_BP * BP_BP_R3100_sets_halt_criteria_for;
};
void ooaofooa_BP_CON_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_BP_CON_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_BP_CON_batch_relate( Escher_iHandle_t );

void ooaofooa_BP_CON_R3100_Link_halts_based_on( ooaofooa_BP_BP *, ooaofooa_BP_CON * );
void ooaofooa_BP_CON_R3100_Unlink_halts_based_on( ooaofooa_BP_BP *, ooaofooa_BP_CON * );


#define ooaofooa_BP_CON_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_BP_CON_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_BP_CON_CLASS_H */


