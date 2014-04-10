/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_SRW_class.h
 *
 * Class:       Select Related Where  (ACT_SRW)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_SRW_CLASS_H
#define OOAOFOOA_ACT_SRW_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Select Related Where  (ACT_SRW)
 */
struct ooaofooa_ACT_SRW {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Where_Clause_Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R611_where_clause;
  ooaofooa_ACT_SEL * ACT_SEL_R664;
};
void ooaofooa_ACT_SRW_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_SRW_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_SRW_batch_relate( Escher_iHandle_t );

void ooaofooa_ACT_SRW_R611_Link( ooaofooa_V_VAL *, ooaofooa_ACT_SRW * );
void ooaofooa_ACT_SRW_R611_Unlink( ooaofooa_V_VAL *, ooaofooa_ACT_SRW * );
void ooaofooa_ACT_SRW_R664_Link( ooaofooa_ACT_SEL *, ooaofooa_ACT_SRW * );
void ooaofooa_ACT_SRW_R664_Unlink( ooaofooa_ACT_SEL *, ooaofooa_ACT_SRW * );


#define ooaofooa_ACT_SRW_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_SRW_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_SRW_CLASS_H */


