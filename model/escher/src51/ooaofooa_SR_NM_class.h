/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_NM_class.h
 *
 * Class:       Name Match  (SR_NM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SR_NM_CLASS_H
#define OOAOFOOA_SR_NM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Name Match  (SR_NM)
 */
struct ooaofooa_SR_NM {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  i_t UnnamedAttribute;  

  /* relationship storage */
  ooaofooa_SR_M * SR_M_R9801;
};
void ooaofooa_SR_NM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SR_NM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SR_NM_batch_relate( Escher_iHandle_t );

void ooaofooa_SR_NM_R9801_Link( ooaofooa_SR_M *, ooaofooa_SR_NM * );
void ooaofooa_SR_NM_R9801_Unlink( ooaofooa_SR_M *, ooaofooa_SR_NM * );


#define ooaofooa_SR_NM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SR_NM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SR_NM_CLASS_H */


