/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_SEC_class.h
 *
 * Class:       section  (DOC_SEC)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_DOC_SEC_CLASS_H
#define OOAOFOOA_DOC_SEC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   section  (DOC_SEC)
 */
struct ooaofooa_DOC_SEC {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  Escher_UniqueID_t nextID;  
  c_t title[ESCHER_SYS_MAX_STRING_LEN];  
  c_t subtitle[ESCHER_SYS_MAX_STRING_LEN];  
  i_t level;  
  c_t abstract[ESCHER_SYS_MAX_STRING_LEN];  

  /* relationship storage */
  ooaofooa_DOC_DOC * DOC_DOC_R2300;
  ooaofooa_DOC_PAR * DOC_PAR_R2305_has_first;
  ooaofooa_DOC_SEC * DOC_SEC_R2306_follows;
  ooaofooa_DOC_SEC * DOC_SEC_R2306_precedes;
  ooaofooa_DOC_SEC * DOC_SEC_R2307_has_first_child;
  ooaofooa_DOC_SEC * DOC_SEC_R2307_has_parent;
  ooaofooa_DOC_FOOT * DOC_FOOT_R2308;
  ooaofooa_DOC_HEAD * DOC_HEAD_R2309;
};
void ooaofooa_DOC_SEC_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_DOC_SEC_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_DOC_SEC_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_DOC_SEC * ooaofooa_DOC_SEC_AnyWhere1( Escher_UniqueID_t );
void ooaofooa_DOC_SEC_op_render( ooaofooa_DOC_SEC *, ooaofooa_DOC_DOC * );
void ooaofooa_DOC_SEC_op_validate( void );
ooaofooa_DOC_SEC * ooaofooa_DOC_SEC_op_populate(  ooaofooa_DOC_SEC *, c_t[ESCHER_SYS_MAX_STRING_LEN], c_t[ESCHER_SYS_MAX_STRING_LEN] );

void ooaofooa_DOC_SEC_R2300_Link_has_first( ooaofooa_DOC_DOC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2300_Unlink_has_first( ooaofooa_DOC_DOC *, ooaofooa_DOC_SEC * );
      
/*
 * R2306 is Simple Reflexive:  0..1:0..1
 *  Formalizing DOC_SEC follows participant
 *  Participant DOC_SEC precedes formalizer
 */
/* Navigation phrase:  R2306.'follows' */
void ooaofooa_DOC_SEC_R2306_Link_follows( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2306_Unlink_follows( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
/* Navigation phrase:  R2306.'precedes' */
void ooaofooa_DOC_SEC_R2306_Link_precedes( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2306_Unlink_precedes( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
      
/*
 * R2307 is Simple Reflexive:  0..1:0..1
 *  Formalizing DOC_SEC has first child participant
 *  Participant DOC_SEC has parent formalizer
 */
/* Navigation phrase:  R2307.'has first child' */
void ooaofooa_DOC_SEC_R2307_Link_has_first_child( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2307_Unlink_has_first_child( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
/* Navigation phrase:  R2307.'has parent' */
void ooaofooa_DOC_SEC_R2307_Link_has_parent( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2307_Unlink_has_parent( ooaofooa_DOC_SEC *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2308_Link( ooaofooa_DOC_FOOT *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2308_Unlink( ooaofooa_DOC_FOOT *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2309_Link( ooaofooa_DOC_HEAD *, ooaofooa_DOC_SEC * );
void ooaofooa_DOC_SEC_R2309_Unlink( ooaofooa_DOC_HEAD *, ooaofooa_DOC_SEC * );


#define ooaofooa_DOC_SEC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_DOC_SEC_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_DOC_SEC_CLASS_H */


