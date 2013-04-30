/*----------------------------------------------------------------------------
 * File:  ooaofooa_LOG_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  Logging (LOG)
 * 
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "ooaofooa_T_bridge.h"
#include "ooaofooa_LOG_bridge.h"
#include "ooaofooa_POP_bridge.h"
#include "ooaofooa_classes.h"
#include "ooaofooa_LOG_bridge.h"

/*
 * Bridge:  LogSuccess
 */
void
ooaofooa_LOG_LogSuccess( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogFailure
 */
void
ooaofooa_LOG_LogFailure( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogInfo
 */
void
ooaofooa_LOG_LogInfo( c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
	printf( "%s\n", p_message );
}


/*
 * Bridge:  LogDate
 */
void
ooaofooa_LOG_LogDate( Escher_Date_t p_d, c_t p_message[ESCHER_SYS_MAX_STRING_LEN])
{
	printf( "%s %ld\n", p_message, p_d );
}


/*
 * Bridge:  LogTime
 */
void
ooaofooa_LOG_LogTime( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], Escher_TimeStamp_t p_t)
{
	printf( "%s %ld\n", p_message, p_t );
}


/*
 * Bridge:  LogReal
 */
void
ooaofooa_LOG_LogReal( c_t p_message[ESCHER_SYS_MAX_STRING_LEN], r_t p_r)
{
	printf( "%s%f\n", p_message, p_r );
}


/*
 * Bridge:  LogInteger
 */
void
ooaofooa_LOG_LogInteger( i_t p_message)
{
	printf( "%d\n", p_message );
}


