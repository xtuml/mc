.//============================================================================
.// Notice:
.// (C) Copyright 1998-2011 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
/*---------------------------------------------------------------------
 * File:  ${te_file.tim}.${te_file.src_file_ext}
 *
 * External Entity:  Time (TIM)
 *                            
 * Description:
 * This file provides an implementation of the time functionally
 * similar to the standard Shlaer-Mellor timer functionality.
 * Usage is conformed to the bridge interface
 * as described in the BridgePoint Action Language Users Guide.
 *
 * Modify this file to match project design requirements.  Simply add
 * or remove code.  Special comments draw attention to where
 * modifications can most easily be made.
 *
 * Only a subset of the TIM interfaces are provided in this simple
 * prototype implementation.
.if ( te_thread.flavor != "Nucleus" )
 * Long integers are used to store time values thus limiting the
 * duration of timers and the system ticker to about 71 minutes.
 * The sample implementation uses the localtime, mktime, ftime
 * and time library routines.
 *
 * For this example implementation to work, TIM_init() must be
 * invoked at start-up (perhaps from ${te_callout.initialization}).
 * Also, TIM_tick() must be invoked periodically and as often
 * as practical (perhaps from ${te_callout.background_processing}).
 * The resolution of the timers is driven largely by the frequency
 * of invocation of TIM_tick().  Note that TIM_tick could be invoked
 * asynchronously based upon the duration of the next most pending
 * timer.
.end if
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.if ( te_thread.flavor == "Nucleus" )
#ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
#include "nucleus.h"   /* Nucleus PLUS declarations */
#endif
.else
#include <sys/timeb.h>
#include <time.h>
.end if 

.if ( te_thread.flavor == "Nucleus" )
#define MSEC_CONVERT 10
.elif ( te_thread.flavor == "SystemC" )
#define MSEC_CONVERT 1000UL
.end if
#define USEC_CONVERT \
.if ( te_thread.flavor == "Nucleus" )
10000UL
.else
1000UL
.end if

.if ( te_sys.AUTOSAR )
/* 1000UL should probably come from some autosar spec */
#define CALL_PERIOD_MS 1000UL
.end if
.if ( not te_tim.keyed_timer_support )
  .include "${te_file.arc_path}/t.sys_tim.data.h"
.end if

.if ( te_thread.flavor == "SystemC" )
TIM * ${tim_inst} = 0;
.end if

.if ( te_sys.AUTOSAR )
static unsigned long msecCounter = 0;
.end if 
#ifdef USED_TO_ALLOW_PAUSING
static ETimer_time_t start_of_pause = 0;
static bool paused = false;
#endif
static ETimer_time_t tinit = 0;
.if ( te_thread.flavor != "Nucleus" )
static struct timeb systyme;
.end if
#if ${te_tim.max_timers} > 0
static ETimer_t swtimers[ ${te_tim.max_timers} ];  /* system.clr color */
.if ( te_thread.flavor == "Nucleus" )
static NU_TIMER nutimers[ ${te_tim.max_timers} ];  /* parallel set of PLUS timers */
.end if
static ETimer_t * animate = 0, * inanimate = 0;
.if ( te_tim.keyed_timer_support )
static u4_t timer_access_key = 0;
.end if

.if ( te_thread.flavor == "Nucleus" )
static void nut_expire( unsigned );
.else
static void timer_insert_sorted( ETimer_t * );
.end if
static void timer_fire( ETimer_t * const );
static ETimer_t *timer_start( const ETimer_time_t, ${te_eq.base_event_type} * const );
static bool timer_cancel( ETimer_t * const );
static bool timer_find_and_delete( ETimer_t * const );
#endif   /* if ${te_tim.max_timers} > 0 */
static ETimer_time_t ETimer_msec_time( void );


#if ${te_tim.max_timers} > 0
/*=====================================================================
 * BridgePoint Primitive:
 * <timer_inst_ref_var> = TIM::timer_start(
 *   microseconds:<integer_var>,
 *   event_inst:<event_inst_var> )
 * This bridge starts up an instance of a one-shot xtUML timer.
 *===================================================================*/
.if ( te_tim.keyed_timer_support )
${te_prefix.type}Timer_t
.else
${te_prefix.type}Timer_t *
.end if
TIM::TIM_timer_start(
  ${te_eq.base_event_type} * ee_event_inst,
  const ${te_prefix.type}uSec_t ee_microseconds )
{
  /* Insert implementation specific code here.  */
.if ( te_tim.keyed_timer_support )
  ETimer_t * new_timer = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
  ${te_prefix.type}Timer_t result = { new_timer, new_timer->accesskey };
.if ( te_tim.recurring_timer_support )
  result->recurrence = 0;
.end if
  return result;
.else
  ETimer_t * t = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
.if ( te_tim.recurring_timer_support )
  t->recurrence = 0;
.end if
  return (${te_prefix.type}Timer_t *) t;
.end if  
}

/*=====================================================================
 * BridgePoint Primitive:
 * <timer_inst_ref_var> = TIM::timer_start_recurring(
 *   microseconds:<integer_var>,
 *   event_inst:<event_inst_var> )
 * This bridge starts up an instance of a recurring xtUML timer.
 *===================================================================*/
.if ( te_tim.keyed_timer_support )
${te_prefix.type}Timer_t
.else
${te_prefix.type}Timer_t *
.end if
TIM::TIM_timer_start_recurring(
  ${te_eq.base_event_type} * ee_event_inst,
  const ${te_prefix.type}uSec_t ee_microseconds )
{
  /* Insert implementation specific code here.  */
.if ( te_tim.recurring_timer_support )
  .if ( te_tim.keyed_timer_support )
  ETimer_t * new_timer = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
  ${te_prefix.type}Timer_t result = { new_timer, new_timer->accesskey };
  result->recurrence = ee_microseconds/USEC_CONVERT;
  return result;
  .else
  ETimer_t * t = timer_start( ee_microseconds/USEC_CONVERT, ee_event_inst );
  t->recurrence = ee_microseconds/USEC_CONVERT;
  return (${te_prefix.type}Timer_t *) t;
  .end if
.else
  .if ( te_tim.keyed_timer_support )
  ${te_prefix.type}Timer_t result = {0, 0};
  return result;
  .else
  return 0;
  .end if
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::timer_remaining_time(
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Return the remaining time of the specified timer.
 *===================================================================*/
${te_prefix.type}uSec_t
TIM::TIM_timer_remaining_time(
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  const ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
  ${te_prefix.type}uSec_t t = 0UL;
.if ( te_thread.flavor == "Nucleus" )
  NU_TIMER * nt;
.end if
.if ( te_tim.keyed_timer_support )
  ETimer_t * p_timer = ee_timer_inst.timer;
    
  if ( ( p_timer != 0 ) && ( ee_timer_inst.key == p_timer->accesskey ) ) {
  .if ( te_thread.flavor == "Nucleus" )
    nt = &nutimers[ p_timer->index ];
    NU_Get_Remaining_Time( nt, &t );
    t = t * USEC_CONVERT;
  .else
    t = ETimer_msec_time();
    t = ( p_timer->expiration > t ) ? USEC_CONVERT * ( p_timer->expiration - t ) : 0UL;
  .end if
.else
  if ( ee_timer_inst_ref != 0 ) {
  .if ( te_thread.flavor == "Nucleus" )
    nt = &nutimers[ ( (ETimer_t *) ee_timer_inst_ref )->index ];
    NU_Get_Remaining_Time( nt, &t );
    t = t * USEC_CONVERT;
  .else
    t = ETimer_msec_time();
    t = ( ((ETimer_t *) ee_timer_inst_ref)->expiration > t ) ?
      USEC_CONVERT * ( ((ETimer_t *) ee_timer_inst_ref)->expiration - t ) :
      0UL;
  .end if
.end if
  }
  return ( t );  
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM_timer_reset_time(
 *   microseconds:<integer_var>,
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Try to change expiration of an existing timer.
 * If successful, return true.
 *===================================================================*/
bool
TIM::TIM_timer_reset_time(
  const ${te_prefix.type}uSec_t ee_microseconds,
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
.if ( te_tim.keyed_timer_support )
  ETimer_t * p_timer = ee_timer_inst.timer;
  bool rc = false;
  if ( ( p_timer != 0 ) && ( ee_timer_inst.key == p_timer->accesskey ) && ( p_timer->expiration > 0UL ) ) {
    p_timer->expiration = ETimer_msec_time() + ee_microseconds/USEC_CONVERT + 1UL;
    rc = true;
  }
.else
  ETimer_t * t = (ETimer_t *) ee_timer_inst_ref;
  bool rc = false;
  if ( ( t != 0 ) && ( t->expiration > 0UL ) ) {
    .if ( te_thread.flavor == "SystemC" )
    t->expiration = ETimer_msec_time() + ee_microseconds/USEC_CONVERT;
    .else
    t->expiration = ETimer_msec_time() + ee_microseconds/USEC_CONVERT + 1UL;
    .end if
    rc = true;
  }
.end if
  return ( rc );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM_timer_add_time(
 *   microseconds:<integer_var>,
 *   timer_inst_ref:<timer_inst_ref_var> )
 * Try to add time to an existing timer.
 * If successful, return true.
 *===================================================================*/
bool
TIM::TIM_timer_add_time(
  const ${te_prefix.type}uSec_t ee_microseconds,
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
.if ( te_tim.keyed_timer_support )
  ETimer_t * p_timer = ee_timer_inst.timer;
  bool rc = false;
  if ( ( p_timer != 0 ) && ( ee_timer_inst.key == p_timer->accesskey ) && ( p_timer->expiration > 0UL ) ) {
    p_timer->expiration += ee_microseconds/USEC_CONVERT;
    rc = true;
  }
.else
  ETimer_t * t = (ETimer_t *) ee_timer_inst_ref;
  bool rc = false;
  if ( ( t != 0 ) && ( t->expiration > 0UL ) ) {
    t->expiration += ee_microseconds/USEC_CONVERT;
    rc = true;
  }
.end if
  return ( rc );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <was_running_flag> = TIM::timer_cancel(
 *   timer_inst_ref:<timer_inst_ref_var> )
 * This attempts to cancel the specified timer.
 * Return true if we actually cancelled the timer.
 *===================================================================*/
bool
TIM::TIM_timer_cancel(
.if ( te_tim.keyed_timer_support )
  const ${te_prefix.type}Timer_t ee_timer_inst )
.else
  ${te_prefix.type}Timer_t * const ee_timer_inst_ref )
.end if
{
  /* Insert implementation specific code here.  */
.if ( te_tim.keyed_timer_support )
  ETimer_t * p_timer = ee_timer_inst.timer;
  bool rc = false;
  if ( ( p_timer != 0 ) && ( ee_timer_inst.key == p_timer->accesskey ) ) {
    rc = timer_cancel( p_timer );
  }
  return ( rc );
.else
  return timer_cancel( (ETimer_t * const) ee_timer_inst_ref );
.end if
}
#endif   /* if ${te_tim.max_timers} > 0 */


/*=====================================================================
 * BridgePoint Primitive:
 * <date_var> = TIM::current_date()
 * Return a variable representing the current calendar date.
 *===================================================================*/
${te_prefix.type}Date_t
TIM::TIM_current_date( void )
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor == "Nucleus" )
  return 0;
.else
  return ( (${te_prefix.type}Date_t) time( 0 ) );
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <date_var> = TIM::create_date(
 *   day:<integer_var>,
 *   hour:<integer_var>,
 *   minute:<integer_var>,
 *   month:<integer_var>,
 *   second:<integer_var>,
 *   year:<integer_var> )
 * Return a variable representing the calendar date as specified
 * by the input components.
 *===================================================================*/
${te_prefix.type}Date_t
TIM::TIM_create_date(
  const i_t ee_day,
  const i_t ee_hour,
  const i_t ee_minute,
  const i_t ee_month,
  const i_t ee_second,
  const i_t ee_year )
{
  /* Insert implementation specific code here.  */
  ${te_prefix.type}Date_t r = 0;
.if ( te_thread.flavor != "Nucleus" )
  struct tm t;
  t.tm_isdst = -1;
  t.tm_mday = ee_day;
  t.tm_hour = ee_hour;
  t.tm_min = ee_minute;
  t.tm_mon = ee_month;
  t.tm_sec = ee_second;
  t.tm_year = ee_year - 1900;      /* not enough space for 100 years */
  r = (${te_prefix.type}Date_t) mktime( &t );
.end if
  return ( r );
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_second(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_second(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_sec );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_minute(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_minute(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_min );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_hour(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_hour(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_hour );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_day(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_day(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_mday );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_month(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_month(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_mon );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <integer_var> = TIM::get_year(
 *   date:<integer_var> )
 * Return the year field of the date variable.
 *===================================================================*/
i_t
TIM::TIM_get_year(
  const ${te_prefix.type}Date_t ee_date
)
{
  /* Insert implementation specific code here.  */
.if ( te_thread.flavor != "Nucleus" )
  struct tm * tp;
  tp = localtime( &ee_date );
  return ( tp->tm_year + 1900 );
.else
  return 0;
.end if
}

/*=====================================================================
 * BridgePoint Primitive:
 * <timestamp_var> = TIM::current_clock()
 * This bridge returns a system dependent time value.
 *===================================================================*/
${te_prefix.type}TimeStamp_t
TIM::TIM_current_clock( void )
{
  /* Insert implementation specific code here.  */
  return ( ETimer_msec_time() );
}


/* Routines below are implementation specific.  Modify to taste.     */


#if ${te_tim.max_timers} > 0


.if ( te_thread.flavor == "Nucleus" )
/*---------------------------------------------------------------------
 * Expire a NU_TIMER.  Use index to find Etimer, hence event.
 *-------------------------------------------------------------------*/
static void nut_expire(
  unsigned timer_index
)
{
  ETimer_t * t;
  t = &swtimers[ timer_index ];
  timer_fire( t );
}
.end if

/*---------------------------------------------------------------------
 * Get a timer instance from the inanimate list, provide the
 * expiration time and insert it into its proper location among
 * the currently ticking timers.
 *-------------------------------------------------------------------*/
static ETimer_t *
timer_start(
  const ETimer_time_t duration,
  ${te_eq.base_event_type} * const event
)
{
  ETimer_t * t;
.if ( te_thread.flavor == "Nucleus" )
  NU_TIMER * nt;
  STATUS status;
.end if
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  t = inanimate;
  if ( t != 0 ) {
.if ( te_thread.flavor == "Nucleus" )
    ETimer_time_t reschedule = 0;
  .if ( te_tim.recurring_timer_support )
    reschedule = ( t->recurrence == 0 ) ? 0 : duration;
  .end if
.end if
    inanimate = inanimate->next;
    t->event = event;
.if ( te_thread.flavor == "Nucleus" )
    t->next = animate;
    animate = t;
    nt = &nutimers[ t->index ];
    status = NU_Reset_Timer( nt, nut_expire, duration, reschedule, NU_ENABLE_TIMER );
.else
    /*---------------------------------------------------------------*/
    /* Calculate the timer expiration time.                          */
    .if ( te_thread.flavor == "SystemC" )
    /*---------------------------------------------------------------*/
    t->expiration = ETimer_msec_time() + duration;
    .else
    /* Note:  Add one to the duration to make sure that delay is     */
    /* at least as long as duration.                                 */
    /*---------------------------------------------------------------*/
    t->expiration = ETimer_msec_time() + duration + 1UL;
    .end if
    .if ( te_tim.keyed_timer_support )
    timer_access_key = timer_access_key + 1 ? timer_access_key + 1 : 1;
    t->accesskey = timer_access_key;
    .end if
    timer_insert_sorted( t );
    .if ( te_thread.flavor == "SystemC" )
    ${tim_inst}->${timer_evt_name}.notify( animate->expiration - ETimer_msec_time(), SC_MS );
    .end if
.end if
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  .if ( te_thread.flavor != "Nucleus" )
  ${te_thread.nonbusy_wake}( 0 ); /* Wake default task to service timers.  */
  .end if
  #endif
.end if
  return ( t );
}

.if ( te_thread.flavor != "Nucleus" )
/*---------------------------------------------------------------------
 * Insert a timer into the list of ticking timers maintaining
 * an order that fires timers chronologically.
 *-------------------------------------------------------------------*/
static void
timer_insert_sorted(
  ETimer_t * t
)
{
  if ( animate == 0 ) {                              /* empty list   */
    t->next = 0;
    animate = t;
  } else {
    ETimer_time_t poptime = t->expiration;
    if ( poptime <= animate->expiration ) {          /* before head  */
      t->next = animate;
      animate = t;         
    } else {                                         /* find bigger  */
      ETimer_t * prev = animate;
      ETimer_t * cursor;
      while ( ( cursor = prev->next ) != 0 ) {
        if ( poptime <= cursor->expiration ) {
          break;
        }
        prev = cursor;
      }
      prev->next = t;                                /* link in      */
      t->next = cursor;
    }
  }
}

.end if
/*---------------------------------------------------------------------
 * Try to find a ticking timer and move to the non-ticking list.
 *-------------------------------------------------------------------*/
static bool
timer_find_and_delete( ETimer_t * const t )
{
  bool rc = false;
  if ( ( t != 0 ) && ( animate != 0 ) ) {
    /*---------------------------------------------------------------*/
    /* Check to see if the timer has already been reset.  This       */
    /* check is probabilistic; it could have a hole if multitasked.  */
    /* We need to try to unlink and see if we actually unlinked.     */
    /* Attempt to remove the timer from the list of running timers.  */
    /* If we succeed, then we can cancel/delete the timer.  If the   */
    /* timer is not in the list, then there is no point in           */
    /* attempting to do any more.                                    */
    /*---------------------------------------------------------------*/
    if ( t == animate ) {
      animate = animate->next;
    } else {
      ETimer_t * prev = animate;
      ETimer_t * cursor;
      while ( ( cursor = prev->next ) != t ) {           /* find */
        if ( cursor == 0 ) {
    .if ( te_tim.timer_event_search_and_destroy )
          /* Timer not found.  It must have expired already!  */
          return ( ${te_eq.search_and_destroy}( t->event ) );
    .else
          return ( false );
    .end if
        }
        prev = cursor;
      }
      prev->next = t->next;                             /* unlink */
    }
    t->expiration = 0; /* in case anyone tries to read the handle */
    .if ( te_tim.keyed_timer_support )
    t->accesskey = 0;
    .end if
    t->next = inanimate;
    inanimate = t;
    rc = true;
  }
  return rc;
}

/*---------------------------------------------------------------------
 * Cancel the given timer if possible.
 *-------------------------------------------------------------------*/
static bool
timer_cancel(
  ETimer_t * const t
)
{
  bool rc = false;
.if ( te_thread.flavor == "Nucleus" )
  STATUS status;
.end if
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  if ( timer_find_and_delete( t ) == true ) {
    if ( t->event != 0 ) {
      ${te_eq.delete}( t->event );
      rc = true;
    }
.if ( te_thread.flavor == "Nucleus" )
    status = NU_Control_Timer( &nutimers[ t->index ], NU_DISABLE_TIMER );
.end if
  }
.if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.end if
  return ( rc );
}


/*---------------------------------------------------------------------
 * Generate delayed event to the application.
 * Deactivate fired timer.
 *-------------------------------------------------------------------*/
static void
timer_fire(
  ETimer_t * const t
)
{
  ${te_eq.non_self}( t->event );
.if ( te_tim.recurring_timer_support )
  t->expiration = ( t->recurrence == 0 ) ? 0 : t->expiration + t->recurrence;
  .if ( te_tim.keyed_timer_support )
  t->accesskey = (t->recurrence == 0 ) ? 0 : t->accesskey;
  .end if
.else
  t->expiration = 0;              /* Reset and mark inactive.      */
  .if ( te_tim.keyed_timer_support )
  t->accesskey = 0;
  .end if
.end if
.if ( te_tim.recurring_timer_support )
  if ( 0 != t->recurrence ) {
    ${te_eq.base_event_type} * e = ${te_eq.allocate}();
    ${te_string.memmove}( e, t->event, sizeof( ${te_eq.base_event_type} ) );
    t->event = e;
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
    #endif
    animate = animate->next;      /* Remove from front of list.    */
    timer_insert_sorted( t );
    #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
    ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
    #endif
  } else {
.end if
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.if ( te_thread.flavor == "Nucleus" )
  timer_find_and_delete( t );
.else
  animate = animate->next;        /* Remove from active list.      */
  t->next = inanimate;            /* Connect to inactive list.     */
  inanimate = t;
.end if
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
.if ( te_tim.recurring_timer_support )
  }
.end if
.if ( te_thread.flavor == "SystemC" )
  if ( animate != 0 ) {
    ${tim_inst}->${timer_evt_name}.notify( animate->expiration - ETimer_msec_time(), SC_MS );
  }
.end if
}
#endif   /* if ${te_tim.max_timers} > 0 */

/*---------------------------------------------------------------------
 * This is the low level mechanism for monotonically increasing
 * at a constant rate.  Substitute code here to read some
 * sort of hardware timer.
 *-------------------------------------------------------------------*/
static ETimer_time_t
ETimer_msec_time( void )
{
  ETimer_time_t t;
.if ( te_thread.flavor == "Nucleus" )
  t = NU_Retrieve_Clock() * MSEC_CONVERT;
  return ( t - tinit );
.elif ( te_thread.flavor == "SystemC" )
  sc_time t1;
  t1 = sc_time_stamp();
  t = (ETimer_time_t) (t1.to_seconds() * MSEC_CONVERT);
  return ( t - tinit );
.elif ( te_sys.AUTOSAR )
  t = msecCounter * CALL_PERIOD_MS;
  return ( t );
.else
  ftime( &systyme );
  t = ( systyme.time * USEC_CONVERT ) + systyme.millitm;
  return ( t - tinit );
.end if

}


.if ( te_sys.AUTOSAR )
void
TIM::TIM_update( void )
{
  msecCounter++;
}
.end if

.if ( te_thread.enabled )
  .if ( te_thread.flavor == "POSIX" )
/*=====================================================================
 * Return remaining duration in timespec format.
 *===================================================================*/
void *
TIM::TIM_duration_until_next_timer_pop( void * ts_in )
{
  struct timespec * ts = ( struct timespec * ) ts_in;
#if ${te_tim.max_timers} > 0
  ETimer_time_t t = 0UL;
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  if ( animate != 0 ) {
    t = animate->expiration;
  }
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  if ( t == 0 ) {
    ts = 0;   /* Return zero to indicate no timers ticking.  */
  } else {
    ETimer_time_t tnow = ETimer_msec_time();
    ts->tv_sec = systyme.time;      /* Load current time.  */
    ts->tv_nsec = systyme.millitm;  /* Stay milliseconds for now.  */
    if ( t > tnow ) {
      t -= tnow;
      ts->tv_sec += t / 1000;       /* Add the interval.   */
      ts->tv_nsec += t % 1000;
      if ( ts->tv_nsec >= 1000 ) {
        ts->tv_sec++; ts->tv_nsec -= 1000;
      }
    }
    ts->tv_nsec *= 1000;            /* Now convert to nanoseconds.  */
  }
#else
  ts = 0;   /* Return zero to indicate no timers (ticking).  */
#endif   /* if ${te_tim.max_timers} > 0 */
  return ts;
}

  .end if
.end if
/*---------------------------------------------------------------------
 * Initialize the tick mechanism and the timer instances.
 *-------------------------------------------------------------------*/
void
TIM::TIM_init( void )
{
  ${tim_inst} = new TIM("${tim_inst}");
#if ${te_tim.max_timers} > 0
  u2_t i;
.if ( te_thread.flavor == "Nucleus" )
  STATUS status;
.end if
  /*-----------------------------------------------------------------*/
  /* Build the collection (linked list) of timers.                   */
  /*-----------------------------------------------------------------*/
  animate = 0; inanimate = 0;
  for ( i = 0; i < ${te_tim.max_timers}; i++ ) {
    swtimers[ i ].expiration = 0;
.if ( te_tim.recurring_timer_support )
    swtimers[ i ].recurrence = 0;
.end if
    swtimers[ i ].event = 0;
.if ( te_thread.flavor == "Nucleus" )
    swtimers[ i ].index = i;
.end if
    swtimers[ i ].next = inanimate;
    .if ( te_tim.keyed_timer_support )
    swtimers[ i ].accesskey = 0;
    .end if
    inanimate = &swtimers[ i ];
.if ( te_thread.flavor == "Nucleus" )
    status = NU_Create_Timer( 
      &nutimers[ i ],          /* address of Nucleus timer structure */
      "xtUMLTM",               /* string name of timer */
      nut_expire,              /* expiration routine */
      i,                       /* id passed to expiration routine */
      0xdead,                  /* bogus inititial value for timer */
      0,                       /* expire only once */
      NU_DISABLE_TIMER         /* not running until timer_start */
    );
.end if
  }
#endif   /* if ${te_tim.max_timers} > 0 */
.if ( te_thread.flavor == "Nucleus" )
  tinit = 0;
  NU_Set_Clock( 0 );
.elif ( te_thread.flavor == "SystemC" )
  ftime( &systyme );            /* Initialize the hardware ticker.   */
  tinit = 0;
.elif ( not te_sys.AUTOSAR )
  ftime( &systyme );            /* Initialize the hardware ticker.   */
  tinit = ( systyme.time * USEC_CONVERT ) + systyme.millitm;
.end if
}

/*---------------------------------------------------------------------
 * This is the repetitively invoked timer poller.
 * This routine needs to be run periodically.
 *-------------------------------------------------------------------*/
void
TIM::TIM_tick( void )
{
.if ( te_thread.flavor != "Nucleus" )
#if ${te_tim.max_timers} > 0
  /*-----------------------------------------------------------------*/
  /* Check to see if there are timers in the ticking timers list.    */
  /*-----------------------------------------------------------------*/
  .if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  .end if
  if ( animate != 0 ) {
    // TODO - The fact that this is commented out should be revisted later.
    //if ( animate->expiration <= ETimer_msec_time() ) {
      timer_fire( animate );
    //}
    }
  .if ( te_thread.enabled )
  #ifdef ${te_prefix.define_u}TASKING_${te_thread.flavor}
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_TIMER );
  #endif
  .end if
#endif   /* if ${te_tim.max_timers} > 0 */
.end if
}

#ifdef USED_TO_ALLOW_PAUSING
/*---------------------------------------------------------------------
 * Pause the tick mechanism such that all timers simply freeze
 * and do not advance toward expiration.  This is used for debug.
 * Record the system time when pause begins.
 *-------------------------------------------------------------------*/
void
TIM::TIM_pause( void )
{
  #if ${te_tim.max_timers} > 0
  paused = true;
  start_of_pause = ETimer_msec_time();
  #endif   /* if ${te_tim.max_timers} > 0 */
}

/*---------------------------------------------------------------------
 * Resume the tick mechanism.  Update the expiration time for all
 * ticking timers.
 *-------------------------------------------------------------------*/
void
TIM::TIM_resume( void )
{
  #if ${te_tim.max_timers} > 0
  ETimer_t * cursor = animate;
  ETimer_time_t t;      /* difference between now and start of pause */
  t = ETimer_msec_time() - start_of_pause;
  while ( cursor != 0 ) {
    cursor->expiration += t;
    cursor = cursor->next;
  }
  paused = false;
  #endif   /* if ${te_tim.max_timers} > 0 */
}
#endif
.//
