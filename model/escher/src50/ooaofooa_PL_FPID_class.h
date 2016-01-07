/*----------------------------------------------------------------------------
 * File:  ooaofooa_PL_FPID_class.h
 *
 * Class:       Function Package in Domain  (PL_FPID)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_PL_FPID_CLASS_H
#define OOAOFOOA_PL_FPID_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Function Package in Domain  (PL_FPID)
 */
struct ooaofooa_PL_FPID {

  /* application analysis class attributes */
  Escher_UniqueID_t FunPack_ID;  
  Escher_UniqueID_t Dom_ID;  

  /* relationship storage */
  ooaofooa_S_FPK * S_FPK_R301_contains;
  ooaofooa_S_DOM * S_DOM_R301_is_container;
};
void ooaofooa_PL_FPID_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_PL_FPID_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_PL_FPID_batch_relate( Escher_iHandle_t );

void ooaofooa_PL_FPID_R301_Link( ooaofooa_S_FPK *, ooaofooa_S_DOM *, ooaofooa_PL_FPID * );
void ooaofooa_PL_FPID_R301_Unlink( ooaofooa_S_FPK *, ooaofooa_S_DOM *, ooaofooa_PL_FPID * );


#define ooaofooa_PL_FPID_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_PL_FPID_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_PL_FPID_CLASS_H */


