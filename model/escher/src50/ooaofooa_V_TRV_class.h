/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_TRV_class.h
 *
 * Class:       Operation Value  (V_TRV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_TRV_CLASS_H
#define OOAOFOOA_V_TRV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Operation Value  (V_TRV)
 */
struct ooaofooa_V_TRV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Tfr_ID;  
  Escher_UniqueID_t Var_ID;  
  bool ParmListOK;  
  i_t modelClassKeyLettersLineNumber;  
  i_t modelClassKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  Escher_ObjectSet_s V_PAR_R811_has;
  ooaofooa_V_SLR * V_SLR_R825;
  ooaofooa_O_TFR * O_TFR_R829;
  ooaofooa_V_VAR * V_VAR_R830;
};
void ooaofooa_V_TRV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_TRV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_TRV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_TRV * ooaofooa_V_TRV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_TRV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_TRV * );
void ooaofooa_V_TRV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_TRV * );
#define ooaofooa_V_PAR_R811_From_V_TRV_has( V_TRV ) ( &((V_TRV)->V_PAR_R811_has) )
void ooaofooa_V_TRV_R829_Link( ooaofooa_O_TFR *, ooaofooa_V_TRV * );
void ooaofooa_V_TRV_R829_Unlink( ooaofooa_O_TFR *, ooaofooa_V_TRV * );
void ooaofooa_V_TRV_R830_Link_variable( ooaofooa_V_VAR *, ooaofooa_V_TRV * );
void ooaofooa_V_TRV_R830_Unlink_variable( ooaofooa_V_VAR *, ooaofooa_V_TRV * );


#define ooaofooa_V_TRV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_TRV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_TRV_CLASS_H */


