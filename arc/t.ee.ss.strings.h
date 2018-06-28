
#ifdef ${te_prefix.define_u}STATESAVE
/*
 * state save component, class, state and event strings
 */
.assign d = 0
.assign dcount = 0
.assign ccount = 0
.assign pass = 0
.assign te_c = first_te_c
.while ( not_empty te_c )
#define D$t{d}_COMPONENT "${te_c.Name}"
#define D$t{d}_CLASSES ${te_c.class_strings}
  .assign c = 0
  .while ( pass < 3 )
    .select one first_te_class related by te_c->TE_CLASS[R2103]
    .assign te_class = first_te_class
    .while ( not_empty te_class )
      .// The switch here orders classes with single state machines ahead
      .// of class-based state machines ahead of passive classes.
      .if ( ( 0 == pass ) and ( ( "" != te_class.dispatcher ) or ( "" != te_class.CBdispatcher ) ) )
        .// instance-based state machine
        .select any te_sm related by te_class->TE_SM[R2072] where ( not selected.class_based )
        .if ( empty te_sm )
          .select any te_sm related by te_class->TE_SM[R2072] where ( selected.class_based )
        .end if
#define D$t{d}C$t{c}_STATES "",${te_sm.state_strings}
#define D$t{d}C$t{c}_EVENTS ${te_sm.event_strings}
        .assign c = c + 1
      .elif ( ( 1 == pass ) and ( ( "" != te_class.dispatcher ) and ( "" != te_class.CBdispatcher ) ) )
        .// dual state machine
        .select any te_sm related by te_class->TE_SM[R2072] where ( selected.class_based )
#define D$t{d}C$t{c}_STATES "",${te_sm.state_strings}
#define D$t{d}C$t{c}_EVENTS ${te_sm.event_strings}
        .assign c = c + 1
      .elif ( ( 2 == pass ) and ( ( "" == te_class.dispatcher ) and ( "" == te_class.CBdispatcher ) ) )
        .// passive instance
        .// no states or events for such a class, define empty
#define D$t{d}C$t{c}_STATES
#define D$t{d}C$t{c}_EVENTS
        .assign c = c + 1
      .else
        .// empty
      .end if
      .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
    .end while
    .if ( c > ccount )
      .assign ccount = c
    .end if
    .assign pass = pass + 1
  .end while
  .assign d = d + 1
  .select one te_c related by te_c->TE_C[R2017.'precedes']
.end while
.assign dcount = d
.//
.// data structures
.//

/*
 * state save component, class, state and event constant data
 */
.// components
.assign d = 0
.assign ddelimiter = "  "
static char * components[$t{dcount}] = {
.while ( d < dcount )
${ddelimiter}D$t{d}_COMPONENT
  .assign ddelimiter = ", "
  .assign d = d + 1
.end while
};
.// classes
.assign d = 0
.assign ddelimiter = "  "
static char * classes[$t{dcount}][$t{ccount}] = {
.while ( d < dcount )
${ddelimiter}{ D$t{d}_CLASSES }\
  .assign ddelimiter = ", "
  .assign d = d + 1
.end while

};
.// states
.assign d = 0
.assign ddelimiter = "  "
static char * states[$t{dcount}][$t{ccount}][256] = {
.while ( d < dcount )
  .assign c = 0
  .assign cdelimiter = "    "
${ddelimiter}{
  .while ( c < ccount )
${cdelimiter}{ D$t{d}C$t{c}_STATES }\
    .assign cdelimiter = ", "
    .assign c = c + 1
  .end while

  }
  .assign ddelimiter = ", "
  .assign d = d + 1
.end while
};
.// events
.assign d = 0
.assign ddelimiter = "  "
static char * events[$t{dcount}][$t{ccount}][256] = {
.while ( d < dcount )
  .assign c = 0
  .assign cdelimiter = "    "
${ddelimiter}{
  .while ( c < ccount )
${cdelimiter}{ D$t{d}C$t{c}_EVENTS }\
    .assign cdelimiter = ", "
    .assign c = c + 1
  .end while

  }
  .assign ddelimiter = ", "
  .assign d = d + 1
.end while
};
#endif
