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
/*----------------------------------------------------------------------------
 * File:  ${te_file.tim}.${te_file.hdr_file_ext}
 *
 * Description:
 * This file provides a insulation layer between the BridgePoint built-in
 * External Enity 'Time' (Key Letters: TIM) and the underlying implementation.
 *
 * xtUML Timer methods:
 * Note that in the software architecture there will be a (finite but
 * indeterminate) delay between the expiration of a timer and the delivery
 * of the associated event to the receiving state machine.
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_file.tim}_$u{te_file.hdr_file_ext}
#define $u{te_file.tim}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

.if ( te_target.language == "SystemC" )
class TIM : public sc_module {
  public:
  
  SC_HAS_PROCESS( TIM );
  TIM( sc_module_name name ) : sc_module( name ) {
    SC_THREAD( spin );
    dont_initialize();
    sensitive << ${timer_evt_name};
  }
  sc_event ${timer_evt_name};
  void spin( void ) { while ( true ) { ${te_callout.background_processing}(); wait(); } }

.else
class TIM {
  public:
.end if
/*
 * Bridge method to create an analysis specific date instance.
 */
static ${te_prefix.type}Date_t TIM_create_date(
  const i_t, const i_t, const i_t, const i_t, const i_t, const i_t );

/*
 * Bridge method to get the current date.
 */
static ${te_prefix.type}Date_t TIM_current_date( void );

/*
 * Bridge methods to get time piece components of a given date.
 */
static i_t TIM_get_year   ( const ${te_prefix.type}Date_t );
static i_t TIM_get_month  ( const ${te_prefix.type}Date_t );
static i_t TIM_get_day    ( const ${te_prefix.type}Date_t );
static i_t TIM_get_hour   ( const ${te_prefix.type}Date_t );
static i_t TIM_get_minute ( const ${te_prefix.type}Date_t );
static i_t TIM_get_second ( const ${te_prefix.type}Date_t );

/*
 * Bridge method to get the current clock.
 */
static ${te_prefix.type}TimeStamp_t TIM_current_clock( void );

/*
 * Starts a (one shot) timer to expire in <expression> microseconds,
 * sending the event instance <event> upon expiration.
 * Note that upon expiration the timer will be (automatically) deleted.
 * Returns the instance handle of the non-recurring timer.
 */
.if ( te_tim.keyed_timer_support )
static ${te_prefix.type}Timer_t TIM_timer_start( ${te_eq.base_event_type} *,
                                       const ${te_prefix.type}uSec_t );
.else
static ${te_prefix.type}Timer_t * TIM_timer_start( ${te_eq.base_event_type} *,
                                         const ${te_prefix.type}uSec_t );
.end if

/*
 * Starts a (recurring) timer to expire in <expression> microseconds,
 * sending the event instance <event> upon expiration.
 * Upon expiration, the timer will be restarted and fire again in
 * <expression> microseconds and (re)generate the event <event>.
 * Returns the instance handle of the recurring timer.
 */
.if ( te_tim.keyed_timer_support )
static ${te_prefix.type}Timer_t TIM_timer_start_recurring( ${te_eq.base_event_type} *,
                                                 const ${te_prefix.type}uSec_t );
.else
static ${te_prefix.type}Timer_t * TIM_timer_start_recurring( ${te_eq.base_event_type} *,
                                                   const ${te_prefix.type}uSec_t );
.end if

/*
 * Returns the time remaining (in microseconds) before the timer
 * specified by <timer> will expire.  If <timer> no longer exists,
 * a zero value will be returned.  It is important to note that even
 * if <timer> no longer exists, a <event> may still be in
 * transit (e.g., was generated) from a previous <timer> expiration.
 * Respectable analysis must account for this "ships passing" possibility.
 */
.if ( te_tim.keyed_timer_support )
static ${te_prefix.type}uSec_t TIM_timer_remaining_time( const ${te_prefix.type}Timer_t );
.else
static ${te_prefix.type}uSec_t TIM_timer_remaining_time( const ${te_prefix.type}Timer_t * const );
.end if

/*
 * This method attempts to set an existing timer handle <timer> to expire
 * in <expression> microseconds.  If the timer exists (e.g, it has not
 * already expired), a 'true' value is returned.  If the timer no longer
 * exists, a 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
.if ( te_tim.keyed_timer_support ) 
static bool TIM_timer_reset_time( const ${te_prefix.type}uSec_t,
                                  const ${te_prefix.type}Timer_t );
.else
static bool TIM_timer_reset_time( const ${te_prefix.type}uSec_t,
                                  ${te_prefix.type}Timer_t * const );
.end if

/*
 * This method attempts to add <expression> microseconds to the
 * timer handle <timer>.  If the timer exists (e.g, it has not
 * already expired), a 'true' value is returned.  If the timer no longer
 * exists, a 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
.if ( te_tim.keyed_timer_support )
static bool TIM_timer_add_time( const ${te_prefix.type}uSec_t,
                                const ${te_prefix.type}Timer_t );
.else
static bool TIM_timer_add_time( const ${te_prefix.type}uSec_t,
                                ${te_prefix.type}Timer_t * const );
.end if

/*
 * This method attempts to cancel and delete the timer handle specified
 * by <timer>.  If the timer still exists (e.g, it has not already
 * expired), a 'true' value is returned.  If the timer no longer exists,
 * 'false' value is returned.  In either case, it is important
 * to note that an event may still be in transit (e.g., was already
 * generated) from a previous expiration prior to this method invocation.
 * Respectable analysis must account for this "ships passing" possibility.
 */
.if ( te_tim.keyed_timer_support )
static bool TIM_timer_cancel( const ${te_prefix.type}Timer_t );
.else
static bool TIM_timer_cancel( ${te_prefix.type}Timer_t * const );
.end if

/*
 * This provides a periodic tick to give the timer subsystem the
 * opportunity to check for expired timers and fire them and their
 * respective delayed events.  Calling this routine as often as possible
 * increases the accuracy and resolution of the delayed event timers.  One
 * appropriate place to make this call is from ${te_callout.background_processing}
 * found among the system callout routines.
 */
static void TIM_tick( void );

/*
 * This routine is used by some tasking implementation to get a value
 * to load into a timed wait.
 */
static void * TIM_duration_until_next_timer_pop( void * );

/*
 * This method initializes the timer subsystem.  It must be called
 * during system bring-up.  An appropriate place to make this call
 * is from ${te_callout.pre_xtUML_initialization}.
 */
static void TIM_init( void );

/*
 * Pause all ticking timers.  This is useful during debugging.  It
 * allows timers to freeze during stepping and debug interfacing.
 */
static void TIM_pause( void );

/*
 * Resume all ticking timers.  This is useful during debugging.  It
 * allows timers to freeze during stepping and debug interfacing.
 * Ticking timers will have their expirations adjusted, and ticker
 * will continue ticking.
 */
static void TIM_resume( void );
.if ( te_sys.AUTOSAR )

static void TIM_update ( void );
.end if
};

${te_target.c2cplusplus_linkage_end}
#endif   /* $u{te_file.tim}_$u{te_file.hdr_file_ext} */
.//
