/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_ACT_class.h
 *
 * Class:       Action Node  (A_ACT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_ACT_CLASS_H
#define OOAOFOOA_A_ACT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Action Node  (A_ACT)
 */
struct ooaofooa_A_ACT {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_A_N * A_N_R1105;
  void * R1107_subtype;
  Escher_ClassNumber_t R1107_object_id;
};
void ooaofooa_A_ACT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_ACT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_ACT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_ACT * ooaofooa_A_ACT_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_ACT_R1105_Link( ooaofooa_A_N *, ooaofooa_A_ACT * );
void ooaofooa_A_ACT_R1105_Unlink( ooaofooa_A_N *, ooaofooa_A_ACT * );

/* Accessors to A_ACT[R1107] subtypes */
#define ooaofooa_A_AE_R1107_From_A_ACT( A_ACT ) \
   ( (((A_ACT)->R1107_object_id) == ooaofooa_A_AE_CLASS_NUMBER) ? \
     ((ooaofooa_A_AE *)((A_ACT)->R1107_subtype)) : (0) )
#define ooaofooa_A_GA_R1107_From_A_ACT( A_ACT ) \
   ( (((A_ACT)->R1107_object_id) == ooaofooa_A_GA_CLASS_NUMBER) ? \
     ((ooaofooa_A_GA *)((A_ACT)->R1107_subtype)) : (0) )
#define ooaofooa_A_SS_R1107_From_A_ACT( A_ACT ) \
   ( (((A_ACT)->R1107_object_id) == ooaofooa_A_SS_CLASS_NUMBER) ? \
     ((ooaofooa_A_SS *)((A_ACT)->R1107_subtype)) : (0) )



#define ooaofooa_A_ACT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_ACT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_ACT_CLASS_H */


