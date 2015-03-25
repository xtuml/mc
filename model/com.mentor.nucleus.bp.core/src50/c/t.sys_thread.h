T_b("/*");
T_b("\n");
T_b(" ");
T_b("* Delcarations for multi-tasking/threading services.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
if ( te_thread->flavor == "Nucleus" ) {
T_b("#include \"nucleus.h\"   /* Nucleus PLUS declarations */");
T_b("\n");
}
if ( te_thread->enabled ) {
T_b("#define ");
T_b(te_prefix->define_u);
T_b("TASKING_");
T_b(te_thread->flavor);
T_b(" 1");
T_b("\n");
}
T_b("#define NUM_OF_XTUML_CLASS_THREADS ");
T_b(te_thread->number_of_threads);
T_b("\n");
T_b("#define NUM_OF_TOTAL_THREADS NUM_OF_XTUML_CLASS_THREADS");
if ( te_sys->PersistentClassCount > 0 ) {
T_b(" ");
T_b("+ 1");
T_b("\n");
T_b("#define PERSISTENCE_THREAD_NUMBER NUM_OF_TOTAL_THREADS - 1");
T_b("\n");
} else {
}
T_b("#define SEMAPHORE_FLAVOR_IQUEUE    ");
T_b(i);
T_b("\n");
T_b("#define SEMAPHORE_FLAVOR_SQUEUE    ");
T_b(i);
T_b("\n");
T_b("#define SEMAPHORE_FLAVOR_FREELIST  ");
T_b(i);
T_b("\n");
T_b("#define SEMAPHORE_FLAVOR_NONBUSY   ");
T_b(i);
T_b("\n");
if ( te_thread->serialize ) {
T_b("#define SEMAPHORE_FLAVOR_DISPATCH  ");
T_b(i);
T_b("\n");
}
T_b("#define SEMAPHORE_FLAVOR_INSTANCE  ");
T_b(i);
T_b("\n");
T_b("#define SEMAPHORE_FLAVOR_TIMER     ");
T_b(i);
T_b("\n");
T_b("#define SEMAPHORE_FLAVOR_ILB       ");
T_b(i);
T_b("\n");
if ( te_sys->PersistentClassCount > 0 ) {
T_b("#define SEMAPHORE_FLAVOR_PERSIST   ");
T_b(i);
T_b("\n");
}
T_b("#define SEMAPHORE_FLAVOR_MAX       ");
T_b(i);
T_b("\n");
if ( 0!=strcmp("SystemC",te_thread->flavor) ) {
T_b("void ");
T_b(te_prefix->result);
T_b("InitializeThreading( void );");
T_b("\n");
if ( te_thread->flavor == "Nucleus" ) {
T_b("void ");
T_b(te_thread->create);
T_b("( void (f)(UNSIGNED, void *), const u1_t );");
T_b("\n");
T_b("void xtUML_Application_Initialize( NU_MEMORY_POOL *, const UNSIGNED );");
T_b("\n");
} else {
T_b("void ");
T_b(te_thread->create);
T_b("( void *(f)(void *), const u1_t );");
T_b("\n");
}
T_b("void ");
T_b(te_thread->mutex_lock);
T_b("( const u1_t );");
T_b("\n");
T_b("void ");
T_b(te_thread->mutex_unlock);
T_b("( const u1_t );");
T_b("\n");
T_b("void ");
T_b(te_thread->nonbusy_wait);
T_b("( const u1_t );");
T_b("\n");
T_b("void ");
T_b(te_thread->nonbusy_wake);
T_b("( const u1_t );");
T_b("\n");
T_b("void ");
T_b(te_thread->shutdown);
T_b("( void );");
T_b("\n");
T_b("#ifdef NOMUTEX_DEBUG");
T_b("\n");
T_b("#define pthread_mutex_lock( X ) 0");
T_b("\n");
T_b("#define pthread_mutex_unlock( X ) 0");
T_b("\n");
T_b("#endif");
T_b("\n");
}
