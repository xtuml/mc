/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BRIDGE_class.h
 *
 * Class:       OAL bridge  (TE_BRIDGE)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TE_BRIDGE_CLASS_H
#define OOAOFOOA_TE_BRIDGE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   OAL bridge  (TE_BRIDGE)
 */
struct ooaofooa_TE_BRIDGE {

  /* application analysis class attributes */
  c_t * bridge_name;  
  c_t * parameters;  
  Escher_UniqueID_t Statement_ID;  

  /* relationship storage */
  ooaofooa_TE_SMT * TE_SMT_R2069;
};
void ooaofooa_TE_BRIDGE_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TE_BRIDGE_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_TE_BRIDGE_batch_relate( Escher_iHandle_t );

void ooaofooa_TE_BRIDGE_R2069_Link( ooaofooa_TE_SMT *, ooaofooa_TE_BRIDGE * );
void ooaofooa_TE_BRIDGE_R2069_Unlink( ooaofooa_TE_SMT *, ooaofooa_TE_BRIDGE * );


#define ooaofooa_TE_BRIDGE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TE_BRIDGE_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TE_BRIDGE_CLASS_H */


