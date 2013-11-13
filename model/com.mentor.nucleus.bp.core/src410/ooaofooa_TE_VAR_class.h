/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_VAR_class.h
 *
 * Class:       Extended Variable  (TE_VAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_VAR_CLASS_H
#define OOAOFOOA_TE_VAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Variable  (TE_VAR)
 */
struct ooaofooa_TE_VAR {

  /* application analysis class attributes */
  c_t OAL[ESCHER_SYS_MAX_STRING_LEN];  
  c_t buffer[ESCHER_SYS_MAX_STRING_LEN];  
  i_t dimensions;  
  Escher_UniqueID_t te_dimID;  
  c_t array_spec[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_V_VAR * V_VAR_R2039;
  ooaofooa_TE_DIM * TE_DIM_R2057_has_first;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2093_gets_result_of;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2094_holds_start_of;
};
void ooaofooa_TE_VAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_VAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_VAR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_VAR * ooaofooa_TE_VAR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_VAR_R2039_Link( ooaofooa_V_VAR *, ooaofooa_TE_VAR * );
void ooaofooa_TE_VAR_R2039_Unlink( ooaofooa_V_VAR *, ooaofooa_TE_VAR * );
void ooaofooa_TE_VAR_R2057_Link_diments( ooaofooa_TE_DIM *, ooaofooa_TE_VAR * );
void ooaofooa_TE_VAR_R2057_Unlink_diments( ooaofooa_TE_DIM *, ooaofooa_TE_VAR * );


#define ooaofooa_TE_VAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_VAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_VAR_CLASS_H */


