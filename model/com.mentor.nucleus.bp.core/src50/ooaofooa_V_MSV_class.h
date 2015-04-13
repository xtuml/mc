/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_MSV_class.h
 *
 * Class:       Message Value  (V_MSV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_MSV_CLASS_H
#define OOAOFOOA_V_MSV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Message Value  (V_MSV)
 */
struct ooaofooa_V_MSV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t PEP_Id;  
  Escher_UniqueID_t REP_Id;  
  bool ParmListOK;  
  i_t ownerNameLineNumber;  
  i_t ownerNameColumn;  
  Escher_UniqueID_t Target_Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  ooaofooa_SPR_PEP * SPR_PEP_R841;
  Escher_ObjectSet_s V_PAR_R842_has;
  ooaofooa_SPR_REP * SPR_REP_R845;
  ooaofooa_V_VAL * V_VAL_R851_has_target;
};
void ooaofooa_V_MSV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_MSV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_MSV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_MSV * ooaofooa_V_MSV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_MSV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R841_Link( ooaofooa_SPR_PEP *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R841_Unlink( ooaofooa_SPR_PEP *, ooaofooa_V_MSV * );
#define ooaofooa_V_PAR_R842_From_V_MSV_has( V_MSV ) ( &((V_MSV)->V_PAR_R842_has) )
void ooaofooa_V_MSV_R845_Link( ooaofooa_SPR_REP *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R845_Unlink( ooaofooa_SPR_REP *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R851_Link_is_target_of( ooaofooa_V_VAL *, ooaofooa_V_MSV * );
void ooaofooa_V_MSV_R851_Unlink_is_target_of( ooaofooa_V_VAL *, ooaofooa_V_MSV * );


#define ooaofooa_V_MSV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_MSV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_MSV_CLASS_H */


