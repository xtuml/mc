/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_CIP_class.h
 *
 * Class:       Constant in Package  (CNST_CIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CNST_CIP_CLASS_H
#define OOAOFOOA_CNST_CIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Constant in Package  (CNST_CIP)
 */
struct ooaofooa_CNST_CIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Constant_Spec_ID;  
  Escher_UniqueID_t Package_ID;  

  /* relationship storage */
  ooaofooa_CNST_CSP * CNST_CSP_R1506_contains;
  ooaofooa_S_DPK * S_DPK_R1506_is_contained_in;
};
void ooaofooa_CNST_CIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CNST_CIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CNST_CIP_batch_relate( Escher_iHandle_t );

void ooaofooa_CNST_CIP_R1506_Link( ooaofooa_CNST_CSP *, ooaofooa_S_DPK *, ooaofooa_CNST_CIP * );
void ooaofooa_CNST_CIP_R1506_Unlink( ooaofooa_CNST_CSP *, ooaofooa_S_DPK *, ooaofooa_CNST_CIP * );


#define ooaofooa_CNST_CIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CNST_CIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CNST_CIP_CLASS_H */


