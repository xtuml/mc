/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_LIP_class.h
 *
 * Class:       Link Participation  (I_LIP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_LIP_CLASS_H
#define OOAOFOOA_I_LIP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Link Participation  (I_LIP)
 */
struct ooaofooa_I_LIP {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  
  Escher_UniqueID_t Inst_ID;  
  c_t Label[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  Escher_ObjectSet_s I_LNK_R2901_is_origin_of;
  Escher_ObjectSet_s I_LNK_R2902_is_destination_of;
  Escher_ObjectSet_s I_LNK_R2903_is_associator_for;
  ooaofooa_I_INS * I_INS_R2958;
  ooaofooa_R_REL * R_REL_R2959;
};
void ooaofooa_I_LIP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_LIP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_LIP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_LIP * ooaofooa_I_LIP_AnyWhere1( Escher_UniqueID_t, Escher_UniqueID_t );

#define ooaofooa_I_LNK_R2901_From_I_LIP_is_origin_of( I_LIP ) ( &((I_LIP)->I_LNK_R2901_is_origin_of) )
/* Note:  I_LIP->I_LNK[R2901] not navigated */
#define ooaofooa_I_LNK_R2902_From_I_LIP_is_destination_of( I_LIP ) ( &((I_LIP)->I_LNK_R2902_is_destination_of) )
/* Note:  I_LIP->I_LNK[R2902] not navigated */
#define ooaofooa_I_LNK_R2903_From_I_LIP_is_associator_for( I_LIP ) ( &((I_LIP)->I_LNK_R2903_is_associator_for) )
/* Note:  I_LIP->I_LNK[R2903] not navigated */
void ooaofooa_I_LIP_R2958_Link( ooaofooa_I_INS *, ooaofooa_I_LIP * );
void ooaofooa_I_LIP_R2958_Unlink( ooaofooa_I_INS *, ooaofooa_I_LIP * );
void ooaofooa_I_LIP_R2959_Link( ooaofooa_R_REL *, ooaofooa_I_LIP * );
void ooaofooa_I_LIP_R2959_Unlink( ooaofooa_R_REL *, ooaofooa_I_LIP * );


#define ooaofooa_I_LIP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_LIP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_LIP_CLASS_H */


