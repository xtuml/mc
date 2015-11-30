/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_SYSTAG_class.h
 *
 * Class:       System Tags  (TM_SYSTAG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_SYSTAG_CLASS_H
#define OOAOFOOA_TM_SYSTAG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   System Tags  (TM_SYSTAG)
 */
struct ooaofooa_TM_SYSTAG {

  /* application analysis class attributes */
  i_t MaxStringLen;  
  i_t MaxRelExtent;  
  i_t MaxSelectExtent;  
  i_t MaxSelfEvents;  
  i_t MaxNonSelfEvents;  
  i_t MaxTimers;  
  i_t MaxInterleavedBridges;  
  i_t MaxInterleavedBridgeDataSize;  
  i_t CollectionsFlavor;  
  i_t PersistInstanceCacheDepth;  
  i_t PersistLinkCacheDepth;  
  i_t UnitsToDynamicallyAllocate;  
  bool VFB;  
  bool InstanceLoading;  
  c_t * SystemCPortsType;  
  bool AllPortsPoly;  

};
void ooaofooa_TM_SYSTAG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_SYSTAG_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_SYSTAG_batch_relate 0



#define ooaofooa_TM_SYSTAG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_SYSTAG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_SYSTAG_CLASS_H */


