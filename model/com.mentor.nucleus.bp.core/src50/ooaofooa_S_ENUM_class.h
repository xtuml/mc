/*----------------------------------------------------------------------------
 * File:  ooaofooa_S_ENUM_class.h
 *
 * Class:       Enumerator  (S_ENUM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_S_ENUM_CLASS_H
#define OOAOFOOA_S_ENUM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Enumerator  (S_ENUM)
 */
struct ooaofooa_S_ENUM {

  /* application analysis class attributes */
  Escher_UniqueID_t Enum_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t EDT_DT_ID;  
  Escher_UniqueID_t Previous_Enum_ID;  

  /* relationship storage */
  ooaofooa_S_EDT * S_EDT_R27_is_defined_by;
  ooaofooa_S_ENUM * S_ENUM_R56_succeeds;
  ooaofooa_S_ENUM * S_ENUM_R56_precedes;
  Escher_ObjectSet_s V_LEN_R824_is_value_of;
  ooaofooa_TE_ENUM * TE_ENUM_R2027;
};
void ooaofooa_S_ENUM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_S_ENUM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_S_ENUM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_S_ENUM * ooaofooa_S_ENUM_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_S_ENUM_R27_Link_defines( ooaofooa_S_EDT *, ooaofooa_S_ENUM * );
void ooaofooa_S_ENUM_R27_Unlink_defines( ooaofooa_S_EDT *, ooaofooa_S_ENUM * );
      
/*
 * R56 is Simple Reflexive:  0..1:0..1
 *  Formalizing S_ENUM succeeds participant
 *  Participant S_ENUM precedes formalizer
 */
/* Navigation phrase:  R56.'succeeds' */
void ooaofooa_S_ENUM_R56_Link_succeeds( ooaofooa_S_ENUM *, ooaofooa_S_ENUM * );
void ooaofooa_S_ENUM_R56_Unlink_succeeds( ooaofooa_S_ENUM *, ooaofooa_S_ENUM * );
/* Navigation phrase:  R56.'precedes' */
void ooaofooa_S_ENUM_R56_Link_precedes( ooaofooa_S_ENUM *, ooaofooa_S_ENUM * );
void ooaofooa_S_ENUM_R56_Unlink_precedes( ooaofooa_S_ENUM *, ooaofooa_S_ENUM * );
#define ooaofooa_V_LEN_R824_From_S_ENUM_is_value_of( S_ENUM ) ( &((S_ENUM)->V_LEN_R824_is_value_of) )


#define ooaofooa_S_ENUM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_S_ENUM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_S_ENUM_CLASS_H */


