/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_BRV_class.h
 *
 * Class:       Bridge Value  (V_BRV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_BRV_CLASS_H
#define OOAOFOOA_V_BRV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Bridge Value  (V_BRV)
 */
struct ooaofooa_V_BRV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  
  Escher_UniqueID_t Brg_ID;  
  bool ParmListOK;  
  i_t externalEntityKeyLettersLineNumber;  
  i_t externalEntityKeyLettersColumn;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  Escher_ObjectSet_s V_PAR_R810_has;
  ooaofooa_S_BRG * S_BRG_R828;
};
void ooaofooa_V_BRV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_BRV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_BRV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_BRV * ooaofooa_V_BRV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_BRV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_BRV * );
void ooaofooa_V_BRV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_BRV * );
#define ooaofooa_V_PAR_R810_From_V_BRV_has( V_BRV ) ( &((V_BRV)->V_PAR_R810_has) )
void ooaofooa_V_BRV_R828_Link( ooaofooa_S_BRG *, ooaofooa_V_BRV * );
void ooaofooa_V_BRV_R828_Unlink( ooaofooa_S_BRG *, ooaofooa_V_BRV * );


#define ooaofooa_V_BRV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_BRV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_BRV_CLASS_H */


