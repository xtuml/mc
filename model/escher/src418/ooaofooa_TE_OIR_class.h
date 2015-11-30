/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_OIR_class.h
 *
 * Class:       Extended Object In Relation  (TE_OIR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_OIR_CLASS_H
#define OOAOFOOA_TE_OIR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Object In Relation  (TE_OIR)
 */
struct ooaofooa_TE_OIR {

  /* application analysis class attributes */
  c_t * data_member;  
  c_t * assoc_type;  
  c_t * object_id;  
  c_t * rel_phrase;  
  i_t Mult;  
  bool NavigatedTo;  
  Escher_UniqueID_t OIR_ID;  
  Escher_UniqueID_t Obj_ID;  
  Escher_UniqueID_t Rel_ID;  

  /* relationship storage */
  ooaofooa_R_OIR * R_OIR_R2035;
};
void ooaofooa_TE_OIR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_OIR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_OIR_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_OIR_R2035_Link( ooaofooa_R_OIR *, ooaofooa_TE_OIR * );
void ooaofooa_TE_OIR_R2035_Unlink( ooaofooa_R_OIR *, ooaofooa_TE_OIR * );


#define ooaofooa_TE_OIR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_OIR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_OIR_CLASS_H */


