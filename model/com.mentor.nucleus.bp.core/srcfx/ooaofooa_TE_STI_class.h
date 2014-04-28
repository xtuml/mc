/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_STI_class.h
 *
 * Class:       String to Integer  (TE_STI)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_STI_CLASS_H
#define OOAOFOOA_TE_STI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   String to Integer  (TE_STI)
 */
struct ooaofooa_TE_STI {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * Name_key;  
  Escher_UniqueID_t PID;  
  bool IsFirst;  

  /* relationship storage */
  ooaofooa_TE_STI * TE_STI_R2099_succeeds;
  ooaofooa_TE_STI * TE_STI_R2099_precedes;
};
void ooaofooa_TE_STI_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_STI_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_STI_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_STI * ooaofooa_TE_STI_AnyWhere1( Escher_UniqueID_t );

      
/*
 * R2099 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_STI succeeds participant
 *  Participant TE_STI precedes formalizer
 */
/* Navigation phrase:  R2099.'succeeds' */
void ooaofooa_TE_STI_R2099_Link_succeeds( ooaofooa_TE_STI *, ooaofooa_TE_STI * );
void ooaofooa_TE_STI_R2099_Unlink_succeeds( ooaofooa_TE_STI *, ooaofooa_TE_STI * );
/* Navigation phrase:  R2099.'precedes' */
void ooaofooa_TE_STI_R2099_Link_precedes( ooaofooa_TE_STI *, ooaofooa_TE_STI * );
void ooaofooa_TE_STI_R2099_Unlink_precedes( ooaofooa_TE_STI *, ooaofooa_TE_STI * );


#define ooaofooa_TE_STI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_STI_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_STI_CLASS_H */


