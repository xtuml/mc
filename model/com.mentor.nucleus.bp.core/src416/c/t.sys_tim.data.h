T_b("/*---------------------------------------------------------------------");
T_b("\n");
T_b(" ");
T_b("* Timer \"Object\" Structure Declaration");
T_b("\n");
T_b(" ");
T_b("*    [next] is the mechanism used to collect and sequence timers.");
T_b("\n");
T_b(" ");
T_b("*    Timer instances are strung together in an active (animate)");
T_b("\n");
T_b(" ");
T_b("*    list and an inactive (inanimate) list.  The next pointer");
T_b("\n");
T_b(" ");
T_b("*    provides the \"hole for the beads\".");
T_b("\n");
T_b(" ");
T_b("*    [expiration] is the system clock time at which this");
T_b("\n");
T_b(" ");
T_b("*    timer will pop.");
T_b("\n");
if ( te_tim->recurring_timer_support ) {
T_b(" ");
T_b("*    [recurrence] is the repeating expiration duration");
T_b("\n");
}
T_b(" ");
T_b("*    [event] is the handle of the event that the timer will");
T_b("\n");
T_b(" ");
T_b("*    generate upon expiration.");
T_b("\n");
if ( te_tim->keyed_timer_support ) {
T_b(" ");
T_b("*    [accesskey] is the unique serial number for this timer allocation");
T_b("\n");
}
T_b(" ");
T_b("*-------------------------------------------------------------------*/");
T_b("\n");
T_b("typedef struct ETimer_s ");
T_b(te_tim->internal_type);
T_b(";");
T_b("\n");
T_b("struct ETimer_s {");
T_b("\n");
T_b("  ");
T_b(te_tim->internal_type);
T_b(" * next;");
T_b("\n");
T_b("  ");
T_b("ETimer_time_t expiration;");
T_b("\n");
if ( te_tim->recurring_timer_support ) {
T_b("  ");
T_b("ETimer_time_t recurrence;");
T_b("\n");
}
T_b("  ");
T_b(te_eq->base_event_type);
T_b(" * event;");
T_b("\n");
if ( te_thread->flavor == "Nucleus" ) {
T_b("  ");
T_b("#ifdef ");
T_b(te_prefix->define_u);
T_b("TASKING_");
T_b(te_thread->flavor);
T_b("\n");
T_b("  ");
T_b("unsigned index;");
T_b("\n");
T_b("  ");
T_b("#endif");
T_b("\n");
}
if ( te_tim->keyed_timer_support ) {
T_b("  ");
T_b("u4_t accesskey;");
T_b("\n");
}
T_b("};");
T_b("\n");
