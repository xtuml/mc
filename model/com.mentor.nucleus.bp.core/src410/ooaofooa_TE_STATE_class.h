/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STATE_class.h
 *
 * Class:       Extended State  (TE_STATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_STATE_CLASS_H
#define OOAOFOOA_TE_STATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended State  (TE_STATE)
 */
struct ooaofooa_TE_STATE {

  /* application analysis class attributes */
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t enumerator[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Numb;  
  i_t number;  
  i_t Order;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMstt_ID;  

  /* relationship storage */
  ooaofooa_SM_STATE * SM_STATE_R2037;
};
void ooaofooa_TE_STATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_STATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_STATE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_STATE_R2037_Link( ooaofooa_SM_STATE *, ooaofooa_TE_STATE * );
void ooaofooa_TE_STATE_R2037_Unlink( ooaofooa_SM_STATE *, ooaofooa_TE_STATE * );


#define ooaofooa_TE_STATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_STATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_STATE_CLASS_H */


