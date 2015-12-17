/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_IR_class.h
 *
 * Class:       Interface Reference  (C_IR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_IR_CLASS_H
#define OOAOFOOA_C_IR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Reference  (C_IR)
 */
struct ooaofooa_C_IR {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Formal_Interface_Id;  
  Escher_UniqueID_t Delegation_Id;  
  Escher_UniqueID_t Port_Id;  

  /* relationship storage */
  ooaofooa_TE_IIR * TE_IIR_R2046;
  void * R4009_subtype;
  Escher_ClassNumber_t R4009_object_id;
  ooaofooa_C_I * C_I_R4012_may_be_defined_by;
  Escher_ObjectSet_s C_RID_R4013;
  ooaofooa_C_DG * C_DG_R4014_receives_delegation_via;
  ooaofooa_C_PO * C_PO_R4016_originates_from;
  Escher_ObjectSet_s CL_IIR_R4701_is_imported;
};
void ooaofooa_C_IR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_IR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_IR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_IR * ooaofooa_C_IR_AnyWhere1( Escher_UniqueID_t );


/* Accessors to C_IR[R4009] subtypes */
#define ooaofooa_C_R_R4009_From_C_IR( C_IR ) \
   ( (((C_IR)->R4009_object_id) == ooaofooa_C_R_CLASS_NUMBER) ? \
     ((ooaofooa_C_R *)((C_IR)->R4009_subtype)) : (0) )
#define ooaofooa_C_P_R4009_From_C_IR( C_IR ) \
   ( (((C_IR)->R4009_object_id) == ooaofooa_C_P_CLASS_NUMBER) ? \
     ((ooaofooa_C_P *)((C_IR)->R4009_subtype)) : (0) )

void ooaofooa_C_IR_R4012_Link_is_formal_definition( ooaofooa_C_I *, ooaofooa_C_IR * );
void ooaofooa_C_IR_R4012_Unlink_is_formal_definition( ooaofooa_C_I *, ooaofooa_C_IR * );
#define ooaofooa_C_RID_R4013_From_C_IR( C_IR ) ( &((C_IR)->C_RID_R4013) )
void ooaofooa_C_IR_R4014_Link_provides_delegation_to( ooaofooa_C_DG *, ooaofooa_C_IR * );
void ooaofooa_C_IR_R4014_Unlink_provides_delegation_to( ooaofooa_C_DG *, ooaofooa_C_IR * );
void ooaofooa_C_IR_R4016_Link_exposes( ooaofooa_C_PO *, ooaofooa_C_IR * );
void ooaofooa_C_IR_R4016_Unlink_exposes( ooaofooa_C_PO *, ooaofooa_C_IR * );
#define ooaofooa_CL_IIR_R4701_From_C_IR_is_imported( C_IR ) ( &((C_IR)->CL_IIR_R4701_is_imported) )


#define ooaofooa_C_IR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_IR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_IR_CLASS_H */


