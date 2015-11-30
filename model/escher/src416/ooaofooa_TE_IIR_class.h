/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_IIR_class.h
 *
 * Class:       Interface Instance  (TE_IIR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_IIR_CLASS_H
#define OOAOFOOA_TE_IIR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Instance  (TE_IIR)
 */
struct ooaofooa_TE_IIR {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * component_name;  
  c_t * port_name;  
  c_t * interface_name;  
  bool polymorphic;  
  c_t * template_parameter_values;  
  c_t * C2C;  
  Escher_UniqueID_t cl_iirId;  
  Escher_UniqueID_t c_irId;  
  Escher_UniqueID_t te_poID;  
  Escher_UniqueID_t provider_te_iirID;  

  /* relationship storage */
  ooaofooa_CL_IIR * CL_IIR_R2013;
  ooaofooa_C_IR * C_IR_R2046;
  ooaofooa_TE_PO * TE_PO_R2080;
  ooaofooa_TE_IIR * TE_IIR_R2081_requires_or_delegates;
  Escher_ObjectSet_s TE_IIR_R2081_provides_or_is_delegated;
  Escher_ObjectSet_s TM_TPV_R2806;
};
void ooaofooa_TE_IIR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_IIR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_IIR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_IIR * ooaofooa_TE_IIR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_IIR_R2013_Link( ooaofooa_CL_IIR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2013_Unlink( ooaofooa_CL_IIR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2046_Link( ooaofooa_C_IR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2046_Unlink( ooaofooa_C_IR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2080_Link( ooaofooa_TE_PO *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2080_Unlink( ooaofooa_TE_PO *, ooaofooa_TE_IIR * );
      
/*
 * R2081 is Simple Reflexive:  0..1:*
 * Note:  Reflexive association is asymmetric.
 *  Formalizing TE_IIR requires or delegates participant
 *  Participant TE_IIR provides or is delegated formalizer
 */
/* Navigation phrase:  R2081.'requires or delegates' */
void ooaofooa_TE_IIR_R2081_Link_requires_or_delegates( ooaofooa_TE_IIR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2081_Unlink_requires_or_delegates( ooaofooa_TE_IIR *, ooaofooa_TE_IIR * );
/* Navigation phrase:  R2081.'provides or is delegated' */
void ooaofooa_TE_IIR_R2081_Link_provides_or_is_delegated( ooaofooa_TE_IIR *, ooaofooa_TE_IIR * );
void ooaofooa_TE_IIR_R2081_Unlink_provides_or_is_delegated( ooaofooa_TE_IIR *, ooaofooa_TE_IIR * );
#define ooaofooa_TE_IIR_R2081_From_TE_IIR_provides_or_is_delegated( TE_IIR ) ( &((TE_IIR)->TE_IIR_R2081_provides_or_is_delegated) )
#define ooaofooa_TM_TPV_R2806_From_TE_IIR( TE_IIR ) ( &((TE_IIR)->TM_TPV_R2806) )


#define ooaofooa_TE_IIR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_IIR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_IIR_CLASS_H */


