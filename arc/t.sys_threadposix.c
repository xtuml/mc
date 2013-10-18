.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
/*---------------------------------------------------------------------
 * File:  ${te_file.thread}.${te_file.src_file_ext}
 *
 * Description:
 * This file provides implementation of multi-tasking/threading
 * capabilities allowing classes/subsystems to run in different
 * threads on a multi-tasking/threading OS/RTOS.
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#include <pthread.h>   /* POSIX thread declarations */
#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( te_sys.MaxTimers > 0 )
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.end if

static pthread_mutex_t mutices[ SEMAPHORE_FLAVOR_MAX ];
static pthread_cond_t nonbusy_wait_cond[ NUM_OF_TOTAL_THREADS ];
static u1_t threadnumber[ NUM_OF_TOTAL_THREADS ];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  u1_t i;
  int rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    threadnumber[ i ] = i;
    rc = pthread_cond_init( &nonbusy_wait_cond[ i ], 0 );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = pthread_mutex_init( &mutices[ i ], 0 );
  }
  rc = rc;
}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  int rc = pthread_mutex_lock( &mutices[ flavor ] );
  rc = rc;
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  int rc = pthread_mutex_unlock( &mutices[ flavor ] );
  rc = rc;
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{
  int rc;
  void * vp = 0;
  pthread_cond_t * dwc = &nonbusy_wait_cond[ thread ];
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_NONBUSY );
.if ( te_sys.MaxTimers > 0 )
  if ( thread == 0 ) {
    struct timespec ts;
    vp = TIM_duration_until_next_timer_pop( ( void * ) &ts );
    if ( vp != 0 ) {
      rc = pthread_cond_timedwait(
        dwc, &mutices[ SEMAPHORE_FLAVOR_NONBUSY ], &ts );
    }
  }
.end if
  if ( ( thread != 0 ) || ( vp == 0 ) ) {
    rc = pthread_cond_wait( dwc, &mutices[ SEMAPHORE_FLAVOR_NONBUSY ] );
  }
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_NONBUSY );
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
  int rc;
  pthread_cond_t * dwc = &nonbusy_wait_cond[ thread ];
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_NONBUSY );
  rc = pthread_cond_broadcast( dwc );
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_NONBUSY );
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void ${te_thread.create}( void *(routine)(void *), const u1_t i )
{
  static pthread_t pthread[ NUM_OF_TOTAL_THREADS ];
  int rc = pthread_create( &pthread[ i - 1 ], 0, routine, &threadnumber[ i ] );
  rc = rc;
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
void ${te_thread.shutdown}( void )
{
  u1_t i;
  int rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    rc = pthread_cond_destroy( &nonbusy_wait_cond[ i ] );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = pthread_mutex_destroy( &mutices[ i ] );
  }
}
.//
