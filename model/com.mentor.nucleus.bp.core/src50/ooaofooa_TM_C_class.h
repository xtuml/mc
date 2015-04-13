/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_C_class.h
 *
 * Class:       Component Mark  (TM_C)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_C_CLASS_H
#define OOAOFOOA_TM_C_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Mark  (TM_C)
 */
struct ooaofooa_TM_C {

  /* application analysis class attributes */
  c_t * Package;  
  c_t * Name;  
  c_t * xName;  
  c_t * include_file;  
  bool isChannel;  
  bool isRealized;  
  Escher_UniqueID_t te_cID;  

  /* relationship storage */
  ooaofooa_TM_TEMPLATE * TM_TEMPLATE_R2800;
  ooaofooa_TE_C * TE_C_R2804_marks;
};
void ooaofooa_TM_C_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_C_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TM_C_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TM_C * ooaofooa_TM_C_AnyWhere1( c_t *, c_t * );

void ooaofooa_TM_C_R2804_Link( ooaofooa_TE_C *, ooaofooa_TM_C * );
void ooaofooa_TM_C_R2804_Unlink( ooaofooa_TE_C *, ooaofooa_TM_C * );


#define ooaofooa_TM_C_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_C_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_C_CLASS_H */


