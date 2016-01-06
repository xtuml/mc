if ( defined ) {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* ");
T_b(flavor);
T_b(" event:  ");
T_b(sm_evt->Drv_Lbl);
T_b(":'");
T_b(sm_evt->Mning);
T_b("'");
T_b("\n");
T_b(polymorphic_comment);
T_b("");
T_b(" ");
T_b("*/");
T_b("\n");
T_b("typedef struct {");
T_b("\n");
T_b("  ");
T_b("EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */");
T_b("\n");
if ( 0!=strcmp("",event_parameters) ) {
T_b(event_parameters);
T_b("");
} else {
T_b("  ");
T_b("/* Note:  no supplemental data for this event */");
T_b("\n");
}
T_b("} ");
T_b(te_evt->GeneratedName);
T_b(";");
T_b("\n");
} else {
T_b("/*");
T_b("\n");
T_b(" ");
T_b("* ");
T_b(flavor);
T_b(" event:  ");
T_b(sm_evt->Drv_Lbl);
T_b(":'");
T_b(sm_evt->Mning);
T_b("'");
T_b("\n");
T_b(" ");
T_b("* warning:  Event is not used in application - no code generated.");
T_b("\n");
T_b(" ");
T_b("*/");
T_b("\n");
}
