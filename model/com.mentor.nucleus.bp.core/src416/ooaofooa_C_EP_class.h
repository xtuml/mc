/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_EP_class.h
 *
 * Class:       Executable Property  (C_EP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_EP_CLASS_H
#define OOAOFOOA_C_EP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Executable Property  (C_EP)
 */
struct ooaofooa_C_EP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Interface_Id;  
  sys_IFDirectionType_t Direction;  
  c_t * Name;  
  c_t * Descrip;  

  /* relationship storage */
  ooaofooa_C_I * C_I_R4003_provides_signature_of;
  void * R4004_subtype;
  Escher_ClassNumber_t R4004_object_id;
  Escher_ObjectSet_s C_PP_R4006_is_parameter_to;
  Escher_ObjectSet_s SPR_REP_R4500;
  Escher_ObjectSet_s SPR_PEP_R4501;
};
void ooaofooa_C_EP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_EP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_EP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_EP * ooaofooa_C_EP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_C_EP_R4003_Link_is_defined_by( ooaofooa_C_I *, ooaofooa_C_EP * );
void ooaofooa_C_EP_R4003_Unlink_is_defined_by( ooaofooa_C_I *, ooaofooa_C_EP * );

/* Accessors to C_EP[R4004] subtypes */
#define ooaofooa_C_IO_R4004_From_C_EP( C_EP ) \
   ( (((C_EP)->R4004_object_id) == ooaofooa_C_IO_CLASS_NUMBER) ? \
     ((ooaofooa_C_IO *)((C_EP)->R4004_subtype)) : (0) )
#define ooaofooa_C_AS_R4004_From_C_EP( C_EP ) \
   ( (((C_EP)->R4004_object_id) == ooaofooa_C_AS_CLASS_NUMBER) ? \
     ((ooaofooa_C_AS *)((C_EP)->R4004_subtype)) : (0) )

#define ooaofooa_C_PP_R4006_From_C_EP_is_parameter_to( C_EP ) ( &((C_EP)->C_PP_R4006_is_parameter_to) )
#define ooaofooa_SPR_REP_R4500_From_C_EP( C_EP ) ( &((C_EP)->SPR_REP_R4500) )
#define ooaofooa_SPR_PEP_R4501_From_C_EP( C_EP ) ( &((C_EP)->SPR_PEP_R4501) )


#define ooaofooa_C_EP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_EP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_EP_CLASS_H */


