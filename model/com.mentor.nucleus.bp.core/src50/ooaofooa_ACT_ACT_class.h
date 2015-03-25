/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_ACT_class.h
 *
 * Class:       Body  (ACT_ACT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_ACT_CLASS_H
#define OOAOFOOA_ACT_ACT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Body  (ACT_ACT)
 */
struct ooaofooa_ACT_ACT {

  /* application analysis class attributes */
  Escher_UniqueID_t Action_ID;  
  c_t * Type;  
  i_t LoopLevel;  
  Escher_UniqueID_t Block_ID;  
  Escher_UniqueID_t CurrentScope_ID;  
  i_t return_value;  
  c_t * Label;  
  Escher_UniqueID_t Parsed_Block_ID;  
  bool ReturnFound;  

  /* relationship storage */
  Escher_ObjectSet_s ACT_BLK_R601_has_committed;
  Escher_ObjectSet_s ACT_BLK_R612_has_parsed;
  ooaofooa_ACT_BIE * ACT_BIE_R640;
  ooaofooa_ACT_BLK * ACT_BLK_R650_has_parsed_outer;
  ooaofooa_ACT_BLK * ACT_BLK_R666_has_committed_outer;
  ooaofooa_ACT_BIC * ACT_BIC_R694;
  void * R698_subtype;
  Escher_ClassNumber_t R698_object_id;
  ooaofooa_ACT_BLK * ACT_BLK_R699_has_current_scope;
};
void ooaofooa_ACT_ACT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_ACT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_ACT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_ACT * ooaofooa_ACT_ACT_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_ACT_BLK_R601_From_ACT_ACT_has_committed( ACT_ACT ) ( &((ACT_ACT)->ACT_BLK_R601_has_committed) )
#define ooaofooa_ACT_BLK_R612_From_ACT_ACT_has_parsed( ACT_ACT ) ( &((ACT_ACT)->ACT_BLK_R612_has_parsed) )
/* Note:  ACT_ACT->ACT_BLK[R612] not navigated */
void ooaofooa_ACT_ACT_R650_Link_is_outer_parse_level_of( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );
void ooaofooa_ACT_ACT_R650_Unlink_is_outer_parse_level_of( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );
void ooaofooa_ACT_ACT_R666_Link_is_outer_committed_level_of( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );
void ooaofooa_ACT_ACT_R666_Unlink_is_outer_committed_level_of( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );

/* Accessors to ACT_ACT[R698] subtypes */
#define ooaofooa_ACT_SAB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_SAB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_SAB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_DAB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_DAB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_DAB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_FNB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_FNB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_FNB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_OPB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_OPB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_OPB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_BRB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_BRB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_BRB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_POB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_POB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_POB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_PSB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_PSB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_PSB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_ROB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_ROB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_ROB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_RSB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_RSB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_RSB *)((ACT_ACT)->R698_subtype)) : (0) )
#define ooaofooa_ACT_TAB_R698_From_ACT_ACT( ACT_ACT ) \
   ( (((ACT_ACT)->R698_object_id) == ooaofooa_ACT_TAB_CLASS_NUMBER) ? \
     ((ooaofooa_ACT_TAB *)((ACT_ACT)->R698_subtype)) : (0) )

void ooaofooa_ACT_ACT_R699_Link_is_current_scope_for( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );
void ooaofooa_ACT_ACT_R699_Unlink_is_current_scope_for( ooaofooa_ACT_BLK *, ooaofooa_ACT_ACT * );


#define ooaofooa_ACT_ACT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_ACT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_ACT_CLASS_H */


