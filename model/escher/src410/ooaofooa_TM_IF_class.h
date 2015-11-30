/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_IF_class.h
 *
 * Class:       Interface Mark  (TM_IF)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_IF_CLASS_H
#define OOAOFOOA_TM_IF_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Mark  (TM_IF)
 */
struct ooaofooa_TM_IF {

  /* application analysis class attributes */
  c_t Package[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t c_iId;  

  /* relationship storage */
  ooaofooa_TM_TEMPLATE * TM_TEMPLATE_R2802;
  ooaofooa_C_I * C_I_R2807;
};
void ooaofooa_TM_IF_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_IF_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TM_IF_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TM_IF * ooaofooa_TM_IF_AnyWhere1( c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );

void ooaofooa_TM_IF_R2807_Link( ooaofooa_C_I *, ooaofooa_TM_IF * );
void ooaofooa_TM_IF_R2807_Unlink( ooaofooa_C_I *, ooaofooa_TM_IF * );


#define ooaofooa_TM_IF_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_IF_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_IF_CLASS_H */


