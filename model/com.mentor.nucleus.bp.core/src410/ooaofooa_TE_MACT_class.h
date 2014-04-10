/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_MACT_class.h
 *
 * Class:       Extended Message Action  (TE_MACT)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_MACT_CLASS_H
#define OOAOFOOA_TE_MACT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Message Action  (TE_MACT)
 */
struct ooaofooa_TE_MACT {

  /* application analysis class attributes */
  Escher_UniqueID_t AbaID;  
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t * Descrip;  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t ComponentName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t OALParamBuffer[ESCHER_SYS_MAX_STRING_LEN];  
  c_t PortName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t InterfaceName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t MessageName[ESCHER_SYS_MAX_STRING_LEN];  
  sys_IFDirectionType_t Direction;  
  bool Provision;  
  c_t subtypeKL[ESCHER_SYS_MAX_STRING_LEN];  
  bool polymorphic;  
  bool trace;  
  i_t Order;  
  Escher_UniqueID_t SPR_POId;  
  Escher_UniqueID_t SPR_PSId;  
  Escher_UniqueID_t SPR_ROId;  
  Escher_UniqueID_t SPR_RSId;  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t te_poID;  
  Escher_UniqueID_t te_evtID;  
  Escher_UniqueID_t nextID;  

  /* relationship storage */
  ooaofooa_TE_C * TE_C_R2002;
  ooaofooa_TE_PO * TE_PO_R2006;
  ooaofooa_TE_ABA * TE_ABA_R2010;
  ooaofooa_SPR_PO * SPR_PO_R2050;
  ooaofooa_SPR_PS * SPR_PS_R2051;
  ooaofooa_SPR_RO * SPR_RO_R2052;
  ooaofooa_SPR_RS * SPR_RS_R2053;
  ooaofooa_TE_EVT * TE_EVT_R2082;
  ooaofooa_TE_MACT * TE_MACT_R2083_precedes;
  ooaofooa_TE_MACT * TE_MACT_R2083_succeeds;
};
void ooaofooa_TE_MACT_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_MACT_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_MACT_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_MACT * ooaofooa_TE_MACT_AnyWhere2( Escher_UniqueID_t );

void ooaofooa_TE_MACT_R2002_Link( ooaofooa_TE_C *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2002_Unlink( ooaofooa_TE_C *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2006_Link( ooaofooa_TE_PO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2006_Unlink( ooaofooa_TE_PO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2010_Link( ooaofooa_TE_ABA *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2010_Unlink( ooaofooa_TE_ABA *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2050_Link( ooaofooa_SPR_PO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2050_Unlink( ooaofooa_SPR_PO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2051_Link( ooaofooa_SPR_PS *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2051_Unlink( ooaofooa_SPR_PS *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2052_Link( ooaofooa_SPR_RO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2052_Unlink( ooaofooa_SPR_RO *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2053_Link( ooaofooa_SPR_RS *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2053_Unlink( ooaofooa_SPR_RS *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2082_Link( ooaofooa_TE_EVT *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2082_Unlink( ooaofooa_TE_EVT *, ooaofooa_TE_MACT * );
      
/*
 * R2083 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_MACT precedes participant
 *  Participant TE_MACT succeeds formalizer
 */
/* Navigation phrase:  R2083.'precedes' */
void ooaofooa_TE_MACT_R2083_Link_precedes( ooaofooa_TE_MACT *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2083_Unlink_precedes( ooaofooa_TE_MACT *, ooaofooa_TE_MACT * );
/* Navigation phrase:  R2083.'succeeds' */
void ooaofooa_TE_MACT_R2083_Link_succeeds( ooaofooa_TE_MACT *, ooaofooa_TE_MACT * );
void ooaofooa_TE_MACT_R2083_Unlink_succeeds( ooaofooa_TE_MACT *, ooaofooa_TE_MACT * );


#define ooaofooa_TE_MACT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_MACT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_MACT_CLASS_H */


