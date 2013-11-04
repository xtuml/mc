/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LIN_class.h
 *
 * Class:       Literal Integer  (V_LIN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_LIN_CLASS_H
#define OOAOFOOA_V_LIN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Literal Integer  (V_LIN)
 */
struct ooaofooa_V_LIN {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  c_t Value[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
};
void ooaofooa_V_LIN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_LIN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_LIN_batch_relate( Escher_iHandle_t );

void ooaofooa_V_LIN_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_LIN * );
void ooaofooa_V_LIN_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_LIN * );


#define ooaofooa_V_LIN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_LIN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_LIN_CLASS_H */


