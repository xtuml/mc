/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_MON_class.h
 *
 * Class:       Monitor  (I_MON)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_I_MON_CLASS_H
#define OOAOFOOA_I_MON_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Monitor  (I_MON)
 */
struct ooaofooa_I_MON {

  /* application analysis class attributes */
  Escher_UniqueID_t Execution_Engine_ID;  
  Escher_UniqueID_t Inst_ID;  
  bool enabled;  

  /* relationship storage */
  ooaofooa_I_EXE * I_EXE_R2949_monitored_by;
  ooaofooa_I_INS * I_INS_R2949_monitors;
};
void ooaofooa_I_MON_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_I_MON_instanceloader( Escher_iHandle_t, const c_t * [] );
void ooaofooa_I_MON_batch_relate( Escher_iHandle_t );

void ooaofooa_I_MON_R2949_Link( ooaofooa_I_EXE *, ooaofooa_I_INS *, ooaofooa_I_MON * );
void ooaofooa_I_MON_R2949_Unlink( ooaofooa_I_EXE *, ooaofooa_I_INS *, ooaofooa_I_MON * );


#define ooaofooa_I_MON_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_I_MON_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_I_MON_CLASS_H */


