/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_SCV_class.h
 *
 * Class:       Symbolic Constant Value  (V_SCV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_SCV_CLASS_H
#define OOAOFOOA_V_SCV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Symbolic Constant Value  (V_SCV)
 */
struct ooaofooa_V_SCV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Const_ID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_CNST_SYC * CNST_SYC_R850;
};
void ooaofooa_V_SCV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_SCV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_SCV_batch_relate( Escher_iHandle_t );

void ooaofooa_V_SCV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_SCV * );
void ooaofooa_V_SCV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_SCV * );
void ooaofooa_V_SCV_R850_Link( ooaofooa_CNST_SYC *, ooaofooa_V_SCV * );
void ooaofooa_V_SCV_R850_Unlink( ooaofooa_CNST_SYC *, ooaofooa_V_SCV * );


#define ooaofooa_V_SCV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_SCV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_SCV_CLASS_H */


