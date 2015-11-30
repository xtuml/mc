/*----------------------------------------------------------------------------
 * File:  ooaofooa_E_GEN_class.h
 *
 * Class:       Generate  (E_GEN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_E_GEN_CLASS_H
#define OOAOFOOA_E_GEN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Generate  (E_GEN)
 */
struct ooaofooa_E_GEN {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Var_ID;  

  /* relationship storage */
  ooaofooa_E_GSME * E_GSME_R705;
  ooaofooa_V_VAR * V_VAR_R712_has_recipient;
};
void ooaofooa_E_GEN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_E_GEN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_E_GEN_batch_relate( Escher_iHandle_t );

void ooaofooa_E_GEN_R705_Link( ooaofooa_E_GSME *, ooaofooa_E_GEN * );
void ooaofooa_E_GEN_R705_Unlink( ooaofooa_E_GSME *, ooaofooa_E_GEN * );
void ooaofooa_E_GEN_R712_Link( ooaofooa_V_VAR *, ooaofooa_E_GEN * );
void ooaofooa_E_GEN_R712_Unlink( ooaofooa_V_VAR *, ooaofooa_E_GEN * );


#define ooaofooa_E_GEN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_E_GEN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_E_GEN_CLASS_H */


