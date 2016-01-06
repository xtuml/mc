/*----------------------------------------------------------------------------
 * File:  ooaofooa_SEN_E_class.h
 *
 * Class:       Search Engine  (SEN_E)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SEN_E_CLASS_H
#define OOAOFOOA_SEN_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Search Engine  (SEN_E)
 */
struct ooaofooa_SEN_E {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  

  /* relationship storage */
  ooaofooa_SQU_Q * SQU_Q_R9500_processes;
  void * R9501_subtype;
  Escher_ClassNumber_t R9501_object_id;
  Escher_ObjectSet_s SP_SP_R9502_searches_against;
  Escher_ObjectSet_s SR_SR_R9503_determines;
};
void ooaofooa_SEN_E_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SEN_E_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_SEN_E_batch_relate 0

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SEN_E * ooaofooa_SEN_E_AnyWhere1( Escher_UniqueID_t );


/* Accessors to SEN_E[R9501] subtypes */
#define ooaofooa_SEN_ALE_R9501_From_SEN_E( SEN_E ) \
   ( (((SEN_E)->R9501_object_id) == ooaofooa_SEN_ALE_CLASS_NUMBER) ? \
     ((ooaofooa_SEN_ALE *)((SEN_E)->R9501_subtype)) : (0) )
/* Note:  SEN_E->SEN_ALE[R9501] not navigated */
#define ooaofooa_SEN_DE_R9501_From_SEN_E( SEN_E ) \
   ( (((SEN_E)->R9501_object_id) == ooaofooa_SEN_DE_CLASS_NUMBER) ? \
     ((ooaofooa_SEN_DE *)((SEN_E)->R9501_subtype)) : (0) )
/* Note:  SEN_E->SEN_DE[R9501] not navigated */
#define ooaofooa_SEN_DCE_R9501_From_SEN_E( SEN_E ) \
   ( (((SEN_E)->R9501_object_id) == ooaofooa_SEN_DCE_CLASS_NUMBER) ? \
     ((ooaofooa_SEN_DCE *)((SEN_E)->R9501_subtype)) : (0) )
/* Note:  SEN_E->SEN_DCE[R9501] not navigated */
#define ooaofooa_SEN_RE_R9501_From_SEN_E( SEN_E ) \
   ( (((SEN_E)->R9501_object_id) == ooaofooa_SEN_RE_CLASS_NUMBER) ? \
     ((ooaofooa_SEN_RE *)((SEN_E)->R9501_subtype)) : (0) )
/* Note:  SEN_E->SEN_RE[R9501] not navigated */

#define ooaofooa_SP_SP_R9502_From_SEN_E_searches_against( SEN_E ) ( &((SEN_E)->SP_SP_R9502_searches_against) )
/* Note:  SEN_E->SP_SP[R9502] not navigated */
#define ooaofooa_SR_SR_R9503_From_SEN_E_determines( SEN_E ) ( &((SEN_E)->SR_SR_R9503_determines) )
/* Note:  SEN_E->SR_SR[R9503] not navigated */


#define ooaofooa_SEN_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SEN_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SEN_E_CLASS_H */


