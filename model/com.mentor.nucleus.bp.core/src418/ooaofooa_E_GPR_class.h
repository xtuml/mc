/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GPR_class.h
 *
 * Class:       Generate Preexisting Event  (E_GPR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GPR_CLASS_H
#define OOAOFOOA_E_GPR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate Preexisting Event  (E_GPR)
 */
struct ooaofooa_E_GPR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  ooaofooa_V_VAL * V_VAL_R714_generates_event_held_by;
};
void ooaofooa_E_GPR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GPR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GPR_batch_relate( Escher_iHandle_t );

void ooaofooa_E_GPR_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_E_GPR * );
void ooaofooa_E_GPR_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_E_GPR * );
void ooaofooa_E_GPR_R714_Link_holds_event_to_be_generated_by( ooaofooa_V_VAL *, ooaofooa_E_GPR * );
void ooaofooa_E_GPR_R714_Unlink_holds_event_to_be_generated_by( ooaofooa_V_VAL *, ooaofooa_E_GPR * );


#define ooaofooa_E_GPR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GPR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GPR_CLASS_H */


