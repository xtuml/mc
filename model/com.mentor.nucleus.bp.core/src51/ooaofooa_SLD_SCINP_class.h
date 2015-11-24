/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SCINP_class.h
 *
 * Class:       System Constant in Package  (SLD_SCINP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SLD_SCINP_CLASS_H
#define OOAOFOOA_SLD_SCINP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   System Constant in Package  (SLD_SCINP)
 */
struct ooaofooa_SLD_SCINP {

  /* application analysis class attributes */
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t Constant_Spec_ID;  

  /* relationship storage */
  ooaofooa_S_DPK * S_DPK_R4403_can_show_in_lower_package;
  ooaofooa_CNST_CSP * CNST_CSP_R4403_may_show;
  ooaofooa_S_SYS * S_SYS_R4404_is_constant_in;
};
void ooaofooa_SLD_SCINP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SLD_SCINP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SLD_SCINP_batch_relate( Escher_iHandle_t );

void ooaofooa_SLD_SCINP_R4403_Link( ooaofooa_S_DPK *, ooaofooa_CNST_CSP *, ooaofooa_SLD_SCINP * );
void ooaofooa_SLD_SCINP_R4403_Unlink( ooaofooa_S_DPK *, ooaofooa_CNST_CSP *, ooaofooa_SLD_SCINP * );
void ooaofooa_SLD_SCINP_R4404_Link_is_system_of( ooaofooa_S_SYS *, ooaofooa_SLD_SCINP * );
void ooaofooa_SLD_SCINP_R4404_Unlink_is_system_of( ooaofooa_S_SYS *, ooaofooa_SLD_SCINP * );


#define ooaofooa_SLD_SCINP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SLD_SCINP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SLD_SCINP_CLASS_H */


