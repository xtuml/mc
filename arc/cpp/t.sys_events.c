.//============================================================================
.// $RCSfile: t.sys_events.c,v $
.//
.// Description:
.// This archetype file generates xtUML event pool mananagement
.// implementation code.
.//
.// Notice:
.// (C) Copyright 1998-2010 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * File:  ${te_file.events}.${te_file.src_file_ext}
 *
 * Description:
 * This file provides the dispatcher loops for the xtUML event queues.
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_file.thread}.${te_file.hdr_file_ext}"
.if ( te_sys.MaxInterleavedBridges > 0 )
#include "${te_file.ilb}.${te_file.hdr_file_ext}"
.end if
.if ( true )
/* Include header(s) of component level events union and component dispatchers. */
  .for each te_c in te_cs
    .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
    .if ( ( (te_c.MaxNonSelfEvents != 0) or (te_c.MaxSelfEvents != 0) ) and ( not_empty te_evt ) )
#include "${te_c.classes_file}.${te_file.hdr_file_ext}"
    .end if
#include "${te_c.init_file}.${te_file.hdr_file_ext}"
  .end for

bool ${te_eq.run_flag} = true; /* Turn this off to exit dispatch loop(s).  */
.end if .// true ... for scoping
.//
.//============================================================================
.// Generate the data types and structures for the xtUML events.
.//============================================================================
.//
.// *** xtUML event pool.
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  .//
  .// *** Declare a _super union_ of all domain level events union definitions.
/* Structure:  ${te_eq.system_events_union}
 * _Super-union_ of all xtUML events in the system. For translation
 * patterns which can not accept dynamic memory allocation for
 * xtUML events, this union is used to predetermine the maximum
 * size of any xtUML event in the system.  */
typedef union {
  ${te_eq.base_event_type} ${te_eq.base_variable};
  .for each te_c in te_cs
    .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
    .if ( ( (te_c.MaxNonSelfEvents != 0) or (te_c.MaxSelfEvents != 0) ) and ( not_empty te_evt ) )
      .assign dom_ooa_event_union = te_c.Name + "_DomainEvents_u"
  ${dom_ooa_event_union} mc_events_in_domain_${te_c.Name};
    .end if
  .end for
} ${te_eq.system_events_union}_t;

  .if ( te_thread.enabled )
/* Map the classes to the tasks/threads for each domain.  */
    .for each te_c in te_cs
      .invoke class_number = GetDomainClassNumberName( te_c.Name )
static const ${te_typemap.object_number_name} ${class_number.task_list}[ ${class_number.max_models} ] = {
  ${class_number.task_numbers}
};
    .end for
static const ${te_typemap.object_number_name} * const class_thread_assignment[ SYSTEM_DOMAIN_COUNT ] = {
    .for each te_c in te_cs
      .assign delimiter = ""
      .if ( not_last te_cs )
        .assign delimiter = ","
      .end if
      .invoke class_number = GetDomainClassNumberName( te_c.Name )
  &${class_number.task_list}[0]${delimiter}
    .end for
};
  .end if
  .// Define self reference storage and method.
  .if ( event_prioritization_needed.result )
static ${te_instance.handle} ${te_prefix.result}self;
  .end if  .// prioritization_needed

/* anchor declaration for front and back of list of events */
typedef struct {
  ${te_eq.base_event_type} * head, * tail;
} xtUMLEventQueue_t;

/* Pointer to head of list of available event nodes.  */
static ${te_eq.base_event_type} * free_event_list = 0;
  .if ( non_self_event_queue_needed.result )
static xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
  .end if
  .if ( self_event_queue_needed.result )
static xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
  .end if

/*
 * Link the event skeleton nodes together on the free list ready
 * for allocation.
 */
void
InitializeOoaEventPool( void )
{
  /* Pre-allocated memory pool for xtUML events.  */
  static ${te_eq.system_events_union}_t ${te_eq.system_event_pool}[ ${te_eq.max_events} ];
  u2_t i;
  ${te_eq.run_flag} = true; /* Default running enabled.  */
  .if ( te_thread.enabled )
  for ( i = 0; i < NUM_OF_XTUML_CLASS_THREADS; i++ ) {
    .if ( non_self_event_queue_needed.result )
    non_self_event_queue[ i ].head = 0; non_self_event_queue[ i ].tail = 0;
    .end if
    .if ( self_event_queue_needed.result )
    self_event_queue[ i ].head = 0; self_event_queue[ i ].tail = 0;
    .end if
  }
  .else
    .if ( non_self_event_queue_needed.result )
  non_self_event_queue[ 0 ].head = 0; non_self_event_queue[ 0 ].tail = 0;
    .end if
    .if ( self_event_queue_needed.result )
  self_event_queue[ 0 ].head = 0; self_event_queue[ 0 ].tail = 0;
    .end if
  .end if
  /* String events together into a singly linked list. */
  free_event_list = (${te_eq.base_event_type} *) &${te_eq.system_event_pool}[ 0 ];
  for ( i = 0; i < ${te_eq.max_events} - 1; i++ ) {
    ${te_eq.system_event_pool}[ i ].mc_event_base.next =
      (${te_eq.base_event_type} *) &(${te_eq.system_event_pool}[ i + 1 ]);
  .if ( event_prioritization_needed.result )
    ${te_eq.system_event_pool}[ i ].mc_event_base.prev = 0;
  .end if .// prioritization needed
  }
  ${te_eq.system_event_pool}[ ${te_eq.max_events} - 1 ].mc_event_base.next = 0;
}

/*
 * Obtain an empty event from the free list.
 */
${te_eq.base_event_type} * ${te_eq.allocate}( void )
{
  ${te_eq.base_event_type} * event = 0;
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if
  if ( free_event_list == 0 ) {
  .if ( te_sys.UnitsToDynamicallyAllocate != 0 )
    ${te_eq.base_event_type} * new_mem = (${te_eq.base_event_type} *) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * sizeof( ${te_eq.system_events_union}_t ) );

    if ( 0 == new_mem ) {
      ${te_callout.event_free_list_empty}()    /* Bad news!  No more heap space.  */
    } else {
      u1_t i;
      for ( i = 0; i < ${te_sys.UnitsToDynamicallyAllocate} - 1; i++ ) {
        new_mem[ i ].next = (${te_eq.base_event_type} *) &(new_mem[ i + 1 ]);
      }
      new_mem[ ${te_sys.UnitsToDynamicallyAllocate} - 1 ].next = 0;
      free_event_list = new_mem;
      event = ${te_eq.allocate}();
    }
  .else
    ${te_callout.event_free_list_empty}()    /* Bad news!  No more events.  */
  .end if
  } else {
    event = free_event_list;       /* Grab front of the free list.  */
    free_event_list = event->next; /* Unlink from front of free list.  */
  }
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
  return event;
}

/*
 * Allocate the event and initialize the base attributes.
 */
${te_eq.base_event_type} *
${te_eq.new}( const void * const destination,
                   const ${te_eq.constant_type} * const event_info )
{
  ${te_eq.base_event_type} * event = ${te_eq.allocate}();
  SetEventTargetInstance( event, destination );
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  .if ( event_prioritization_needed.result )
  SetOoaEventPriority( event, event_info->priority );
  .end if .// event_prioritization_needed
  return event;
}

/*
 * Update the base attributes of an event for polymorphic processing.
 */
${te_eq.base_event_type} *
${te_eq.modify}( ${te_eq.base_event_type} * event,
                            const ${te_eq.constant_type} * const event_info )
{
  SetEventDestDomainNumber( event, event_info->destination_domain_number );
  SetEventDestObjectNumber( event, event_info->destination_object_number );
  SetOoaEventNumber( event, event_info->event_number );
  SetOoaEventFlags( event, event_info->event_flags );
  .if ( event_prioritization_needed.result )
  SetOoaEventPriority( event, event_info->priority );
  .end if .// event_prioritization_needed
  return event;
}

/*
 * Delete an event by moving it onto the free list.
 */
void
${te_eq.delete}( ${te_eq.base_event_type} * event )
{
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
  event->next = free_event_list;
  free_event_list = event;
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_FREELIST );
  .end if .// te_thread.enabled
}
.end if .// non_self_event_queue_needed.result or self_event_queue_needed.result
.//
.//============================================================================
.// Note:  One extra container needed to terminate queue.
.//============================================================================
.// *** xtUML non-self directed event queue.
.if ( non_self_event_queue_needed.result )

/*
 * Send an event to the instance queue.  Use priority where applicable.
 *
 * The following table summarizes the construction of events
 * as expected in Escher.  For each type of object that
 * may be the source or target of an event, the expected
 * value of the source and destination handles in the event are
 * given.
 *
 *   object type | as event source     | as destination
 *   ------------+---------------------+----------------------
 *   instance    | handle              | handle
 *   class       | manufactured handle | 0
 *   creator     | manufactured handle | 0
 */
void
${te_eq.non_self}( ${te_eq.base_event_type} * event )
{
  .if ( te_thread.enabled )
  u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]
    + GetEventDestObjectNumber( event ) );
  xtUMLEventQueue_t * q = &non_self_event_queue[ t ];
  .else
  xtUMLEventQueue_t * q = &non_self_event_queue[ 0 ];
  .end if .// te_thread.enabled
  .if ( event_prioritization_needed.result )
  /* Insert event into empty event queue.  */
    .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
    .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;    /* first in queue */
    q->tail = event;    /* last in queue */
    event->next = 0;
    event->prev = 0;
  } else if ( event->priority == 0 ) {
    /* No priority, append to end of queue.  */
    event->next = 0;                          /* input at tail end */
    event->prev = q->tail;
    q->tail->next = event; /* non empty */
    q->tail = event;    /* tail points to last */
  } else {
    /* Priority event, insert at proper position.  */
    ${te_eq.base_event_type} * e = q->tail;
    /* Find slot before which to insert our new arrival.     */
    /* Break from the loop before the event we must follow.  */
    while ( e != 0 ) {
      if ( event->priority <= e->priority ) { break; }
      if ( GetEventTargetInstance( event ) == GetEventTargetInstance(e) ) {
        if ( GetEventSendingInstance( event ) == GetEventSendingInstance(e) ) {
          if ( GetEventTargetInstance( event ) != 0 ) { break; }
          else {
            /* Creator or assigner with no target instance handle.  */
            /* We must interrogate the object and domain numbers.   */
            if ( GetEventDestObjectNumber( event ) == GetEventDestObjectNumber( e ) ) {
              if ( GetEventDestDomainNumber( event ) == GetEventDestDomainNumber( e ) ) { break; }
            }
          }
        }
      }
      e = e->prev;
    }
    if ( e == 0 ) { /* Slot not found, insert after head.  */
      e = q->head;
      event->prev = 0;
      event->next = e;
      e->prev = event;
      q->head = event;
    } else { /* Slot found, insert before.  */
      event->prev = e;
      event->next = e->next;
      e->next = event;
      if ( event->next != 0 ) {
        event->next->prev = event;
      }
      if ( q->tail == e ) {
        q->tail = event;
      }
    }
  }
  .else
  event->next = 0;
  /* Append the event to the tail end of the queue.  */
  /* No need to maintain prev pointers when not prioritizing.  */
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;
  } else {
    q->tail->next = event;
  }
  q->tail = event;
  .end if .// prioritization needed
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_IQUEUE );
  ${te_thread.nonbusy_wake}( t );
  .end if .// te_thread.enabled
}

/*
 * Drag an event from the instance directed queue if there is one.  This
 * routine also serves as the IsQueueEmpty routine.  A null return code 
 * indicates that the queue is empty.  Otherwise the handle to the
 * event will be returned.
 */
static ${te_eq.base_event_type} * DequeueOoaNonSelfEvent( ${dq_arg_type} );
static ${te_eq.base_event_type} * DequeueOoaNonSelfEvent( ${dq_arg_type} ${dq_arg})
{
  ${te_eq.base_event_type} * event;
  xtUMLEventQueue_t * q = &non_self_event_queue[ \
  .if ( te_thread.enabled )
${dq_arg}\
  .else
0 \
  .end if .// te_thread.enabled
];
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  /* Assign the event from the head of the queue.  */
  event = q->head;
  /* If the list is not empty, bump the head.  */
  if ( event != 0 ) {
    q->head = event->next;
    /* If empty, nullify tail.  Link prev pointers (if needed).  */
    if ( q->head == 0 ) {
      q->tail = 0;
    }\
  .if ( event_prioritization_needed.result )
 else {
      q->head->prev = 0;
    }
  .else

  .end if .// prioritization needed
  } else {
    ${te_callout.non_self_event_queue_empty}()
  }
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_IQUEUE );
  .end if .// te_thread.enabled
  return event;
}
  .include "${te_file.arc_path}/t.event.sand.c"
.end if .// non_self_event_queue_needed.result
.//
.//============================================================================
.// Note:  One extra container needed to terminate queue.
.//============================================================================
.// *** xtUML self directed event queue.
.if ( self_event_queue_needed.result )
  .//

/*
 * Send an event on the self queue.  No prioritization occurs on
 * this queue.
 */
void
${te_eq.self}( ${te_eq.base_event_type} * event )
{
  .if ( te_thread.enabled )
  u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]
    + GetEventDestObjectNumber( event ) );
  xtUMLEventQueue_t * q = &self_event_queue[ t ];
  .else
  xtUMLEventQueue_t * q = &self_event_queue[ 0 ];
  .end if .// te_thread.enabled
  event->next = 0;
  /* Append the event to the tail end of the queue.  */
  /* No need to maintain prev pointers for self directed events.  */
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  if ( q->tail == 0 ) {
    q->head = event;
  } else {
    q->tail->next = event;
  }
  q->tail = event;
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_SQUEUE );
  ${te_thread.nonbusy_wake}( t );
  .end if .// te_thread.enabled
}

/*
 * Drag an event from the self queue if there is one.  This routine
 * also serves as the IsQueueEmpty routine.  A null return code 
 * indicates that the queue is empty.  Otherwise the handle to the
 * event will be returned.
 */
static ${te_eq.base_event_type} * DequeueOoaSelfEvent( ${dq_arg_type} );
static ${te_eq.base_event_type} * DequeueOoaSelfEvent( ${dq_arg_type} ${dq_arg})
{
  ${te_eq.base_event_type} * event;
  xtUMLEventQueue_t * q = &self_event_queue[ \
  .if ( te_thread.enabled )
${dq_arg}\
  .else
0 \
  .end if .// te_thread.enabled
];
  .if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  /* Assign the event from the head of the queue.  */
  event = q->head;
  /* If the list is not empty, bump the head.  */
  if ( event != 0 ) {
    q->head = event->next;               /* bump */
    /* If empty, nullify tail.  No need to maintain prev pointers
       for the self queue.  They are not used.  */
    if ( q->head == 0 ) {
      q->tail = 0;
    }
  } else {
    ${te_callout.self_event_queue_empty}()
  }
  .if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_SQUEUE );
  .end if .// te_thread.enabled
  return event;
}
.end if .// self_event_queue_needed.result
.//
.//============================================================================
.// Build a routine that provides dispatch for a set of event queues
.// associated with a thread.
.//============================================================================
.// *** Dispatch loop
.if ( non_self_event_queue_needed.result or self_event_queue_needed.result )
  .//
  .// Define method for access to self.
  .if ( event_prioritization_needed.result )
/*
 * ${te_instance.global_self}:  Access the reference to event target instance.
 */
void *
${te_instance.global_self}( void )
{
  return ${te_prefix.result}self;
}
 
  .end if .// event_prioritization_needed.result
/*
 * Loop on the event queues dispatching events for this thread.
 */
  .if ( te_thread.enabled )
    .if ( te_thread.flavor == "Nucleus" )
static void ooa_loop( UNSIGNED, void * );
static void ooa_loop( UNSIGNED unused, void * thread )
    .elif ( te_thread.flavor == "AUTOSAR" )
void * ooa_loop( void * thread )
    .else
static void * ooa_loop( void * );
static void * ooa_loop( void * thread )
    .end if
  .else
static void ooa_loop( void );
static void ooa_loop( void )
  .end if
{
  .// Define the domain dispatcher table.
  .// It is defined locally for MISRA-C compliance.
  .// Create the data array of pointers to domain dispatcher functions.
  /* class dispatch table
   */
  static const ${class_dispatch_array.element_type} * DomainClassDispatcherTable[ ${num_ooa_doms} ] =
    {
  .for each te_c in te_cs
    .select any te_evt related by te_c->TE_CLASS[R2064]->TE_SM[R2072]->TE_EVT[R2071]
    .if ( ( (te_c.MaxNonSelfEvents != 0) or (te_c.MaxSelfEvents != 0) ) and ( not_empty te_evt ) )
      .invoke class_dispatch_array = GetDomainDispatcherTableName( te_c.Name )
      ${class_dispatch_array.result}\
    .else
      0\
    .end if
    .assign dom_count = dom_count + 1
    .if ( dom_count != num_ooa_doms )
,
    .else

    .end if
  .end for
    };
  ${te_eq.base_event_type} * event;
  .if ( te_thread.enabled )
  u1_t t = *( (u1_t *) thread );
  .end if .// te_thread.enabled
  /* Start consuming events and dispatching background processes.  */
    .if ( te_sys.AUTOSAR )
  bool events_remaining_in_queue = true;
  while ( (true == events_remaining_in_queue) && (true == ${te_eq.run_flag}) ) {
    .else
  while ( true == ${te_eq.run_flag} ) {
    .end if
  .if ( self_event_queue_needed.result )
    event = DequeueOoaSelfEvent(${thread_number}); /* Self first.  */
    if ( 0 == event ) {
  \
  .end if .// self_event_queue_needed.result
  .if ( non_self_event_queue_needed.result )
    event = DequeueOoaNonSelfEvent(${thread_number}); /* Instance next.  */
  .end if .// non_self_event_queue_needed.result
  .if ( self_event_queue_needed.result )
    }
  .end if .// self_event_queue_needed.result
    if ( 0 != event ) {
  .// Set up self reference for use by prioritized events (and others).
  .if ( event_prioritization_needed.result )
      /* Set up self reference for use by prioritized events (and others).  */
      ${te_prefix.result}self = GetEventTargetInstance( event );
  .end if  .// prioritization_needed
  .if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
  .end if
      ( *( DomainClassDispatcherTable[ GetEventDestDomainNumber( event ) ] )[ GetEventDestObjectNumber( event ) ] )( event );
  .if ( te_thread.serialize )
      #ifdef ESCHER_SERIALIZE_DISPATCH
      ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_DISPATCH );
      #endif
  .end if .// te_thread.serialize
      if ( GetIsPolyEventInFlight( event ) == 0 ) {
        ${te_eq.delete}( event );
      }
    } else {
  .if ( te_thread.enabled )
    .if ( te_sys.AUTOSAR )
      events_remaining_in_queue = false;
    .end if
      ${te_thread.nonbusy_wait}( ${thread_number} );
  .else
      /* nop empty else (MISRA-C) */
  .end if .// te_thread.enabled
    }
  .if ( event_prioritization_needed.result )
    /* Clear self when not in normal state action.    */
    ${te_prefix.result}self = 0;
  .end if  .// prioritization_needed
  .assign more_indent = ""
  .if ( te_thread.enabled )
    if ( t == 0 ) {   /* Is this the default task/thread?  */
    .assign more_indent = "  "
  .end if .// te_thread.enabled
  .if ( te_sys.MaxInterleavedBridges > 0 )
    ${more_indent}/* Launch (interrupt) bridge actions that occurred during state.  */
    ${more_indent}${te_ilb.dispatch}();
  .end if .// te_sys.MaxInterleavedBridges > 0
    ${more_indent}${te_callout.background_processing}()
  .if ( te_thread.enabled )
    }
  .end if .// te_thread.enabled
  }
  .if ( te_thread.enabled )
    .if ( te_thread.flavor != "Nucleus" )
  return 0;
    .end if
  .end if
}

/*
 * Load up the threads with event dispatchers and/or specific functinality.
 */
void ${te_prefix.result}xtUML_run( void )
{
  .assign tasking_arguments = ""
  .assign return_code_assignment = ""
  .if ( te_thread.enabled )
    .if ( te_thread.flavor == "Nucleus" )
      .assign tasking_arguments = " 0, (void *) &i "
    .else
      .assign tasking_arguments = " (void *) &i "
      .assign return_code_assignment = "vp = "
  void * vp;
    .end if
  u1_t i;
  /* Create threads in reverse order saving thread 0 for default.  */
  for ( i = NUM_OF_XTUML_CLASS_THREADS - 1; i > 0; i-- ) {
    ${te_thread.create}( ooa_loop, i );
  }
  i = 0;
  .end if
  ${return_code_assignment}ooa_loop(${tasking_arguments});
}
.end if .// non_self_event_queue_needed.result or self_event_queue_needed.result
.//
