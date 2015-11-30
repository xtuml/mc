/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_ALV_class.h
 *
 * Class:       Array Length Value  (V_ALV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_ALV_CLASS_H
#define OOAOFOOA_V_ALV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Array Length Value  (V_ALV)
 */
struct ooaofooa_V_ALV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Array_Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAL * V_VAL_R840_returns_length_of;
};
void ooaofooa_V_ALV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_ALV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_ALV_batch_relate( Escher_iHandle_t );

void ooaofooa_V_ALV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_ALV * );
void ooaofooa_V_ALV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_ALV * );
void ooaofooa_V_ALV_R840_Link_has_length_returned_by( ooaofooa_V_VAL *, ooaofooa_V_ALV * );
void ooaofooa_V_ALV_R840_Unlink_has_length_returned_by( ooaofooa_V_VAL *, ooaofooa_V_ALV * );


#define ooaofooa_V_ALV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_ALV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_ALV_CLASS_H */


