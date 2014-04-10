/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_VIS_class.h
 *
 * Class:       Element Visibility  (PE_VIS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PE_VIS_CLASS_H
#define OOAOFOOA_PE_VIS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Element Visibility  (PE_VIS)
 */
struct ooaofooa_PE_VIS {

  /* application analysis class attributes */
  Escher_UniqueID_t Visibility_ID;  
  Escher_UniqueID_t Element_ID;  
  Escher_UniqueID_t Package_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  sys_ElementTypeConstants_t Type;  

  /* relationship storage */
  ooaofooa_PE_PE * PE_PE_R8002_has_visibility_of;
  ooaofooa_EP_PKG * EP_PKG_R8002_is_visible_to_elements_in;
  ooaofooa_PE_SRS * PE_SRS_R8006;
};
void ooaofooa_PE_VIS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PE_VIS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PE_VIS_batch_relate( Escher_iHandle_t );

void ooaofooa_PE_VIS_R8002_Link( ooaofooa_PE_PE *, ooaofooa_EP_PKG *, ooaofooa_PE_VIS * );
void ooaofooa_PE_VIS_R8002_Unlink( ooaofooa_PE_PE *, ooaofooa_EP_PKG *, ooaofooa_PE_VIS * );
void ooaofooa_PE_VIS_R8006_Link( ooaofooa_PE_SRS *, ooaofooa_PE_VIS * );
void ooaofooa_PE_VIS_R8006_Unlink( ooaofooa_PE_SRS *, ooaofooa_PE_VIS * );


#define ooaofooa_PE_VIS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PE_VIS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PE_VIS_CLASS_H */


