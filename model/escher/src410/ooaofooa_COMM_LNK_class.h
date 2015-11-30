/*----------------------------------------------------------------------------
 * File:  ooaofooa_COMM_LNK_class.h
 *
 * Class:       Communication Link  (COMM_LNK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_COMM_LNK_CLASS_H
#define OOAOFOOA_COMM_LNK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Communication Link  (COMM_LNK)
 */
struct ooaofooa_COMM_LNK {

  /* application analysis class attributes */
  Escher_UniqueID_t Link_ID;  
  Escher_UniqueID_t Rel_ID;  
  c_t Numb[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t StartText[ESCHER_SYS_MAX_STRING_LEN];  
  c_t EndText[ESCHER_SYS_MAX_STRING_LEN];  
  bool isFormal;  
  sys_Visibility_t StartVisibility;  
  sys_Visibility_t EndVisibility;  
  Escher_UniqueID_t Start_Part_ID;  
  Escher_UniqueID_t Destination_Part_ID;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R1128_may_be_formalized_against;
  ooaofooa_SQ_P * SQ_P_R1133_starts_at;
  ooaofooa_SQ_P * SQ_P_R1134_is_destined_for;
};
void ooaofooa_COMM_LNK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_COMM_LNK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_COMM_LNK_batch_relate( Escher_iHandle_t );

void ooaofooa_COMM_LNK_R1128_Link_represents_formal_instance( ooaofooa_R_REL *, ooaofooa_COMM_LNK * );
void ooaofooa_COMM_LNK_R1128_Unlink_represents_formal_instance( ooaofooa_R_REL *, ooaofooa_COMM_LNK * );
void ooaofooa_COMM_LNK_R1133_Link_is_start_point( ooaofooa_SQ_P *, ooaofooa_COMM_LNK * );
void ooaofooa_COMM_LNK_R1133_Unlink_is_start_point( ooaofooa_SQ_P *, ooaofooa_COMM_LNK * );
void ooaofooa_COMM_LNK_R1134_Link_is_destination( ooaofooa_SQ_P *, ooaofooa_COMM_LNK * );
void ooaofooa_COMM_LNK_R1134_Unlink_is_destination( ooaofooa_SQ_P *, ooaofooa_COMM_LNK * );


#define ooaofooa_COMM_LNK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_COMM_LNK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_COMM_LNK_CLASS_H */


