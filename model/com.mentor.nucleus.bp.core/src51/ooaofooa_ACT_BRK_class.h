/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BRK_class.h
 *
 * Class:       Break  (ACT_BRK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BRK_CLASS_H
#define OOAOFOOA_ACT_BRK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Break  (ACT_BRK)
 */
struct ooaofooa_ACT_BRK {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
};
void ooaofooa_ACT_BRK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BRK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BRK_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_BRK_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_BRK * );
void ooaofooa_ACT_BRK_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_BRK * );


#define ooaofooa_ACT_BRK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BRK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BRK_CLASS_H */


