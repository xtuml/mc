/*----------------------------------------------------------------------------
 * File:  ooaofooa_TM_DTMACRO_class.h
 *
 * Class:       Data Type Macro  (TM_DTMACRO)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef OOAOFOOA_TM_DTMACRO_CLASS_H
#define OOAOFOOA_TM_DTMACRO_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Data Type Macro  (TM_DTMACRO)
 */
struct ooaofooa_TM_DTMACRO {

  /* application analysis class attributes */
  c_t * component;  
  c_t * DT_name;  
  bool IsExternalMacro;  
  c_t * genName;  
  c_t * Initial_Value;  
  c_t * Include_File;  

};
void ooaofooa_TM_DTMACRO_instancedumper( Escher_iHandle_t );
Escher_iHandle_t ooaofooa_TM_DTMACRO_instanceloader( Escher_iHandle_t, const c_t * [] );
/* Allow reference to this function name but cause it to resolve to 0.  */
#define ooaofooa_TM_DTMACRO_batch_relate 0



#define ooaofooa_TM_DTMACRO_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_ooaofooa_TM_DTMACRO_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* OOAOFOOA_TM_DTMACRO_CLASS_H */


