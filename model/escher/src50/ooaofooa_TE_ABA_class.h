/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_ABA_class.h
 *
 * Class:       Action Block Anchor  (TE_ABA)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_ABA_CLASS_H
#define OOAOFOOA_TE_ABA_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Action Block Anchor  (TE_ABA)
 */
struct ooaofooa_TE_ABA {

  /* application analysis class attributes */
  Escher_UniqueID_t AbaID;  
  c_t * subtypeKL;  
  Escher_UniqueID_t te_cID;  
  i_t SelfEventCount;  
  i_t NonSelfEventCount;  
  c_t * ParameterDeclaration;  
  c_t * ParameterDefinition;  
  c_t * ParameterStructure;  
  c_t * ParameterTrace;  
  c_t * ParameterFormat;  
  c_t * ParameterInvocation;  
  c_t * ParameterAssignment;  
  c_t * ParameterAssignmentBase;  
  c_t * scope;  
  c_t * GeneratedName;  
  c_t * ReturnDataType;  
  i_t dimensions;  
  Escher_UniqueID_t te_dimID;  
  c_t * array_spec;  
  c_t * code;  

  /* relationship storage */
  void * R2010_subtype;
  Escher_ClassNumber_t R2010_object_id;
  ooaofooa_TE_BLK * TE_BLK_R2011_has_root;
  ooaofooa_TE_DIM * TE_DIM_R2058_has_first;
  Escher_ObjectSet_s TE_PARM_R2062;
  ooaofooa_TE_C * TE_C_R2088;
};
void ooaofooa_TE_ABA_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_ABA_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_ABA_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_ABA * ooaofooa_TE_ABA_AnyWhere1( Escher_UniqueID_t );


/* Accessors to TE_ABA[R2010] subtypes */
#define ooaofooa_TE_ACT_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_ACT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_ACT *)((TE_ABA)->R2010_subtype)) : (0) )
#define ooaofooa_TE_SYNC_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_SYNC_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SYNC *)((TE_ABA)->R2010_subtype)) : (0) )
#define ooaofooa_TE_TFR_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_TFR_CLASS_NUMBER) ? \
     ((ooaofooa_TE_TFR *)((TE_ABA)->R2010_subtype)) : (0) )
#define ooaofooa_TE_BRG_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_BRG_CLASS_NUMBER) ? \
     ((ooaofooa_TE_BRG *)((TE_ABA)->R2010_subtype)) : (0) )
#define ooaofooa_TE_DBATTR_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_DBATTR_CLASS_NUMBER) ? \
     ((ooaofooa_TE_DBATTR *)((TE_ABA)->R2010_subtype)) : (0) )
#define ooaofooa_TE_MACT_R2010_From_TE_ABA( TE_ABA ) \
   ( (((TE_ABA)->R2010_object_id) == ooaofooa_TE_MACT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_MACT *)((TE_ABA)->R2010_subtype)) : (0) )

void ooaofooa_TE_ABA_R2058_Link_diments( ooaofooa_TE_DIM *, ooaofooa_TE_ABA * );
void ooaofooa_TE_ABA_R2058_Unlink_diments( ooaofooa_TE_DIM *, ooaofooa_TE_ABA * );
#define ooaofooa_TE_PARM_R2062_From_TE_ABA( TE_ABA ) ( &((TE_ABA)->TE_PARM_R2062) )
void ooaofooa_TE_ABA_R2088_Link( ooaofooa_TE_C *, ooaofooa_TE_ABA * );
void ooaofooa_TE_ABA_R2088_Unlink( ooaofooa_TE_C *, ooaofooa_TE_ABA * );


#define ooaofooa_TE_ABA_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_ABA_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_ABA_CLASS_H */


