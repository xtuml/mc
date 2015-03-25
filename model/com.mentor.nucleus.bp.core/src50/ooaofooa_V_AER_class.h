/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_AER_class.h
 *
 * Class:       Array Element Reference  (V_AER)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_AER_CLASS_H
#define OOAOFOOA_V_AER_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Array Element Reference  (V_AER)
 */
struct ooaofooa_V_AER {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Root_Value_ID;  
  Escher_UniqueID_t Index_Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAL * V_VAL_R838_has_root;
  ooaofooa_V_VAL * V_VAL_R839_has_index;
};
void ooaofooa_V_AER_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_AER_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_AER_batch_relate( Escher_iHandle_t );

void ooaofooa_V_AER_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_AER * );
void ooaofooa_V_AER_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_AER * );
void ooaofooa_V_AER_R838_Link_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_AER * );
void ooaofooa_V_AER_R838_Unlink_is_root_for( ooaofooa_V_VAL *, ooaofooa_V_AER * );
void ooaofooa_V_AER_R839_Link_provides_index_of( ooaofooa_V_VAL *, ooaofooa_V_AER * );
void ooaofooa_V_AER_R839_Unlink_provides_index_of( ooaofooa_V_VAL *, ooaofooa_V_AER * );


#define ooaofooa_V_AER_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_AER_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_AER_CLASS_H */


