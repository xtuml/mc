/*----------------------------------------------------------------------------
 * File:  LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "LOG_bridge.h"

/*
 * Bridge:  LogSuccess
 */
void
LOG_LogSuccess( c_t * p_message )
{
  fprintf( stderr, "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
LOG_LogFailure( c_t * p_message )
{
  fprintf( stderr, "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
LOG_LogInfo( c_t * p_message )
{
  fprintf( stderr, "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
LOG_LogDate( Escher_Date_t p_d, c_t * p_message )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogTime
 */
void
LOG_LogTime( c_t * p_message, Escher_TimeStamp_t p_t )
{
  /* Replace/Insert your implementation code here... */
}


/*
 * Bridge:  LogReal
 */
void
LOG_LogReal( c_t * p_message, const r_t p_r )
{
  fprintf( stderr, "%s, %f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
LOG_LogInteger( const i_t p_message )
{
  fprintf( stderr, "%d\n", p_message );
}

