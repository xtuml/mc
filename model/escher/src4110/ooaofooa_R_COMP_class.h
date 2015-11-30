/*----------------------------------------------------------------------------
 * File:  ooaofooa_R_COMP_class.h
 *
 * Class:       Derived Association  (R_COMP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_R_COMP_CLASS_H
#define OOAOFOOA_R_COMP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Derived Association  (R_COMP)
 */
struct ooaofooa_R_COMP {

  /* application analysis class attributes */
  Escher_UniqueID_t Rel_ID;  
  c_t * Rel_Chn;  

  /* relationship storage */
  ooaofooa_R_REL * R_REL_R206;
  ooaofooa_R_CONE * R_CONE_R214_relates;
  ooaofooa_R_COTH * R_COTH_R215_relates;
};
void ooaofooa_R_COMP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_R_COMP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_R_COMP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_R_COMP * ooaofooa_R_COMP_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_R_COMP_R206_Link( ooaofooa_R_REL *, ooaofooa_R_COMP * );
void ooaofooa_R_COMP_R206_Unlink( ooaofooa_R_REL *, ooaofooa_R_COMP * );


#define ooaofooa_R_COMP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_R_COMP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_R_COMP_CLASS_H */


