/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SDINP_class.h
 *
 * Class:       System Datatype in Package  (SLD_SDINP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SLD_SDINP_CLASS_H
#define OOAOFOOA_SLD_SDINP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   System Datatype in Package  (SLD_SDINP)
 */
struct ooaofooa_SLD_SDINP {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t Sys_ID;  

  /* relationship storage */
  ooaofooa_S_DPK * S_DPK_R4401_can_show_in_lower_package;
  ooaofooa_S_DT * S_DT_R4401_may_show;
  ooaofooa_S_SYS * S_SYS_R4402_is_datatype_in;
};
void ooaofooa_SLD_SDINP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SLD_SDINP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SLD_SDINP_batch_relate( Escher_iHandle_t );

void ooaofooa_SLD_SDINP_R4401_Link( ooaofooa_S_DPK *, ooaofooa_S_DT *, ooaofooa_SLD_SDINP * );
void ooaofooa_SLD_SDINP_R4401_Unlink( ooaofooa_S_DPK *, ooaofooa_S_DT *, ooaofooa_SLD_SDINP * );
void ooaofooa_SLD_SDINP_R4402_Link_is_system_of( ooaofooa_S_SYS *, ooaofooa_SLD_SDINP * );
void ooaofooa_SLD_SDINP_R4402_Unlink_is_system_of( ooaofooa_S_SYS *, ooaofooa_SLD_SDINP * );


#define ooaofooa_SLD_SDINP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SLD_SDINP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SLD_SDINP_CLASS_H */


