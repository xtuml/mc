/*----------------------------------------------------------------------------
 * File:  ooaofooa_SPR_REP_class.h
 *
 * Class:       Required Executable Property  (SPR_REP)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SPR_REP_CLASS_H
#define OOAOFOOA_SPR_REP_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Required Executable Property  (SPR_REP)
 */
struct ooaofooa_SPR_REP {

  /* application analysis class attributes */
  Escher_UniqueID_t Id;  
  Escher_UniqueID_t ExecutableProperty_Id;  
  Escher_UniqueID_t Requirement_Id;  

  /* relationship storage */
  Escher_ObjectSet_s V_MSV_R845;
  ooaofooa_C_EP * C_EP_R4500_implements;
  ooaofooa_C_R * C_R_R4500_is_implemented_by;
  void * R4502_subtype;
  Escher_ClassNumber_t R4502_object_id;
};
void ooaofooa_SPR_REP_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SPR_REP_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SPR_REP_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SPR_REP * ooaofooa_SPR_REP_AnyWhere1( Escher_UniqueID_t );

#define ooaofooa_V_MSV_R845_From_SPR_REP( SPR_REP ) ( &((SPR_REP)->V_MSV_R845) )
void ooaofooa_SPR_REP_R4500_Link( ooaofooa_C_EP *, ooaofooa_C_R *, ooaofooa_SPR_REP * );
void ooaofooa_SPR_REP_R4500_Unlink( ooaofooa_C_EP *, ooaofooa_C_R *, ooaofooa_SPR_REP * );

/* Accessors to SPR_REP[R4502] subtypes */
#define ooaofooa_SPR_RS_R4502_From_SPR_REP( SPR_REP ) \
   ( (((SPR_REP)->R4502_object_id) == ooaofooa_SPR_RS_CLASS_NUMBER) ? \
     ((ooaofooa_SPR_RS *)((SPR_REP)->R4502_subtype)) : (0) )
#define ooaofooa_SPR_RO_R4502_From_SPR_REP( SPR_REP ) \
   ( (((SPR_REP)->R4502_object_id) == ooaofooa_SPR_RO_CLASS_NUMBER) ? \
     ((ooaofooa_SPR_RO *)((SPR_REP)->R4502_subtype)) : (0) )



#define ooaofooa_SPR_REP_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SPR_REP_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SPR_REP_CLASS_H */


