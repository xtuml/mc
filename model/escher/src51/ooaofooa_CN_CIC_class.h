/*----------------------------------------------------------------------------
 * File:  ooaofooa_CN_CIC_class.h
 *
 * Class:       Component in Component  (CN_CIC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CN_CIC_CLASS_H
#define OOAOFOOA_CN_CIC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component in Component  (CN_CIC)
 */
struct ooaofooa_CN_CIC {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Parent_Id;  

  /* relationship storage */
  ooaofooa_C_C * C_C_R4202_can_be_nested_in;
  ooaofooa_C_C * C_C_R4203_nests;
};
void ooaofooa_CN_CIC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CN_CIC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CN_CIC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CN_CIC * ooaofooa_CN_CIC_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CN_CIC_R4202_Link_can_nest( ooaofooa_C_C *, ooaofooa_CN_CIC * );
void ooaofooa_CN_CIC_R4202_Unlink_can_nest( ooaofooa_C_C *, ooaofooa_CN_CIC * );


#define ooaofooa_CN_CIC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CN_CIC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CN_CIC_CLASS_H */


