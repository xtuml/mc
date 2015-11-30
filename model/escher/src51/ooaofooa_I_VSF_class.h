/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_VSF_class.h
 *
 * Class:       Value in Stack Frame  (I_VSF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_VSF_CLASS_H
#define OOAOFOOA_I_VSF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Value in Stack Frame  (I_VSF)
 */
struct ooaofooa_I_VSF {

  /* application analysis class attributes */
  Escher_UniqueID_t ValueInStackFrame_ID;  
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Stack_Frame_ID;  

  /* relationship storage */
  ooaofooa_I_STF * I_STF_R2951;
  ooaofooa_V_VAL * V_VAL_R2978;
};
void ooaofooa_I_VSF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_VSF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_VSF_batch_relate( Escher_iHandle_t );

void ooaofooa_I_VSF_R2951_Link( ooaofooa_I_STF *, ooaofooa_I_VSF * );
void ooaofooa_I_VSF_R2951_Unlink( ooaofooa_I_STF *, ooaofooa_I_VSF * );
void ooaofooa_I_VSF_R2978_Link( ooaofooa_V_VAL *, ooaofooa_I_VSF * );
void ooaofooa_I_VSF_R2978_Unlink( ooaofooa_V_VAL *, ooaofooa_I_VSF * );


#define ooaofooa_I_VSF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_VSF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_VSF_CLASS_H */


