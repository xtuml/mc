/*----------------------------------------------------------------------------
 * File:  ooaofooa_SR_SR_class.h
 *
 * Class:       Search Result  (SR_SR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SR_SR_CLASS_H
#define OOAOFOOA_SR_SR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Search Result  (SR_SR)
 */
struct ooaofooa_SR_SR {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Engine_Id;  
  Escher_UniqueID_t MatchedParticipant_Id;  

  /* relationship storage */
  ooaofooa_SEN_E * SEN_E_R9503_is_determined_by;
  Escher_ObjectSet_s SR_M_R9800_consists_of;
  ooaofooa_SP_SP * SP_SP_R9802;
};
void ooaofooa_SR_SR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SR_SR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SR_SR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SR_SR * ooaofooa_SR_SR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SR_SR_R9503_Link_determines( ooaofooa_SEN_E *, ooaofooa_SR_SR * );
void ooaofooa_SR_SR_R9503_Unlink_determines( ooaofooa_SEN_E *, ooaofooa_SR_SR * );
#define ooaofooa_SR_M_R9800_From_SR_SR_consists_of( SR_SR ) ( &((SR_SR)->SR_M_R9800_consists_of) )
/* Note:  SR_SR->SR_M[R9800] not navigated */
void ooaofooa_SR_SR_R9802_Link( ooaofooa_SP_SP *, ooaofooa_SR_SR * );
void ooaofooa_SR_SR_R9802_Unlink( ooaofooa_SP_SP *, ooaofooa_SR_SR * );


#define ooaofooa_SR_SR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SR_SR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SR_SR_CLASS_H */


