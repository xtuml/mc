/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BLK_class.h
 *
 * Class:       Block  (ACT_BLK)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BLK_CLASS_H
#define OOAOFOOA_ACT_BLK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Block  (ACT_BLK)
 */
struct ooaofooa_ACT_BLK {

  /* application analysis class attributes */
  Escher_UniqueID_t Block_ID;  
  bool WhereSpecOK;  
  bool InWhereSpec;  
  bool SelectedFound;  
  c_t * TempBuffer;  
  c_t * SupData1;  
  c_t * SupData2;  
  i_t CurrentLine;  
  i_t CurrentCol;  
  i_t currentKeyLettersLineNumber;  
  i_t currentKeyLettersColumn;  
  i_t currentParameterAssignmentNameLineNumber;  
  i_t currentParameterAssignmentNameColumn;  
  i_t currentAssociationNumberLineNumber;  
  i_t currentAssociationNumberColumn;  
  i_t currentAssociationPhraseLineNumber;  
  i_t currentAssociationPhraseColumn;  
  i_t currentDataTypeNameLineNumber;  
  i_t currentDataTypeNameColumn;  
  bool blockInStackFrameCreated;  
  Escher_UniqueID_t Action_ID;  
  Escher_UniqueID_t Parsed_Action_ID;  

  /* relationship storage */
  ooaofooa_ACT_ACT * ACT_ACT_R601_is_committed_from;
  Escher_ObjectSet_s ACT_SMT_R602_contained_by;
  ooaofooa_ACT_FOR * ACT_FOR_R605;
  ooaofooa_ACT_E * ACT_E_R606;
  ooaofooa_ACT_IF * ACT_IF_R607;
  ooaofooa_ACT_WHL * ACT_WHL_R608;
  ooaofooa_ACT_ACT * ACT_ACT_R612_is_parsed_from;
  ooaofooa_ACT_ACT * ACT_ACT_R650_is_outer_parse_level_of;
  ooaofooa_ACT_EL * ACT_EL_R658;
  ooaofooa_ACT_ACT * ACT_ACT_R666_is_outer_committed_level_of;
  ooaofooa_ACT_ACT * ACT_ACT_R699_is_current_scope_for;
  Escher_ObjectSet_s V_VAR_R823_is_scope_for;
  Escher_ObjectSet_s V_VAL_R826_defines_scope_of;
  ooaofooa_TE_BLK * TE_BLK_R2016;
  Escher_ObjectSet_s I_BSF_R2923;
};
void ooaofooa_ACT_BLK_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BLK_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BLK_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_BLK * ooaofooa_ACT_BLK_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_BLK_R601_Link_has_committed( ooaofooa_ACT_ACT *, ooaofooa_ACT_BLK * );
void ooaofooa_ACT_BLK_R601_Unlink_has_committed( ooaofooa_ACT_ACT *, ooaofooa_ACT_BLK * );
#define ooaofooa_ACT_SMT_R602_From_ACT_BLK_contained_by( ACT_BLK ) ( &((ACT_BLK)->ACT_SMT_R602_contained_by) )
void ooaofooa_ACT_BLK_R612_Link_has_parsed( ooaofooa_ACT_ACT *, ooaofooa_ACT_BLK * );
void ooaofooa_ACT_BLK_R612_Unlink_has_parsed( ooaofooa_ACT_ACT *, ooaofooa_ACT_BLK * );
#define ooaofooa_V_VAR_R823_From_ACT_BLK_is_scope_for( ACT_BLK ) ( &((ACT_BLK)->V_VAR_R823_is_scope_for) )
/* Note:  ACT_BLK->V_VAR[R823] not navigated */
#define ooaofooa_V_VAL_R826_From_ACT_BLK_defines_scope_of( ACT_BLK ) ( &((ACT_BLK)->V_VAL_R826_defines_scope_of) )
#define ooaofooa_I_BSF_R2923_From_ACT_BLK( ACT_BLK ) ( &((ACT_BLK)->I_BSF_R2923) )


#define ooaofooa_ACT_BLK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BLK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BLK_CLASS_H */


