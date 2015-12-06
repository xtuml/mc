/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_ID_class.h
 *
 * Class:       Class Identifier  (O_ID)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_ID_CLASS_H
#define OOAOFOOA_O_ID_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Identifier  (O_ID)
 */
struct ooaofooa_O_ID {

  /* application analysis class attributes */
  i_t Oid_ID;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_O_OBJ * O_OBJ_R104_identifies;
  Escher_ObjectSet_s O_OIDA_R105;
  Escher_ObjectSet_s R_RTO_R109_identifies_for_this_association_;
  ooaofooa_TE_WHERE * TE_WHERE_R2032;
};
void ooaofooa_O_ID_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_ID_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_ID_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_ID * ooaofooa_O_ID_AnyWhere1( i_t, Escher_UniqueID_t );

void ooaofooa_O_ID_R104_Link_is_identified_by( ooaofooa_O_OBJ *, ooaofooa_O_ID * );
void ooaofooa_O_ID_R104_Unlink_is_identified_by( ooaofooa_O_OBJ *, ooaofooa_O_ID * );
#define ooaofooa_O_OIDA_R105_From_O_ID( O_ID ) ( &((O_ID)->O_OIDA_R105) )
#define ooaofooa_R_RTO_R109_From_O_ID_identifies_for_this_association_( O_ID ) ( &((O_ID)->R_RTO_R109_identifies_for_this_association_) )


#define ooaofooa_O_ID_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_ID_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_ID_CLASS_H */


