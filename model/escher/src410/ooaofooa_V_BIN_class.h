/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_BIN_class.h
 *
 * Class:       Binary Operation  (V_BIN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_BIN_CLASS_H
#define OOAOFOOA_V_BIN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Binary Operation  (V_BIN)
 */
struct ooaofooa_V_BIN {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Right_Value_ID;  
  Escher_UniqueID_t Left_Value_ID;  
  c_t Operator[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAL * V_VAL_R802_has_left;
  ooaofooa_V_VAL * V_VAL_R803_has_right;
};
void ooaofooa_V_BIN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_BIN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_BIN_batch_relate( Escher_iHandle_t );

void ooaofooa_V_BIN_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_BIN * );
void ooaofooa_V_BIN_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_BIN * );
void ooaofooa_V_BIN_R802_Link_is_left_operand_to( ooaofooa_V_VAL *, ooaofooa_V_BIN * );
void ooaofooa_V_BIN_R802_Unlink_is_left_operand_to( ooaofooa_V_VAL *, ooaofooa_V_BIN * );
void ooaofooa_V_BIN_R803_Link_is_right_operand_to( ooaofooa_V_VAL *, ooaofooa_V_BIN * );
void ooaofooa_V_BIN_R803_Unlink_is_right_operand_to( ooaofooa_V_VAL *, ooaofooa_V_BIN * );


#define ooaofooa_V_BIN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_BIN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_BIN_CLASS_H */


