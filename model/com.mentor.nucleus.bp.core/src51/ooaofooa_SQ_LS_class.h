/*----------------------------------------------------------------------------
 * File:  ooaofooa_SQ_LS_class.h
 *
 * Class:       Lifespan  (SQ_LS)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_SQ_LS_CLASS_H
#define OOAOFOOA_SQ_LS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Lifespan  (SQ_LS)
 */
struct ooaofooa_SQ_LS {

  /* application analysis class attributes */
  Escher_UniqueID_t Part_ID;  
  Escher_UniqueID_t Source_Part_ID;  
  c_t * Descrip;  
  bool Destroyed;  

  /* relationship storage */
  ooaofooa_SQ_P * SQ_P_R930;
  Escher_ObjectSet_s SQ_TM_R931_has_a_point_in_time_referenced_by;
  ooaofooa_SQ_P * SQ_P_R940_extends_from;
  ooaofooa_SQ_AP * SQ_AP_R949_defines_bounds_of_existence;
};
void ooaofooa_SQ_LS_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_SQ_LS_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_SQ_LS_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_SQ_LS * ooaofooa_SQ_LS_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_SQ_LS_R930_Link( ooaofooa_SQ_P *, ooaofooa_SQ_LS * );
void ooaofooa_SQ_LS_R930_Unlink( ooaofooa_SQ_P *, ooaofooa_SQ_LS * );
#define ooaofooa_SQ_TM_R931_From_SQ_LS_has_a_point_in_time_referenced_by( SQ_LS ) ( &((SQ_LS)->SQ_TM_R931_has_a_point_in_time_referenced_by) )
void ooaofooa_SQ_LS_R940_Link_is_source_of_span( ooaofooa_SQ_P *, ooaofooa_SQ_LS * );
void ooaofooa_SQ_LS_R940_Unlink_is_source_of_span( ooaofooa_SQ_P *, ooaofooa_SQ_LS * );


#define ooaofooa_SQ_LS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_SQ_LS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_SQ_LS_CLASS_H */


