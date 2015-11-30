/*----------------------------------------------------------------------------
 * File:  ooaofooa_CNST_LSC_class.h
 *
 * Class:       Literal Symbolic Constant  (CNST_LSC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_CNST_LSC_CLASS_H
#define OOAOFOOA_CNST_LSC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Literal Symbolic Constant  (CNST_LSC)
 */
struct ooaofooa_CNST_LSC {

  /* application analysis class attributes */
  Escher_UniqueID_t Const_ID;  
  Escher_UniqueID_t DT_ID;  
  c_t Value[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_CNST_LFSC * CNST_LFSC_R1503;
};
void ooaofooa_CNST_LSC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_CNST_LSC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_CNST_LSC_batch_relate( Escher_iHandle_t );

void ooaofooa_CNST_LSC_R1503_Link( ooaofooa_CNST_LFSC *, ooaofooa_CNST_LSC * );
void ooaofooa_CNST_LSC_R1503_Unlink( ooaofooa_CNST_LFSC *, ooaofooa_CNST_LSC * );


#define ooaofooa_CNST_LSC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_CNST_LSC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_CNST_LSC_CLASS_H */


