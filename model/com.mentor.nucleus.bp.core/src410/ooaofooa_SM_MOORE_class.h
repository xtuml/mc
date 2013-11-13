/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MOORE_class.h
 *
 * Class:       Moore State Machine  (SM_MOORE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_MOORE_CLASS_H
#define OOAOFOOA_SM_MOORE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Moore State Machine  (SM_MOORE)
 */
struct ooaofooa_SM_MOORE {

  /* application analysis class attributes */
  Escher_UniqueID_t SM_ID;  

  /* relationship storage */
  ooaofooa_SM_SM * SM_SM_R510;
  Escher_ObjectSet_s SM_MOAH_R511;
};
void ooaofooa_SM_MOORE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_MOORE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_MOORE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SM_MOORE * ooaofooa_SM_MOORE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SM_MOORE_R510_Link( ooaofooa_SM_SM *, ooaofooa_SM_MOORE * );
void ooaofooa_SM_MOORE_R510_Unlink( ooaofooa_SM_SM *, ooaofooa_SM_MOORE * );
#define ooaofooa_SM_MOAH_R511_From_SM_MOORE( SM_MOORE ) ( &((SM_MOORE)->SM_MOAH_R511) )


#define ooaofooa_SM_MOORE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_MOORE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_MOORE_CLASS_H */


