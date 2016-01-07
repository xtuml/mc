/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CI_class.h
 *
 * Class:       Component Instance  (TE_CI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CI_CLASS_H
#define OOAOFOOA_TE_CI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Instance  (TE_CI)
 */
struct ooaofooa_TE_CI {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * Name;  
  c_t * ClassifierName;  
  c_t * template_parameter_values;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t cl_icId;  

  /* relationship storage */
  ooaofooa_TE_C * TE_C_R2008;
  ooaofooa_CL_IC * CL_IC_R2009;
  Escher_ObjectSet_s TM_TPV_R2805;
};
void ooaofooa_TE_CI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_CI * ooaofooa_TE_CI_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_CI_R2008_Link( ooaofooa_TE_C *, ooaofooa_TE_CI * );
void ooaofooa_TE_CI_R2008_Unlink( ooaofooa_TE_C *, ooaofooa_TE_CI * );
void ooaofooa_TE_CI_R2009_Link( ooaofooa_CL_IC *, ooaofooa_TE_CI * );
void ooaofooa_TE_CI_R2009_Unlink( ooaofooa_CL_IC *, ooaofooa_TE_CI * );
#define ooaofooa_TM_TPV_R2805_From_TE_CI( TE_CI ) ( &((TE_CI)->TM_TPV_R2805) )
/* Note:  TE_CI->TM_TPV[R2805] not navigated */


#define ooaofooa_TE_CI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CI_CLASS_H */


