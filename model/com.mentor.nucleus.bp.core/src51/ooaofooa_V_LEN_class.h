/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LEN_class.h
 *
 * Class:       Literal Enumerator  (V_LEN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_LEN_CLASS_H
#define OOAOFOOA_V_LEN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Literal Enumerator  (V_LEN)
 */
struct ooaofooa_V_LEN {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Enum_ID;  
  i_t dataTypeNameLineNumber;  
  i_t dataTypeNameColumn;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_S_ENUM * S_ENUM_R824_has_value;
};
void ooaofooa_V_LEN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_LEN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_LEN_batch_relate( Escher_iHandle_t );

void ooaofooa_V_LEN_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_LEN * );
void ooaofooa_V_LEN_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_LEN * );
void ooaofooa_V_LEN_R824_Link_is_value_of( ooaofooa_S_ENUM *, ooaofooa_V_LEN * );
void ooaofooa_V_LEN_R824_Unlink_is_value_of( ooaofooa_S_ENUM *, ooaofooa_V_LEN * );


#define ooaofooa_V_LEN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_LEN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_LEN_CLASS_H */


