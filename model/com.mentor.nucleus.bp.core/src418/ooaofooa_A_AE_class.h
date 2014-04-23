/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_AE_class.h
 *
 * Class:       Accept Event  (A_AE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_AE_CLASS_H
#define OOAOFOOA_A_AE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Accept Event  (A_AE)
 */
struct ooaofooa_A_AE {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_A_ACT * A_ACT_R1107;
  void * R1112_subtype;
  Escher_ClassNumber_t R1112_object_id;
};
void ooaofooa_A_AE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_AE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_AE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_AE * ooaofooa_A_AE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_AE_R1107_Link( ooaofooa_A_ACT *, ooaofooa_A_AE * );
void ooaofooa_A_AE_R1107_Unlink( ooaofooa_A_ACT *, ooaofooa_A_AE * );

/* Accessors to A_AE[R1112] subtypes */
#define ooaofooa_A_ATE_R1112_From_A_AE( A_AE ) \
   ( (((A_AE)->R1112_object_id) == ooaofooa_A_ATE_CLASS_NUMBER) ? \
     ((ooaofooa_A_ATE *)((A_AE)->R1112_subtype)) : (0) )
#define ooaofooa_A_AEA_R1112_From_A_AE( A_AE ) \
   ( (((A_AE)->R1112_object_id) == ooaofooa_A_AEA_CLASS_NUMBER) ? \
     ((ooaofooa_A_AEA *)((A_AE)->R1112_subtype)) : (0) )



#define ooaofooa_A_AE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_AE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_AE_CLASS_H */


