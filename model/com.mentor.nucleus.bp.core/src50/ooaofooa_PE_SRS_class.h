/*----------------------------------------------------------------------------
 * File:  ooaofooa_PE_SRS_class.h
 *
 * Class:       Search Result Set  (PE_SRS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PE_SRS_CLASS_H
#define OOAOFOOA_PE_SRS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Search Result Set  (PE_SRS)
 */
struct ooaofooa_PE_SRS {

  /* application analysis class attributes */
  Escher_UniqueID_t Package_ID;  
  c_t * Name;  
  sys_ElementTypeConstants_t Type;  

  /* relationship storage */
  ooaofooa_EP_PKG * EP_PKG_R8005_held_by;
  Escher_ObjectSet_s PE_VIS_R8006;
};
void ooaofooa_PE_SRS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PE_SRS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PE_SRS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_PE_SRS * ooaofooa_PE_SRS_AnyWhere1( Escher_UniqueID_t, c_t *, sys_ElementTypeConstants_t );

void ooaofooa_PE_SRS_R8005_Link_holds( ooaofooa_EP_PKG *, ooaofooa_PE_SRS * );
void ooaofooa_PE_SRS_R8005_Unlink_holds( ooaofooa_EP_PKG *, ooaofooa_PE_SRS * );
#define ooaofooa_PE_VIS_R8006_From_PE_SRS( PE_SRS ) ( &((PE_SRS)->PE_VIS_R8006) )
/* Note:  PE_SRS->PE_VIS[R8006] not navigated */


#define ooaofooa_PE_SRS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PE_SRS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PE_SRS_CLASS_H */


