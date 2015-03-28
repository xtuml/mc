/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_TFM_class.h
 *
 * Class:       Operation Invocation  (ACT_TFM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_TFM_CLASS_H
#define OOAOFOOA_ACT_TFM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Invocation  (ACT_TFM)
 */
struct ooaofooa_ACT_TFM {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Tfr_ID;  
  Escher_UniqueID_t Var_ID;  
  i_t operationNameLineNumber;  
  i_t operationNameColumn;  
  i_t modelClassKeyLettersLineNumber;  
  i_t modelClassKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  Escher_ObjectSet_s V_PAR_R627_takes;
  ooaofooa_V_VAR * V_VAR_R667_has_target;
  ooaofooa_O_TFR * O_TFR_R673_is_an_invocation_of;
};
void ooaofooa_ACT_TFM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_TFM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_TFM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_TFM * ooaofooa_ACT_TFM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_TFM_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_TFM * );
void ooaofooa_ACT_TFM_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_TFM * );
#define ooaofooa_V_PAR_R627_From_ACT_TFM_takes( ACT_TFM ) ( &((ACT_TFM)->V_PAR_R627_takes) )
void ooaofooa_ACT_TFM_R667_Link_is_target_of( ooaofooa_V_VAR *, ooaofooa_ACT_TFM * );
void ooaofooa_ACT_TFM_R667_Unlink_is_target_of( ooaofooa_V_VAR *, ooaofooa_ACT_TFM * );
void ooaofooa_ACT_TFM_R673_Link( ooaofooa_O_TFR *, ooaofooa_ACT_TFM * );
void ooaofooa_ACT_TFM_R673_Unlink( ooaofooa_O_TFR *, ooaofooa_ACT_TFM * );


#define ooaofooa_ACT_TFM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_TFM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_TFM_CLASS_H */


