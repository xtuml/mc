/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_I_class.h
 *
 * Class:       Interface  (C_I)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_I_CLASS_H
#define OOAOFOOA_C_I_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface  (C_I)
 */
struct ooaofooa_C_I {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Package_ID;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  Escher_ObjectSet_s TE_PO_R2007;
  ooaofooa_TM_IF * TM_IF_R2807;
  Escher_ObjectSet_s C_EP_R4003_is_defined_by;
  Escher_ObjectSet_s C_IR_R4012_is_formal_definition;
  ooaofooa_IP_IP * IP_IP_R4303;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_C_I_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_I_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_I_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_I * ooaofooa_C_I_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_TE_PO_R2007_From_C_I( C_I ) ( &((C_I)->TE_PO_R2007) )
#define ooaofooa_C_EP_R4003_From_C_I_is_defined_by( C_I ) ( &((C_I)->C_EP_R4003_is_defined_by) )
#define ooaofooa_C_IR_R4012_From_C_I_is_formal_definition( C_I ) ( &((C_I)->C_IR_R4012_is_formal_definition) )
void ooaofooa_C_I_R4303_Link_contains( ooaofooa_IP_IP *, ooaofooa_C_I * );
void ooaofooa_C_I_R4303_Unlink_contains( ooaofooa_IP_IP *, ooaofooa_C_I * );
void ooaofooa_C_I_R8001_Link( ooaofooa_PE_PE *, ooaofooa_C_I * );
void ooaofooa_C_I_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_C_I * );


#define ooaofooa_C_I_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_I_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_I_CLASS_H */


