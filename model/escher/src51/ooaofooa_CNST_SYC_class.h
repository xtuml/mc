/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_SYC_class.h
 *
 * Class:       Symbolic Constant  (CNST_SYC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CNST_SYC_CLASS_H
#define OOAOFOOA_CNST_SYC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Symbolic Constant  (CNST_SYC)
 */
struct ooaofooa_CNST_SYC {

  /* application analysis class attributes */
  Escher_UniqueID_t Const_ID;  
  c_t * Name;  
  c_t * Descrip;  
  Escher_UniqueID_t DT_ID;  
  Escher_UniqueID_t Constant_Spec_ID;  
  Escher_UniqueID_t Previous_Const_ID;  
  Escher_UniqueID_t Previous_DT_DT_ID;  

  /* relationship storage */
  Escher_ObjectSet_s V_SCV_R850;
  ooaofooa_S_DT * S_DT_R1500_is_defined_by;
  void * R1502_subtype;
  Escher_ClassNumber_t R1502_object_id;
  ooaofooa_CNST_CSP * CNST_CSP_R1504_is_contained_by;
  ooaofooa_CNST_SYC * CNST_SYC_R1505_succeeds;
  ooaofooa_CNST_SYC * CNST_SYC_R1505_precedes;
};
void ooaofooa_CNST_SYC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CNST_SYC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CNST_SYC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CNST_SYC * ooaofooa_CNST_SYC_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_V_SCV_R850_From_CNST_SYC( CNST_SYC ) ( &((CNST_SYC)->V_SCV_R850) )
void ooaofooa_CNST_SYC_R1500_Link_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_CNST_SYC * );
void ooaofooa_CNST_SYC_R1500_Unlink_defines_the_type_of( ooaofooa_S_DT *, ooaofooa_CNST_SYC * );

/* Accessors to CNST_SYC[R1502] subtypes */
#define ooaofooa_CNST_LFSC_R1502_From_CNST_SYC( CNST_SYC ) \
   ( (((CNST_SYC)->R1502_object_id) == ooaofooa_CNST_LFSC_CLASS_NUMBER) ? \
     ((ooaofooa_CNST_LFSC *)((CNST_SYC)->R1502_subtype)) : (0) )

void ooaofooa_CNST_SYC_R1504_Link_contains( ooaofooa_CNST_CSP *, ooaofooa_CNST_SYC * );
void ooaofooa_CNST_SYC_R1504_Unlink_contains( ooaofooa_CNST_CSP *, ooaofooa_CNST_SYC * );
      
/*
 * R1505 is Simple Reflexive:  0..1:0..1
 *  Formalizing CNST_SYC succeeds participant
 *  Participant CNST_SYC precedes formalizer
 */
/* Navigation phrase:  R1505.'succeeds' */
void ooaofooa_CNST_SYC_R1505_Link_succeeds( ooaofooa_CNST_SYC *, ooaofooa_CNST_SYC * );
void ooaofooa_CNST_SYC_R1505_Unlink_succeeds( ooaofooa_CNST_SYC *, ooaofooa_CNST_SYC * );
/* Navigation phrase:  R1505.'precedes' */
void ooaofooa_CNST_SYC_R1505_Link_precedes( ooaofooa_CNST_SYC *, ooaofooa_CNST_SYC * );
void ooaofooa_CNST_SYC_R1505_Unlink_precedes( ooaofooa_CNST_SYC *, ooaofooa_CNST_SYC * );


#define ooaofooa_CNST_SYC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CNST_SYC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CNST_SYC_CLASS_H */


