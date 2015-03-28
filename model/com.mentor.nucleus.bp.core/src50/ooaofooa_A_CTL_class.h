/*----------------------------------------------------------------------------
 * File:  ooaofooa_A_CTL_class.h
 *
 * Class:       Control Node  (A_CTL)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_A_CTL_CLASS_H
#define OOAOFOOA_A_CTL_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Control Node  (A_CTL)
 */
struct ooaofooa_A_CTL {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_A_N * A_N_R1105;
  void * R1106_subtype;
  Escher_ClassNumber_t R1106_object_id;
};
void ooaofooa_A_CTL_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_A_CTL_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_A_CTL_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_A_CTL * ooaofooa_A_CTL_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_A_CTL_R1105_Link( ooaofooa_A_N *, ooaofooa_A_CTL * );
void ooaofooa_A_CTL_R1105_Unlink( ooaofooa_A_N *, ooaofooa_A_CTL * );

/* Accessors to A_CTL[R1106] subtypes */
#define ooaofooa_A_FF_R1106_From_A_CTL( A_CTL ) \
   ( (((A_CTL)->R1106_object_id) == ooaofooa_A_FF_CLASS_NUMBER) ? \
     ((ooaofooa_A_FF *)((A_CTL)->R1106_subtype)) : (0) )
#define ooaofooa_A_AF_R1106_From_A_CTL( A_CTL ) \
   ( (((A_CTL)->R1106_object_id) == ooaofooa_A_AF_CLASS_NUMBER) ? \
     ((ooaofooa_A_AF *)((A_CTL)->R1106_subtype)) : (0) )
#define ooaofooa_A_INI_R1106_From_A_CTL( A_CTL ) \
   ( (((A_CTL)->R1106_object_id) == ooaofooa_A_INI_CLASS_NUMBER) ? \
     ((ooaofooa_A_INI *)((A_CTL)->R1106_subtype)) : (0) )
#define ooaofooa_A_DM_R1106_From_A_CTL( A_CTL ) \
   ( (((A_CTL)->R1106_object_id) == ooaofooa_A_DM_CLASS_NUMBER) ? \
     ((ooaofooa_A_DM *)((A_CTL)->R1106_subtype)) : (0) )
#define ooaofooa_A_FJ_R1106_From_A_CTL( A_CTL ) \
   ( (((A_CTL)->R1106_object_id) == ooaofooa_A_FJ_CLASS_NUMBER) ? \
     ((ooaofooa_A_FJ *)((A_CTL)->R1106_subtype)) : (0) )



#define ooaofooa_A_CTL_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_A_CTL_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_A_CTL_CLASS_H */


