/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_DIM_class.h
 *
 * Class:       Extended Dimension  (TE_DIM)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_DIM_CLASS_H
#define OOAOFOOA_TE_DIM_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Dimension  (TE_DIM)
 */
struct ooaofooa_TE_DIM {

  /* application analysis class attributes */
  Escher_UniqueID_t te_dimID;  
  i_t elementCount;  
  i_t dimensionCount;  
  Escher_UniqueID_t next_te_dimID;  

  /* relationship storage */
  ooaofooa_TE_ATTR * TE_ATTR_R2055_diments;
  Escher_ObjectSet_s TE_PARM_R2056_diments;
  ooaofooa_TE_VAR * TE_VAR_R2057_diments;
  ooaofooa_TE_ABA * TE_ABA_R2058_diments;
  ooaofooa_TE_MBR * TE_MBR_R2059_diments;
  ooaofooa_TE_DIM * TE_DIM_R2060;
  ooaofooa_TE_DIM * TE_DIM_R2060_succeeds;
  Escher_ObjectSet_s TE_VAL_R2079;
};
void ooaofooa_TE_DIM_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_DIM_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_DIM_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TE_DIM * ooaofooa_TE_DIM_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_TE_PARM_R2056_From_TE_DIM_diments( TE_DIM ) ( &((TE_DIM)->TE_PARM_R2056_diments) )
      
/*
 * R2060 is Simple Reflexive:  0..1:0..1
 *  Formalizing TE_DIM  participant
 *  Participant TE_DIM succeeds formalizer
 */
/* Navigation phrase:  R2060.'' */
void ooaofooa_TE_DIM_R2060_Link( ooaofooa_TE_DIM *, ooaofooa_TE_DIM * );
void ooaofooa_TE_DIM_R2060_Unlink( ooaofooa_TE_DIM *, ooaofooa_TE_DIM * );
/* Navigation phrase:  R2060.'succeeds' */
void ooaofooa_TE_DIM_R2060_Link_succeeds( ooaofooa_TE_DIM *, ooaofooa_TE_DIM * );
void ooaofooa_TE_DIM_R2060_Unlink_succeeds( ooaofooa_TE_DIM *, ooaofooa_TE_DIM * );
#define ooaofooa_TE_VAL_R2079_From_TE_DIM( TE_DIM ) ( &((TE_DIM)->TE_VAL_R2079) )


#define ooaofooa_TE_DIM_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_DIM_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_DIM_CLASS_H */


