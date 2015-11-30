/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_CRS_class.h
 *
 * Class:       Component Result Set  (PE_CRS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PE_CRS_CLASS_H
#define OOAOFOOA_PE_CRS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Result Set  (PE_CRS)
 */
struct ooaofooa_PE_CRS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t * Name;  
  sys_ElementTypeConstants_t Type;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R8007_held_by;
  Escher_ObjectSet_s PE_CVS_R8008_made_up_of;
};
void ooaofooa_PE_CRS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PE_CRS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PE_CRS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_PE_CRS * ooaofooa_PE_CRS_AnyWhere1( Escher_UniqueID_t, c_t *, sys_ElementTypeConstants_t );

void ooaofooa_PE_CRS_R8007_Link_holds( ooaofooa_C_C *, ooaofooa_PE_CRS * );
void ooaofooa_PE_CRS_R8007_Unlink_holds( ooaofooa_C_C *, ooaofooa_PE_CRS * );
#define ooaofooa_PE_CVS_R8008_From_PE_CRS_made_up_of( PE_CRS ) ( &((PE_CRS)->PE_CVS_R8008_made_up_of) )
/* Note:  PE_CRS->PE_CVS[R8008] not navigated */


#define ooaofooa_PE_CRS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PE_CRS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PE_CRS_CLASS_H */


