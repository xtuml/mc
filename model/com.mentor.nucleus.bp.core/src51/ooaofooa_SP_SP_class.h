/*----------------------------------------------------------------------------
 * File:  ooaofooa_SP_SP_class.h
 *
 * Class:       Search Participant  (SP_SP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SP_SP_CLASS_H
#define OOAOFOOA_SP_SP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Search Participant  (SP_SP)
 */
struct ooaofooa_SP_SP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Engine_Id;  

  /* relationship storage */
  ooaofooa_SEN_E * SEN_E_R9502_searched_for_by;
  ooaofooa_SP_SE * SP_SE_R9700_provides_participation_for;
  ooaofooa_SR_SR * SR_SR_R9802;
};
void ooaofooa_SP_SP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SP_SP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SP_SP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SP_SP * ooaofooa_SP_SP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SP_SP_R9502_Link_searches_against( ooaofooa_SEN_E *, ooaofooa_SP_SP * );
void ooaofooa_SP_SP_R9502_Unlink_searches_against( ooaofooa_SEN_E *, ooaofooa_SP_SP * );


#define ooaofooa_SP_SP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SP_SP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SP_SP_CLASS_H */


