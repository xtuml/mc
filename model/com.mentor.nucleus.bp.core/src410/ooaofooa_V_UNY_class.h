/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_UNY_class.h
 *
 * Class:       Unary Operation  (V_UNY)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_UNY_CLASS_H
#define OOAOFOOA_V_UNY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Unary Operation  (V_UNY)
 */
struct ooaofooa_V_UNY {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Operand_Value_ID;  
  c_t Operator[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_V_VAL * V_VAL_R804_has_operand;
};
void ooaofooa_V_UNY_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_UNY_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_UNY_batch_relate( Escher_iHandle_t );

void ooaofooa_V_UNY_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_UNY * );
void ooaofooa_V_UNY_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_UNY * );
void ooaofooa_V_UNY_R804_Link_is_operand_to( ooaofooa_V_VAL *, ooaofooa_V_UNY * );
void ooaofooa_V_UNY_R804_Unlink_is_operand_to( ooaofooa_V_VAL *, ooaofooa_V_UNY * );


#define ooaofooa_V_UNY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_UNY_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_UNY_CLASS_H */


