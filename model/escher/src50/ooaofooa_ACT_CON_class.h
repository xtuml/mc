/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_CON_class.h
 *
 * Class:       Continue  (ACT_CON)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_CON_CLASS_H
#define OOAOFOOA_ACT_CON_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Continue  (ACT_CON)
 */
struct ooaofooa_ACT_CON {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
};
void ooaofooa_ACT_CON_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_CON_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_CON_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_CON_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_CON * );
void ooaofooa_ACT_CON_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_CON * );


#define ooaofooa_ACT_CON_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_CON_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_CON_CLASS_H */


