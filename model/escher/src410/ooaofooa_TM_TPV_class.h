/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TPV_class.h
 *
 * Class:       Template Parameter Value  (TM_TPV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_TPV_CLASS_H
#define OOAOFOOA_TM_TPV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Template Parameter Value  (TM_TPV)
 */
struct ooaofooa_TM_TPV {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t instance[ESCHER_SYS_MAX_STRING_LEN];  
  c_t value[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t tm_tpID;  
  Escher_UniqueID_t te_iirID;  
  Escher_UniqueID_t te_ciID;  

  /* relationship storage */
  ooaofooa_TE_CI * TE_CI_R2805;
  ooaofooa_TE_IIR * TE_IIR_R2806;
  ooaofooa_TM_TP * TM_TP_R2808;
};
void ooaofooa_TM_TPV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_TPV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TM_TPV_batch_relate( Escher_iHandle_t );

void ooaofooa_TM_TPV_R2805_Link( ooaofooa_TE_CI *, ooaofooa_TM_TPV * );
void ooaofooa_TM_TPV_R2805_Unlink( ooaofooa_TE_CI *, ooaofooa_TM_TPV * );
void ooaofooa_TM_TPV_R2806_Link( ooaofooa_TE_IIR *, ooaofooa_TM_TPV * );
void ooaofooa_TM_TPV_R2806_Unlink( ooaofooa_TE_IIR *, ooaofooa_TM_TPV * );
void ooaofooa_TM_TPV_R2808_Link_has_value( ooaofooa_TM_TP *, ooaofooa_TM_TPV * );
void ooaofooa_TM_TPV_R2808_Unlink_has_value( ooaofooa_TM_TP *, ooaofooa_TM_TPV * );


#define ooaofooa_TM_TPV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_TPV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_TPV_CLASS_H */


