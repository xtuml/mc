/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PO_class.h
 *
 * Class:       Extended Port  (TE_PO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_PO_CLASS_H
#define OOAOFOOA_TE_PO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Port  (TE_PO)
 */
struct ooaofooa_TE_PO {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t InterfaceName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t PackageName[ESCHER_SYS_MAX_STRING_LEN];  
  bool Provision;  
  bool polymorphic;  
  i_t sibling;  
  i_t Order;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t c_iId;  
  Escher_UniqueID_t c_poId;  

  /* relationship storage */
  ooaofooa_TE_C * TE_C_R2005;
  Escher_ObjectSet_s TE_MACT_R2006;
  ooaofooa_C_I * C_I_R2007;
  ooaofooa_C_PO * C_PO_R2044;
  Escher_ObjectSet_s TE_IIR_R2080;
};
void ooaofooa_TE_PO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_PO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_PO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_PO * ooaofooa_TE_PO_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_PO_R2005_Link( ooaofooa_TE_C *, ooaofooa_TE_PO * );
void ooaofooa_TE_PO_R2005_Unlink( ooaofooa_TE_C *, ooaofooa_TE_PO * );
#define ooaofooa_TE_MACT_R2006_From_TE_PO( TE_PO ) ( &((TE_PO)->TE_MACT_R2006) )
void ooaofooa_TE_PO_R2007_Link( ooaofooa_C_I *, ooaofooa_TE_PO * );
void ooaofooa_TE_PO_R2007_Unlink( ooaofooa_C_I *, ooaofooa_TE_PO * );
void ooaofooa_TE_PO_R2044_Link( ooaofooa_C_PO *, ooaofooa_TE_PO * );
void ooaofooa_TE_PO_R2044_Unlink( ooaofooa_C_PO *, ooaofooa_TE_PO * );
#define ooaofooa_TE_IIR_R2080_From_TE_PO( TE_PO ) ( &((TE_PO)->TE_IIR_R2080) )


#define ooaofooa_TE_PO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_PO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_PO_CLASS_H */


