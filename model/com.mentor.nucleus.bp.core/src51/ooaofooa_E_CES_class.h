/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_CES_class.h
 *
 * Class:       Create Event Statement  (E_CES)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_CES_CLASS_H
#define OOAOFOOA_E_CES_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Create Event Statement  (E_CES)
 */
struct ooaofooa_E_CES {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  bool is_implicit;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_E_ESS * E_ESS_R701;
  void * R702_subtype;
  Escher_ClassNumber_t R702_object_id;
  ooaofooa_V_VAR * V_VAR_R710_result;
};
void ooaofooa_E_CES_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_CES_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_CES_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_E_CES * ooaofooa_E_CES_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_E_CES_R701_Link( ooaofooa_E_ESS *, ooaofooa_E_CES * );
void ooaofooa_E_CES_R701_Unlink( ooaofooa_E_ESS *, ooaofooa_E_CES * );

/* Accessors to E_CES[R702] subtypes */
#define ooaofooa_E_CEE_R702_From_E_CES( E_CES ) \
   ( (((E_CES)->R702_object_id) == ooaofooa_E_CEE_CLASS_NUMBER) ? \
     ((ooaofooa_E_CEE *)((E_CES)->R702_subtype)) : (0) )
#define ooaofooa_E_CSME_R702_From_E_CES( E_CES ) \
   ( (((E_CES)->R702_object_id) == ooaofooa_E_CSME_CLASS_NUMBER) ? \
     ((ooaofooa_E_CSME *)((E_CES)->R702_subtype)) : (0) )

void ooaofooa_E_CES_R710_Link( ooaofooa_V_VAR *, ooaofooa_E_CES * );
void ooaofooa_E_CES_R710_Unlink( ooaofooa_V_VAR *, ooaofooa_E_CES * );


#define ooaofooa_E_CES_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_CES_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_CES_CLASS_H */


