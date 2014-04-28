/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_EDT_class.h
 *
 * Class:       Enumeration Data Type  (S_EDT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_EDT_CLASS_H
#define OOAOFOOA_S_EDT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Enumeration Data Type  (S_EDT)
 */
struct ooaofooa_S_EDT {

  /* application analysis class attributes */
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_DT * S_DT_R17;
  Escher_ObjectSet_s S_ENUM_R27_defines;
};
void ooaofooa_S_EDT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_EDT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_EDT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_EDT * ooaofooa_S_EDT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_EDT_R17_Link( ooaofooa_S_DT *, ooaofooa_S_EDT * );
void ooaofooa_S_EDT_R17_Unlink( ooaofooa_S_DT *, ooaofooa_S_EDT * );
#define ooaofooa_S_ENUM_R27_From_S_EDT_defines( S_EDT ) ( &((S_EDT)->S_ENUM_R27_defines) )


#define ooaofooa_S_EDT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_EDT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_EDT_CLASS_H */


