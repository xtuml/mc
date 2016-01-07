/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_LFSC_class.h
 *
 * Class:       Leaf Symbolic Constant  (CNST_LFSC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CNST_LFSC_CLASS_H
#define OOAOFOOA_CNST_LFSC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Leaf Symbolic Constant  (CNST_LFSC)
 */
struct ooaofooa_CNST_LFSC {

  /* application analysis class attributes */
  Escher_UniqueID_t Const_ID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_CNST_SYC * CNST_SYC_R1502;
  void * R1503_subtype;
  Escher_ClassNumber_t R1503_object_id;
};
void ooaofooa_CNST_LFSC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CNST_LFSC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CNST_LFSC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_CNST_LFSC * ooaofooa_CNST_LFSC_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

void ooaofooa_CNST_LFSC_R1502_Link( ooaofooa_CNST_SYC *, ooaofooa_CNST_LFSC * );
void ooaofooa_CNST_LFSC_R1502_Unlink( ooaofooa_CNST_SYC *, ooaofooa_CNST_LFSC * );

/* Accessors to CNST_LFSC[R1503] subtypes */
#define ooaofooa_CNST_LSC_R1503_From_CNST_LFSC( CNST_LFSC ) \
   ( (((CNST_LFSC)->R1503_object_id) == ooaofooa_CNST_LSC_CLASS_NUMBER) ? \
     ((ooaofooa_CNST_LSC *)((CNST_LFSC)->R1503_subtype)) : (0) )



#define ooaofooa_CNST_LFSC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CNST_LFSC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CNST_LFSC_CLASS_H */


