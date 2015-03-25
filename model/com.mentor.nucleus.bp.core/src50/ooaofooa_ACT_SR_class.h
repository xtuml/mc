/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SR_class.h
 *
 * Class:       Select Related By  (ACT_SR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SR_CLASS_H
#define OOAOFOOA_ACT_SR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Select Related By  (ACT_SR)
 */
struct ooaofooa_ACT_SR {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_ACT_SEL * ACT_SEL_R664;
};
void ooaofooa_ACT_SR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SR_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_SR_R664_Link( ooaofooa_ACT_SEL *, ooaofooa_ACT_SR * );
void ooaofooa_ACT_SR_R664_Unlink( ooaofooa_ACT_SEL *, ooaofooa_ACT_SR * );


#define ooaofooa_ACT_SR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SR_CLASS_H */


