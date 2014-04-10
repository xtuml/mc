/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_CM_class.h
 *
 * Class:       Content Match  (SR_CM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SR_CM_CLASS_H
#define OOAOFOOA_SR_CM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Content Match  (SR_CM)
 */
struct ooaofooa_SR_CM {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  i_t startPosition;  
  i_t matchLength;  

  /* relationship storage */
  ooaofooa_SR_M * SR_M_R9801;
};
void ooaofooa_SR_CM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SR_CM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SR_CM_batch_relate( Escher_iHandle_t );

void ooaofooa_SR_CM_R9801_Link( ooaofooa_SR_M *, ooaofooa_SR_CM * );
void ooaofooa_SR_CM_R9801_Unlink( ooaofooa_SR_M *, ooaofooa_SR_CM * );


#define ooaofooa_SR_CM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SR_CM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SR_CM_CLASS_H */


