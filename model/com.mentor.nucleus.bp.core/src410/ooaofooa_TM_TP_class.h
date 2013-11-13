/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TP_class.h
 *
 * Class:       Template Parameter  (TM_TP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_TP_CLASS_H
#define OOAOFOOA_TM_TP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Template Parameter  (TM_TP)
 */
struct ooaofooa_TM_TP {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t typename[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t DefaultValue[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t tm_templateID;  

  /* relationship storage */
  ooaofooa_TM_TEMPLATE * TM_TEMPLATE_R2801;
  Escher_ObjectSet_s TM_TPV_R2808_has_value;
};
void ooaofooa_TM_TP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_TP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TM_TP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TM_TP * ooaofooa_TM_TP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TM_TP_R2801_Link( ooaofooa_TM_TEMPLATE *, ooaofooa_TM_TP * );
void ooaofooa_TM_TP_R2801_Unlink( ooaofooa_TM_TEMPLATE *, ooaofooa_TM_TP * );
#define ooaofooa_TM_TPV_R2808_From_TM_TP_has_value( TM_TP ) ( &((TM_TP)->TM_TPV_R2808_has_value) )
/* Note:  TM_TP->TM_TPV[R2808] not navigated */


#define ooaofooa_TM_TP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_TP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_TP_CLASS_H */


