/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_CLASS_class.h
 *
 * Class:       Extended Class  (TE_CLASS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_CLASS_CLASS_H
#define OOAOFOOA_TE_CLASS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Class  (TE_CLASS)
 */
struct ooaofooa_TE_CLASS {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  i_t Numb;  
  c_t Key_Lett[ESCHER_SYS_MAX_STRING_LEN];  
  c_t scope[ESCHER_SYS_MAX_STRING_LEN];  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  c_t CBGeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  bool Included;  
  bool PEIsDefinedInData;  
  bool IsFixedPopulation;  
  bool IsReadOnly;  
  bool ExcludeFromGen;  
  i_t MaxExtentSize;  
  bool SelfCreated;  
  bool NonSelfCreated;  
  bool Persistent;  
  i_t Order;  
  bool IsTrace;  
  i_t ContainerIndex;  
  i_t Task;  
  c_t class_file[ESCHER_SYS_MAX_STRING_LEN];  
  c_t system_class_number[ESCHER_SYS_MAX_STRING_LEN];  
  c_t CBsystem_class_number[ESCHER_SYS_MAX_STRING_LEN];  
  c_t persist_link[ESCHER_SYS_MAX_STRING_LEN];  
  c_t dispatcher[ESCHER_SYS_MAX_STRING_LEN];  
  c_t CBdispatcher[ESCHER_SYS_MAX_STRING_LEN];  
  c_t attribute_format[ESCHER_SYS_MAX_STRING_LEN];  
  c_t attribute_dump[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t te_cID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t nextID;  

  /* relationship storage */
  Escher_ObjectSet_s TE_SWC_R2001;
  ooaofooa_O_OBJ * O_OBJ_R2019;
  Escher_ObjectSet_s TE_ATTR_R2061;
  ooaofooa_TE_C * TE_C_R2064;
  Escher_ObjectSet_s TE_SM_R2072;
  Escher_ObjectSet_s TE_LNK_R2076_connects;
  ooaofooa_TE_SELECT_RELATED * TE_SELECT_RELATED_R2077;
  ooaofooa_TE_CLASS * TE_CLASS_R2092_precedes;
  ooaofooa_TE_CLASS * TE_CLASS_R2092_succeeds;
};
void ooaofooa_TE_CLASS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_CLASS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_CLASS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_CLASS * ooaofooa_TE_CLASS_AnyWhere1( c_t[ESCHER_SYS_MAX_STRING_LEN] );
ooaofooa_TE_CLASS * ooaofooa_TE_CLASS_AnyWhere2( Escher_UniqueID_t );

#define ooaofooa_TE_SWC_R2001_From_TE_CLASS( TE_CLASS ) ( &((TE_CLASS)->TE_SWC_R2001) )
/* Note:  TE_CLASS->TE_SWC[R2001] not navigated */
void ooaofooa_TE_CLASS_R2019_Link( ooaofooa_O_OBJ *, ooaofooa_TE_CLASS * );
void ooaofooa_TE_CLASS_R2019_Unlink( ooaofooa_O_OBJ *, ooaofooa_TE_CLASS * );
#define ooaofooa_TE_ATTR_R2061_From_TE_CLASS( TE_CLASS ) ( &((TE_CLASS)->TE_ATTR_R2061) )
void ooaofooa_TE_CLASS_R2064_Link( ooaofooa_TE_C *, ooaofooa_TE_CLASS * );
void ooaofooa_TE_CLASS_R2064_Unlink( ooaofooa_TE_C *, ooaofooa_TE_CLASS * );
#define ooaofooa_TE_SM_R2072_From_TE_CLASS( TE_CLASS ) ( &((TE_CLASS)->TE_SM_R2072) )
/* Note:  TE_CLASS->TE_SM[R2072] not navigated */
#define ooaofooa_TE_LNK_R2076_From_TE_CLASS_connects( TE_CLASS ) ( &((TE_CLASS)->TE_LNK_R2076_connects) )
      
/*
 * R2092 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_CLASS precedes participant
 *  Participant TE_CLASS succeeds formalizer
 */
/* Navigation phrase:  R2092.'precedes' */
void ooaofooa_TE_CLASS_R2092_Link_precedes( ooaofooa_TE_CLASS *, ooaofooa_TE_CLASS * );
void ooaofooa_TE_CLASS_R2092_Unlink_precedes( ooaofooa_TE_CLASS *, ooaofooa_TE_CLASS * );
/* Navigation phrase:  R2092.'succeeds' */
void ooaofooa_TE_CLASS_R2092_Link_succeeds( ooaofooa_TE_CLASS *, ooaofooa_TE_CLASS * );
void ooaofooa_TE_CLASS_R2092_Unlink_succeeds( ooaofooa_TE_CLASS *, ooaofooa_TE_CLASS * );


#define ooaofooa_TE_CLASS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_CLASS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_CLASS_CLASS_H */


