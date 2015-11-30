/*----------------------------------------------------------------------------
 * File:  ooaofooa_SLD_SDP_class.h
 *
 * Class:       System Datatype Package  (SLD_SDP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SLD_SDP_CLASS_H
#define OOAOFOOA_SLD_SDP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   System Datatype Package  (SLD_SDP)
 */
struct ooaofooa_SLD_SDP {

  /* application analysis class attributes */
  Escher_UniqueID_t Sys_ID;  
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_S_SYS * S_SYS_R4400_is_contained_in;
  ooaofooa_S_DPK * S_DPK_R4400_contains;
};
void ooaofooa_SLD_SDP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SLD_SDP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SLD_SDP_batch_relate( Escher_iHandle_t );

void ooaofooa_SLD_SDP_R4400_Link( ooaofooa_S_SYS *, ooaofooa_S_DPK *, ooaofooa_SLD_SDP * );
void ooaofooa_SLD_SDP_R4400_Unlink( ooaofooa_S_SYS *, ooaofooa_S_DPK *, ooaofooa_SLD_SDP * );


#define ooaofooa_SLD_SDP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SLD_SDP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SLD_SDP_CLASS_H */


