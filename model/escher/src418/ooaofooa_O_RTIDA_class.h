/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_RTIDA_class.h
 *
 * Class:       Referred To Identifier Attribute  (O_RTIDA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_RTIDA_CLASS_H
#define OOAOFOOA_O_RTIDA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Referred To Identifier Attribute  (O_RTIDA)
 */
struct ooaofooa_O_RTIDA {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  
  i_t Oid_ID;  
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t OIR_ID;  

  /* relationship storage */
  ooaofooa_R_RTO * R_RTO_R110_identifies_for_this_association;
  ooaofooa_O_OIDA * O_OIDA_R110_is_identified_in_this_association_by;
  Escher_ObjectSet_s O_REF_R111;
};
void ooaofooa_O_RTIDA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_RTIDA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_RTIDA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_RTIDA * ooaofooa_O_RTIDA_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, i_t, Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_O_RTIDA_R110_Link( ooaofooa_R_RTO *, ooaofooa_O_OIDA *, ooaofooa_O_RTIDA * );
void ooaofooa_O_RTIDA_R110_Unlink( ooaofooa_R_RTO *, ooaofooa_O_OIDA *, ooaofooa_O_RTIDA * );
#define ooaofooa_O_REF_R111_From_O_RTIDA( O_RTIDA ) ( &((O_RTIDA)->O_REF_R111) )


#define ooaofooa_O_RTIDA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_RTIDA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_RTIDA_CLASS_H */


