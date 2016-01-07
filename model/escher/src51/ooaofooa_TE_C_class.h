/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_C_class.h
 *
 * Class:       Extended Component  (TE_C)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_C_CLASS_H
#define OOAOFOOA_TE_C_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Component  (TE_C)
 */
struct ooaofooa_TE_C {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * Name;  
  c_t * Descrip;  
  i_t number;  
  bool StateTrace;  
  bool StmtTrace;  
  bool DetectEmpty;  
  bool OptDisabled;  
  bool RawComments;  
  bool CodeComments;  
  i_t CollectionsFlavor;  
  c_t * classes_file;  
  c_t * functions_file;  
  i_t MaxObjExtent;  
  i_t MaxRelExtent;  
  i_t MaxSelectExtent;  
  i_t MaxSelfEvents;  
  i_t MaxNonSelfEvents;  
  i_t MaxPriorityEvents;  
  i_t MaxTimers;  
  i_t InterleavedBridges;  
  i_t PEIClassCount;  
  i_t PersistentClassCount;  
  c_t * module_file;  
  c_t * port_file;  
  c_t * include_file;  
  bool included_in_build;  
  bool internal_behavior;  
  bool isRealized;  
  i_t SystemID;  
  Escher_UniqueID_t next_ID;  
  Escher_UniqueID_t cId;  
  Escher_UniqueID_t first_eeID;  
  Escher_UniqueID_t first_syncID;  

  /* relationship storage */
  Escher_ObjectSet_s TE_MACT_R2002;
  Escher_ObjectSet_s TE_PO_R2005;
  Escher_ObjectSet_s TE_CI_R2008;
  ooaofooa_TE_C * TE_C_R2017_precedes;
  ooaofooa_TE_C * TE_C_R2017_succeeds;
  ooaofooa_C_C * C_C_R2054;
  Escher_ObjectSet_s TE_CLASS_R2064;
  ooaofooa_TE_SYS * TE_SYS_R2065;
  Escher_ObjectSet_s TE_SYNC_R2084;
  Escher_ObjectSet_s TE_EE_R2085;
  Escher_ObjectSet_s TE_DT_R2086;
  Escher_ObjectSet_s TE_ABA_R2088;
  ooaofooa_TE_DCI * TE_DCI_R2090;
  ooaofooa_TE_SYNC * TE_SYNC_R2097_has_first;
  ooaofooa_TE_EE * TE_EE_R2098_has_first;
  ooaofooa_TM_C * TM_C_R2804;
};
void ooaofooa_TE_C_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_C_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_C_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_C * ooaofooa_TE_C_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_TE_MACT_R2002_From_TE_C( TE_C ) ( &((TE_C)->TE_MACT_R2002) )
#define ooaofooa_TE_PO_R2005_From_TE_C( TE_C ) ( &((TE_C)->TE_PO_R2005) )
#define ooaofooa_TE_CI_R2008_From_TE_C( TE_C ) ( &((TE_C)->TE_CI_R2008) )
      
/*
 * R2017 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_C precedes participant
 *  Participant TE_C succeeds formalizer
 */
/* Navigation phrase:  R2017.'precedes' */
void ooaofooa_TE_C_R2017_Link_precedes( ooaofooa_TE_C *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2017_Unlink_precedes( ooaofooa_TE_C *, ooaofooa_TE_C * );
/* Navigation phrase:  R2017.'succeeds' */
void ooaofooa_TE_C_R2017_Link_succeeds( ooaofooa_TE_C *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2017_Unlink_succeeds( ooaofooa_TE_C *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2054_Link( ooaofooa_C_C *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2054_Unlink( ooaofooa_C_C *, ooaofooa_TE_C * );
#define ooaofooa_TE_CLASS_R2064_From_TE_C( TE_C ) ( &((TE_C)->TE_CLASS_R2064) )
void ooaofooa_TE_C_R2065_Link( ooaofooa_TE_SYS *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2065_Unlink( ooaofooa_TE_SYS *, ooaofooa_TE_C * );
#define ooaofooa_TE_SYNC_R2084_From_TE_C( TE_C ) ( &((TE_C)->TE_SYNC_R2084) )
#define ooaofooa_TE_EE_R2085_From_TE_C( TE_C ) ( &((TE_C)->TE_EE_R2085) )
#define ooaofooa_TE_DT_R2086_From_TE_C( TE_C ) ( &((TE_C)->TE_DT_R2086) )
#define ooaofooa_TE_ABA_R2088_From_TE_C( TE_C ) ( &((TE_C)->TE_ABA_R2088) )
void ooaofooa_TE_C_R2097_Link( ooaofooa_TE_SYNC *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2097_Unlink( ooaofooa_TE_SYNC *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2098_Link( ooaofooa_TE_EE *, ooaofooa_TE_C * );
void ooaofooa_TE_C_R2098_Unlink( ooaofooa_TE_EE *, ooaofooa_TE_C * );


#define ooaofooa_TE_C_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_C_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_C_CLASS_H */


