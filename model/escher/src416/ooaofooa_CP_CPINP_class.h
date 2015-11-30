/*----------------------------------------------------------------------------
 * File:  ooaofooa_CP_CPINP_class.h
 *
 * Class:       Component Package in Package  (CP_CPINP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CP_CPINP_CLASS_H
#define OOAOFOOA_CP_CPINP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Package in Package  (CP_CPINP)
 */
struct ooaofooa_CP_CPINP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t Parent_Package_ID;  

  /* relationship storage */
  ooaofooa_CP_CP * CP_CP_R4600_may_be_nested_in;
  ooaofooa_CP_CP * CP_CP_R4601_provides_nesting;
};
void ooaofooa_CP_CPINP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CP_CPINP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CP_CPINP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CP_CPINP * ooaofooa_CP_CPINP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_CP_CPINP_R4600_Link_may_nest( ooaofooa_CP_CP *, ooaofooa_CP_CPINP * );
void ooaofooa_CP_CPINP_R4600_Unlink_may_nest( ooaofooa_CP_CP *, ooaofooa_CP_CPINP * );


#define ooaofooa_CP_CPINP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CP_CPINP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CP_CPINP_CLASS_H */


