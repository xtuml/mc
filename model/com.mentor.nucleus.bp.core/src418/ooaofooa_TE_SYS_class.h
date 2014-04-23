/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SYS_class.h
 *
 * Class:       Extended System  (TE_SYS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SYS_CLASS_H
#define OOAOFOOA_TE_SYS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended System  (TE_SYS)
 */
struct ooaofooa_TE_SYS {

  /* application analysis class attributes */
  i_t SystemID;  
  c_t * ModelCompilerName;  
  c_t * ExecutableName;  
  i_t MaxStringLen;  
  i_t MaxObjExtent;  
  i_t MaxRelExtent;  
  i_t MaxSelectExtent;  
  i_t TotalContainers;  
  i_t MaxSelfEvents;  
  i_t MaxNonSelfEvents;  
  i_t MaxTimers;  
  i_t MaxInterleavedBridges;  
  i_t MaxInterleavedBridgeDataSize;  
  i_t CollectionsFlavor;  
  bool ForcePriorityEvents;  
  i_t PEIClassCount;  
  i_t PersistentClassCount;  
  i_t PersistInstanceCacheDepth;  
  i_t PersistLinkCacheDepth;  
  i_t UnitsToDynamicallyAllocate;  
  bool InstanceLoading;  
  c_t * self_name;  
  c_t * Name;  
  bool AUTOSAR;  
  bool VFB;  
  c_t * SystemCPortsType;  
  bool AllPortsPoly;  
  c_t * DomainClassNumberName;  
  Escher_UniqueID_t Sys_ID;  

  /* relationship storage */
  Escher_ObjectSet_s TE_DISP_R2003;
  ooaofooa_S_SYS * S_SYS_R2018;
  Escher_ObjectSet_s TE_C_R2065;
};
void ooaofooa_TE_SYS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SYS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SYS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_SYS * ooaofooa_TE_SYS_AnyWhere1( i_t );

#define ooaofooa_TE_DISP_R2003_From_TE_SYS( TE_SYS ) ( &((TE_SYS)->TE_DISP_R2003) )
/* Note:  TE_SYS->TE_DISP[R2003] not navigated */
void ooaofooa_TE_SYS_R2018_Link( ooaofooa_S_SYS *, ooaofooa_TE_SYS * );
void ooaofooa_TE_SYS_R2018_Unlink( ooaofooa_S_SYS *, ooaofooa_TE_SYS * );
#define ooaofooa_TE_C_R2065_From_TE_SYS( TE_SYS ) ( &((TE_SYS)->TE_C_R2065) )
/* Note:  TE_SYS->TE_C[R2065] not navigated */


#define ooaofooa_TE_SYS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SYS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SYS_CLASS_H */


