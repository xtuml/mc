/*----------------------------------------------------------------------------
 * File:  ooaofooa_O_IOBJ_class.h
 *
 * Class:       Imported Class  (O_IOBJ)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_O_IOBJ_CLASS_H
#define OOAOFOOA_O_IOBJ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Imported Class  (O_IOBJ)
 */
struct ooaofooa_O_IOBJ {

  /* application analysis class attributes */
  Escher_UniqueID_t IObj_ID;  
  Escher_UniqueID_t Obj_ID;  
  i_t Modl_Typ;  
  Escher_UniqueID_t SS_ID;  
  c_t Obj_Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t Obj_KL[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_S_SS * S_SS_R3_represents_a_class_from_another_subsystem_in;
  ooaofooa_O_OBJ * O_OBJ_R101_represents;
  Escher_ObjectSet_s R_OIR_R202_is_used_for_spanning_associations_as;
  Escher_ObjectSet_s CA_SMSMC_R414_represents_the_destination_SM_for;
  Escher_ObjectSet_s CA_SMOA_R420_represents_the_destination_OBJ_for;
  Escher_ObjectSet_s CA_SMSMC_R424_represents_the_origination_SM_for;
  Escher_ObjectSet_s CA_ACC_R425_represents_origination_OBJ_for;
  ooaofooa_PE_PE * PE_PE_R8001;
};
void ooaofooa_O_IOBJ_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_O_IOBJ_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_O_IOBJ_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_O_IOBJ * ooaofooa_O_IOBJ_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_O_IOBJ_R3_Link_can_contain_classs_from_other_subsystems_via( ooaofooa_S_SS *, ooaofooa_O_IOBJ * );
void ooaofooa_O_IOBJ_R3_Unlink_can_contain_classs_from_other_subsystems_via( ooaofooa_S_SS *, ooaofooa_O_IOBJ * );
void ooaofooa_O_IOBJ_R101_Link_has_presence_in_other_subsystems( ooaofooa_O_OBJ *, ooaofooa_O_IOBJ * );
void ooaofooa_O_IOBJ_R101_Unlink_has_presence_in_other_subsystems( ooaofooa_O_OBJ *, ooaofooa_O_IOBJ * );
#define ooaofooa_R_OIR_R202_From_O_IOBJ_is_used_for_spanning_associations_as( O_IOBJ ) ( &((O_IOBJ)->R_OIR_R202_is_used_for_spanning_associations_as) )
/* Note:  O_IOBJ->R_OIR[R202] not navigated */
#define ooaofooa_CA_SMSMC_R414_From_O_IOBJ_represents_the_destination_SM_for( O_IOBJ ) ( &((O_IOBJ)->CA_SMSMC_R414_represents_the_destination_SM_for) )
/* Note:  O_IOBJ->CA_SMSMC[R414] not navigated */
#define ooaofooa_CA_SMOA_R420_From_O_IOBJ_represents_the_destination_OBJ_for( O_IOBJ ) ( &((O_IOBJ)->CA_SMOA_R420_represents_the_destination_OBJ_for) )
/* Note:  O_IOBJ->CA_SMOA[R420] not navigated */
#define ooaofooa_CA_SMSMC_R424_From_O_IOBJ_represents_the_origination_SM_for( O_IOBJ ) ( &((O_IOBJ)->CA_SMSMC_R424_represents_the_origination_SM_for) )
/* Note:  O_IOBJ->CA_SMSMC[R424] not navigated */
#define ooaofooa_CA_ACC_R425_From_O_IOBJ_represents_origination_OBJ_for( O_IOBJ ) ( &((O_IOBJ)->CA_ACC_R425_represents_origination_OBJ_for) )
/* Note:  O_IOBJ->CA_ACC[R425] not navigated */
void ooaofooa_O_IOBJ_R8001_Link( ooaofooa_PE_PE *, ooaofooa_O_IOBJ * );
void ooaofooa_O_IOBJ_R8001_Unlink( ooaofooa_PE_PE *, ooaofooa_O_IOBJ * );


#define ooaofooa_O_IOBJ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_O_IOBJ_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_O_IOBJ_CLASS_H */


