/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_LST_class.h
 *
 * Class:       Literal String  (V_LST)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_LST_CLASS_H
#define OOAOFOOA_V_LST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Literal String  (V_LST)
 */
struct ooaofooa_V_LST {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  c_t Value[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
};
void ooaofooa_V_LST_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_LST_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_LST_batch_relate( Escher_iHandle_t );

void ooaofooa_V_LST_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_LST * );
void ooaofooa_V_LST_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_LST * );


#define ooaofooa_V_LST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_LST_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_LST_CLASS_H */


