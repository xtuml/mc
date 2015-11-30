/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_UDT_class.h
 *
 * Class:       User Data Type  (S_UDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_UDT_CLASS_H
#define OOAOFOOA_S_UDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   User Data Type  (S_UDT)
 */
struct ooaofooa_S_UDT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t CDT_DT_ID;  
  i_t Gen_Type;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R17;
  ooaofooa_S_DT * S_DT_R18_are_defined_within;
};
void ooaofooa_S_UDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_UDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_UDT_batch_relate( Escher_iHandle_t );

void ooaofooa_S_UDT_R17_Link( ooaofooa_S_DT *, ooaofooa_S_UDT * );
void ooaofooa_S_UDT_R17_Unlink( ooaofooa_S_DT *, ooaofooa_S_UDT * );
void ooaofooa_S_UDT_R18_Link_defines_domain_of( ooaofooa_S_DT *, ooaofooa_S_UDT * );
void ooaofooa_S_UDT_R18_Unlink_defines_domain_of( ooaofooa_S_DT *, ooaofooa_S_UDT * );


#define ooaofooa_S_UDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_UDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_UDT_CLASS_H */


