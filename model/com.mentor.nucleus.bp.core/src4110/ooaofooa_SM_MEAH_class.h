/*----------------------------------------------------------------------------
 * File:  ooaofooa_SM_MEAH_class.h
 *
 * Class:       Mealy Action Home  (SM_MEAH)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SM_MEAH_CLASS_H
#define OOAOFOOA_SM_MEAH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Mealy Action Home  (SM_MEAH)
 */
struct ooaofooa_SM_MEAH {

  /* application analysis class attributes */
  Escher_UniqueID_t Act_ID;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t Trans_ID;  

  /* relationship storage */
  ooaofooa_SM_MEALY * SM_MEALY_R512;
  ooaofooa_SM_TXN * SM_TXN_R512;
  ooaofooa_SM_AH * SM_AH_R513;
};
void ooaofooa_SM_MEAH_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SM_MEAH_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SM_MEAH_batch_relate( Escher_iHandle_t );

void ooaofooa_SM_MEAH_R512_Link( ooaofooa_SM_MEALY *, ooaofooa_SM_TXN *, ooaofooa_SM_MEAH * );
void ooaofooa_SM_MEAH_R512_Unlink( ooaofooa_SM_MEALY *, ooaofooa_SM_TXN *, ooaofooa_SM_MEAH * );
void ooaofooa_SM_MEAH_R513_Link( ooaofooa_SM_AH *, ooaofooa_SM_MEAH * );
void ooaofooa_SM_MEAH_R513_Unlink( ooaofooa_SM_AH *, ooaofooa_SM_MEAH * );


#define ooaofooa_SM_MEAH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SM_MEAH_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SM_MEAH_CLASS_H */


