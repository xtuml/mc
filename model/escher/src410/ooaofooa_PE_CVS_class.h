/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_CVS_class.h
 *
 * Class:       Component Visibility  (PE_CVS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PE_CVS_CLASS_H
#define OOAOFOOA_PE_CVS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Visibility  (PE_CVS)
 */
struct ooaofooa_PE_CVS {

  /* application analysis class attributes */
  Escher_UniqueID_t Visibility_ID;  
  Escher_UniqueID_t Element_ID;  
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  sys_ElementTypeConstants_t Type;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R8004_is_visible_to;
  ooaofooa_PE_PE * PE_PE_R8004_has_visibility_of;
  ooaofooa_PE_CRS * PE_CRS_R8008_makes_up_a;
};
void ooaofooa_PE_CVS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PE_CVS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PE_CVS_batch_relate( Escher_iHandle_t );

void ooaofooa_PE_CVS_R8004_Link( ooaofooa_C_C *, ooaofooa_PE_PE *, ooaofooa_PE_CVS * );
void ooaofooa_PE_CVS_R8004_Unlink( ooaofooa_C_C *, ooaofooa_PE_PE *, ooaofooa_PE_CVS * );
void ooaofooa_PE_CVS_R8008_Link_made_up_of( ooaofooa_PE_CRS *, ooaofooa_PE_CVS * );
void ooaofooa_PE_CVS_R8008_Unlink_made_up_of( ooaofooa_PE_CRS *, ooaofooa_PE_CVS * );


#define ooaofooa_PE_CVS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PE_CVS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PE_CVS_CLASS_H */


