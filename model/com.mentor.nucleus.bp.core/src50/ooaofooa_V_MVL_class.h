/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_MVL_class.h
 *
 * Class:       Member Value Reference  (V_MVL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_MVL_CLASS_H
#define OOAOFOOA_V_MVL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Member Value Reference  (V_MVL)
 */
struct ooaofooa_V_MVL {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Root_Value_ID;  
  Escher_UniqueID_t Member_ID;  
  Escher_UniqueID_t DT_DT_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_S_MBR * S_MBR_R836_is_value_of;
  ooaofooa_V_VAL * V_VAL_R837;
};
void ooaofooa_V_MVL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_MVL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_MVL_batch_relate( Escher_iHandle_t );

void ooaofooa_V_MVL_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_MVL * );
void ooaofooa_V_MVL_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_MVL * );
void ooaofooa_V_MVL_R836_Link( ooaofooa_S_MBR *, ooaofooa_V_MVL * );
void ooaofooa_V_MVL_R836_Unlink( ooaofooa_S_MBR *, ooaofooa_V_MVL * );
void ooaofooa_V_MVL_R837_Link_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_MVL * );
void ooaofooa_V_MVL_R837_Unlink_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_MVL * );


#define ooaofooa_V_MVL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_MVL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_MVL_CLASS_H */


