/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_IRDT_class.h
 *
 * Class:       Instance Reference Data Type  (S_IRDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_IRDT_CLASS_H
#define OOAOFOOA_S_IRDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Instance Reference Data Type  (S_IRDT)
 */
struct ooaofooa_S_IRDT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  
  bool isSet;  
  Escher_UniqueID_t Obj_ID;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R17;
  ooaofooa_O_OBJ * O_OBJ_R123_provides_reference_datatype_for;
};
void ooaofooa_S_IRDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_IRDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_IRDT_batch_relate( Escher_iHandle_t );

void ooaofooa_S_IRDT_R17_Link( ooaofooa_S_DT *, ooaofooa_S_IRDT * );
void ooaofooa_S_IRDT_R17_Unlink( ooaofooa_S_DT *, ooaofooa_S_IRDT * );
void ooaofooa_S_IRDT_R123_Link_is_available_as_a_reference_by( ooaofooa_O_OBJ *, ooaofooa_S_IRDT * );
void ooaofooa_S_IRDT_R123_Unlink_is_available_as_a_reference_by( ooaofooa_O_OBJ *, ooaofooa_S_IRDT * );


#define ooaofooa_S_IRDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_IRDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_IRDT_CLASS_H */


