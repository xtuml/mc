/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_OIDA_class.h
 *
 * Class:       Class Identifier Attribute  (O_OIDA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_OIDA_CLASS_H
#define OOAOFOOA_O_OIDA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Class Identifier Attribute  (O_OIDA)
 */
struct ooaofooa_O_OIDA {

  /* application analysis class attributes */
  Escher_UniqueID_t Attr_ID;  
  Escher_UniqueID_t Obj_ID;  
  i_t Oid_ID;  
  c_t localAttributeName[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_O_ID * O_ID_R105_is_part_of_;
  ooaofooa_O_ATTR * O_ATTR_R105_is_made_up_of_;
  Escher_ObjectSet_s O_RTIDA_R110;
};
void ooaofooa_O_OIDA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_OIDA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_OIDA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_OIDA * ooaofooa_O_OIDA_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t, i_t );

void ooaofooa_O_OIDA_R105_Link( ooaofooa_O_ID *, ooaofooa_O_ATTR *, ooaofooa_O_OIDA * );
void ooaofooa_O_OIDA_R105_Unlink( ooaofooa_O_ID *, ooaofooa_O_ATTR *, ooaofooa_O_OIDA * );
#define ooaofooa_O_RTIDA_R110_From_O_OIDA( O_OIDA ) ( &((O_OIDA)->O_RTIDA_R110) )


#define ooaofooa_O_OIDA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_OIDA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_OIDA_CLASS_H */


