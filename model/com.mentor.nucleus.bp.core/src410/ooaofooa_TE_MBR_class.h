/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_MBR_class.h
 *
 * Class:       Extended Member  (TE_MBR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_MBR_CLASS_H
#define OOAOFOOA_TE_MBR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Member  (TE_MBR)
 */
struct ooaofooa_TE_MBR {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t Name[ESCHER_SYS_MAX_STRING_LEN];  
  c_t GeneratedName[ESCHER_SYS_MAX_STRING_LEN];  
  i_t dimensions;  
  Escher_UniqueID_t te_dimID;  
  c_t array_spec[ESCHER_SYS_MAX_STRING_LEN];  
  Escher_UniqueID_t previousID;  
  Escher_UniqueID_t te_dtID;  
  Escher_UniqueID_t Member_ID;  
  Escher_UniqueID_t DT_ID;  

  /* relationship storage */
  ooaofooa_S_MBR * S_MBR_R2047;
  ooaofooa_TE_DIM * TE_DIM_R2059_has_first;
  ooaofooa_TE_MBR * TE_MBR_R2067_succeeds;
  ooaofooa_TE_MBR * TE_MBR_R2067_precedes;
  ooaofooa_TE_DT * TE_DT_R2068;
};
void ooaofooa_TE_MBR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_MBR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_MBR_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_MBR * ooaofooa_TE_MBR_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TE_MBR_R2047_Link( ooaofooa_S_MBR *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2047_Unlink( ooaofooa_S_MBR *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2059_Link_diments( ooaofooa_TE_DIM *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2059_Unlink_diments( ooaofooa_TE_DIM *, ooaofooa_TE_MBR * );
      
/*
 * R2067 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_MBR succeeds participant
 *  Participant TE_MBR precedes formalizer
 */
/* Navigation phrase:  R2067.'succeeds' */
void ooaofooa_TE_MBR_R2067_Link_succeeds( ooaofooa_TE_MBR *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2067_Unlink_succeeds( ooaofooa_TE_MBR *, ooaofooa_TE_MBR * );
/* Navigation phrase:  R2067.'precedes' */
void ooaofooa_TE_MBR_R2067_Link_precedes( ooaofooa_TE_MBR *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2067_Unlink_precedes( ooaofooa_TE_MBR *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2068_Link( ooaofooa_TE_DT *, ooaofooa_TE_MBR * );
void ooaofooa_TE_MBR_R2068_Unlink( ooaofooa_TE_DT *, ooaofooa_TE_MBR * );


#define ooaofooa_TE_MBR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_MBR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_MBR_CLASS_H */


