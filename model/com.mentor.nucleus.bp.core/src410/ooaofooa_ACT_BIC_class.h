/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BIC_class.h
 *
 * Class:       Body in Component  (ACT_BIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BIC_CLASS_H
#define OOAOFOOA_ACT_BIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Body in Component  (ACT_BIC)
 */
struct ooaofooa_ACT_BIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Component_Id;  
  Escher_UniqueID_t Action_ID;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R694_is_declared_in;
  ooaofooa_ACT_ACT * ACT_ACT_R694_has_declared;
};
void ooaofooa_ACT_BIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BIC_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_BIC_R694_Link( ooaofooa_C_C *, ooaofooa_ACT_ACT *, ooaofooa_ACT_BIC * );
void ooaofooa_ACT_BIC_R694_Unlink( ooaofooa_C_C *, ooaofooa_ACT_ACT *, ooaofooa_ACT_BIC * );


#define ooaofooa_ACT_BIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BIC_CLASS_H */


