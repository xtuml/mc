/*----------------------------------------------------------------------------
 * File:  masl2xtuml.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASL2XTUML_H
#define MASL2XTUML_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "maslin_sys_types.h"
void masl2xtuml_in_end( void );
void masl2xtuml_in_populate( c_t *, c_t [8][ESCHER_SYS_MAX_STRING_LEN] );

#ifdef	__cplusplus
}
#endif
#endif  /* MASL2XTUML_H */
