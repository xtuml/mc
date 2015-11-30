T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Following provides the dispatcher loops for the xtUML event queues.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( te_sys->MaxInterleavedBridges > 0 ) {
T_b("#include \"");
T_b(te_file->ilb);
T_b(".");
T_b(te_file->hdr_file_ext);
T_b("\"");
T_b("\n");
}
if ( 0==strcmp("C",te_target->language) ) {
T_b("bool ");
T_b(te_eq->run_flag);
T_b(" = true; /* Turn this off to exit dispatch loop(s).  */");
T_b("\n");
}
if ( non_self_event_queue_needed->result || self_event_queue_needed->result ) {
if ( te_thread->enabled && ( 0==strcmp("C",te_target->language) ) ) {
T_b("/* Map the classes to the tasks/threads for each domain.  */");
T_b("\n");
if ( not_empty te_sm ) {
T_b("static const ");
T_b(te_typemap->object_number_name);
T_b(" ");
T_b(te_dci->task_list);
T_b("[ ");
T_b(te_dci->max_models);
T_b(" ] = {");
T_b("\n");
T_b("  ");
T_b(te_dci->task_numbers);
T_b("\n");
T_b("};");
T_b("\n");
}
T_b("static const ");
T_b(te_typemap->object_number_name);
T_b(" * const class_thread_assignment[ SYSTEM_DOMAIN_COUNT ] = {");
T_b("\n");
if ( empty te_c ) {
}
if ( not_empty te_sm ) {
T_b("  ");
T_b("&");
T_b(te_dci->task_list);
T_b("[0]");
T_b(delimiter);
T_b("\n");
}
T_b("};");
T_b("\n");
}
if ( event_prioritization_needed->result ) {
T_b("static ");
T_b(te_instance->handle);
T_b(" ");
T_b(te_prefix->result);
T_b("self;");
T_b("\n");
}
if ( 0==strcmp("C",te_target->language) ) {
T_b("/* Structure:  ");
T_b(te_eq->system_events_union);
T_b("\n");
T_b(" ");
T_b("* _Super-union_ of all xtUML events in the system. For translation");
T_b("\n");
T_b(" ");
T_b("* patterns which can not accept dynamic memory allocation for");
T_b("\n");
T_b(" ");
T_b("* xtUML events, this union is used to predetermine the maximum");
T_b("\n");
T_b(" ");
T_b("* size of any xtUML event in the system.  */");
T_b("\n");
T_b("typedef union {");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" ");
T_b(te_eq->base_variable);
T_b(";");
T_b("\n");
if ( not_empty te_evt ) {
T_b("  ");
T_b(te_c->Name);
T_b("_DomainEvents_u mc_events_in_domain_");
T_b(te_c->Name);
T_b(";");
T_b("\n");
}
T_b("} ");
T_b(te_eq->system_events_union);
T_b("_t;");
T_b("\n");
T_b("/* anchor declaration for front and back of list of events */");
T_b("\n");
T_b("typedef struct {");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * head, * tail;");
T_b("\n");
T_b("} xtUMLEventQueue_t;");
T_b("\n");
T_b("/* Pointer to head of list of available event nodes.  */");
T_b("\n");
T_b("static ");
T_b(te_eq->base_event_type);
T_b(" * free_event_list = 0;");
T_b("\n");
if ( non_self_event_queue_needed->result ) {
T_b("static xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];");
T_b("\n");
}
if ( self_event_queue_needed->result ) {
T_b("static xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];");
T_b("\n");
}
}
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Link the event skeleton nodes together on the free list ready");
T_b("\n");
T_b(" ");
T_b("* for allocation.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_eq->scope);
T_b("InitializeOoaEventPool( ");
if ( 0==strcmp("C",te_target->language) ) {
T_b("void )");
T_b("\n");
} else {
T_b("i_t max_event_size, i_t event_pool_length )");
T_b("\n");
}
T_b("{");
T_b("\n");
T_b("  ");
T_b("/* Pre-allocated memory pool for xtUML events.  */");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("static ");
T_b(te_eq->system_events_union);
T_b("_t ");
T_b(te_eq->system_event_pool);
T_b("[ ");
T_b(te_eq->max_events);
T_b(" ];");
T_b("\n");
}
T_b("  ");
T_b("u2_t i;");
T_b("\n");
T_b("  ");
T_b(te_eq->run_flag);
T_b(" = true; /* Default running enabled.  */");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b("for ( i = 0; i < NUM_OF_XTUML_CLASS_THREADS; i++ ) {");
T_b("\n");
if ( non_self_event_queue_needed->result ) {
T_b("    ");
T_b("non_self_event_queue[ i ].head = 0; non_self_event_queue[ i ].tail = 0;");
T_b("\n");
}
if ( self_event_queue_needed->result ) {
T_b("    ");
T_b("self_event_queue[ i ].head = 0; self_event_queue[ i ].tail = 0;");
T_b("\n");
}
T_b("  ");
T_b("}");
T_b("\n");
} else {
if ( non_self_event_queue_needed->result ) {
T_b("  ");
T_b("non_self_event_queue[ 0 ].head = 0; non_self_event_queue[ 0 ].tail = 0;");
T_b("\n");
}
if ( self_event_queue_needed->result ) {
T_b("  ");
T_b("self_event_queue[ 0 ].head = 0; self_event_queue[ 0 ].tail = 0;");
T_b("\n");
}
}
T_b("  ");
T_b("/* String events together into a singly linked list. */");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("free_event_list = (");
T_b(te_eq->base_event_type);
T_b(" *) &");
T_b(te_eq->system_event_pool);
T_b("[ 0 ];");
T_b("\n");
T_b("  ");
T_b("for ( i = 0; i < ");
T_b(te_eq->max_events);
T_b(" - 1; i++ ) {");
T_b("\n");
T_b("    ");
T_b(te_eq->system_event_pool);
T_b("[ i ].mc_event_base.next =");
T_b("\n");
T_b("      ");
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) &(");
T_b(te_eq->system_event_pool);
T_b("[ i + 1 ]);");
T_b("\n");
if ( event_prioritization_needed->result ) {
T_b("    ");
T_b(te_eq->system_event_pool);
T_b("[ i ].mc_event_base.prev = 0;");
T_b("\n");
}
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b(te_eq->system_event_pool);
T_b("[ ");
T_b(te_eq->max_events);
T_b(" - 1 ].mc_event_base.next = 0;");
T_b("\n");
} else {
T_b("  ");
T_b("free_event_list = (");
T_b(te_eq->base_event_type);
T_b(" *) ");
T_b(te_eq->system_event_pool);
T_b(";");
T_b("\n");
T_b("  ");
T_b("char * pool_head = (char *) ");
T_b(te_eq->system_event_pool);
T_b("; // Use a byte-length pointer for the upcoming pointer math");
T_b("\n");
T_b("  ");
T_b("for ( i = 0; i < event_pool_length; i++ ) {");
T_b("\n");
T_b("    ");
T_b("((");
T_b(te_eq->system_events_union);
T_b("_t *) (pool_head + (i * max_event_size)))->mc_event_base.next =");
T_b("\n");
T_b("      ");
T_b("(");
T_b(te_eq->base_event_type);
T_b(" *) (pool_head + ((i+1) * max_event_size));");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("((");
T_b(te_eq->system_events_union);
T_b("_t *) (pool_head + ((event_pool_length - 1) * max_event_size)))->mc_event_base.next = 0;");
T_b("\n");
}
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Obtain an empty event from the free list.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b(te_eq->base_event_type);
T_b(" * ");
T_b(te_eq->scope);
T_b(te_eq->allocate);
T_b("( void )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event = 0;");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_FREELIST );");
T_b("\n");
}
T_b("  ");
T_b("if ( 0 == free_event_list ) {");
T_b("\n");
if ( 0 != te_sys->UnitsToDynamicallyAllocate ) {
T_b("    ");
T_b(te_eq->system_events_union);
T_b("_t * new_mem = (");
T_b(te_eq->system_events_union);
T_b("_t *) ");
T_b(te_dma->allocate);
T_b("( ");
T_b(te_sys->UnitsToDynamicallyAllocate);
T_b(" * sizeof( ");
T_b(te_eq->system_events_union);
T_b("_t ) );");
T_b("\n");
T_b("    ");
T_b("if ( 0 == new_mem ) {");
T_b("\n");
T_b("      ");
T_b(te_callout->event_free_list_empty);
T_b("();   /* Bad news!  No more heap space.  */");
T_b("\n");
T_b("    ");
T_b("} else {");
T_b("\n");
T_b("      ");
T_b("u1_t i;");
T_b("\n");
T_b("      ");
T_b("for ( i = 0; i < ");
T_b(te_sys->UnitsToDynamicallyAllocate);
T_b(" - 1; i++ ) {");
T_b("\n");
T_b("        ");
T_b("new_mem[ i ].mc_event_base.next = (");
T_b(te_eq->base_event_type);
T_b(" *) &(new_mem[ i + 1 ]);");
T_b("\n");
T_b("      ");
T_b("}");
T_b("\n");
T_b("      ");
T_b("new_mem[ ");
T_b(te_sys->UnitsToDynamicallyAllocate);
T_b(" - 1 ].mc_event_base.next = 0;");
T_b("\n");
T_b("      ");
T_b("free_event_list = (");
T_b(te_eq->base_event_type);
T_b(" *) new_mem;");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("event = free_event_list;       /* Grab front of the free list.  */");
T_b("\n");
T_b("  ");
T_b("free_event_list = event->next; /* Unlink from front of free list.  */");
T_b("\n");
} else {
T_b("    ");
T_b(te_callout->event_free_list_empty);
T_b("();   /* Bad news!  No more events.  */");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("event = free_event_list;       /* Grab front of the free list.  */");
T_b("\n");
T_b("    ");
T_b("free_event_list = event->next; /* Unlink from front of free list.  */");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_FREELIST );");
T_b("\n");
}
T_b("  ");
T_b("return event;");
T_b("\n");
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Allocate the event and initialize the base attributes.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b(te_eq->base_event_type);
T_b(" *");
T_b("\n");
T_b(te_eq->scope);
T_b(te_eq->new);
T_b("( const void * const destination,");
T_b("\n");
T_b("                   ");
T_b("const ");
T_b(te_eq->constant_type);
T_b(" * const event_info )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event = ");
T_b(te_eq->allocate);
T_b("();");
T_b("\n");
T_b("  ");
T_b("SetEventTargetInstance( event, destination );");
T_b("\n");
T_b("  ");
T_b("SetEventDestDomainNumber( event, event_info->destination_domain_number );");
T_b("\n");
T_b("  ");
T_b("SetEventDestObjectNumber( event, event_info->destination_object_number );");
T_b("\n");
T_b("  ");
T_b("SetOoaEventNumber( event, event_info->event_number );");
T_b("\n");
T_b("  ");
T_b("SetOoaEventFlags( event, event_info->event_flags );");
T_b("\n");
if ( event_prioritization_needed->result ) {
T_b("  ");
T_b("SetOoaEventPriority( event, event_info->priority );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("event->sc_e = event_info->sc_e;");
T_b("\n");
}
if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b("event->thismodule = this;");
T_b("\n");
}
T_b("  ");
T_b("return event;");
T_b("\n");
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Update the base attributes of an event for polymorphic processing.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b(te_eq->base_event_type);
T_b(" *");
T_b("\n");
T_b(te_eq->scope);
T_b(te_eq->modify);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event,");
T_b("\n");
T_b("                            ");
T_b("const ");
T_b(te_eq->constant_type);
T_b(" * const event_info )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b("SetEventDestDomainNumber( event, event_info->destination_domain_number );");
T_b("\n");
T_b("  ");
T_b("SetEventDestObjectNumber( event, event_info->destination_object_number );");
T_b("\n");
T_b("  ");
T_b("SetOoaEventNumber( event, event_info->event_number );");
T_b("\n");
T_b("  ");
T_b("SetOoaEventFlags( event, event_info->event_flags );");
T_b("\n");
if ( event_prioritization_needed->result ) {
T_b("  ");
T_b("SetOoaEventPriority( event, event_info->priority );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("event->sc_e = event_info->sc_e;");
T_b("\n");
}
if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b("event->thismodule = event_info->thismodule;");
T_b("\n");
}
T_b("  ");
T_b("return event;");
T_b("\n");
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Delete an event by moving it onto the free list.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_eq->scope);
T_b(te_eq->delete);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_FREELIST );");
T_b("\n");
}
T_b("  ");
T_b("event->next = free_event_list;");
T_b("\n");
T_b("  ");
T_b("free_event_list = event;");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_FREELIST );");
T_b("\n");
}
T_b("}");
T_b("\n");
}
if ( non_self_event_queue_needed->result ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Send an event to the instance queue.  Use priority where applicable.");
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("* The following table summarizes the construction of events");
T_b("\n");
T_b(" ");
T_b("* as expected in Escher.  For each type of object that");
T_b("\n");
T_b(" ");
T_b("* may be the source or target of an event, the expected");
T_b("\n");
T_b(" ");
T_b("* value of the source and destination handles in the event are");
T_b("\n");
T_b(" ");
T_b("* given.");
T_b("\n");
T_b(" ");
T_b("*");
T_b("\n");
T_b(" ");
T_b("*   object type | as event source     | as destination");
T_b("\n");
T_b(" ");
T_b("*   ------------+---------------------+----------------------");
T_b("\n");
T_b(" ");
T_b("*   instance    | handle              | handle");
T_b("\n");
T_b(" ");
T_b("*   class       | manufactured handle | 0");
T_b("\n");
T_b(" ");
T_b("*   creator     | manufactured handle | 0");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_eq->scope);
T_b(te_eq->non_self);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("sc_event * sc_e = event->sc_e;");
T_b("\n");
}
if ( te_thread->enabled ) {
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]");
T_b("\n");
T_b("    ");
T_b("+ GetEventDestObjectNumber( event ) );");
T_b("\n");
} else {
T_b("  ");
T_b("u1_t t = *( ");
T_b(te_instance->get_thread_assignment);
T_b("() );");
T_b("\n");
}
T_b("  ");
T_b("xtUMLEventQueue_t * q = &non_self_event_queue[ t ];");
T_b("\n");
} else {
T_b("  ");
T_b("xtUMLEventQueue_t * q = &non_self_event_queue[ 0 ];");
T_b("\n");
}
if ( event_prioritization_needed->result ) {
T_b("  ");
T_b("/* Insert event into empty event queue.  */");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_IQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("if ( q->tail == 0 ) {");
T_b("\n");
T_b("    ");
T_b("q->head = event;    /* first in queue */");
T_b("\n");
T_b("    ");
T_b("q->tail = event;    /* last in queue */");
T_b("\n");
T_b("    ");
T_b("event->next = 0;");
T_b("\n");
T_b("    ");
T_b("event->prev = 0;");
T_b("\n");
T_b("  ");
T_b("} else if ( event->priority == 0 ) {");
T_b("\n");
T_b("    ");
T_b("/* No priority, append to end of queue.  */");
T_b("\n");
T_b("    ");
T_b("event->next = 0;                          /* input at tail end */");
T_b("\n");
T_b("    ");
T_b("event->prev = q->tail;");
T_b("\n");
T_b("    ");
T_b("q->tail->next = event; /* non empty */");
T_b("\n");
T_b("    ");
T_b("q->tail = event;    /* tail points to last */");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("/* Priority event, insert at proper position.  */");
T_b("\n");
T_b("    ");
T_b(te_eq->base_event_type);
T_b(" * e = q->tail;");
T_b("\n");
T_b("    ");
T_b("/* Find slot before which to insert our new arrival.     */");
T_b("\n");
T_b("    ");
T_b("/* Break from the loop before the event we must follow.  */");
T_b("\n");
T_b("    ");
T_b("while ( e != 0 ) {");
T_b("\n");
T_b("      ");
T_b("if ( event->priority <= e->priority ) { break; }");
T_b("\n");
T_b("      ");
T_b("if ( GetEventTargetInstance( event ) == GetEventTargetInstance(e) ) {");
T_b("\n");
T_b("        ");
T_b("if ( GetEventSendingInstance( event ) == GetEventSendingInstance(e) ) {");
T_b("\n");
T_b("          ");
T_b("if ( GetEventTargetInstance( event ) != 0 ) { break; }");
T_b("\n");
T_b("          ");
T_b("else {");
T_b("\n");
T_b("            ");
T_b("/* Creator or assigner with no target instance handle.  */");
T_b("\n");
T_b("            ");
T_b("/* We must interrogate the object and domain numbers.   */");
T_b("\n");
T_b("            ");
T_b("if ( GetEventDestObjectNumber( event ) == GetEventDestObjectNumber( e ) ) {");
T_b("\n");
T_b("              ");
T_b("if ( GetEventDestDomainNumber( event ) == GetEventDestDomainNumber( e ) ) { break; }");
T_b("\n");
T_b("            ");
T_b("}");
T_b("\n");
T_b("          ");
T_b("}");
T_b("\n");
T_b("        ");
T_b("}");
T_b("\n");
T_b("      ");
T_b("}");
T_b("\n");
T_b("      ");
T_b("e = e->prev;");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("    ");
T_b("if ( e == 0 ) { /* Slot ! found, insert after head->  */");
T_b("\n");
T_b("      ");
T_b("e = q->head;");
T_b("\n");
T_b("      ");
T_b("event->prev = 0;");
T_b("\n");
T_b("      ");
T_b("event->next = e;");
T_b("\n");
T_b("      ");
T_b("e->prev = event;");
T_b("\n");
T_b("      ");
T_b("q->head = event;");
T_b("\n");
T_b("    ");
T_b("} else { /* Slot found, insert before.  */");
T_b("\n");
T_b("      ");
T_b("event->prev = e;");
T_b("\n");
T_b("      ");
T_b("event->next = e->next;");
T_b("\n");
T_b("      ");
T_b("e->next = event;");
T_b("\n");
T_b("      ");
T_b("if ( event->next != 0 ) {");
T_b("\n");
T_b("        ");
T_b("event->next->prev = event;");
T_b("\n");
T_b("      ");
T_b("}");
T_b("\n");
T_b("      ");
T_b("if ( q->tail == e ) {");
T_b("\n");
T_b("        ");
T_b("q->tail = event;");
T_b("\n");
T_b("      ");
T_b("}");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
} else {
T_b("  ");
T_b("event->next = 0;");
T_b("\n");
T_b("  ");
T_b("/* Append the event to the tail end of the queue.  */");
T_b("\n");
T_b("  ");
T_b("/* No need to maintain prev pointers when not prioritizing.  */");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_IQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("if ( q->tail == 0 ) {");
T_b("\n");
T_b("    ");
T_b("q->head = event;");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("q->tail->next = event;");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("q->tail = event;");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_IQUEUE );");
T_b("\n");
T_b("  ");
T_b(te_thread->nonbusy_wake);
T_b("( t );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("sc_e->notify();");
T_b("\n");
}
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Drag an event from the instance directed queue if there is one->  This");
T_b("\n");
T_b(" ");
T_b("* routine also serves as the IsQueueEmpty routine.  A null return code ");
T_b("\n");
T_b(" ");
T_b("* indicates that the queue is empty.  Otherwise the handle to the");
T_b("\n");
T_b(" ");
T_b("* event will be returned.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("static ");
T_b(te_eq->base_event_type);
T_b(" * DequeueOoaNonSelfEvent( ");
T_b(dq_arg_type);
T_b(" );");
T_b("\n");
T_b("static ");
}
T_b(te_eq->base_event_type);
T_b(" * ");
T_b(te_eq->scope);
T_b("DequeueOoaNonSelfEvent( ");
T_b(dq_arg_type);
T_b(" ");
T_b(dq_arg);
T_b(")");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event;");
T_b("\n");
T_b("  ");
T_b("xtUMLEventQueue_t * q = &non_self_event_queue[ ");
if ( te_thread->enabled ) {
T_b(dq_arg);
T_b("");
} else {
T_b("0 ");
}
T_b("];");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_IQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("/* Assign the event from the head of the queue.  */");
T_b("\n");
T_b("  ");
T_b("event = q->head;");
T_b("\n");
T_b("  ");
T_b("/* If the list is not empty, bump the head.  */");
T_b("\n");
T_b("  ");
T_b("if ( event != 0 ) {");
T_b("\n");
T_b("    ");
T_b("q->head = event->next;");
T_b("\n");
T_b("    ");
T_b("/* If empty, nullify tail->  Link prev pointers (if needed)->  */");
T_b("\n");
T_b("    ");
T_b("if ( q->head == 0 ) {");
T_b("\n");
T_b("      ");
T_b("q->tail = 0;");
T_b("\n");
T_b("    ");
T_b("}");
if ( event_prioritization_needed->result ) {
T_b(" ");
T_b("else {");
T_b("\n");
T_b("      ");
T_b("q->head->prev = 0;");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
} else {
}
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b(te_callout->non_self_event_queue_empty);
T_b("();");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_IQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("return event;");
T_b("\n");
T_b("}");
T_b("\n");
T_b(te_file->arc_path);
}
if ( self_event_queue_needed->result ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Send an event on the self queue.  No prioritization occurs on");
T_b("\n");
T_b(" ");
T_b("* this queue.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void");
T_b("\n");
T_b(te_eq->scope);
T_b(te_eq->self);
T_b("( ");
T_b(te_eq->base_event_type);
T_b(" * event )");
T_b("\n");
T_b("{");
T_b("\n");
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("sc_event * sc_e = event->sc_e;");
T_b("\n");
}
if ( te_thread->enabled ) {
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("u1_t t = *( class_thread_assignment[ GetEventDestDomainNumber( event ) ]");
T_b("\n");
T_b("    ");
T_b("+ GetEventDestObjectNumber( event ) );");
T_b("\n");
} else {
T_b("  ");
T_b("u1_t t = *( ");
T_b(te_instance->get_thread_assignment);
T_b("() );");
T_b("\n");
}
T_b("  ");
T_b("xtUMLEventQueue_t * q = &self_event_queue[ t ];");
T_b("\n");
} else {
T_b("  ");
T_b("xtUMLEventQueue_t * q = &self_event_queue[ 0 ];");
T_b("\n");
}
T_b("  ");
T_b("event->next = 0;");
T_b("\n");
T_b("  ");
T_b("/* Append the event to the tail end of the queue.  */");
T_b("\n");
T_b("  ");
T_b("/* No need to maintain prev pointers for self directed events.  */");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_SQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("if ( q->tail == 0 ) {");
T_b("\n");
T_b("    ");
T_b("q->head = event;");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b("q->tail->next = event;");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("q->tail = event;");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_SQUEUE );");
T_b("\n");
T_b("  ");
T_b(te_thread->nonbusy_wake);
T_b("( t );");
T_b("\n");
}
if ( 0==strcmp("SystemC",te_thread->flavor) ) {
T_b("  ");
T_b("sc_e->notify();");
T_b("\n");
}
T_b("}");
T_b("\n");
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Drag an event from the self queue if there is one->  This routine");
T_b("\n");
T_b(" ");
T_b("* also serves as the IsQueueEmpty routine.  A null return code ");
T_b("\n");
T_b(" ");
T_b("* indicates that the queue is empty.  Otherwise the handle to the");
T_b("\n");
T_b(" ");
T_b("* event will be returned.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("static ");
T_b(te_eq->base_event_type);
T_b(" * DequeueOoaSelfEvent( ");
T_b(dq_arg_type);
T_b(" );");
T_b("\n");
T_b("static ");
}
T_b(te_eq->base_event_type);
T_b(" * ");
T_b(te_eq->scope);
T_b("DequeueOoaSelfEvent( ");
T_b(dq_arg_type);
T_b(" ");
T_b(dq_arg);
T_b(")");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event;");
T_b("\n");
T_b("  ");
T_b("xtUMLEventQueue_t * q = &self_event_queue[ ");
if ( te_thread->enabled ) {
T_b(dq_arg);
T_b("");
} else {
T_b("0 ");
}
T_b("];");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_SQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("/* Assign the event from the head of the queue.  */");
T_b("\n");
T_b("  ");
T_b("event = q->head;");
T_b("\n");
T_b("  ");
T_b("/* If the list is not empty, bump the head.  */");
T_b("\n");
T_b("  ");
T_b("if ( event != 0 ) {");
T_b("\n");
T_b("    ");
T_b("q->head = event->next;               /* bump */");
T_b("\n");
T_b("    ");
T_b("/* If empty, nullify tail.  No need to maintain prev pointers");
T_b("\n");
T_b("       ");
T_b("for the self queue.  They are not used.  */");
T_b("\n");
T_b("    ");
T_b("if ( q->head == 0 ) {");
T_b("\n");
T_b("      ");
T_b("q->tail = 0;");
T_b("\n");
T_b("    ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("} else {");
T_b("\n");
T_b("    ");
T_b(te_callout->self_event_queue_empty);
T_b("();");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
if ( te_thread->enabled ) {
T_b("  ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_SQUEUE );");
T_b("\n");
}
T_b("  ");
T_b("return event;");
T_b("\n");
T_b("}");
T_b("\n");
}
if ( non_self_event_queue_needed->result || self_event_queue_needed->result ) {
if ( event_prioritization_needed->result ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* ");
T_b(te_instance->global_self);
T_b(":  Access the reference to event target instance.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void *");
T_b("\n");
T_b(te_instance->global_self);
T_b("( void )");
T_b("\n");
T_b("{");
T_b("\n");
T_b("  ");
T_b("return ");
T_b(te_prefix->result);
T_b("self;");
T_b("\n");
T_b("}");
T_b("\n");
T_b(" ");
T_b("\n");
}
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Loop on the event queues dispatching events for this thread.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( te_thread->enabled ) {
if ( te_thread->flavor == "Nucleus" ) {
T_b("static void ooa_loop( UNSIGNED, void * );");
T_b("\n");
T_b("static void ooa_loop( UNSIGNED unused, void * thread )");
T_b("\n");
} else if ( te_thread->flavor == "AUTOSAR" ) {
T_b("void * ");
T_b(te_eq->scope);
T_b("ooa_loop( void * thread )");
T_b("\n");
} else {
T_b("static void * ooa_loop( void * );");
T_b("\n");
T_b("static void * ooa_loop( void * thread )");
T_b("\n");
}
} else {
if ( 0==strcmp("C++",te_target->language) ) {
T_b("void ");
T_b(te_eq->scope);
T_b("ooa_loop( void * thismodule )");
T_b("\n");
} else {
T_b("static void ooa_loop( void );");
T_b("\n");
T_b("static void ooa_loop( void )");
T_b("\n");
}
}
T_b("{");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("/* class dispatch table");
T_b("\n");
T_b("   ");
T_b("*/");
T_b("\n");
T_b("  ");
T_b("static const ");
T_b(class_dispatch_array->element_type);
T_b(" * DomainClassDispatcherTable[ ");
T_b(num_ooa_doms);
T_b(" ] =");
T_b("\n");
T_b("    ");
T_b("{");
T_b("\n");
if ( not_empty te_evt ) {
T_b("      ");
T_b(class_dispatch_array->result);
T_b("");
} else {
T_b("      ");
T_b("0");
}
if ( empty te_c ) {
} else {
T_b(",");
T_b("\n");
}
T_b("    ");
T_b("};");
T_b("\n");
}
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event;");
T_b("\n");
if ( te_thread->enabled ) {
if ( 0==strcmp("C",te_target->language) ) {
T_b("  ");
T_b("u1_t t = *( (u1_t *) thread );");
T_b("\n");
} else {
T_b("  ");
T_b("u1_t t = *( ");
T_b(te_instance->get_thread_assignment);
T_b("() + c );");
T_b("\n");
}
}
T_b("  ");
T_b("/* Start consuming events and dispatching background processes.  */");
T_b("\n");
if ( ( te_sys->AUTOSAR ) || ( 0==strcmp("SystemC",te_thread->flavor) ) ) {
T_b("  ");
T_b("bool events_remaining_in_queue = true;");
T_b("\n");
T_b("  ");
T_b("while ( (true == events_remaining_in_queue) && (true == ");
T_b(te_eq->run_flag);
T_b(") ) {");
T_b("\n");
} else if ( 0==strcmp("C++",te_target->language) ) {
T_b("  ");
T_b("if ( true == ");
T_b(te_eq->run_flag);
T_b(" ) {");
T_b("\n");
} else {
T_b("  ");
T_b("while ( true == ");
T_b(te_eq->run_flag);
T_b(" ) {");
T_b("\n");
}
if ( self_event_queue_needed->result ) {
T_b("    ");
T_b("event = DequeueOoaSelfEvent(");
T_b(thread_number);
T_b("); /* Self first.  */");
T_b("\n");
T_b("    ");
T_b("if ( 0 == event ) {");
T_b("\n");
T_b("  ");
T_b("");
}
if ( non_self_event_queue_needed->result ) {
T_b("    ");
T_b("event = DequeueOoaNonSelfEvent(");
T_b(thread_number);
T_b("); /* Instance next.  */");
T_b("\n");
}
if ( self_event_queue_needed->result ) {
T_b("    ");
T_b("}");
T_b("\n");
}
T_b("    ");
T_b("if ( 0 != event ) {");
T_b("\n");
if ( event_prioritization_needed->result ) {
T_b("      ");
T_b("/* Set up self reference for use by prioritized events (and others).  */");
T_b("\n");
T_b("      ");
T_b(te_prefix->result);
T_b("self = GetEventTargetInstance( event );");
T_b("\n");
}
if ( te_thread->serialize ) {
T_b("      ");
T_b("#ifdef ESCHER_SERIALIZE_DISPATCH");
T_b("\n");
T_b("      ");
T_b(te_thread->mutex_lock);
T_b("( SEMAPHORE_FLAVOR_DISPATCH );");
T_b("\n");
T_b("      ");
T_b("#endif");
T_b("\n");
}
if ( 0==strcmp("C++",te_target->language) ) {
T_b("      ");
T_b("event->thismodule = thismodule;");
T_b("\n");
}
if ( 0==strcmp("C",te_target->language) ) {
T_b("      ");
T_b("( *( DomainClassDispatcherTable[ GetEventDestDomainNumber( event ) ] )[ GetEventDestObjectNumber( event ) ] )( event );");
T_b("\n");
} else {
T_b("      ");
T_b("( *( ");
T_b(te_instance->get_event_dispatcher);
T_b("() )[ GetEventDestObjectNumber( event ) ] )( event );");
T_b("\n");
}
if ( te_thread->serialize ) {
T_b("      ");
T_b("#ifdef ESCHER_SERIALIZE_DISPATCH");
T_b("\n");
T_b("      ");
T_b(te_thread->mutex_unlock);
T_b("( SEMAPHORE_FLAVOR_DISPATCH );");
T_b("\n");
T_b("      ");
T_b("#endif");
T_b("\n");
}
T_b("      ");
T_b(te_eq->delete);
T_b("( event );");
T_b("\n");
T_b("    ");
T_b("} else {");
T_b("\n");
if ( ( te_sys->AUTOSAR ) || ( 0==strcmp("SystemC",te_thread->flavor) ) ) {
T_b("      ");
T_b("events_remaining_in_queue = false;");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("      ");
T_b(te_thread->nonbusy_wait);
T_b("( ");
T_b(thread_number);
T_b(" );");
T_b("\n");
}
T_b("    ");
T_b("}");
T_b("\n");
if ( event_prioritization_needed->result ) {
T_b("    ");
T_b("/* Clear self when not in normal state action.    */");
T_b("\n");
T_b("    ");
T_b(te_prefix->result);
T_b("self = 0;");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("    ");
T_b("if ( t == 0 ) {   /* Is this the default task/thread?  */");
T_b("\n");
}
if ( te_sys->MaxInterleavedBridges > 0 ) {
T_b("    ");
T_b(more_indent);
T_b("/* Launch (interrupt) bridge actions that occurred during state.  */");
T_b("\n");
T_b("    ");
T_b(more_indent);
T_b(te_ilb->dispatch);
T_b("();");
T_b("\n");
}
if ( 0!=strcmp("SystemC",te_thread->flavor) ) {
T_b("    ");
T_b(more_indent);
T_b(te_callout->background_processing);
T_b("();");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("    ");
T_b("}");
T_b("\n");
}
T_b("  ");
T_b("}");
T_b("\n");
if ( te_thread->enabled ) {
if ( ( te_thread->flavor != "Nucleus" ) && ( 0!=strcmp("SystemC",te_thread->flavor) ) ) {
T_b("  ");
T_b("return 0;");
T_b("\n");
}
}
T_b("}");
T_b("\n");
if ( 0==strcmp("C",te_target->language) ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Load up the threads with event dispatchers and/or specific functionality.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("void ");
T_b(te_eq->scope);
T_b(te_prefix->result);
T_b("xtUML_run( void )");
T_b("\n");
T_b("{");
T_b("\n");
if ( te_thread->enabled ) {
if ( te_thread->flavor == "Nucleus" ) {
} else {
T_b("  ");
T_b("void * vp;");
T_b("\n");
}
T_b("  ");
T_b("u1_t i;");
T_b("\n");
T_b("  ");
T_b("/* Create threads in reverse order saving thread 0 for default.  */");
T_b("\n");
T_b("  ");
T_b("for ( i = NUM_OF_XTUML_CLASS_THREADS - 1; i > 0; i-- ) {");
T_b("\n");
T_b("    ");
T_b(te_thread->create);
T_b("( ooa_loop, i );");
T_b("\n");
T_b("  ");
T_b("}");
T_b("\n");
T_b("  ");
T_b("i = 0;");
T_b("\n");
}
T_b("  ");
T_b(return_code_assignment);
T_b("ooa_loop(");
T_b(tasking_arguments);
T_b(");");
T_b("\n");
T_b("}");
T_b("\n");
}
}
