/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_CIN_class.h
 *
 * Class:       Component Instance Container  (I_CIN)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_CIN_CLASS_H
#define OOAOFOOA_I_CIN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Component Instance Container  (I_CIN)
 */
struct ooaofooa_I_CIN {

  /* application analysis class attributes */
  Escher_UniqueID_t Container_ID;  

  /* relationship storage */
  ooaofooa_I_EXE * I_EXE_R2974;
  Escher_ObjectSet_s I_EXE_R2975;
};
void ooaofooa_I_CIN_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_CIN_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_CIN_batch_relate( Escher_iHandle_t );

/*
 * Where clause instance selection against identifying attribute set(s).
 */
ooaofooa_I_CIN * ooaofooa_I_CIN_AnyWhere1( Escher_UniqueID_t );

void ooaofooa_I_CIN_R2974_Link( ooaofooa_I_EXE *, ooaofooa_I_CIN * );
void ooaofooa_I_CIN_R2974_Unlink( ooaofooa_I_EXE *, ooaofooa_I_CIN * );
#define ooaofooa_I_EXE_R2975_From_I_CIN( I_CIN ) ( &((I_CIN)->I_EXE_R2975) )
/* Note:  I_CIN->I_EXE[R2975] not navigated */


#define ooaofooa_I_CIN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_CIN_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_CIN_CLASS_H */


