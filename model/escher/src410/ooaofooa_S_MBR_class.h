/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_MBR_class.h
 *
 * Class:       Structure Member  (S_MBR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_MBR_CLASS_H
#define OOAOFOOA_S_MBR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Structure Member  (S_MBR)
 */
struct ooaofooa_S_MBR {

  /* application analysis class attributes */
  Escher_UniqueID_t Member_ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  Escher_UniqueID_t Parent_DT_DT_ID;  
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t Previous_Member_ID;  
  c_t Dimensions[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_S_SDT * S_SDT_R44_has_parent;
  ooaofooa_S_DT * S_DT_R45_is_defined_by;
  ooaofooa_S_MBR * S_MBR_R46_succeeds;
  ooaofooa_S_MBR * S_MBR_R46_precedes;
  Escher_ObjectSet_s S_DIM_R53_may_have;
  Escher_ObjectSet_s V_MVL_R836;
  ooaofooa_TE_MBR * TE_MBR_R2047;
};
void ooaofooa_S_MBR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_MBR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_MBR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_MBR * ooaofooa_S_MBR_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_S_MBR_R44_Link_has_member( ooaofooa_S_SDT *, ooaofooa_S_MBR * );
void ooaofooa_S_MBR_R44_Unlink_has_member( ooaofooa_S_SDT *, ooaofooa_S_MBR * );
void ooaofooa_S_MBR_R45_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_MBR * );
void ooaofooa_S_MBR_R45_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_S_MBR * );
      
/*
 * R46 is Simple Reflexive:  0..1:0..1
 *  Formalizing S_MBR succeeds participant
 *  Participant S_MBR precedes formalizer
 */
/* Navigation phrase:  R46.'succeeds' */
void ooaofooa_S_MBR_R46_Link_succeeds( ooaofooa_S_MBR *, ooaofooa_S_MBR * );
void ooaofooa_S_MBR_R46_Unlink_succeeds( ooaofooa_S_MBR *, ooaofooa_S_MBR * );
/* Navigation phrase:  R46.'precedes' */
void ooaofooa_S_MBR_R46_Link_precedes( ooaofooa_S_MBR *, ooaofooa_S_MBR * );
void ooaofooa_S_MBR_R46_Unlink_precedes( ooaofooa_S_MBR *, ooaofooa_S_MBR * );
#define ooaofooa_S_DIM_R53_From_S_MBR_may_have( S_MBR ) ( &((S_MBR)->S_DIM_R53_may_have) )
#define ooaofooa_V_MVL_R836_From_S_MBR( S_MBR ) ( &((S_MBR)->V_MVL_R836) )


#define ooaofooa_S_MBR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_MBR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_MBR_CLASS_H */


