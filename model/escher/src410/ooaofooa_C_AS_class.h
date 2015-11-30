/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_AS_class.h
 *
 * Class:       Interface Signal  (C_AS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_AS_CLASS_H
#define OOAOFOOA_C_AS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Signal  (C_AS)
 */
struct ooaofooa_C_AS {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  sys_IFDirectionType_t Direction;  
  Escher_UniqueID_t Previous_Id;  

  /* relationship storage */
  Escher_ObjectSet_s MSG_SIG_R1021_sent_by;
  ooaofooa_C_EP * C_EP_R4004;
  ooaofooa_C_AS * C_AS_R4020_succeeds;
  ooaofooa_C_AS * C_AS_R4020_precedes;
};
void ooaofooa_C_AS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_AS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_AS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_AS * ooaofooa_C_AS_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_MSG_SIG_R1021_From_C_AS_sent_by( C_AS ) ( &((C_AS)->MSG_SIG_R1021_sent_by) )
void ooaofooa_C_AS_R4004_Link( ooaofooa_C_EP *, ooaofooa_C_AS * );
void ooaofooa_C_AS_R4004_Unlink( ooaofooa_C_EP *, ooaofooa_C_AS * );
      
/*
 * R4020 is Simple Reflexive:  0..1:0..1
 *  Formalizing C_AS succeeds participant
 *  Participant C_AS precedes formalizer
 */
/* Navigation phrase:  R4020.'succeeds' */
void ooaofooa_C_AS_R4020_Link_succeeds( ooaofooa_C_AS *, ooaofooa_C_AS * );
void ooaofooa_C_AS_R4020_Unlink_succeeds( ooaofooa_C_AS *, ooaofooa_C_AS * );
/* Navigation phrase:  R4020.'precedes' */
void ooaofooa_C_AS_R4020_Link_precedes( ooaofooa_C_AS *, ooaofooa_C_AS * );
void ooaofooa_C_AS_R4020_Unlink_precedes( ooaofooa_C_AS *, ooaofooa_C_AS * );


#define ooaofooa_C_AS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_AS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_AS_CLASS_H */


