/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BIE_class.h
 *
 * Class:       Body in Element  (ACT_BIE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BIE_CLASS_H
#define OOAOFOOA_ACT_BIE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Body in Element  (ACT_BIE)
 */
struct ooaofooa_ACT_BIE {

  /* application analysis class attributes */
  Escher_UniqueID_t Element_ID;  
  Escher_UniqueID_t Action_ID;  

  /* relationship storage */
  ooaofooa_ACT_ACT * ACT_ACT_R640_has_declared;
  ooaofooa_PE_PE * PE_PE_R640_is_declared_in;
};
void ooaofooa_ACT_BIE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BIE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BIE_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_BIE_R640_Link( ooaofooa_ACT_ACT *, ooaofooa_PE_PE *, ooaofooa_ACT_BIE * );
void ooaofooa_ACT_BIE_R640_Unlink( ooaofooa_ACT_ACT *, ooaofooa_PE_PE *, ooaofooa_ACT_BIE * );


#define ooaofooa_ACT_BIE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BIE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BIE_CLASS_H */


