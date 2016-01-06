/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CTL_class.h
 *
 * Class:       Control  (ACT_CTL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_CTL_CLASS_H
#define OOAOFOOA_ACT_CTL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Control  (ACT_CTL)
 */
struct ooaofooa_ACT_CTL {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
};
void ooaofooa_ACT_CTL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_CTL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_CTL_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_CTL_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_CTL * );
void ooaofooa_ACT_CTL_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_CTL * );


#define ooaofooa_ACT_CTL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_CTL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_CTL_CLASS_H */


