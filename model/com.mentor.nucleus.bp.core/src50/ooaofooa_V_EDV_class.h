/*----------------------------------------------------------------------------
 * File:  ooaofooa_V_EDV_class.h
 *
 * Class:       Event Datum Value  (V_EDV)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_V_EDV_CLASS_H
#define OOAOFOOA_V_EDV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Event Datum Value  (V_EDV)
 */
struct ooaofooa_V_EDV {

  /* application analysis class attributes */
  Escher_UniqueID_t Value_ID;  

  /* relationship storage */
  ooaofooa_V_VAL * V_VAL_R801;
  Escher_ObjectSet_s V_EPR_R834;
};
void ooaofooa_V_EDV_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_V_EDV_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_V_EDV_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_V_EDV * ooaofooa_V_EDV_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_V_EDV_R801_Link( ooaofooa_V_VAL *, ooaofooa_V_EDV * );
void ooaofooa_V_EDV_R801_Unlink( ooaofooa_V_VAL *, ooaofooa_V_EDV * );
#define ooaofooa_V_EPR_R834_From_V_EDV( V_EDV ) ( &((V_EDV)->V_EPR_R834) )


#define ooaofooa_V_EDV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_V_EDV_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_V_EDV_CLASS_H */


