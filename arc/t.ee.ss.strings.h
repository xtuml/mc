
/*
 * state save component, class, state and event strings
 */
.assign d = 0
.assign dcount = 0
.assign ccount = 0
.assign te_c = first_te_c
.while ( not_empty te_c )
  .assign c = 0
#define D$t{d}_COMPONENT "${te_c.Name}"
#define D$t{d}_CLASSES ${te_c.class_strings}
  .select one te_class related by te_c->TE_CLASS[R2103]
  .while ( not_empty te_class )
    .select any te_sm related by te_class->TE_SM[R2072] where ( not selected.class_based )
    .if ( not_empty te_sm )
#define D$t{d}C$t{c}_STATES "",${te_sm.state_strings}
#define D$t{d}C$t{c}_EVENTS ${te_sm.event_strings}
    .end if
    .select any te_sm related by te_class->TE_SM[R2072] where ( selected.class_based )
    .if ( not_empty te_sm )
#define D$t{d}C$t{c}_STATES "",${te_sm.state_strings}
#define D$t{d}C$t{c}_EVENTS ${te_sm.event_strings}
    .end if
    .assign c = c + 1
    .select one te_class related by te_class->TE_CLASS[R2092.'precedes']
  .end while
  .if ( c > ccount )
    .assign ccount = c
  .end if
  .assign d = d + 1
  .select one te_c related by te_c->TE_C[R2017.'precedes']
.end while
.assign dcount = d
.//
.// data structures
.//

#ifdef ${te_prefix.define_u}STATESAVE
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

