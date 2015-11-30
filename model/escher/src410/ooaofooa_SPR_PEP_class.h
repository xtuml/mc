/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_PEP_class.h
 *
 * Class:       Provided Executable Property  (SPR_PEP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_PEP_CLASS_H
#define OOAOFOOA_SPR_PEP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Provided Executable Property  (SPR_PEP)
 */
struct ooaofooa_SPR_PEP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t ExecutableProperty_Id;  
  Escher_UniqueID_t Provision_Id;  

  /* relationship storage */
  Escher_ObjectSet_s V_MSV_R841;
  ooaofooa_C_EP * C_EP_R4501_implements;
  ooaofooa_C_P * C_P_R4501_is_implemented_by;
  void * R4503_subtype;
  Escher_ClassNumber_t R4503_object_id;
};
void ooaofooa_SPR_PEP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_PEP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_PEP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_PEP * ooaofooa_SPR_PEP_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_V_MSV_R841_From_SPR_PEP( SPR_PEP ) ( &((SPR_PEP)->V_MSV_R841) )
void ooaofooa_SPR_PEP_R4501_Link( ooaofooa_C_EP *, ooaofooa_C_P *, ooaofooa_SPR_PEP * );
void ooaofooa_SPR_PEP_R4501_Unlink( ooaofooa_C_EP *, ooaofooa_C_P *, ooaofooa_SPR_PEP * );

/* Accessors to SPR_PEP[R4503] subtypes */
#define ooaofooa_SPR_PO_R4503_From_SPR_PEP( SPR_PEP ) \
   ( (((SPR_PEP)->R4503_object_id) == ooaofooa_SPR_PO_CLASS_NUMBER) ? \
     ((ooaofooa_SPR_PO *)((SPR_PEP)->R4503_subtype)) : (0) )
#define ooaofooa_SPR_PS_R4503_From_SPR_PEP( SPR_PEP ) \
   ( (((SPR_PEP)->R4503_object_id) == ooaofooa_SPR_PS_CLASS_NUMBER) ? \
     ((ooaofooa_SPR_PS *)((SPR_PEP)->R4503_subtype)) : (0) )



#define ooaofooa_SPR_PEP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_PEP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_PEP_CLASS_H */


