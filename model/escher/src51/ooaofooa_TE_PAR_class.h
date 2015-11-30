/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PAR_class.h
 *
 * Class:       Extended Actual Parameter  (TE_PAR)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_PAR_CLASS_H
#define OOAOFOOA_TE_PAR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Extended Actual Parameter  (TE_PAR)
 */
struct ooaofooa_TE_PAR {

  /* application analysis class attributes */
  c_t * Name;  
  i_t By_Ref;  
  c_t * buffer;  
  i_t Order;  
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t te_parmID;  

  /* relationship storage */
  ooaofooa_V_PAR * V_PAR_R2063;
  ooaofooa_TE_PARM * TE_PARM_R2091;
};
void ooaofooa_TE_PAR_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_PAR_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_PAR_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_PAR_R2063_Link( ooaofooa_V_PAR *, ooaofooa_TE_PAR * );
void ooaofooa_TE_PAR_R2063_Unlink( ooaofooa_V_PAR *, ooaofooa_TE_PAR * );
void ooaofooa_TE_PAR_R2091_Link( ooaofooa_TE_PARM *, ooaofooa_TE_PAR * );
void ooaofooa_TE_PAR_R2091_Unlink( ooaofooa_TE_PARM *, ooaofooa_TE_PAR * );


#define ooaofooa_TE_PAR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_PAR_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_PAR_CLASS_H */


