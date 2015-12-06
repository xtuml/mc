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

#include <osx.h>   /* OSX declarations */
#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( te_sys.MaxTimers > 0 )
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.end if

static osxHANDLE mutices[ SEMAPHORE_FLAVOR_MAX ];
static osxHANDLE nonbusy_wait_cond[ NUM_OF_TOTAL_THREADS ];
static u1_t threadnumber[ NUM_OF_TOTAL_THREADS ];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  u1_t i;
  ul_t rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    threadnumber[ i ] = i;
    rc = osxCreateSemaphore( 0, 1, &nonbusy_wait_cond[ i ] );
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = osxCreateSemaphore( 1, 1, &mutices[ i ] );
  }
  rc = rc;
}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  ul_t rc = osxAcquireSemaphore( mutices[ flavor ], eOSX_WAIT_FOREVER, 0 );
  rc = rc;
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  ul_t rc = osxReleaseSemaphore( mutices[ flavor ] );
  rc = rc;
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{
  extern bool bSimulation;
  ul_t timeout, rc;
  timeout = ( bSimulation ) ? SIMULATE_25MS_STROBE : WAIT_TIMEOUT_MS;
  rc = osxAcquireSemaphore( nonbusy_wait_cond[ thread ], eOSX_WAIT_FOREVER, timeout );
  rc = rc;
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
  ul_t rc;
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_NONBUSY );
  rc = osxReleaseSemaphore( nonbusy_wait_cond[ thread ] );
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_NONBUSY );
  rc = rc;
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void ${te_thread.create}( void *(routine)(void *), const u1_t i )
{
  osxTaskHandle_t handle;
  ul_t rc;
  rc = osxBeginTask(
    ( void ( * )( void * ) ) routine,
    45000,
    ( i == 0 ) ? osxTHREAD_PRIORITY_HIGHEST : osxTHREAD_PRIORITY_NORMAL,
    &threadnumber[ i ],
    ( osxTaskHandle_t * ) &handle );
  rc = rc;
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
void ${te_thread.shutdown}( void )
{
  u1_t i;
  ul_t rc;
  for ( i = 0; i < NUM_OF_TOTAL_THREADS; i++ ) {
    rc = osxDeleteSemaphore( nonbusy_wait_cond[ i ] );
    nonbusy_wait_cond[ i ] = 0;
  }
  for ( i = 0; i < SEMAPHORE_FLAVOR_MAX; i++ ) {
    rc = osxDeleteSemaphore( mutices[ i ] );
    mutices[ i ] = 0;
  }
  rc = rc;
}
.//
