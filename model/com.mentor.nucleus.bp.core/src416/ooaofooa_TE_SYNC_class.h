/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SYNC_class.h
 *
 * Class:       Extended Function  (TE_SYNC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SYNC_CLASS_H
#define OOAOFOOA_TE_SYNC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Function  (TE_SYNC)
 */
struct ooaofooa_TE_SYNC {

  /* application analysis class attributes */
  c_t * Name;  
  bool Included;  
  bool IsInitFunction;  
  bool IsSafeForInterrupts;  
  bool XlateSemantics;  
  i_t Order;  
  Escher_UniqueID_t AbaID;  
  c_t * GeneratedName;  
  c_t * intraface_method;  
  c_t * deferred_method;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t Sync_ID;  
  Escher_UniqueID_t ID;  
  Escher_UniqueID_t nextID;  

  /* relationship storage */
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_S_SYNC * S_SYNC_R2023;
  ooaofooa_TE_C * TE_C_R2084;
  ooaofooa_TE_SYNC * TE_SYNC_R2095_precedes;
  ooaofooa_TE_SYNC * TE_SYNC_R2095_succeeds;
  ooaofooa_TE_C * TE_C_R2097;
};
void ooaofooa_TE_SYNC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SYNC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SYNC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_SYNC * ooaofooa_TE_SYNC_AnyWhere2( Escher_UniqueID_t );

void ooaofooa_TE_SYNC_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2023_Link( ooaofooa_S_SYNC *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2023_Unlink( ooaofooa_S_SYNC *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2084_Link( ooaofooa_TE_C *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2084_Unlink( ooaofooa_TE_C *, ooaofooa_TE_SYNC * );
      
/*
 * R2095 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_SYNC precedes participant
 *  Participant TE_SYNC succeeds formalizer
 */
/* Navigation phrase:  R2095.'precedes' */
void ooaofooa_TE_SYNC_R2095_Link_precedes( ooaofooa_TE_SYNC *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2095_Unlink_precedes( ooaofooa_TE_SYNC *, ooaofooa_TE_SYNC * );
/* Navigation phrase:  R2095.'succeeds' */
void ooaofooa_TE_SYNC_R2095_Link_succeeds( ooaofooa_TE_SYNC *, ooaofooa_TE_SYNC * );
void ooaofooa_TE_SYNC_R2095_Unlink_succeeds( ooaofooa_TE_SYNC *, ooaofooa_TE_SYNC * );


#define ooaofooa_TE_SYNC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SYNC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SYNC_CLASS_H */


