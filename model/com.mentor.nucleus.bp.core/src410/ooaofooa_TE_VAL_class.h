/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_VAL_class.h
 *
 * Class:       Extended Value  (TE_VAL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_VAL_CLASS_H
#define OOAOFOOA_TE_VAL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Value  (TE_VAL)
 */
struct ooaofooa_TE_VAL {

  /* application analysis class attributes */
  c_t OAL[ESCHER_SYS_MAX_STRING_LEN];  
  c_t buffer[ESCHER_SYS_MAX_STRING_LEN];  
  i_t dimensions;  
  c_t array_spec[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t te_dimID;  
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R2040;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2070_starts;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2074_filters;
  ooaofooa_TE_DIM * TE_DIM_R2079;
};
void ooaofooa_TE_VAL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_VAL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_VAL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_VAL * ooaofooa_TE_VAL_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_VAL_R2040_Link( ooaofooa_V_VAL *, ooaofooa_TE_VAL * );
void ooaofooa_TE_VAL_R2040_Unlink( ooaofooa_V_VAL *, ooaofooa_TE_VAL * );
void ooaofooa_TE_VAL_R2079_Link( ooaofooa_TE_DIM *, ooaofooa_TE_VAL * );
void ooaofooa_TE_VAL_R2079_Unlink( ooaofooa_TE_DIM *, ooaofooa_TE_VAL * );


#define ooaofooa_TE_VAL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_VAL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_VAL_CLASS_H */


