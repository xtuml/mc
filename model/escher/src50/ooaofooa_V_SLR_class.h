/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_SLR_class.h
 *
 * Class:       Selected Reference  (V_SLR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_SLR_CLASS_H
#define OOAOFOOA_V_SLR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Selected Reference  (V_SLR)
 */
struct ooaofooa_V_SLR {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Op_Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_O_ATTR * O_ATTR_R812_member;
  ooaofooa_V_TRV * V_TRV_R825_value;
};
void ooaofooa_V_SLR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_SLR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_SLR_batch_relate( Escher_iHandle_t );

void ooaofooa_V_SLR_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_SLR * );
void ooaofooa_V_SLR_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_SLR * );
void ooaofooa_V_SLR_R812_Link( ooaofooa_O_ATTR *, ooaofooa_V_SLR * );
void ooaofooa_V_SLR_R812_Unlink( ooaofooa_O_ATTR *, ooaofooa_V_SLR * );
void ooaofooa_V_SLR_R825_Link( ooaofooa_V_TRV *, ooaofooa_V_SLR * );
void ooaofooa_V_SLR_R825_Unlink( ooaofooa_V_TRV *, ooaofooa_V_SLR * );


#define ooaofooa_V_SLR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_SLR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_SLR_CLASS_H */


