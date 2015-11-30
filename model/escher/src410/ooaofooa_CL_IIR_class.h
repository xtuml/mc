/*----------------------------------------------------------------------------
 * File:  ooaofooa_CL_IIR_class.h
 *
 * Class:       Imported Reference  (CL_IIR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CL_IIR_CLASS_H
#define OOAOFOOA_CL_IIR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Imported Reference  (CL_IIR)
 */
struct ooaofooa_CL_IIR {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Ref_Id;  
  Escher_UniqueID_t ImportedComp_Id;  
  Escher_UniqueID_t Delegation_Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_TE_IIR * TE_IIR_R2013;
  ooaofooa_CL_IC * CL_IC_R4700_originates_from;
  ooaofooa_C_IR * C_IR_R4701_imports;
  void * R4703_subtype;
  Escher_ClassNumber_t R4703_object_id;
  ooaofooa_C_DG * C_DG_R4704_accepts_communication_through;
};
void ooaofooa_CL_IIR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CL_IIR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CL_IIR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CL_IIR * ooaofooa_CL_IIR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CL_IIR_R4700_Link_communicates_through( ooaofooa_CL_IC *, ooaofooa_CL_IIR * );
void ooaofooa_CL_IIR_R4700_Unlink_communicates_through( ooaofooa_CL_IC *, ooaofooa_CL_IIR * );
void ooaofooa_CL_IIR_R4701_Link_is_imported( ooaofooa_C_IR *, ooaofooa_CL_IIR * );
void ooaofooa_CL_IIR_R4701_Unlink_is_imported( ooaofooa_C_IR *, ooaofooa_CL_IIR * );

/* Accessors to CL_IIR[R4703] subtypes */
#define ooaofooa_CL_IP_R4703_From_CL_IIR( CL_IIR ) \
   ( (((CL_IIR)->R4703_object_id) == ooaofooa_CL_IP_CLASS_NUMBER) ? \
     ((ooaofooa_CL_IP *)((CL_IIR)->R4703_subtype)) : (0) )
#define ooaofooa_CL_IR_R4703_From_CL_IIR( CL_IIR ) \
   ( (((CL_IIR)->R4703_object_id) == ooaofooa_CL_IR_CLASS_NUMBER) ? \
     ((ooaofooa_CL_IR *)((CL_IIR)->R4703_subtype)) : (0) )

void ooaofooa_CL_IIR_R4704_Link_delivers_communication_through( ooaofooa_C_DG *, ooaofooa_CL_IIR * );
void ooaofooa_CL_IIR_R4704_Unlink_delivers_communication_through( ooaofooa_C_DG *, ooaofooa_CL_IIR * );


#define ooaofooa_CL_IIR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CL_IIR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CL_IIR_CLASS_H */


