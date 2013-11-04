/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_CMR_class.h
 *
 * Class:       Content Match Result  (SR_CMR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SR_CMR_CLASS_H
#define OOAOFOOA_SR_CMR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Content Match Result  (SR_CMR)
 */
struct ooaofooa_SR_CMR {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  i_t startPosition;  
  i_t length;  

};
void ooaofooa_SR_CMR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SR_CMR_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_SR_CMR_batch_relate 0



#define ooaofooa_SR_CMR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SR_CMR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SR_CMR_CLASS_H */


