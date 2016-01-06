/*----------------------------------------------------------------------------
 * File:  ooaofooa_ACT_BRG_class.h
 *
 * Class:       Bridge Invocation  (ACT_BRG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_ACT_BRG_CLASS_H
#define OOAOFOOA_ACT_BRG_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Invocation  (ACT_BRG)
 */
struct ooaofooa_ACT_BRG {

  /* application analysis class attributes */
  Escher_UniqueID_t Statement_ID;  
  Escher_UniqueID_t Brg_ID;  
  i_t bridgeNameLineNumber;  
  i_t bridgeNameColumn;  
  i_t externalEntityKeyLettersLineNumber;  
  i_t externalEntityKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_ACT_SMT * ACT_SMT_R603;
  Escher_ObjectSet_s V_PAR_R628_takes;
  ooaofooa_S_BRG * S_BRG_R674_is_an_invocation_of;
};
void ooaofooa_ACT_BRG_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_ACT_BRG_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_ACT_BRG_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_ACT_BRG * ooaofooa_ACT_BRG_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_ACT_BRG_R603_Link( ooaofooa_ACT_SMT *, ooaofooa_ACT_BRG * );
void ooaofooa_ACT_BRG_R603_Unlink( ooaofooa_ACT_SMT *, ooaofooa_ACT_BRG * );
#define ooaofooa_V_PAR_R628_From_ACT_BRG_takes( ACT_BRG ) ( &((ACT_BRG)->V_PAR_R628_takes) )
void ooaofooa_ACT_BRG_R674_Link( ooaofooa_S_BRG *, ooaofooa_ACT_BRG * );
void ooaofooa_ACT_BRG_R674_Unlink( ooaofooa_S_BRG *, ooaofooa_ACT_BRG * );


#define ooaofooa_ACT_BRG_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_ACT_BRG_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_ACT_BRG_CLASS_H */


