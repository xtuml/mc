/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_EE_class.h
 *
 * Class:       Extended External Entity  (TE_EE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_EE_CLASS_H
#define OOAOFOOA_TE_EE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended External Entity  (TE_EE)
 */
struct ooaofooa_TE_EE {

  /* application analysis class attributes */
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t RegisteredName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Key_Lett[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  bool Included;  
  c_t file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Include_File[ESCHER_SYS_MAX_STRING_LEN];  
  bool Used;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t EE_ID;  
  Escher_UniqueID_t ID;  
  Escher_UniqueID_t nextID;  

  /* relationship storage */
  ooaofooa_S_EE * S_EE_R2020;
  ooaofooa_TE_C * TE_C_R2085;
  Escher_ObjectSet_s TE_BRG_R2089;
  ooaofooa_TE_EE * TE_EE_R2096_precedes;
  ooaofooa_TE_EE * TE_EE_R2096_succeeds;
  ooaofooa_TE_C * TE_C_R2098;
};
void ooaofooa_TE_EE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_EE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_EE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_EE * ooaofooa_TE_EE_AnyWhere1( Escher_UniqueID_t );
ooaofooa_TE_EE * ooaofooa_TE_EE_AnyWhere2( Escher_UniqueID_t );

void ooaofooa_TE_EE_R2020_Link( ooaofooa_S_EE *, ooaofooa_TE_EE * );
void ooaofooa_TE_EE_R2020_Unlink( ooaofooa_S_EE *, ooaofooa_TE_EE * );
void ooaofooa_TE_EE_R2085_Link( ooaofooa_TE_C *, ooaofooa_TE_EE * );
void ooaofooa_TE_EE_R2085_Unlink( ooaofooa_TE_C *, ooaofooa_TE_EE * );
#define ooaofooa_TE_BRG_R2089_From_TE_EE( TE_EE ) ( &((TE_EE)->TE_BRG_R2089) )
/* Note:  TE_EE->TE_BRG[R2089] not navigated */
      
/*
 * R2096 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_EE precedes participant
 *  Participant TE_EE succeeds formalizer
 */
/* Navigation phrase:  R2096.'precedes' */
void ooaofooa_TE_EE_R2096_Link_precedes( ooaofooa_TE_EE *, ooaofooa_TE_EE * );
void ooaofooa_TE_EE_R2096_Unlink_precedes( ooaofooa_TE_EE *, ooaofooa_TE_EE * );
/* Navigation phrase:  R2096.'succeeds' */
void ooaofooa_TE_EE_R2096_Link_succeeds( ooaofooa_TE_EE *, ooaofooa_TE_EE * );
void ooaofooa_TE_EE_R2096_Unlink_succeeds( ooaofooa_TE_EE *, ooaofooa_TE_EE * );


#define ooaofooa_TE_EE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_EE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_EE_CLASS_H */


