/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_SMT_class.h
 *
 * Class:       Extended Statement  (TE_SMT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_SMT_CLASS_H
#define OOAOFOOA_TE_SMT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Statement  (TE_SMT)
 */
struct ooaofooa_TE_SMT {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  c_t * OAL;  
  c_t * buffer;  
  c_t * buffer2;  
  c_t * trace;  
  Escher_UniqueID_t next_Statement_ID;  
  Escher_UniqueID_t sub_Block_ID;  
  c_t * subtypeKL;  
  Escher_UniqueID_t parent_Block_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2012_precedes;
  ooaofooa_TE_SMT * TE_SMT_R2012_succeeds;
  ooaofooa_TE_BLK * TE_BLK_R2014;
  ooaofooa_TE_BLK * TE_BLK_R2015_has_sub;
  ooaofooa_ACT_SMT * ACT_SMT_R2038;
  void * R2069_subtype;
  Escher_ClassNumber_t R2069_object_id;
  ooaofooa_TE_BLK * TE_BLK_R2078_is_in;
};
void ooaofooa_TE_SMT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_SMT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_SMT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_SMT * ooaofooa_TE_SMT_AnyWhere1( Escher_UniqueID_t );

      
/*
 * R2012 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_SMT precedes participant
 *  Participant TE_SMT succeeds formalizer
 */
/* Navigation phrase:  R2012.'precedes' */
void ooaofooa_TE_SMT_R2012_Link_precedes( ooaofooa_TE_SMT *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2012_Unlink_precedes( ooaofooa_TE_SMT *, ooaofooa_TE_SMT * );
/* Navigation phrase:  R2012.'succeeds' */
void ooaofooa_TE_SMT_R2012_Link_succeeds( ooaofooa_TE_SMT *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2012_Unlink_succeeds( ooaofooa_TE_SMT *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2015_Link( ooaofooa_TE_BLK *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2015_Unlink( ooaofooa_TE_BLK *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2038_Link( ooaofooa_ACT_SMT *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2038_Unlink( ooaofooa_ACT_SMT *, ooaofooa_TE_SMT * );

/* Accessors to TE_SMT[R2069] subtypes */
#define ooaofooa_TE_ASSIGN_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_ASSIGN_CLASS_NUMBER) ? \
     ((ooaofooa_TE_ASSIGN *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_ASSIGN[R2069] not navigated */
#define ooaofooa_TE_FOR_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_FOR_CLASS_NUMBER) ? \
     ((ooaofooa_TE_FOR *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_FOR[R2069] not navigated */
#define ooaofooa_TE_ELSE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_ELSE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_ELSE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_ELSE[R2069] not navigated */
#define ooaofooa_TE_DELETE_INSTANCE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_DELETE_INSTANCE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_DELETE_INSTANCE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_DELETE_INSTANCE[R2069] not navigated */
#define ooaofooa_TE_IF_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_IF_CLASS_NUMBER) ? \
     ((ooaofooa_TE_IF *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_IF[R2069] not navigated */
#define ooaofooa_TE_WHILE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_WHILE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_WHILE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_WHILE[R2069] not navigated */
#define ooaofooa_TE_CREATE_INSTANCE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_CREATE_INSTANCE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_CREATE_INSTANCE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_CREATE_INSTANCE[R2069] not navigated */
#define ooaofooa_TE_ELIF_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_ELIF_CLASS_NUMBER) ? \
     ((ooaofooa_TE_ELIF *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_ELIF[R2069] not navigated */
#define ooaofooa_TE_CREATE_EVENT_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_CREATE_EVENT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_CREATE_EVENT *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_CREATE_EVENT[R2069] not navigated */
#define ooaofooa_TE_UNRELATE_USING_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_UNRELATE_USING_CLASS_NUMBER) ? \
     ((ooaofooa_TE_UNRELATE_USING *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_UNRELATE_USING[R2069] not navigated */
#define ooaofooa_TE_UNRELATE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_UNRELATE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_UNRELATE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_UNRELATE[R2069] not navigated */
#define ooaofooa_TE_RELATE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_RELATE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_RELATE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_RELATE[R2069] not navigated */
#define ooaofooa_TE_SELECT_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_SELECT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SELECT *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_SELECT[R2069] not navigated */
#define ooaofooa_TE_RELATE_USING_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_RELATE_USING_CLASS_NUMBER) ? \
     ((ooaofooa_TE_RELATE_USING *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_RELATE_USING[R2069] not navigated */
#define ooaofooa_TE_SELECT_WHERE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_SELECT_WHERE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SELECT_WHERE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_SELECT_WHERE[R2069] not navigated */
#define ooaofooa_TE_SELECT_RELATED_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_SELECT_RELATED_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SELECT_RELATED *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_SELECT_RELATED[R2069] not navigated */
#define ooaofooa_TE_GENERATE_PRECREATED_EVENT_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_GENERATE_PRECREATED_EVENT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_GENERATE_PRECREATED_EVENT *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_GENERATE_PRECREATED_EVENT[R2069] not navigated */
#define ooaofooa_TE_EVENT_PARAMETERS_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_EVENT_PARAMETERS_CLASS_NUMBER) ? \
     ((ooaofooa_TE_EVENT_PARAMETERS *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_EVENT_PARAMETERS[R2069] not navigated */
#define ooaofooa_TE_GENERATE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_GENERATE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_GENERATE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_GENERATE[R2069] not navigated */
#define ooaofooa_TE_GENERATE_CREATOR_EVENT_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_GENERATE_CREATOR_EVENT_CLASS_NUMBER) ? \
     ((ooaofooa_TE_GENERATE_CREATOR_EVENT *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_GENERATE_CREATOR_EVENT[R2069] not navigated */
#define ooaofooa_TE_GENERATE_TO_CLASS_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_GENERATE_TO_CLASS_CLASS_NUMBER) ? \
     ((ooaofooa_TE_GENERATE_TO_CLASS *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_GENERATE_TO_CLASS[R2069] not navigated */
#define ooaofooa_TE_SGN_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_SGN_CLASS_NUMBER) ? \
     ((ooaofooa_TE_SGN *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_SGN[R2069] not navigated */
#define ooaofooa_TE_IOP_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_IOP_CLASS_NUMBER) ? \
     ((ooaofooa_TE_IOP *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_IOP[R2069] not navigated */
#define ooaofooa_TE_OPERATION_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_OPERATION_CLASS_NUMBER) ? \
     ((ooaofooa_TE_OPERATION *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_OPERATION[R2069] not navigated */
#define ooaofooa_TE_BRIDGE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_BRIDGE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_BRIDGE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_BRIDGE[R2069] not navigated */
#define ooaofooa_TE_FUNCTION_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_FUNCTION_CLASS_NUMBER) ? \
     ((ooaofooa_TE_FUNCTION *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_FUNCTION[R2069] not navigated */
#define ooaofooa_TE_RETURN_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_RETURN_CLASS_NUMBER) ? \
     ((ooaofooa_TE_RETURN *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_RETURN[R2069] not navigated */
#define ooaofooa_TE_CONTROL_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_CONTROL_CLASS_NUMBER) ? \
     ((ooaofooa_TE_CONTROL *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_CONTROL[R2069] not navigated */
#define ooaofooa_TE_BREAK_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_BREAK_CLASS_NUMBER) ? \
     ((ooaofooa_TE_BREAK *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_BREAK[R2069] not navigated */
#define ooaofooa_TE_CONTINUE_R2069_From_TE_SMT( TE_SMT ) \
   ( (((TE_SMT)->R2069_object_id) == ooaofooa_TE_CONTINUE_CLASS_NUMBER) ? \
     ((ooaofooa_TE_CONTINUE *)((TE_SMT)->R2069_subtype)) : (0) )
/* Note:  TE_SMT->TE_CONTINUE[R2069] not navigated */

void ooaofooa_TE_SMT_R2078_Link_has( ooaofooa_TE_BLK *, ooaofooa_TE_SMT * );
void ooaofooa_TE_SMT_R2078_Unlink_has( ooaofooa_TE_BLK *, ooaofooa_TE_SMT * );


#define ooaofooa_TE_SMT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_SMT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_SMT_CLASS_H */


