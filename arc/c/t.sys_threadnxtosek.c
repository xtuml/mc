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

/* NXT OSEK Headers */
#include "kernel.h"
#include "kernel_id.h"
#include "ecrobot_interface.h"

#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( te_sys.MaxTimers > 0 )
#include "${te_file.tim}.${te_file.hdr_file_ext}"
.end if

DeclareResource(rIQueue);
DeclareResource(rSQueue);
DeclareResource(rFreeList);
DeclareResource(rNonBusy);
DeclareResource(rInstance);
.if ( te_sys.MaxTimers > 0 )
DeclareResource(rTimer);
DeclareAlarm(xtUMLAlarm);
.end if
DeclareResource(rILib);
DeclareEvent(eExternalEvent);
DeclareTask(tMainTask);

.if ( task_num > 1 )
  .assign i = 1;
/* sub tasks */
.while ( i < task_num )
DeclareTask(tTask${i});
  .assign i = i + 1
  .end while
.end if
static ResourceType const *mutices[ SEMAPHORE_FLAVOR_MAX ] = {
      &rIQueue,
            &rSQueue,
            &rFreeList,
            &rNonBusy,
            &rInstance,
.if ( te_sys.MaxTimers > 0 )
            &rTimer,
.end if
            &rILib
};

typedef void (*TaskEntry)(void *);
static TaskEntry taskEntries[NUM_OF_XTUML_CLASS_THREADS];

/* Task table definition */
static const TaskType *nonbusy_wait_cond[NUM_OF_TOTAL_THREADS] = {
    &tMainTask /* main */
.if ( task_num > 1 )
  /* sub tasks */
  .assign i = 1;
  .while ( i < task_num )
    ,&tTask${i}
    .assign i = i + 1
  .end while
.end if
};

static const TaskType *threadnumber[NUM_OF_TOTAL_THREADS] = {
    &tMainTask /* main */
.if ( task_num > 1 )
  /* sub tasks */
  .assign i = 1;
  .while ( i < task_num )
    ,&tTask${i}
    .assign i = i + 1
    .end while
.end if
};

/*
 * Initialize those structures that need to be set up once at system
 * bring-up time.
 */
void ${te_prefix.result}InitializeThreading( void )
{
  /* in nxtOSEK, no need dynamic thread initialization.
   * main task is spawned by oil definition.
   */

}

/*
 * Obtain a resource lock so that this thread has mutually exclusive
 * access.
 */
void ${te_thread.mutex_lock}( const u1_t flavor )
{
  GetResource( *mutices[ flavor ] );
}

/*
 * Release a resource lock that was obtained with the lock method.
 */
void ${te_thread.mutex_unlock}( const u1_t flavor )
{
  ReleaseResource( *mutices[ flavor ] );
}

/*
 * Go into a non-busy wait state waiting on someone to wake us
 * up with the nonbusy_wake method.
 */
void ${te_thread.nonbusy_wait}( const u1_t thread )
{
  /* Strictly speaking, these callings should be done atomicaly.
   *  But these calling will not cause problems.
   */
    WaitEvent(eExternalEvent);
   ClearEvent(eExternalEvent);
}

/*
 * Wake up a thread that went to sleep waiting for something to happen.
 */
void ${te_thread.nonbusy_wake}( const u1_t thread )
{
    TaskType dwc = *nonbusy_wait_cond[ thread ];
    SetEvent(dwc,eExternalEvent);
}

/*
 * Create and spin off a task/thread to run the input routine.
 */
void ${te_thread.create}( void *(routine)(void *), const u1_t i )
{
  taskEntries[i] = (TaskEntry)routine;
    ActivateTask(*threadnumber[ i ] );
}

/*
 * Cleanup the structures initialized in ${te_prefix.result}InitializeThreading.
 */
void ${te_thread.shutdown}( void )
{
  TerminateTask();
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
/* This task will be spawned automatically by oil file definition */
TASK(tMainTask){
.if ( te_sys.MaxTimers > 0 )
  /* 1msec alarm for TIM start */
  SetRelAlarm(xtUMLAlarm,1,1);
.end if

  /* entry point of xtUML */
  ${te_target.main}();
}

.if ( task_num > 1 )
  /* sub tasks */
  .assign i = 1;
  .while ( i < task_num )
TASK(tTask${i}){
   runTask(${i});
}
      .assign i = i + 1;
  .end while
.end if


/* One msec counter that is called periodically.
 * This makes the timer wake up.
 */
DeclareCounter(SysTimerCnt);

void user_1ms_isr_type2(void){
  StatusType ercd;

  /* Increment System Timer Count to activate periodical Tasks */
  ercd = SignalCounter(SysTimerCnt);

  if (ercd != E_OK)
    {
      ShutdownOS(ercd);
    }
}

/* The entry of xtUML tick */
void AlarmMainTIM_tick(void)
{
  TIM_tick();
}


.//
