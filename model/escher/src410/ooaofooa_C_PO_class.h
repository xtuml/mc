/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_PO_class.h
 *
 * Class:       Port  (C_PO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_PO_CLASS_H
#define OOAOFOOA_C_PO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Port  (C_PO)
 */
struct ooaofooa_C_PO {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Component_Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Mult;  
  bool DoNotShowPortOnCanvas;  

  /* relationship storage */
  ooaofooa_TE_PO * TE_PO_R2044;
  ooaofooa_C_C * C_C_R4010_appears_in;
  Escher_ObjectSet_s C_IR_R4016_exposes;
};
void ooaofooa_C_PO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_PO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_PO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_PO * ooaofooa_C_PO_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_C_PO_R4010_Link_communicates_through( ooaofooa_C_C *, ooaofooa_C_PO * );
void ooaofooa_C_PO_R4010_Unlink_communicates_through( ooaofooa_C_C *, ooaofooa_C_PO * );
#define ooaofooa_C_IR_R4016_From_C_PO_exposes( C_PO ) ( &((C_PO)->C_IR_R4016_exposes) )


#define ooaofooa_C_PO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_PO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_PO_CLASS_H */


