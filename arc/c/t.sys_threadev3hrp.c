.//============================================================================
.assign task_num = 1;
.select any tm_thread from instances of TM_THREAD
.if ( not (empty tm_thread) )
  .assign task_num = tm_thread.number_of_threads
.end if
.assign default_stack_size = 512
.assign default_task_priority = "1"
.assign main_task_priority = "15"
.assign main_task_stack_size = default_stack_size
.select any tm_thread_element from instances of TM_THREAD_ELEMENT where ( selected.thread_no == 0 )
.if ( not_empty tm_thread )
  .if ( tm_thread_element.priority != "" )
    .assign main_task_priority = tm_thread_element.priority
  .end if
  .if ( tm_thread_element.stack_size > 0 )
    .assign main_task_stack_size = tm_thread_element.stack_size
  .end if
.end if
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
#include "ev3api.h"

/* EV3 HRP Headers */
#if defined (BUILD_MODULE)
#include "module_cfg.h"
#else
#include "kernel_cfg.h"
#endif


#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( te_sys.MaxTimers > 0 )
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.end if


static ER_ID mutexes[ SEMAPHORE_FLAVOR_MAX ];

typedef void (*TaskEntry)(void *);
static TaskEntry taskEntries[NUM_OF_XTUML_CLASS_THREADS];

/* Task table definition */
static ID nonbusy_wait_cond[NUM_OF_TOTAL_THREADS];

static ID threadnumber[NUM_OF_TOTAL_THREADS];

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  int i=0;
  mutexes[i++] = mtxIQueue;
  mutexes[i++] = mtxSQueue;
  mutexes[i++] = mtxFreeList;
  mutexes[i++] = mtxNonBusy;
  mutexes[i++] = mtxInstance;
  .if ( te_sys.MaxTimers > 0 )
  mutexes[i++] = mtxTimer;
  .end if
  mutexes[i++] = mtxILib;

  i=0;
  nonbusy_wait_cond[i++] = semWakeTaskMain; /* main */
  .if ( task_num > 1 )
    /* sub tasks */
    .assign i = 1;
    .while ( i < task_num )
  nonbusy_wait_cond[i++] = semWakeTask${i};
      .assign i = i + 1
    .end while
  .end if

  i=0;
  threadnumber[i++] = tMainTask; /* main */
  .if ( task_num > 1 )
    /* sub tasks */
    .assign i = 1;
    .while ( i < task_num )
  threadnumber[i++] = tTask${i};
      .assign i = i + 1
    .end while
  .end if

}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  wai_sem( mutexes[ flavor ] );
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  sig_sem( mutexes[ flavor ] );
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{

    ID semID = nonbusy_wait_cond[ thread ];
  wai_sem(semID);

}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
    ID semID = nonbusy_wait_cond[ thread ];
    sig_sem(semID);
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void ${te_thread.create}( void *(routine)(void *), const u1_t i )
{
  taskEntries[i] = (TaskEntry)routine;
  act_tsk(threadnumber[ i ] );
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
 extern int Escher_run_flag;
void ${te_thread.shutdown}( void )
{
  Escher_run_flag = false;
}

/*
 * The root function of tasks except main task.
 */
void runTask(const u1_t i)
{
  TaskEntry fp = taskEntries[i];
  if ( fp ) {
    (*fp)((void*)&i);
  }

}

.// NXT OSEK support only void main function
extern void ${te_target.main}(void);

/* The main task entry of xtUML */
/* This task will be spawned automatically by cfg file definition */
void main_task(intptr_t extinf) {
.if ( te_sys.MaxTimers > 0 )
  /* 1msec alarm for TIM start */
  ev3_sta_cyc(xtUMLAlarm);
.end if

  /* entry point of xtUML */
  ${te_target.main}();
}

.if ( task_num > 1 )
  /* sub tasks */
  .assign i = 1;
  .while ( i < task_num )
void task${i}_start(intptr_t extinf){
   runTask(${i});
}
    .assign i = i + 1;
  .end while
.end if
.if ( te_sys.MaxTimers > 0 )

/* Cyclic Handler */
void cyclic_handler(intptr_t extinf)
{
  TIM_tick();
}

.end if

.//
