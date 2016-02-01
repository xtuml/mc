/*----------------------------------------------------------------------------
 * File:  maslin.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef MASLIN_H
#define MASLIN_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "maslin_sys_types.h"
void maslin_in_populate( c_t *, c_t [8][ESCHER_SYS_MAX_STRING_LEN] );
void maslin_in_render( c_t *, c_t * );
void maslin_in_validate( c_t * );

#ifdef	__cplusplus
}
#endif
#endif  /* MASLIN_H */
