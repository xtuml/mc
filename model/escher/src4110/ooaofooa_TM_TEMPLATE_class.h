/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_TEMPLATE_class.h
 *
 * Class:       CPP Template  (TM_TEMPLATE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_TEMPLATE_CLASS_H
#define OOAOFOOA_TM_TEMPLATE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   CPP Template  (TM_TEMPLATE)
 */
struct ooaofooa_TM_TEMPLATE {

  /* application analysis class attributes */
  Escher_UniqueID_t ID;  
  c_t * tm_cPackage;  
  c_t * tm_cName;  
  c_t * tm_ifPackage;  
  c_t * tm_ifName;  
  bool current;  
  c_t * template_parameters;  
  c_t * template_parameters_default;  
  c_t * template_actual_parameters;  
  c_t * template_default_instantiation;  

  /* relationship storage */
  ooaofooa_TM_C * TM_C_R2800;
  Escher_ObjectSet_s TM_TP_R2801;
  ooaofooa_TM_IF * TM_IF_R2802;
};
void ooaofooa_TM_TEMPLATE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_TEMPLATE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TM_TEMPLATE_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_TM_TEMPLATE * ooaofooa_TM_TEMPLATE_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_TM_TEMPLATE_R2800_Link( ooaofooa_TM_C *, ooaofooa_TM_TEMPLATE * );
void ooaofooa_TM_TEMPLATE_R2800_Unlink( ooaofooa_TM_C *, ooaofooa_TM_TEMPLATE * );
#define ooaofooa_TM_TP_R2801_From_TM_TEMPLATE( TM_TEMPLATE ) ( &((TM_TEMPLATE)->TM_TP_R2801) )
void ooaofooa_TM_TEMPLATE_R2802_Link( ooaofooa_TM_IF *, ooaofooa_TM_TEMPLATE * );
void ooaofooa_TM_TEMPLATE_R2802_Unlink( ooaofooa_TM_IF *, ooaofooa_TM_TEMPLATE * );


#define ooaofooa_TM_TEMPLATE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_TEMPLATE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_TEMPLATE_CLASS_H */


