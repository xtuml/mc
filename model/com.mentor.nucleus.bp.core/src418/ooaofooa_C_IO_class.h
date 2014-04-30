/*----------------------------------------------------------------------------
 * File:  ooaofooa_C_IO_class.h
 *
 * Class:       Interface Operation  (C_IO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_C_IO_CLASS_H
#define OOAOFOOA_C_IO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Interface Operation  (C_IO)
 */
struct ooaofooa_C_IO {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t DT_ID;  
  c_t * Name;  
  c_t * Descrip;  
  sys_IFDirectionType_t Direction;  
  c_t * Return_Dimensions;  
  Escher_UniqueID_t Previous_Id;  

  /* relationship storage */
  Escher_ObjectSet_s MSG_IOP_R1022_sent_by;
  ooaofooa_C_EP * C_EP_R4004;
  ooaofooa_S_DT * S_DT_R4008_has_return_defined_by;
  Escher_ObjectSet_s S_DIM_R4018_return_value_may_have;
  ooaofooa_C_IO * C_IO_R4019_succeeds;
  ooaofooa_C_IO * C_IO_R4019_precedes;
};
void ooaofooa_C_IO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_C_IO_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_C_IO_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_C_IO * ooaofooa_C_IO_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_MSG_IOP_R1022_From_C_IO_sent_by( C_IO ) ( &((C_IO)->MSG_IOP_R1022_sent_by) )
void ooaofooa_C_IO_R4004_Link( ooaofooa_C_EP *, ooaofooa_C_IO * );
void ooaofooa_C_IO_R4004_Unlink( ooaofooa_C_EP *, ooaofooa_C_IO * );
void ooaofooa_C_IO_R4008_Link_defines_return_type( ooaofooa_S_DT *, ooaofooa_C_IO * );
void ooaofooa_C_IO_R4008_Unlink_defines_return_type( ooaofooa_S_DT *, ooaofooa_C_IO * );
#define ooaofooa_S_DIM_R4018_From_C_IO_return_value_may_have( C_IO ) ( &((C_IO)->S_DIM_R4018_return_value_may_have) )
/* Note:  C_IO->S_DIM[R4018] not navigated */
      
/*
 * R4019 is Simple Reflexive:  0..1:0..1
 *  Formalizing C_IO succeeds participant
 *  Participant C_IO precedes formalizer
 */
/* Navigation phrase:  R4019.'succeeds' */
void ooaofooa_C_IO_R4019_Link_succeeds( ooaofooa_C_IO *, ooaofooa_C_IO * );
void ooaofooa_C_IO_R4019_Unlink_succeeds( ooaofooa_C_IO *, ooaofooa_C_IO * );
/* Navigation phrase:  R4019.'precedes' */
void ooaofooa_C_IO_R4019_Link_precedes( ooaofooa_C_IO *, ooaofooa_C_IO * );
void ooaofooa_C_IO_R4019_Unlink_precedes( ooaofooa_C_IO *, ooaofooa_C_IO * );


#define ooaofooa_C_IO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_C_IO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_C_IO_CLASS_H */


