/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EVT_class.h
 *
 * Class:       Extended Event  (TE_EVT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_EVT_CLASS_H
#define OOAOFOOA_TE_EVT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Event  (TE_EVT)
 */
struct ooaofooa_TE_EVT {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Numb;  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Enumerator[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Order;  
  bool Used;  
  i_t UsedCount;  
  i_t Priority;  
  Escher_UniqueID_t SM_ID;  
  Escher_UniqueID_t SMevt_ID;  
  Escher_UniqueID_t te_smID;  

  /* relationship storage */
  ooaofooa_SM_EVT * SM_EVT_R2036;
  ooaofooa_TE_SM * TE_SM_R2071;
  Escher_ObjectSet_s TE_MACT_R2082;
};
void ooaofooa_TE_EVT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_EVT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_EVT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_EVT * ooaofooa_TE_EVT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_EVT_R2036_Link( ooaofooa_SM_EVT *, ooaofooa_TE_EVT * );
void ooaofooa_TE_EVT_R2036_Unlink( ooaofooa_SM_EVT *, ooaofooa_TE_EVT * );
void ooaofooa_TE_EVT_R2071_Link( ooaofooa_TE_SM *, ooaofooa_TE_EVT * );
void ooaofooa_TE_EVT_R2071_Unlink( ooaofooa_TE_SM *, ooaofooa_TE_EVT * );
#define ooaofooa_TE_MACT_R2082_From_TE_EVT( TE_EVT ) ( &((TE_EVT)->TE_MACT_R2082) )
/* Note:  TE_EVT->TE_MACT[R2082] not navigated */


#define ooaofooa_TE_EVT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_EVT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_EVT_CLASS_H */


