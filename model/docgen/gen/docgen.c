/*----------------------------------------------------------------------------
 * File:  docgen.c
 *
 * UML Component Port Messages
 * Component/Module Name:  docgen
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "docgen_sys_types.h"
#include "docgen.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "POP_bridge.h"
#include "LOG_bridge.h"
#include "docgen_classes.h"

extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  docgen
 */
void
docgen_docgen()
{
  docgen_DOC_DOC * doc_doc=0;
  /* LOG::LogInfo( message:Starting DocGen ) */
  LOG_LogInfo( "Starting DocGen" );
  /* T::clear(  ) */
  T_clear();
  /* ::docgen_system(  ) */
  docgen_docgen_system();
  /* SELECT any doc_doc FROM INSTANCES OF DOC_DOC */
  doc_doc = (docgen_DOC_DOC *) Escher_SetGetAny( &pG_docgen_DOC_DOC_extent.active );
  /* doc_doc.validate() */
  docgen_DOC_DOC_op_validate( doc_doc );
  /* doc_doc.render() */
  docgen_DOC_DOC_op_render( doc_doc );
  /* LOG::LogInfo( message:Done ) */
  LOG_LogInfo( "Done" );
}

/*
 * Domain Function:  docgen_activity_elements
 */
void
docgen_docgen_activity_elements( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s a_aps_space={0}; Escher_ObjectSet_s * a_aps = &a_aps_space;Escher_ObjectSet_s a_ns_space={0}; Escher_ObjectSet_s * a_ns = &a_ns_space;Escher_ObjectSet_s a_es_space={0}; Escher_ObjectSet_s * a_es = &a_es_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many a_es RELATED BY ep_pkg->PE_PE[R8000]->A_E[R8001] */
  Escher_ClearSet( a_es );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_A_E_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_A_E * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_es, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) a_es, R8001_subtype );
  }}}}}
  /* SELECT many a_ns RELATED BY ep_pkg->PE_PE[R8000]->A_N[R8001] */
  Escher_ClearSet( a_ns );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_A_N_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_A_N * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_ns, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) a_ns, R8001_subtype );
  }}}}}
  /* SELECT many a_aps RELATED BY ep_pkg->PE_PE[R8000]->A_AP[R8001] */
  Escher_ClearSet( a_aps );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_A_AP_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_A_AP * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_aps, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) a_aps, R8001_subtype );
  }}}}}
  /* IF ( ( ( not_empty a_es or not_empty a_ns ) or not_empty a_aps ) ) */
  if ( ( ( ( ! Escher_SetIsEmpty( a_es ) ) || ( ! Escher_SetIsEmpty( a_ns ) ) ) || ( ! Escher_SetIsEmpty( a_aps ) ) ) ) {
    docgen_A_FJ * a_fj=0;docgen_A_DM * a_dm=0;docgen_A_FF * a_ff=0;docgen_A_AF * a_af=0;docgen_A_INI * a_ini=0;docgen_A_OBJ * a_obj=0;docgen_A_SS * a_ss=0;docgen_A_AEA * a_aea=0;docgen_A_ATE * a_ate=0;docgen_A_GA * a_ga=0;docgen_A_E * a_e=0;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;Escher_ObjectSet_s a_objs_space={0}; Escher_ObjectSet_s * a_objs = &a_objs_space;Escher_ObjectSet_s a_sss_space={0}; Escher_ObjectSet_s * a_sss = &a_sss_space;Escher_ObjectSet_s a_aeas_space={0}; Escher_ObjectSet_s * a_aeas = &a_aeas_space;Escher_ObjectSet_s a_ates_space={0}; Escher_ObjectSet_s * a_ates = &a_ates_space;Escher_ObjectSet_s a_gas_space={0}; Escher_ObjectSet_s * a_gas = &a_gas_space;Escher_ObjectSet_s a_fjs_space={0}; Escher_ObjectSet_s * a_fjs = &a_fjs_space;Escher_ObjectSet_s a_dms_space={0}; Escher_ObjectSet_s * a_dms = &a_dms_space;Escher_ObjectSet_s a_ffs_space={0}; Escher_ObjectSet_s * a_ffs = &a_ffs_space;Escher_ObjectSet_s a_afs_space={0}; Escher_ObjectSet_s * a_afs = &a_afs_space;Escher_ObjectSet_s a_inis_space={0}; Escher_ObjectSet_s * a_inis = &a_inis_space;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:, title:PARAM.title) */
    doc_sec = docgen_DOC_SEC_op_populate(p_doc_sec, "", p_title);
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par, num_cols:3, title:PARAM.title) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par, 3, p_title);
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Activity.gif */
    columns[0] = Escher_strcpy( columns[0], "Activity.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH a_e IN a_es */
    { Escher_Iterator_s itera_e;
    docgen_A_E * iia_e;
    Escher_IteratorReset( &itera_e, a_es );
    while ( (iia_e = (docgen_A_E *)Escher_IteratorNext( &itera_e )) != 0 ) {
      a_e = iia_e; {
      /* IF ( ( (  != a_e.Guard ) or (  != a_e.Descrip ) ) ) */
      if ( ( ( Escher_strcmp( "", a_e->Guard ) != 0 ) || ( Escher_strcmp( "", a_e->Descrip ) != 0 ) ) ) {
        docgen_DOC_ROW * doc_row2;
        /* ASSIGN columns[2] = a_e.Descrip */
        columns[2] = Escher_strcpy( columns[2], a_e->Descrip );
        /* ASSIGN columns[1] = a_e.Guard */
        columns[1] = Escher_strcpy( columns[1], a_e->Guard );
        /* ASSIGN columns[0] = ActivityEdge.gif */
        columns[0] = Escher_strcpy( columns[0], "ActivityEdge.gif" );
        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
        /* ASSIGN doc_row1 = doc_row2 */
        doc_row1 = doc_row2;
      }
    }}}
    /* SELECT many a_gas RELATED BY a_ns->A_ACT[R1105]->A_GA[R1107] */
    Escher_ClearSet( a_gas );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_ACT * R1105_subtype = (docgen_A_ACT *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_ACT_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_GA_CLASS_NUMBER == R1105_subtype->R1107_object_id ) )    {docgen_A_GA * R1107_subtype = R1105_subtype->R1107_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_gas, R1107_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) a_gas, R1107_subtype );
    }}}}}
    /* FOR EACH a_ga IN a_gas */
    { Escher_Iterator_s itera_ga;
    docgen_A_GA * iia_ga;
    Escher_IteratorReset( &itera_ga, a_gas );
    while ( (iia_ga = (docgen_A_GA *)Escher_IteratorNext( &itera_ga )) != 0 ) {
      a_ga = iia_ga; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_ga.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_ga->Descrip );
      /* ASSIGN columns[1] = a_ga.Name */
      columns[1] = Escher_strcpy( columns[1], a_ga->Name );
      /* ASSIGN columns[0] = GenericAction.gif */
      columns[0] = Escher_strcpy( columns[0], "GenericAction.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_ates RELATED BY a_ns->A_ACT[R1105]->A_AE[R1107]->A_ATE[R1112] */
    Escher_ClearSet( a_ates );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_ACT * R1105_subtype = (docgen_A_ACT *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_ACT_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    docgen_A_AE * R1107_subtype = (docgen_A_AE *) R1105_subtype->R1107_subtype;
    if ( 0 != R1107_subtype )    if ( ( 0 != R1105_subtype ) && ( docgen_A_AE_CLASS_NUMBER == R1105_subtype->R1107_object_id ) ) {
    if ( ( 0 != R1107_subtype ) && ( docgen_A_ATE_CLASS_NUMBER == R1107_subtype->R1112_object_id ) )    {docgen_A_ATE * R1112_subtype = R1107_subtype->R1112_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_ates, R1112_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) a_ates, R1112_subtype );
    }}}}}}
    /* FOR EACH a_ate IN a_ates */
    { Escher_Iterator_s itera_ate;
    docgen_A_ATE * iia_ate;
    Escher_IteratorReset( &itera_ate, a_ates );
    while ( (iia_ate = (docgen_A_ATE *)Escher_IteratorNext( &itera_ate )) != 0 ) {
      a_ate = iia_ate; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_ate.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_ate->Descrip );
      /* ASSIGN columns[1] = a_ate.Name */
      columns[1] = Escher_strcpy( columns[1], a_ate->Name );
      /* ASSIGN columns[0] = AcceptTimeEvent.gif */
      columns[0] = Escher_strcpy( columns[0], "AcceptTimeEvent.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_aeas RELATED BY a_ns->A_ACT[R1105]->A_AE[R1107]->A_AEA[R1112] */
    Escher_ClearSet( a_aeas );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_ACT * R1105_subtype = (docgen_A_ACT *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_ACT_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    docgen_A_AE * R1107_subtype = (docgen_A_AE *) R1105_subtype->R1107_subtype;
    if ( 0 != R1107_subtype )    if ( ( 0 != R1105_subtype ) && ( docgen_A_AE_CLASS_NUMBER == R1105_subtype->R1107_object_id ) ) {
    if ( ( 0 != R1107_subtype ) && ( docgen_A_AEA_CLASS_NUMBER == R1107_subtype->R1112_object_id ) )    {docgen_A_AEA * R1112_subtype = R1107_subtype->R1112_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_aeas, R1112_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) a_aeas, R1112_subtype );
    }}}}}}
    /* FOR EACH a_aea IN a_aeas */
    { Escher_Iterator_s itera_aea;
    docgen_A_AEA * iia_aea;
    Escher_IteratorReset( &itera_aea, a_aeas );
    while ( (iia_aea = (docgen_A_AEA *)Escher_IteratorNext( &itera_aea )) != 0 ) {
      a_aea = iia_aea; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_aea.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_aea->Descrip );
      /* ASSIGN columns[1] = a_aea.Name */
      columns[1] = Escher_strcpy( columns[1], a_aea->Name );
      /* ASSIGN columns[0] = AcceptEvent.gif */
      columns[0] = Escher_strcpy( columns[0], "AcceptEvent.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_sss RELATED BY a_ns->A_ACT[R1105]->A_SS[R1107] */
    Escher_ClearSet( a_sss );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_ACT * R1105_subtype = (docgen_A_ACT *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_ACT_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_SS_CLASS_NUMBER == R1105_subtype->R1107_object_id ) )    {docgen_A_SS * R1107_subtype = R1105_subtype->R1107_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_sss, R1107_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) a_sss, R1107_subtype );
    }}}}}
    /* FOR EACH a_ss IN a_sss */
    { Escher_Iterator_s itera_ss;
    docgen_A_SS * iia_ss;
    Escher_IteratorReset( &itera_ss, a_sss );
    while ( (iia_ss = (docgen_A_SS *)Escher_IteratorNext( &itera_ss )) != 0 ) {
      a_ss = iia_ss; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_ss.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_ss->Descrip );
      /* ASSIGN columns[1] = a_ss.Name */
      columns[1] = Escher_strcpy( columns[1], a_ss->Name );
      /* ASSIGN columns[0] = SendSignal.gif */
      columns[0] = Escher_strcpy( columns[0], "SendSignal.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_objs RELATED BY a_ns->A_OBJ[R1105] */
    Escher_ClearSet( a_objs );
    {docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
      if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_OBJ_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) )
      {docgen_A_OBJ * R1105_subtype = docgen_A_N_linkage->R1105_subtype;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_objs, R1105_subtype ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_objs, R1105_subtype );
    }}}}
    /* FOR EACH a_obj IN a_objs */
    { Escher_Iterator_s itera_obj;
    docgen_A_OBJ * iia_obj;
    Escher_IteratorReset( &itera_obj, a_objs );
    while ( (iia_obj = (docgen_A_OBJ *)Escher_IteratorNext( &itera_obj )) != 0 ) {
      a_obj = iia_obj; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_obj.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_obj->Descrip );
      /* ASSIGN columns[1] = a_obj.Name */
      columns[1] = Escher_strcpy( columns[1], a_obj->Name );
      /* ASSIGN columns[0] = ObjectNode.gif */
      columns[0] = Escher_strcpy( columns[0], "ObjectNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_inis RELATED BY a_ns->A_CTL[R1105]->A_INI[R1106] WHERE ( ( SELECTED.Descrip !=  ) ) */
    Escher_ClearSet( a_inis );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_CTL * R1105_subtype = (docgen_A_CTL *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_CTL_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_INI_CLASS_NUMBER == R1105_subtype->R1106_object_id ) )    {docgen_A_INI * selected = R1105_subtype->R1106_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_inis, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_inis, selected );
    }}}
}}}
    /* FOR EACH a_ini IN a_inis */
    { Escher_Iterator_s itera_ini;
    docgen_A_INI * iia_ini;
    Escher_IteratorReset( &itera_ini, a_inis );
    while ( (iia_ini = (docgen_A_INI *)Escher_IteratorNext( &itera_ini )) != 0 ) {
      a_ini = iia_ini; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_ini.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_ini->Descrip );
      /* ASSIGN columns[1] =  */
      columns[1] = Escher_strcpy( columns[1], "" );
      /* ASSIGN columns[0] = InitialNode.gif */
      columns[0] = Escher_strcpy( columns[0], "InitialNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_afs RELATED BY a_ns->A_CTL[R1105]->A_AF[R1106] WHERE ( ( SELECTED.Descrip !=  ) ) */
    Escher_ClearSet( a_afs );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_CTL * R1105_subtype = (docgen_A_CTL *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_CTL_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_AF_CLASS_NUMBER == R1105_subtype->R1106_object_id ) )    {docgen_A_AF * selected = R1105_subtype->R1106_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_afs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_afs, selected );
    }}}
}}}
    /* FOR EACH a_af IN a_afs */
    { Escher_Iterator_s itera_af;
    docgen_A_AF * iia_af;
    Escher_IteratorReset( &itera_af, a_afs );
    while ( (iia_af = (docgen_A_AF *)Escher_IteratorNext( &itera_af )) != 0 ) {
      a_af = iia_af; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_af.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_af->Descrip );
      /* ASSIGN columns[1] =  */
      columns[1] = Escher_strcpy( columns[1], "" );
      /* ASSIGN columns[0] = FinalNode.gif */
      columns[0] = Escher_strcpy( columns[0], "FinalNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_ffs RELATED BY a_ns->A_CTL[R1105]->A_FF[R1106] WHERE ( ( SELECTED.Descrip !=  ) ) */
    Escher_ClearSet( a_ffs );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_CTL * R1105_subtype = (docgen_A_CTL *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_CTL_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_FF_CLASS_NUMBER == R1105_subtype->R1106_object_id ) )    {docgen_A_FF * selected = R1105_subtype->R1106_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_ffs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_ffs, selected );
    }}}
}}}
    /* FOR EACH a_ff IN a_ffs */
    { Escher_Iterator_s itera_ff;
    docgen_A_FF * iia_ff;
    Escher_IteratorReset( &itera_ff, a_ffs );
    while ( (iia_ff = (docgen_A_FF *)Escher_IteratorNext( &itera_ff )) != 0 ) {
      a_ff = iia_ff; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_ff.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_ff->Descrip );
      /* ASSIGN columns[1] =  */
      columns[1] = Escher_strcpy( columns[1], "" );
      /* ASSIGN columns[0] = FlowFinalNode.gif */
      columns[0] = Escher_strcpy( columns[0], "FlowFinalNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_dms RELATED BY a_ns->A_CTL[R1105]->A_DM[R1106] WHERE ( ( SELECTED.Descrip !=  ) ) */
    Escher_ClearSet( a_dms );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_CTL * R1105_subtype = (docgen_A_CTL *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_CTL_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_DM_CLASS_NUMBER == R1105_subtype->R1106_object_id ) )    {docgen_A_DM * selected = R1105_subtype->R1106_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_dms, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_dms, selected );
    }}}
}}}
    /* FOR EACH a_dm IN a_dms */
    { Escher_Iterator_s itera_dm;
    docgen_A_DM * iia_dm;
    Escher_IteratorReset( &itera_dm, a_dms );
    while ( (iia_dm = (docgen_A_DM *)Escher_IteratorNext( &itera_dm )) != 0 ) {
      a_dm = iia_dm; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_dm.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_dm->Descrip );
      /* ASSIGN columns[1] =  */
      columns[1] = Escher_strcpy( columns[1], "" );
      /* ASSIGN columns[0] = DecisionMergeNode.gif */
      columns[0] = Escher_strcpy( columns[0], "DecisionMergeNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many a_fjs RELATED BY a_ns->A_CTL[R1105]->A_FJ[R1106] WHERE ( ( SELECTED.Descrip !=  ) ) */
    Escher_ClearSet( a_fjs );
    {    docgen_A_N * docgen_A_N_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, a_ns );
    while ( 0 != ( docgen_A_N_linkage = (docgen_A_N *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    docgen_A_CTL * R1105_subtype = (docgen_A_CTL *) docgen_A_N_linkage->R1105_subtype;
    if ( 0 != R1105_subtype )    if ( ( 0 != docgen_A_N_linkage ) && ( docgen_A_CTL_CLASS_NUMBER == docgen_A_N_linkage->R1105_object_id ) ) {
    if ( ( 0 != R1105_subtype ) && ( docgen_A_FJ_CLASS_NUMBER == R1105_subtype->R1106_object_id ) )    {docgen_A_FJ * selected = R1105_subtype->R1106_subtype;
    if ( ( 0 != selected ) && ( Escher_strcmp( selected->Descrip, "" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) a_fjs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) a_fjs, selected );
    }}}
}}}
    /* FOR EACH a_fj IN a_fjs */
    { Escher_Iterator_s itera_fj;
    docgen_A_FJ * iia_fj;
    Escher_IteratorReset( &itera_fj, a_fjs );
    while ( (iia_fj = (docgen_A_FJ *)Escher_IteratorNext( &itera_fj )) != 0 ) {
      a_fj = iia_fj; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = a_fj.Descrip */
      columns[2] = Escher_strcpy( columns[2], a_fj->Descrip );
      /* ASSIGN columns[1] =  */
      columns[1] = Escher_strcpy( columns[1], "" );
      /* ASSIGN columns[0] = ForkJoinNode.gif */
      columns[0] = Escher_strcpy( columns[0], "ForkJoinNode.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    Escher_ClearSet( a_objs ); Escher_ClearSet( a_sss ); Escher_ClearSet( a_aeas ); Escher_ClearSet( a_ates ); Escher_ClearSet( a_gas ); Escher_ClearSet( a_fjs ); Escher_ClearSet( a_dms ); Escher_ClearSet( a_ffs ); Escher_ClearSet( a_afs ); Escher_ClearSet( a_inis ); 
  }
  Escher_ClearSet( a_aps ); Escher_ClearSet( a_ns ); Escher_ClearSet( a_es ); 
}

/*
 * Domain Function:  docgen_associations
 */
void
docgen_docgen_associations( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s r_rels_space={0}; Escher_ObjectSet_s * r_rels = &r_rels_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many r_rels RELATED BY ep_pkg->PE_PE[R8000]->R_REL[R8001] */
  Escher_ClearSet( r_rels );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_R_REL_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_R_REL * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) r_rels, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) r_rels, R8001_subtype );
  }}}}}
  /* IF ( not_empty r_rels ) */
  if ( ( ! Escher_SetIsEmpty( r_rels ) ) ) {
    docgen_R_REL * r_rel=0;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
    /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
    empty_doc_sec = 0;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:Associations, title:PARAM.title) */
    doc_sec = docgen_DOC_SEC_op_populate(p_doc_sec, "Associations", p_title);
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par, num_cols:3, title:ep_pkg.Name) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par, 3, ep_pkg->Name);
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Association.gif */
    columns[0] = Escher_strcpy( columns[0], "Association.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH r_rel IN r_rels */
    { Escher_Iterator_s iterr_rel;
    docgen_R_REL * iir_rel;
    Escher_IteratorReset( &iterr_rel, r_rels );
    while ( (iir_rel = (docgen_R_REL *)Escher_IteratorNext( &iterr_rel )) != 0 ) {
      r_rel = iir_rel; {
      docgen_DOC_ROW * doc_row2;
      /* ASSIGN columns[2] = r_rel.Descrip */
      columns[2] = Escher_strcpy( columns[2], r_rel->Descrip );
      /* ASSIGN columns[1] = T::s(i:r_rel.Numb) */
      columns[1] = Escher_strcpy( columns[1], T_s( r_rel->Numb ) );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
  }
  Escher_ClearSet( r_rels ); 
}

/*
 * Domain Function:  docgen_classes
 */
void
docgen_docgen_classes( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s o_objs_space={0}; Escher_ObjectSet_s * o_objs = &o_objs_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many o_objs RELATED BY ep_pkg->PE_PE[R8000]->O_OBJ[R8001] */
  Escher_ClearSet( o_objs );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_objs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_objs, R8001_subtype );
  }}}}}
  /* IF ( not_empty o_objs ) */
  if ( ( ! Escher_SetIsEmpty( o_objs ) ) ) {
    docgen_O_OBJ * o_obj=0;docgen_DOC_PAR * previous_doc_par;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_ROW * doc_row;docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;docgen_O_ATTR * empty_o_attr=0;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
    /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
    empty_doc_sec = 0;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* SELECT any empty_o_attr FROM INSTANCES OF O_ATTR WHERE FALSE */
    empty_o_attr = 0;
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:, title:PARAM.title) */
    doc_sec1 = docgen_DOC_SEC_op_populate(p_doc_sec, "", p_title);
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par1, num_cols:3, title:PARAM.title) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par1, 3, p_title);
    /* ASSIGN doc_row = empty_doc_row */
    doc_row = empty_doc_row;
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Class.gif */
    columns[0] = Escher_strcpy( columns[0], "Class.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH o_obj IN o_objs */
    { Escher_Iterator_s itero_obj;
    docgen_O_OBJ * iio_obj;
    Escher_IteratorReset( &itero_obj, o_objs );
    while ( (iio_obj = (docgen_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
      o_obj = iio_obj; {
      docgen_O_ATTR * prev_o_attr;docgen_DOC_ROW * doc_row2;docgen_O_ATTR * o_attr=0;
      /* ASSIGN columns[2] = o_obj.Descrip */
      columns[2] = Escher_strcpy( columns[2], o_obj->Descrip );
      /* ASSIGN columns[1] = o_obj.Name */
      columns[1] = Escher_strcpy( columns[1], o_obj->Name );
      /* ASSIGN columns[0] = Class.gif */
      columns[0] = Escher_strcpy( columns[0], "Class.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
      /* ASSIGN prev_o_attr = empty_o_attr */
      prev_o_attr = empty_o_attr;
      /* SELECT any o_attr RELATED BY o_obj->O_ATTR[R102] */
      o_attr = ( 0 != o_obj ) ? (docgen_O_ATTR *) Escher_SetGetAny( &o_obj->O_ATTR_R102_has_characteristics_abstracted_by ) : 0;
      /* WHILE ( not_empty o_attr ) */
      while ( ( 0 != o_attr ) ) {
        /* SELECT one prev_o_attr RELATED BY o_attr->O_ATTR[R103.precedes] */
        prev_o_attr = ( 0 != o_attr ) ? o_attr->O_ATTR_R103_precedes : 0;
        /* IF ( empty prev_o_attr ) */
        if ( ( 0 == prev_o_attr ) ) {
          /* BREAK */
          break;
        }
        /* ASSIGN o_attr = prev_o_attr */
        o_attr = prev_o_attr;
      }
      /* WHILE ( not_empty o_attr ) */
      while ( ( 0 != o_attr ) ) {
        docgen_S_DT * s_dt=0;
        /* SELECT one s_dt RELATED BY o_attr->S_DT[R114] */
        s_dt = ( 0 != o_attr ) ? o_attr->S_DT_R114_defines_type_of : 0;
        /* ASSIGN columns[2] = o_attr.Descrip */
        columns[2] = Escher_strcpy( columns[2], o_attr->Descrip );
        /* ASSIGN columns[1] = ( ( o_attr.Name + : ) + s_dt.Name ) */
        columns[1] = Escher_strcpy( columns[1], Escher_stradd( Escher_stradd( o_attr->Name, ":" ), s_dt->Name ) );
        /* ASSIGN columns[0] = Attribute.gif */
        columns[0] = Escher_strcpy( columns[0], "Attribute.gif" );
        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
        /* ASSIGN doc_row1 = doc_row2 */
        doc_row1 = doc_row2;
        /* SELECT one o_attr RELATED BY o_attr->O_ATTR[R103.succeeds] */
        o_attr = ( 0 != o_attr ) ? o_attr->O_ATTR_R103_succeeds : 0;
      }
    }}}
    /* ASSIGN previous_doc_par = doc_par1 */
    previous_doc_par = doc_par1;
    /* FOR EACH o_obj IN o_objs */
    { Escher_Iterator_s itero_obj;
    docgen_O_OBJ * iio_obj;
    Escher_IteratorReset( &itero_obj, o_objs );
    while ( (iio_obj = (docgen_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
      o_obj = iio_obj; {
      c_t * prefix=0;Escher_ObjectSet_s o_dbattrs_space={0}; Escher_ObjectSet_s * o_dbattrs = &o_dbattrs_space;Escher_ObjectSet_s o_tfrs_space={0}; Escher_ObjectSet_s * o_tfrs = &o_tfrs_space;Escher_ObjectSet_s sm_asmacts_space={0}; Escher_ObjectSet_s * sm_asmacts = &sm_asmacts_space;Escher_ObjectSet_s sm_ismacts_space={0}; Escher_ObjectSet_s * sm_ismacts = &sm_ismacts_space;docgen_SM_SM * sm_sm=0;
      /* ASSIGN prefix = ::getContainerListForEP_PKG(container_list:, epk:ep_pkg) */
      prefix = Escher_strcpy( prefix, docgen_getContainerListForEP_PKG( "", ep_pkg ) );
      /* ASSIGN prefix = ( ( prefix + - ) + o_obj.Name ) */
      prefix = Escher_strcpy( prefix, Escher_stradd( Escher_stradd( prefix, "-" ), o_obj->Name ) );
      /* SELECT one sm_sm RELATED BY o_obj->SM_ASM[R519]->SM_SM[R517] */
      sm_sm = 0;
      {      if ( 0 != o_obj ) {
      docgen_SM_ASM * SM_ASM_R519 = o_obj->SM_ASM_R519;
      if ( 0 != SM_ASM_R519 ) {
      sm_sm = SM_ASM_R519->SM_SM_R517;
}}}
      /* IF ( not_empty sm_sm ) */
      if ( ( 0 != sm_sm ) ) {
        docgen_DOC_FIG * doc_fig1;docgen_DOC_PAR * doc_par2;
        /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:previous_doc_par, text:) */
        doc_par2 = docgen_DOC_PAR_op_populate(empty_doc_sec, previous_doc_par, "");
        /* ASSIGN doc_fig1 = DOC_FIG::populate(doc_par:doc_par2, image_target:( prefix + -Class State Machine ), title:( ( ( ep_pkg.Name +   ) + o_obj.Name ) +  Class State Machine )) */
        doc_fig1 = docgen_DOC_FIG_op_populate(doc_par2, Escher_stradd( prefix, "-Class State Machine" ), Escher_stradd( Escher_stradd( Escher_stradd( ep_pkg->Name, " " ), o_obj->Name ), " Class State Machine" ));
        /* ASSIGN previous_doc_par = doc_par2 */
        previous_doc_par = doc_par2;
      }
      /* SELECT one sm_sm RELATED BY o_obj->SM_ISM[R518]->SM_SM[R517] */
      sm_sm = 0;
      {      if ( 0 != o_obj ) {
      docgen_SM_ISM * SM_ISM_R518 = o_obj->SM_ISM_R518;
      if ( 0 != SM_ISM_R518 ) {
      sm_sm = SM_ISM_R518->SM_SM_R517;
}}}
      /* IF ( not_empty sm_sm ) */
      if ( ( 0 != sm_sm ) ) {
        docgen_DOC_FIG * doc_fig1;docgen_DOC_PAR * doc_par2;
        /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:previous_doc_par, text:) */
        doc_par2 = docgen_DOC_PAR_op_populate(empty_doc_sec, previous_doc_par, "");
        /* ASSIGN doc_fig1 = DOC_FIG::populate(doc_par:doc_par2, image_target:( prefix + -Instance State Machine ), title:( ( ( ep_pkg.Name +   ) + o_obj.Name ) +  Instance State Machine )) */
        doc_fig1 = docgen_DOC_FIG_op_populate(doc_par2, Escher_stradd( prefix, "-Instance State Machine" ), Escher_stradd( Escher_stradd( Escher_stradd( ep_pkg->Name, " " ), o_obj->Name ), " Instance State Machine" ));
        /* ASSIGN previous_doc_par = doc_par2 */
        previous_doc_par = doc_par2;
      }
      /* SELECT many sm_ismacts RELATED BY o_obj->SM_ISM[R518]->SM_SM[R517]->SM_ACT[R515] */
      Escher_ClearSet( sm_ismacts );
      {      if ( 0 != o_obj ) {
      docgen_SM_ISM * SM_ISM_R518 = o_obj->SM_ISM_R518;
      if ( 0 != SM_ISM_R518 ) {
      docgen_SM_SM * SM_SM_R517 = SM_ISM_R518->SM_SM_R517;
      if ( 0 != SM_SM_R517 ) {
      docgen_SM_ACT * SM_ACT_R515_contains;
      Escher_Iterator_s iSM_ACT_R515_contains;
      Escher_IteratorReset( &iSM_ACT_R515_contains, &SM_SM_R517->SM_ACT_R515_contains );
      while ( 0 != ( SM_ACT_R515_contains = (docgen_SM_ACT *) Escher_IteratorNext( &iSM_ACT_R515_contains ) ) ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sm_ismacts, SM_ACT_R515_contains ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) sm_ismacts, SM_ACT_R515_contains );
      }}}}}}
      /* SELECT many sm_asmacts RELATED BY o_obj->SM_ASM[R519]->SM_SM[R517]->SM_ACT[R515] */
      Escher_ClearSet( sm_asmacts );
      {      if ( 0 != o_obj ) {
      docgen_SM_ASM * SM_ASM_R519 = o_obj->SM_ASM_R519;
      if ( 0 != SM_ASM_R519 ) {
      docgen_SM_SM * SM_SM_R517 = SM_ASM_R519->SM_SM_R517;
      if ( 0 != SM_SM_R517 ) {
      docgen_SM_ACT * SM_ACT_R515_contains;
      Escher_Iterator_s iSM_ACT_R515_contains;
      Escher_IteratorReset( &iSM_ACT_R515_contains, &SM_SM_R517->SM_ACT_R515_contains );
      while ( 0 != ( SM_ACT_R515_contains = (docgen_SM_ACT *) Escher_IteratorNext( &iSM_ACT_R515_contains ) ) ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sm_asmacts, SM_ACT_R515_contains ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) sm_asmacts, SM_ACT_R515_contains );
      }}}}}}
      /* SELECT many o_tfrs RELATED BY o_obj->O_TFR[R115] */
      Escher_ClearSet( o_tfrs );
      if ( 0 != o_obj ) {
        Escher_CopySet( o_tfrs, &o_obj->O_TFR_R115_may_contain );
      }
      /* SELECT many o_dbattrs RELATED BY o_obj->O_ATTR[R102]->O_BATTR[R106]->O_DBATTR[R107] */
      Escher_ClearSet( o_dbattrs );
      {      if ( 0 != o_obj ) {
      docgen_O_ATTR * O_ATTR_R102_has_characteristics_abstracted_by;
      Escher_Iterator_s iO_ATTR_R102_has_characteristics_abstracted_by;
      Escher_IteratorReset( &iO_ATTR_R102_has_characteristics_abstracted_by, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
      while ( 0 != ( O_ATTR_R102_has_characteristics_abstracted_by = (docgen_O_ATTR *) Escher_IteratorNext( &iO_ATTR_R102_has_characteristics_abstracted_by ) ) ) {
      docgen_O_BATTR * R106_subtype = (docgen_O_BATTR *) O_ATTR_R102_has_characteristics_abstracted_by->R106_subtype;
      if ( 0 != R106_subtype )      if ( ( 0 != O_ATTR_R102_has_characteristics_abstracted_by ) && ( docgen_O_BATTR_CLASS_NUMBER == O_ATTR_R102_has_characteristics_abstracted_by->R106_object_id ) ) {
      if ( ( 0 != R106_subtype ) && ( docgen_O_DBATTR_CLASS_NUMBER == R106_subtype->R107_object_id ) )      {docgen_O_DBATTR * R107_subtype = R106_subtype->R107_subtype;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_dbattrs, R107_subtype ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) o_dbattrs, R107_subtype );
      }}}}}}
      /* IF ( ( ( ( not_empty sm_ismacts or not_empty sm_asmacts ) or not_empty o_tfrs ) or not_empty o_dbattrs ) ) */
      if ( ( ( ( ( ! Escher_SetIsEmpty( sm_ismacts ) ) || ( ! Escher_SetIsEmpty( sm_asmacts ) ) ) || ( ! Escher_SetIsEmpty( o_tfrs ) ) ) || ( ! Escher_SetIsEmpty( o_dbattrs ) ) ) ) {
        docgen_DOC_PAR * doc_par3;docgen_DOC_SEC * doc_sec2;
        /* ASSIGN doc_sec2 = DOC_SEC::populate(parent_doc_sec:doc_sec1, subtitle:, title:Class Activities) */
        doc_sec2 = docgen_DOC_SEC_op_populate(doc_sec1, "", "Class Activities");
        /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:doc_sec2, predecessor:empty_doc_par, text:Here are listings of all of the activies in the class and its state machine(s).) */
        doc_par3 = docgen_DOC_PAR_op_populate(doc_sec2, empty_doc_par, "Here are listings of all of the activies in the class and its state machine(s).");
        /* IF ( not_empty sm_ismacts ) */
        if ( ( ! Escher_SetIsEmpty( sm_ismacts ) ) ) {
          docgen_SM_ACT * sm_act=0;docgen_DOC_SEC * doc_sec3;
          /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:Instance State Machine Actions) */
          doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", "Instance State Machine Actions");
          /* FOR EACH sm_act IN sm_ismacts */
          { Escher_Iterator_s itersm_act;
          docgen_SM_ACT * iism_act;
          Escher_IteratorReset( &itersm_act, sm_ismacts );
          while ( (iism_act = (docgen_SM_ACT *)Escher_IteratorNext( &itersm_act )) != 0 ) {
            sm_act = iism_act; {
            /* SELECT one sm_sm RELATED BY sm_act->SM_SM[R515] */
            sm_sm = ( 0 != sm_act ) ? sm_act->SM_SM_R515 : 0;
            /* IF ( ( (  != sm_act.Descrip ) or (  != sm_act.Action_Semantics_internal ) ) ) */
            if ( ( ( Escher_strcmp( "", sm_act->Descrip ) != 0 ) || ( Escher_strcmp( "", sm_act->Action_Semantics_internal ) != 0 ) ) ) {
              docgen_DOC_PAR * doc_par6;docgen_DOC_PAR * doc_par5;docgen_DOC_PAR * doc_par4;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_SM_TAH * sm_tah=0;docgen_SM_AH * sm_ah=0;
              /* ASSIGN title = o_obj.Name */
              title = Escher_strcpy( title, o_obj->Name );
              /* SELECT one sm_ah RELATED BY sm_act->SM_AH[R514] */
              sm_ah = ( 0 != sm_act ) ? sm_act->SM_AH_R514_resides_in : 0;
              /* SELECT one sm_tah RELATED BY sm_ah->SM_TAH[R513] */
              sm_tah = 0;
              if ( ( 0 != sm_ah ) && ( docgen_SM_TAH_CLASS_NUMBER == sm_ah->R513_object_id ) )              sm_tah = ( 0 != sm_ah ) ? (docgen_SM_TAH *) sm_ah->R513_subtype : 0;
              /* IF ( not_empty sm_tah ) */
              if ( ( 0 != sm_tah ) ) {
                /* ASSIGN title = ( title +  State Transition:  ) */
                title = Escher_strcpy( title, Escher_stradd( title, " State Transition: " ) );
              }
              else {
                docgen_SM_STATE * sm_state=0;docgen_SM_MOAH * sm_moah=0;
                /* SELECT one sm_moah RELATED BY sm_ah->SM_MOAH[R513] */
                sm_moah = 0;
                if ( ( 0 != sm_ah ) && ( docgen_SM_MOAH_CLASS_NUMBER == sm_ah->R513_object_id ) )                sm_moah = ( 0 != sm_ah ) ? (docgen_SM_MOAH *) sm_ah->R513_subtype : 0;
                /* SELECT one sm_state RELATED BY sm_moah->SM_STATE[R511] */
                sm_state = ( 0 != sm_moah ) ? sm_moah->SM_STATE_R511 : 0;
                /* IF ( not_empty sm_state ) */
                if ( ( 0 != sm_state ) ) {
                  /* ASSIGN title = ( ( ( ( title +  State[ ) + T::s(sm_state.Numb) ) + ]: ) + sm_state.Name ) */
                  title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( title, " State[" ), T_s( sm_state->Numb ) ), "]:" ), sm_state->Name ) );
                }
              }
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:sm_act.Descrip) */
              doc_par4 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, sm_act->Descrip);
              /* ASSIGN doc_par5 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par4, text:sm_sm.Descrip) */
              doc_par5 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par4, sm_sm->Descrip);
              /* ASSIGN doc_par6 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par5, text:sm_act.Action_Semantics_internal) */
              doc_par6 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par5, sm_act->Action_Semantics_internal);
              /* ASSIGN doc_par6.formatted = FALSE */
              doc_par6->formatted = FALSE;
            }
          }}}
        }
        /* IF ( not_empty sm_asmacts ) */
        if ( ( ! Escher_SetIsEmpty( sm_asmacts ) ) ) {
          docgen_SM_ACT * sm_act=0;docgen_DOC_SEC * doc_sec3;
          /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:Class State Machine Actions) */
          doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", "Class State Machine Actions");
          /* FOR EACH sm_act IN sm_asmacts */
          { Escher_Iterator_s itersm_act;
          docgen_SM_ACT * iism_act;
          Escher_IteratorReset( &itersm_act, sm_asmacts );
          while ( (iism_act = (docgen_SM_ACT *)Escher_IteratorNext( &itersm_act )) != 0 ) {
            sm_act = iism_act; {
            /* SELECT one sm_sm RELATED BY sm_act->SM_SM[R515] */
            sm_sm = ( 0 != sm_act ) ? sm_act->SM_SM_R515 : 0;
            /* IF ( ( (  != sm_act.Descrip ) or (  != sm_act.Action_Semantics_internal ) ) ) */
            if ( ( ( Escher_strcmp( "", sm_act->Descrip ) != 0 ) || ( Escher_strcmp( "", sm_act->Action_Semantics_internal ) != 0 ) ) ) {
              docgen_DOC_PAR * doc_par6;docgen_DOC_PAR * doc_par5;docgen_DOC_PAR * doc_par4;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_SM_TAH * sm_tah=0;docgen_SM_AH * sm_ah=0;
              /* ASSIGN title = o_obj.Name */
              title = Escher_strcpy( title, o_obj->Name );
              /* SELECT one sm_ah RELATED BY sm_act->SM_AH[R514] */
              sm_ah = ( 0 != sm_act ) ? sm_act->SM_AH_R514_resides_in : 0;
              /* SELECT one sm_tah RELATED BY sm_ah->SM_TAH[R513] */
              sm_tah = 0;
              if ( ( 0 != sm_ah ) && ( docgen_SM_TAH_CLASS_NUMBER == sm_ah->R513_object_id ) )              sm_tah = ( 0 != sm_ah ) ? (docgen_SM_TAH *) sm_ah->R513_subtype : 0;
              /* IF ( not_empty sm_tah ) */
              if ( ( 0 != sm_tah ) ) {
                /* ASSIGN title = ( title +  State Transition:  ) */
                title = Escher_strcpy( title, Escher_stradd( title, " State Transition: " ) );
              }
              else {
                docgen_SM_STATE * sm_state=0;docgen_SM_MOAH * sm_moah=0;
                /* SELECT one sm_moah RELATED BY sm_ah->SM_MOAH[R513] */
                sm_moah = 0;
                if ( ( 0 != sm_ah ) && ( docgen_SM_MOAH_CLASS_NUMBER == sm_ah->R513_object_id ) )                sm_moah = ( 0 != sm_ah ) ? (docgen_SM_MOAH *) sm_ah->R513_subtype : 0;
                /* SELECT one sm_state RELATED BY sm_moah->SM_STATE[R511] */
                sm_state = ( 0 != sm_moah ) ? sm_moah->SM_STATE_R511 : 0;
                /* IF ( not_empty sm_state ) */
                if ( ( 0 != sm_state ) ) {
                  /* ASSIGN title = ( ( ( ( title +  State[ ) + T::s(sm_state.Numb) ) + ]: ) + sm_state.Name ) */
                  title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( title, " State[" ), T_s( sm_state->Numb ) ), "]:" ), sm_state->Name ) );
                }
              }
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:sm_act.Descrip) */
              doc_par4 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, sm_act->Descrip);
              /* ASSIGN doc_par5 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par4, text:sm_sm.Descrip) */
              doc_par5 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par4, sm_sm->Descrip);
              /* ASSIGN doc_par6 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par5, text:sm_act.Action_Semantics_internal) */
              doc_par6 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par5, sm_act->Action_Semantics_internal);
              /* ASSIGN doc_par6.formatted = FALSE */
              doc_par6->formatted = FALSE;
            }
          }}}
        }
        /* IF ( not_empty o_tfrs ) */
        if ( ( ! Escher_SetIsEmpty( o_tfrs ) ) ) {
          docgen_O_TFR * o_tfr=0;docgen_DOC_SEC * doc_sec3;
          /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:Class Operations) */
          doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", "Class Operations");
          /* FOR EACH o_tfr IN o_tfrs */
          { Escher_Iterator_s itero_tfr;
          docgen_O_TFR * iio_tfr;
          Escher_IteratorReset( &itero_tfr, o_tfrs );
          while ( (iio_tfr = (docgen_O_TFR *)Escher_IteratorNext( &itero_tfr )) != 0 ) {
            o_tfr = iio_tfr; {
            /* IF ( ( (  != o_tfr.Descrip ) or (  != o_tfr.Action_Semantics_internal ) ) ) */
            if ( ( ( Escher_strcmp( "", o_tfr->Descrip ) != 0 ) || ( Escher_strcmp( "", o_tfr->Action_Semantics_internal ) != 0 ) ) ) {
              docgen_DOC_PAR * doc_par5;docgen_DOC_PAR * doc_par4;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_C_C * c_c=0;
              /* ASSIGN title =  */
              title = Escher_strcpy( title, "" );
              /* SELECT one o_obj RELATED BY o_tfr->O_OBJ[R115] */
              o_obj = ( 0 != o_tfr ) ? o_tfr->O_OBJ_R115_is_associated_with : 0;
              /* SELECT one ep_pkg RELATED BY o_obj->PE_PE[R8001]->EP_PKG[R8000] */
              ep_pkg = 0;
              {              if ( 0 != o_obj ) {
              docgen_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
              if ( 0 != PE_PE_R8001 ) {
              ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
              /* SELECT one c_c RELATED BY o_obj->PE_PE[R8001]->C_C[R8003] */
              c_c = 0;
              {              if ( 0 != o_obj ) {
              docgen_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
              if ( 0 != PE_PE_R8001 ) {
              c_c = PE_PE_R8001->C_C_R8003_contained_in;
}}}
              /* IF ( not_empty ep_pkg ) */
              if ( ( 0 != ep_pkg ) ) {
                /* ASSIGN title = ( ( ( ( ep_pkg.Name + : ) + o_obj.Name ) + :   ) + o_tfr.Name ) */
                title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( ep_pkg->Name, ":" ), o_obj->Name ), ":  " ), o_tfr->Name ) );
              }
              /* IF ( not_empty c_c ) */
              if ( ( 0 != c_c ) ) {
                /* ASSIGN title = ( ( ( ( c_c.Name + : ) + o_obj.Name ) + :   ) + o_tfr.Name ) */
                title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( c_c->Name, ":" ), o_obj->Name ), ":  " ), o_tfr->Name ) );
              }
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:o_tfr.Descrip) */
              doc_par4 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, o_tfr->Descrip);
              /* ASSIGN doc_par5 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par4, text:o_tfr.Action_Semantics_internal) */
              doc_par5 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par4, o_tfr->Action_Semantics_internal);
              /* ASSIGN doc_par5.formatted = FALSE */
              doc_par5->formatted = FALSE;
            }
          }}}
        }
        /* IF ( not_empty o_dbattrs ) */
        if ( ( ! Escher_SetIsEmpty( o_dbattrs ) ) ) {
          docgen_O_DBATTR * o_dbattr=0;docgen_DOC_SEC * doc_sec3;
          /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:Derived (Mathematically Dependent) Attributes) */
          doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", "Derived (Mathematically Dependent) Attributes");
          /* FOR EACH o_dbattr IN o_dbattrs */
          { Escher_Iterator_s itero_dbattr;
          docgen_O_DBATTR * iio_dbattr;
          Escher_IteratorReset( &itero_dbattr, o_dbattrs );
          while ( (iio_dbattr = (docgen_O_DBATTR *)Escher_IteratorNext( &itero_dbattr )) != 0 ) {
            o_dbattr = iio_dbattr; {
            docgen_O_ATTR * o_attr=0;
            /* SELECT one o_attr RELATED BY o_dbattr->O_BATTR[R107]->O_ATTR[R106] */
            o_attr = 0;
            {            if ( 0 != o_dbattr ) {
            docgen_O_BATTR * O_BATTR_R107 = o_dbattr->O_BATTR_R107;
            if ( 0 != O_BATTR_R107 ) {
            o_attr = O_BATTR_R107->O_ATTR_R106;
}}}
            /* IF ( (  != o_dbattr.Action_Semantics_internal ) ) */
            if ( ( Escher_strcmp( "", o_dbattr->Action_Semantics_internal ) != 0 ) ) {
              docgen_DOC_PAR * doc_par5;docgen_DOC_PAR * doc_par4;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_C_C * c_c=0;
              /* ASSIGN title =  */
              title = Escher_strcpy( title, "" );
              /* SELECT one o_obj RELATED BY o_attr->O_OBJ[R102] */
              o_obj = ( 0 != o_attr ) ? o_attr->O_OBJ_R102_abstracts_characteristics_of : 0;
              /* SELECT one ep_pkg RELATED BY o_obj->PE_PE[R8001]->EP_PKG[R8000] */
              ep_pkg = 0;
              {              if ( 0 != o_obj ) {
              docgen_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
              if ( 0 != PE_PE_R8001 ) {
              ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
              /* SELECT one c_c RELATED BY o_obj->PE_PE[R8001]->C_C[R8003] */
              c_c = 0;
              {              if ( 0 != o_obj ) {
              docgen_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
              if ( 0 != PE_PE_R8001 ) {
              c_c = PE_PE_R8001->C_C_R8003_contained_in;
}}}
              /* IF ( not_empty ep_pkg ) */
              if ( ( 0 != ep_pkg ) ) {
                /* ASSIGN title = ( ( ( ( ep_pkg.Name + : ) + o_obj.Name ) + :   ) + o_attr.Name ) */
                title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( ep_pkg->Name, ":" ), o_obj->Name ), ":  " ), o_attr->Name ) );
              }
              /* IF ( not_empty c_c ) */
              if ( ( 0 != c_c ) ) {
                /* ASSIGN title = ( ( ( ( c_c.Name + : ) + o_obj.Name ) + :   ) + o_attr.Name ) */
                title = Escher_strcpy( title, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( c_c->Name, ":" ), o_obj->Name ), ":  " ), o_attr->Name ) );
              }
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:o_attr.Descrip) */
              doc_par4 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, o_attr->Descrip);
              /* ASSIGN doc_par5 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par4, text:o_dbattr.Action_Semantics_internal) */
              doc_par5 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par4, o_dbattr->Action_Semantics_internal);
              /* ASSIGN doc_par5.formatted = FALSE */
              doc_par5->formatted = FALSE;
            }
          }}}
        }
      }
      Escher_ClearSet( o_dbattrs ); Escher_ClearSet( o_tfrs ); Escher_ClearSet( sm_asmacts ); Escher_ClearSet( sm_ismacts ); 
    }}}
  }
  Escher_ClearSet( o_objs ); 
}

/*
 * Domain Function:  docgen_components
 */
void
docgen_docgen_components( Escher_ObjectSet_s * p_c_cs, docgen_DOC_SEC * p_doc_sec )
{
  docgen_C_C * c_c=0;Escher_ObjectSet_s c_cs_space={0}; Escher_ObjectSet_s * c_cs = &c_cs_space;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
  empty_doc_row = 0;
  /* ASSIGN c_cs = PARAM.c_cs */
  Escher_CopySet( c_cs, p_c_cs );
  /* FOR EACH c_c IN c_cs */
  { Escher_Iterator_s iterc_c;
  docgen_C_C * iic_c;
  Escher_IteratorReset( &iterc_c, c_cs );
  while ( (iic_c = (docgen_C_C *)Escher_IteratorNext( &iterc_c )) != 0 ) {
    c_c = iic_c; {
    docgen_DOC_FIG * doc_fig;c_t * image_name=0;docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;Escher_ObjectSet_s child_ep_pkgs_space={0}; Escher_ObjectSet_s * child_ep_pkgs = &child_ep_pkgs_space;Escher_ObjectSet_s child_c_is_space={0}; Escher_ObjectSet_s * child_c_is = &child_c_is_space;Escher_ObjectSet_s child_c_cs_space={0}; Escher_ObjectSet_s * child_c_cs = &child_c_cs_space;Escher_ObjectSet_s c_pos_space={0}; Escher_ObjectSet_s * c_pos = &c_pos_space;
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:Component, title:c_c.Name) */
    doc_sec1 = docgen_DOC_SEC_op_populate(p_doc_sec, "Component", c_c->Name);
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:c_c.Descrip) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, c_c->Descrip);
    /* ASSIGN image_name = ::getContainerListForC_C(comp:c_c, container_list:Component Diagram) */
    image_name = Escher_strcpy( image_name, docgen_getContainerListForC_C( c_c, "Component Diagram" ) );
    /* ASSIGN doc_fig = DOC_FIG::populate(doc_par:doc_par1, image_target:image_name, title:( c_c.Name +  Component Diagram )) */
    doc_fig = docgen_DOC_FIG_op_populate(doc_par1, image_name, Escher_stradd( c_c->Name, " Component Diagram" ));
    /* SELECT many c_pos RELATED BY c_c->C_PO[R4010] */
    Escher_ClearSet( c_pos );
    if ( 0 != c_c ) {
      Escher_CopySet( c_pos, &c_c->C_PO_R4010_communicates_through );
    }
    /* IF ( not_empty c_pos ) */
    if ( ( ! Escher_SetIsEmpty( c_pos ) ) ) {
      docgen_C_PO * c_po=0;docgen_DOC_SEC * doc_sec2;docgen_DOC_ROW * doc_row;c_t * columns[5]={0,0,0,0,0};c_t * format[5]={0,0,0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par2;
      /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par1, text:) */
      doc_par2 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par1, "");
      /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par2, num_cols:5, title:( ( c_c.Name +   ) + Ports )) */
      doc_tbl = docgen_DOC_TBL_op_populate(doc_par2, 5, Escher_stradd( Escher_stradd( c_c->Name, " " ), "Ports" ));
      /* ASSIGN format[4] = text */
      format[4] = Escher_strcpy( format[4], "text" );
      /* ASSIGN format[3] = text */
      format[3] = Escher_strcpy( format[3], "text" );
      /* ASSIGN format[2] = text */
      format[2] = Escher_strcpy( format[2], "text" );
      /* ASSIGN format[1] = text */
      format[1] = Escher_strcpy( format[1], "text" );
      /* ASSIGN format[0] = image */
      format[0] = Escher_strcpy( format[0], "image" );
      /* ASSIGN columns[4] = Multiplicity */
      columns[4] = Escher_strcpy( columns[4], "Multiplicity" );
      /* ASSIGN columns[3] = Type */
      columns[3] = Escher_strcpy( columns[3], "Type" );
      /* ASSIGN columns[2] = Interface */
      columns[2] = Escher_strcpy( columns[2], "Interface" );
      /* ASSIGN columns[1] = Name */
      columns[1] = Escher_strcpy( columns[1], "Name" );
      /* ASSIGN columns[0] = Port.gif */
      columns[0] = Escher_strcpy( columns[0], "Port.gif" );
      /* ASSIGN doc_row = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
      doc_row = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
      /* RELATE doc_row TO doc_tbl ACROSS R2317 */
      docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row );
      /* FOR EACH c_po IN c_pos */
      { Escher_Iterator_s iterc_po;
      docgen_C_PO * iic_po;
      Escher_IteratorReset( &iterc_po, c_pos );
      while ( (iic_po = (docgen_C_PO *)Escher_IteratorNext( &iterc_po )) != 0 ) {
        c_po = iic_po; {
        docgen_DOC_ROW * doc_row1;c_t * if_name=0;docgen_C_P * c_p=0;docgen_C_I * c_i=0;docgen_C_IR * c_ir=0;
        /* ASSIGN if_name = < not formalized > */
        if_name = Escher_strcpy( if_name, "< not formalized >" );
        /* SELECT any c_ir RELATED BY c_po->C_IR[R4016] */
        c_ir = ( 0 != c_po ) ? (docgen_C_IR *) Escher_SetGetAny( &c_po->C_IR_R4016_exposes ) : 0;
        /* SELECT one c_i RELATED BY c_ir->C_I[R4012] */
        c_i = ( 0 != c_ir ) ? c_ir->C_I_R4012_may_be_defined_by : 0;
        /* SELECT one c_p RELATED BY c_ir->C_P[R4009] */
        c_p = 0;
        if ( ( 0 != c_ir ) && ( docgen_C_P_CLASS_NUMBER == c_ir->R4009_object_id ) )        c_p = ( 0 != c_ir ) ? (docgen_C_P *) c_ir->R4009_subtype : 0;
        /* IF ( not_empty c_i ) */
        if ( ( 0 != c_i ) ) {
          /* ASSIGN if_name = c_i.Name */
          if_name = Escher_strcpy( if_name, c_i->Name );
        }
        /* ASSIGN columns[4] = T::s(i:c_po.Mult) */
        columns[4] = Escher_strcpy( columns[4], T_s( c_po->Mult ) );
        /* ASSIGN columns[2] = if_name */
        columns[2] = Escher_strcpy( columns[2], if_name );
        /* ASSIGN columns[1] = c_po.Name */
        columns[1] = Escher_strcpy( columns[1], c_po->Name );
        /* IF ( not_empty c_p ) */
        if ( ( 0 != c_p ) ) {
          /* ASSIGN columns[3] = provision */
          columns[3] = Escher_strcpy( columns[3], "provision" );
          /* ASSIGN columns[0] = Provision.gif */
          columns[0] = Escher_strcpy( columns[0], "Provision.gif" );
        }
        else {
          /* ASSIGN columns[3] = requirement */
          columns[3] = Escher_strcpy( columns[3], "requirement" );
          /* ASSIGN columns[0] = Requirement.gif */
          columns[0] = Escher_strcpy( columns[0], "Requirement.gif" );
        }
        /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
        doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
        /* ASSIGN doc_row = doc_row1 */
        doc_row = doc_row1;
      }}}
      /* ASSIGN doc_sec2 = DOC_SEC::populate(parent_doc_sec:doc_sec1, subtitle:, title:Interface Activities) */
      doc_sec2 = docgen_DOC_SEC_op_populate(doc_sec1, "", "Interface Activities");
      /* FOR EACH c_po IN c_pos */
      { Escher_Iterator_s iterc_po;
      docgen_C_PO * iic_po;
      Escher_IteratorReset( &iterc_po, c_pos );
      while ( (iic_po = (docgen_C_PO *)Escher_IteratorNext( &iterc_po )) != 0 ) {
        c_po = iic_po; {
        docgen_DOC_SEC * doc_sec3;c_t * if_name=0;docgen_C_R * c_r=0;docgen_C_I * c_i=0;docgen_C_IR * c_ir=0;
        /* ASSIGN if_name =  */
        if_name = Escher_strcpy( if_name, "" );
        /* SELECT any c_ir RELATED BY c_po->C_IR[R4016] */
        c_ir = ( 0 != c_po ) ? (docgen_C_IR *) Escher_SetGetAny( &c_po->C_IR_R4016_exposes ) : 0;
        /* SELECT one c_i RELATED BY c_ir->C_I[R4012] */
        c_i = ( 0 != c_ir ) ? c_ir->C_I_R4012_may_be_defined_by : 0;
        /* SELECT one c_r RELATED BY c_ir->C_R[R4009] */
        c_r = 0;
        if ( ( 0 != c_ir ) && ( docgen_C_R_CLASS_NUMBER == c_ir->R4009_object_id ) )        c_r = ( 0 != c_ir ) ? (docgen_C_R *) c_ir->R4009_subtype : 0;
        /* IF ( not_empty c_i ) */
        if ( ( 0 != c_i ) ) {
          /* ASSIGN if_name = ( , Interface:  + c_i.Name ) */
          if_name = Escher_strcpy( if_name, Escher_stradd( ", Interface: ", c_i->Name ) );
        }
        /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:( ( Port:  + c_po.Name ) + if_name )) */
        doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", Escher_stradd( Escher_stradd( "Port: ", c_po->Name ), if_name ));
        /* IF ( not_empty c_r ) */
        if ( ( 0 != c_r ) ) {
          docgen_SPR_REP * spr_rep=0;Escher_ObjectSet_s spr_reps_space={0}; Escher_ObjectSet_s * spr_reps = &spr_reps_space;
          /* SELECT many spr_reps RELATED BY c_r->SPR_REP[R4500] */
          Escher_ClearSet( spr_reps );
          if ( 0 != c_r ) {
            Escher_CopySet( spr_reps, &c_r->SPR_REP_R4500 );
          }
          /* FOR EACH spr_rep IN spr_reps */
          { Escher_Iterator_s iterspr_rep;
          docgen_SPR_REP * iispr_rep;
          Escher_IteratorReset( &iterspr_rep, spr_reps );
          while ( (iispr_rep = (docgen_SPR_REP *)Escher_IteratorNext( &iterspr_rep )) != 0 ) {
            spr_rep = iispr_rep; {
            docgen_SPR_RO * spr_ro=0;
            /* SELECT one spr_ro RELATED BY spr_rep->SPR_RO[R4502] */
            spr_ro = 0;
            if ( ( 0 != spr_rep ) && ( docgen_SPR_RO_CLASS_NUMBER == spr_rep->R4502_object_id ) )            spr_ro = ( 0 != spr_rep ) ? (docgen_SPR_RO *) spr_rep->R4502_subtype : 0;
            /* IF ( not_empty spr_ro ) */
            if ( ( 0 != spr_ro ) ) {
              /* IF ( ( (  != spr_ro.Descrip ) or (  != spr_ro.Action_Semantics_internal ) ) ) */
              if ( ( ( Escher_strcmp( "", spr_ro->Descrip ) != 0 ) || ( Escher_strcmp( "", spr_ro->Action_Semantics_internal ) != 0 ) ) ) {
                docgen_DOC_PAR * doc_par4;docgen_DOC_PAR * doc_par3;docgen_DOC_SEC * doc_sec4;c_t * title=0;
                /* ASSIGN title = spr_ro.Name */
                title = Escher_strcpy( title, spr_ro->Name );
                /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
                doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
                /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:spr_ro.Descrip) */
                doc_par3 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, spr_ro->Descrip);
                /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par3, text:spr_ro.Action_Semantics_internal) */
                doc_par4 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par3, spr_ro->Action_Semantics_internal);
                /* ASSIGN doc_par4.formatted = FALSE */
                doc_par4->formatted = FALSE;
              }
            }
            else {
              docgen_DOC_PAR * doc_par4;docgen_DOC_PAR * doc_par3;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_SPR_RS * spr_rs=0;
              /* SELECT one spr_rs RELATED BY spr_rep->SPR_RS[R4502] */
              spr_rs = 0;
              if ( ( 0 != spr_rep ) && ( docgen_SPR_RS_CLASS_NUMBER == spr_rep->R4502_object_id ) )              spr_rs = ( 0 != spr_rep ) ? (docgen_SPR_RS *) spr_rep->R4502_subtype : 0;
              /* ASSIGN title = spr_rs.Name */
              title = Escher_strcpy( title, spr_rs->Name );
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:spr_rs.Descrip) */
              doc_par3 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, spr_rs->Descrip);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par3, text:spr_rs.Action_Semantics_internal) */
              doc_par4 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par3, spr_rs->Action_Semantics_internal);
              /* ASSIGN doc_par4.formatted = FALSE */
              doc_par4->formatted = FALSE;
            }
          }}}
          Escher_ClearSet( spr_reps ); 
        }
        else {
          docgen_SPR_PEP * spr_pep=0;Escher_ObjectSet_s spr_peps_space={0}; Escher_ObjectSet_s * spr_peps = &spr_peps_space;docgen_C_P * c_p=0;
          /* SELECT one c_p RELATED BY c_ir->C_P[R4009] */
          c_p = 0;
          if ( ( 0 != c_ir ) && ( docgen_C_P_CLASS_NUMBER == c_ir->R4009_object_id ) )          c_p = ( 0 != c_ir ) ? (docgen_C_P *) c_ir->R4009_subtype : 0;
          /* SELECT many spr_peps RELATED BY c_p->SPR_PEP[R4501] */
          Escher_ClearSet( spr_peps );
          if ( 0 != c_p ) {
            Escher_CopySet( spr_peps, &c_p->SPR_PEP_R4501 );
          }
          /* FOR EACH spr_pep IN spr_peps */
          { Escher_Iterator_s iterspr_pep;
          docgen_SPR_PEP * iispr_pep;
          Escher_IteratorReset( &iterspr_pep, spr_peps );
          while ( (iispr_pep = (docgen_SPR_PEP *)Escher_IteratorNext( &iterspr_pep )) != 0 ) {
            spr_pep = iispr_pep; {
            docgen_SPR_PO * spr_po=0;
            /* SELECT one spr_po RELATED BY spr_pep->SPR_PO[R4503] */
            spr_po = 0;
            if ( ( 0 != spr_pep ) && ( docgen_SPR_PO_CLASS_NUMBER == spr_pep->R4503_object_id ) )            spr_po = ( 0 != spr_pep ) ? (docgen_SPR_PO *) spr_pep->R4503_subtype : 0;
            /* IF ( not_empty spr_po ) */
            if ( ( 0 != spr_po ) ) {
              /* IF ( ( (  != spr_po.Descrip ) or (  != spr_po.Action_Semantics_internal ) ) ) */
              if ( ( ( Escher_strcmp( "", spr_po->Descrip ) != 0 ) || ( Escher_strcmp( "", spr_po->Action_Semantics_internal ) != 0 ) ) ) {
                docgen_DOC_PAR * doc_par4;docgen_DOC_PAR * doc_par3;docgen_DOC_SEC * doc_sec4;c_t * title=0;
                /* ASSIGN title = spr_po.Name */
                title = Escher_strcpy( title, spr_po->Name );
                /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
                doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
                /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:spr_po.Descrip) */
                doc_par3 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, spr_po->Descrip);
                /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par3, text:spr_po.Action_Semantics_internal) */
                doc_par4 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par3, spr_po->Action_Semantics_internal);
                /* ASSIGN doc_par4.formatted = FALSE */
                doc_par4->formatted = FALSE;
              }
            }
            else {
              docgen_DOC_PAR * doc_par4;docgen_DOC_PAR * doc_par3;docgen_DOC_SEC * doc_sec4;c_t * title=0;docgen_SPR_PS * spr_ps=0;
              /* SELECT one spr_ps RELATED BY spr_pep->SPR_PS[R4503] */
              spr_ps = 0;
              if ( ( 0 != spr_pep ) && ( docgen_SPR_PS_CLASS_NUMBER == spr_pep->R4503_object_id ) )              spr_ps = ( 0 != spr_pep ) ? (docgen_SPR_PS *) spr_pep->R4503_subtype : 0;
              /* ASSIGN title = spr_ps.Name */
              title = Escher_strcpy( title, spr_ps->Name );
              /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
              doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
              /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:spr_ps.Descrip) */
              doc_par3 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, spr_ps->Descrip);
              /* ASSIGN doc_par4 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par3, text:spr_ps.Action_Semantics_internal) */
              doc_par4 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par3, spr_ps->Action_Semantics_internal);
              /* ASSIGN doc_par4.formatted = FALSE */
              doc_par4->formatted = FALSE;
            }
          }}}
          Escher_ClearSet( spr_peps ); 
        }
      }}}
    }
    /* SELECT many child_c_cs RELATED BY c_c->PE_PE[R8003]->C_C[R8001] */
    Escher_ClearSet( child_c_cs );
    {    if ( 0 != c_c ) {
    docgen_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
    while ( 0 != ( PE_PE_R8003_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( docgen_C_C_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {docgen_C_C * R8001_subtype = PE_PE_R8003_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) child_c_cs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) child_c_cs, R8001_subtype );
    }}}}}
    /* ::docgen_components( c_cs:child_c_cs, doc_sec:doc_sec1 ) */
    docgen_docgen_components( child_c_cs, doc_sec1 );
    /* SELECT many child_c_is RELATED BY c_c->PE_PE[R8003]->C_I[R8001] */
    Escher_ClearSet( child_c_is );
    {    if ( 0 != c_c ) {
    docgen_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
    while ( 0 != ( PE_PE_R8003_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( docgen_C_I_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {docgen_C_I * R8001_subtype = PE_PE_R8003_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) child_c_is, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) child_c_is, R8001_subtype );
    }}}}}
    /* ::docgen_interfaces( c_is:child_c_is, doc_sec:doc_sec1 ) */
    docgen_docgen_interfaces( child_c_is, doc_sec1 );
    /* SELECT many child_ep_pkgs RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001] */
    Escher_ClearSet( child_ep_pkgs );
    {    if ( 0 != c_c ) {
    docgen_PE_PE * PE_PE_R8003_contains;
    Escher_Iterator_s iPE_PE_R8003_contains;
    Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
    while ( 0 != ( PE_PE_R8003_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
    if ( ( 0 != PE_PE_R8003_contains ) && ( docgen_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) )    {docgen_EP_PKG * R8001_subtype = PE_PE_R8003_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) child_ep_pkgs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) child_ep_pkgs, R8001_subtype );
    }}}}}
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:doc_sec1, subtitle:, title:( c_c.Name +  Packages )) */
    doc_sec1 = docgen_DOC_SEC_op_populate(doc_sec1, "", Escher_stradd( c_c->Name, " Packages" ));
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:Rendered here are the contained package diagrams.) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, "Rendered here are the contained package diagrams.");
    /* ::docgen_packages( doc_sec:doc_sec1, ep_pkgs:child_ep_pkgs ) */
    docgen_docgen_packages( doc_sec1, child_ep_pkgs );
    Escher_ClearSet( child_ep_pkgs ); Escher_ClearSet( child_c_is ); Escher_ClearSet( child_c_cs ); Escher_ClearSet( c_pos ); 
  }}}
  Escher_ClearSet( c_cs );
}

/*
 * Domain Function:  docgen_datatypes
 */
void
docgen_docgen_datatypes( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s s_dts_space={0}; Escher_ObjectSet_s * s_dts = &s_dts_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many s_dts RELATED BY ep_pkg->PE_PE[R8000]->S_DT[R8001] */
  Escher_ClearSet( s_dts );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
  }}}}}
  /* IF ( not_empty s_dts ) */
  if ( ( ! Escher_SetIsEmpty( s_dts ) ) ) {
    docgen_S_DT * s_dt=0;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:, title:PARAM.title) */
    doc_sec = docgen_DOC_SEC_op_populate(p_doc_sec, "", p_title);
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par, num_cols:3, title:PARAM.title) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par, 3, p_title);
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = DataType.gif */
    columns[0] = Escher_strcpy( columns[0], "DataType.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH s_dt IN s_dts */
    { Escher_Iterator_s iters_dt;
    docgen_S_DT * iis_dt;
    Escher_IteratorReset( &iters_dt, s_dts );
    while ( (iis_dt = (docgen_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
      s_dt = iis_dt; {
      docgen_S_SDT * s_sdt=0;
      /* ASSIGN columns[2] = s_dt.Descrip */
      columns[2] = Escher_strcpy( columns[2], s_dt->Descrip );
      /* ASSIGN columns[1] = s_dt.Name */
      columns[1] = Escher_strcpy( columns[1], s_dt->Name );
      /* ASSIGN columns[0] = DataType.gif */
      columns[0] = Escher_strcpy( columns[0], "DataType.gif" );
      /* SELECT one s_sdt RELATED BY s_dt->S_SDT[R17] */
      s_sdt = 0;
      if ( ( 0 != s_dt ) && ( docgen_S_SDT_CLASS_NUMBER == s_dt->R17_object_id ) )      s_sdt = ( 0 != s_dt ) ? (docgen_S_SDT *) s_dt->R17_subtype : 0;
      /* IF ( not_empty s_sdt ) */
      if ( ( 0 != s_sdt ) ) {
        docgen_DOC_ROW * doc_row2;
        /* ASSIGN columns[0] = StructuredDataType.gif */
        columns[0] = Escher_strcpy( columns[0], "StructuredDataType.gif" );
        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
        /* ASSIGN doc_row1 = doc_row2 */
        doc_row1 = doc_row2;
      }
      else {
        docgen_S_EDT * s_edt=0;
        /* SELECT one s_edt RELATED BY s_dt->S_EDT[R17] */
        s_edt = 0;
        if ( ( 0 != s_dt ) && ( docgen_S_EDT_CLASS_NUMBER == s_dt->R17_object_id ) )        s_edt = ( 0 != s_dt ) ? (docgen_S_EDT *) s_dt->R17_subtype : 0;
        /* IF ( not_empty s_edt ) */
        if ( ( 0 != s_edt ) ) {
          docgen_DOC_ROW * doc_row2;
          /* ASSIGN columns[0] = Enumeration.gif */
          columns[0] = Escher_strcpy( columns[0], "Enumeration.gif" );
          /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
          doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
          /* ASSIGN doc_row1 = doc_row2 */
          doc_row1 = doc_row2;
        }
        else {
          docgen_S_UDT * s_udt=0;
          /* SELECT one s_udt RELATED BY s_dt->S_UDT[R17] */
          s_udt = 0;
          if ( ( 0 != s_dt ) && ( docgen_S_UDT_CLASS_NUMBER == s_dt->R17_object_id ) )          s_udt = ( 0 != s_dt ) ? (docgen_S_UDT *) s_dt->R17_subtype : 0;
          /* IF ( not_empty s_udt ) */
          if ( ( 0 != s_udt ) ) {
            docgen_DOC_ROW * doc_row2;
            /* ASSIGN columns[0] = UserDefinedDataType.gif */
            columns[0] = Escher_strcpy( columns[0], "UserDefinedDataType.gif" );
            /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
            doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
            /* ASSIGN doc_row1 = doc_row2 */
            doc_row1 = doc_row2;
          }
        }
      }
    }}}
  }
  Escher_ClearSet( s_dts ); 
}

/*
 * Domain Function:  docgen_external_entities
 */
void
docgen_docgen_external_entities( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s s_ees_space={0}; Escher_ObjectSet_s * s_ees = &s_ees_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many s_ees RELATED BY ep_pkg->PE_PE[R8000]->S_EE[R8001] */
  Escher_ClearSet( s_ees );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_S_EE_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_S_EE * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_ees, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_ees, R8001_subtype );
  }}}}}
  /* IF ( not_empty s_ees ) */
  if ( ( ! Escher_SetIsEmpty( s_ees ) ) ) {
    docgen_S_EE * s_ee=0;docgen_DOC_SEC * doc_sec2;docgen_DOC_ROW * doc_row1;c_t * columns[4]={0,0,0,0};c_t * format[4]={0,0,0,0};docgen_DOC_ROW * doc_row;docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
    /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
    empty_doc_sec = 0;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:External Entity, title:PARAM.title) */
    doc_sec1 = docgen_DOC_SEC_op_populate(p_doc_sec, "External Entity", p_title);
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par1, num_cols:4, title:ep_pkg.Name) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par1, 4, ep_pkg->Name);
    /* ASSIGN doc_row = empty_doc_row */
    doc_row = empty_doc_row;
    /* ASSIGN format[3] = text */
    format[3] = Escher_strcpy( format[3], "text" );
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[3] = Bridges */
    columns[3] = Escher_strcpy( columns[3], "Bridges" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = ExternalEntity.gif */
    columns[0] = Escher_strcpy( columns[0], "ExternalEntity.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH s_ee IN s_ees */
    { Escher_Iterator_s iters_ee;
    docgen_S_EE * iis_ee;
    Escher_IteratorReset( &iters_ee, s_ees );
    while ( (iis_ee = (docgen_S_EE *)Escher_IteratorNext( &iters_ee )) != 0 ) {
      s_ee = iis_ee; {
      docgen_S_BRG * s_brg=0;docgen_DOC_ROW * doc_row2;c_t * delimiter=0;Escher_ObjectSet_s s_brgs_space={0}; Escher_ObjectSet_s * s_brgs = &s_brgs_space;
      /* ASSIGN columns[3] =  */
      columns[3] = Escher_strcpy( columns[3], "" );
      /* SELECT many s_brgs RELATED BY s_ee->S_BRG[R19] */
      Escher_ClearSet( s_brgs );
      if ( 0 != s_ee ) {
        Escher_CopySet( s_brgs, &s_ee->S_BRG_R19_uses );
      }
      /* ASSIGN delimiter =  */
      delimiter = Escher_strcpy( delimiter, "" );
      /* FOR EACH s_brg IN s_brgs */
      { Escher_Iterator_s iters_brg;
      docgen_S_BRG * iis_brg;
      Escher_IteratorReset( &iters_brg, s_brgs );
      while ( (iis_brg = (docgen_S_BRG *)Escher_IteratorNext( &iters_brg )) != 0 ) {
        s_brg = iis_brg; {
        /* ASSIGN columns[3] = ( ( columns[3] + delimiter ) + s_brg.Name ) */
        columns[3] = Escher_strcpy( columns[3], Escher_stradd( Escher_stradd( columns[3], delimiter ), s_brg->Name ) );
        /* ASSIGN delimiter = ,  */
        delimiter = Escher_strcpy( delimiter, ", " );
      }}}
      /* ASSIGN columns[2] = s_ee.Descrip */
      columns[2] = Escher_strcpy( columns[2], s_ee->Descrip );
      /* ASSIGN columns[1] = s_ee.Name */
      columns[1] = Escher_strcpy( columns[1], s_ee->Name );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
      Escher_ClearSet( s_brgs ); 
    }}}
    /* ASSIGN doc_sec2 = DOC_SEC::populate(parent_doc_sec:doc_sec1, subtitle:, title:External Entity Activities) */
    doc_sec2 = docgen_DOC_SEC_op_populate(doc_sec1, "", "External Entity Activities");
    /* FOR EACH s_ee IN s_ees */
    { Escher_Iterator_s iters_ee;
    docgen_S_EE * iis_ee;
    Escher_IteratorReset( &iters_ee, s_ees );
    while ( (iis_ee = (docgen_S_EE *)Escher_IteratorNext( &iters_ee )) != 0 ) {
      s_ee = iis_ee; {
      docgen_S_BRG * s_brg=0;docgen_DOC_SEC * doc_sec3;Escher_ObjectSet_s s_brgs_space={0}; Escher_ObjectSet_s * s_brgs = &s_brgs_space;
      /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:( s_ee.Name +  Activities )) */
      doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", Escher_stradd( s_ee->Name, " Activities" ));
      /* SELECT many s_brgs RELATED BY s_ee->S_BRG[R19] */
      Escher_ClearSet( s_brgs );
      if ( 0 != s_ee ) {
        Escher_CopySet( s_brgs, &s_ee->S_BRG_R19_uses );
      }
      /* FOR EACH s_brg IN s_brgs */
      { Escher_Iterator_s iters_brg;
      docgen_S_BRG * iis_brg;
      Escher_IteratorReset( &iters_brg, s_brgs );
      while ( (iis_brg = (docgen_S_BRG *)Escher_IteratorNext( &iters_brg )) != 0 ) {
        s_brg = iis_brg; {
        /* IF ( ( (  != s_brg.Action_Semantics_internal ) or (  != s_brg.Descrip ) ) ) */
        if ( ( ( Escher_strcmp( "", s_brg->Action_Semantics_internal ) != 0 ) || ( Escher_strcmp( "", s_brg->Descrip ) != 0 ) ) ) {
          docgen_DOC_PAR * doc_par3;docgen_DOC_PAR * doc_par2;docgen_DOC_SEC * doc_sec4;c_t * title=0;
          /* ASSIGN title = s_brg.Name */
          title = Escher_strcpy( title, s_brg->Name );
          /* ASSIGN doc_sec4 = DOC_SEC::populate(parent_doc_sec:doc_sec3, subtitle:, title:title) */
          doc_sec4 = docgen_DOC_SEC_op_populate(doc_sec3, "", title);
          /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:doc_sec4, predecessor:empty_doc_par, text:s_brg.Descrip) */
          doc_par2 = docgen_DOC_PAR_op_populate(doc_sec4, empty_doc_par, s_brg->Descrip);
          /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par2, text:s_brg.Action_Semantics_internal) */
          doc_par3 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par2, s_brg->Action_Semantics_internal);
          /* ASSIGN doc_par3.formatted = FALSE */
          doc_par3->formatted = FALSE;
        }
      }}}
      Escher_ClearSet( s_brgs ); 
    }}}
  }
  Escher_ClearSet( s_ees ); 
}

/*
 * Domain Function:  docgen_functions
 */
void
docgen_docgen_functions( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s s_syncs_space={0}; Escher_ObjectSet_s * s_syncs = &s_syncs_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many s_syncs RELATED BY ep_pkg->PE_PE[R8000]->S_SYNC[R8001] */
  Escher_ClearSet( s_syncs );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_S_SYNC_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_S_SYNC * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_syncs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_syncs, R8001_subtype );
  }}}}}
  /* IF ( not_empty s_syncs ) */
  if ( ( ! Escher_SetIsEmpty( s_syncs ) ) ) {
    docgen_S_SYNC * s_sync=0;docgen_DOC_SEC * doc_sec2;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_ROW * doc_row;docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
    /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
    empty_doc_sec = 0;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:Functions, title:PARAM.title) */
    doc_sec1 = docgen_DOC_SEC_op_populate(p_doc_sec, "Functions", p_title);
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par1, num_cols:3, title:ep_pkg.Name) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par1, 3, ep_pkg->Name);
    /* ASSIGN doc_row = empty_doc_row */
    doc_row = empty_doc_row;
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Function.gif */
    columns[0] = Escher_strcpy( columns[0], "Function.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH s_sync IN s_syncs */
    { Escher_Iterator_s iters_sync;
    docgen_S_SYNC * iis_sync;
    Escher_IteratorReset( &iters_sync, s_syncs );
    while ( (iis_sync = (docgen_S_SYNC *)Escher_IteratorNext( &iters_sync )) != 0 ) {
      s_sync = iis_sync; {
      docgen_S_SPARM * s_sparm=0;docgen_DOC_ROW * doc_row2;c_t * delimiter=0;Escher_ObjectSet_s s_sparms_space={0}; Escher_ObjectSet_s * s_sparms = &s_sparms_space;
      /* ASSIGN columns[2] = s_sync.Descrip */
      columns[2] = Escher_strcpy( columns[2], s_sync->Descrip );
      /* ASSIGN columns[1] = ( s_sync.Name + ( ) */
      columns[1] = Escher_strcpy( columns[1], Escher_stradd( s_sync->Name, "(" ) );
      /* SELECT many s_sparms RELATED BY s_sync->S_SPARM[R24] */
      Escher_ClearSet( s_sparms );
      if ( 0 != s_sync ) {
        Escher_CopySet( s_sparms, &s_sync->S_SPARM_R24_defines );
      }
      /* ASSIGN delimiter =  */
      delimiter = Escher_strcpy( delimiter, "" );
      /* FOR EACH s_sparm IN s_sparms */
      { Escher_Iterator_s iters_sparm;
      docgen_S_SPARM * iis_sparm;
      Escher_IteratorReset( &iters_sparm, s_sparms );
      while ( (iis_sparm = (docgen_S_SPARM *)Escher_IteratorNext( &iters_sparm )) != 0 ) {
        s_sparm = iis_sparm; {
        c_t * delimeter=0;
        /* ASSIGN columns[1] = ( ( columns[1] + delimiter ) + s_sparm.Name ) */
        columns[1] = Escher_strcpy( columns[1], Escher_stradd( Escher_stradd( columns[1], delimiter ), s_sparm->Name ) );
        /* ASSIGN delimeter = ,  */
        delimeter = Escher_strcpy( delimeter, ", " );
      }}}
      /* ASSIGN columns[1] = ( columns[1] + ) ) */
      columns[1] = Escher_strcpy( columns[1], Escher_stradd( columns[1], ")" ) );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
      Escher_ClearSet( s_sparms ); 
    }}}
    /* ASSIGN doc_sec2 = DOC_SEC::populate(parent_doc_sec:doc_sec1, subtitle:, title:Function Activities) */
    doc_sec2 = docgen_DOC_SEC_op_populate(doc_sec1, "", "Function Activities");
    /* FOR EACH s_sync IN s_syncs */
    { Escher_Iterator_s iters_sync;
    docgen_S_SYNC * iis_sync;
    Escher_IteratorReset( &iters_sync, s_syncs );
    while ( (iis_sync = (docgen_S_SYNC *)Escher_IteratorNext( &iters_sync )) != 0 ) {
      s_sync = iis_sync; {
      /* IF ( ( (  != s_sync.Action_Semantics_internal ) or (  != s_sync.Descrip ) ) ) */
      if ( ( ( Escher_strcmp( "", s_sync->Action_Semantics_internal ) != 0 ) || ( Escher_strcmp( "", s_sync->Descrip ) != 0 ) ) ) {
        docgen_DOC_PAR * doc_par3;docgen_DOC_PAR * doc_par2;docgen_DOC_SEC * doc_sec3;c_t * title=0;
        /* ASSIGN title = s_sync.Name */
        title = Escher_strcpy( title, s_sync->Name );
        /* ASSIGN doc_sec3 = DOC_SEC::populate(parent_doc_sec:doc_sec2, subtitle:, title:title) */
        doc_sec3 = docgen_DOC_SEC_op_populate(doc_sec2, "", title);
        /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:doc_sec3, predecessor:empty_doc_par, text:s_sync.Descrip) */
        doc_par2 = docgen_DOC_PAR_op_populate(doc_sec3, empty_doc_par, s_sync->Descrip);
        /* ASSIGN doc_par3 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par2, text:s_sync.Action_Semantics_internal) */
        doc_par3 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par2, s_sync->Action_Semantics_internal);
        /* ASSIGN doc_par3.formatted = FALSE */
        doc_par3->formatted = FALSE;
      }
    }}}
  }
  Escher_ClearSet( s_syncs ); 
}

/*
 * Domain Function:  docgen_interaction_participants
 */
void
docgen_docgen_interaction_participants( docgen_DOC_SEC * p_doc_sec, docgen_EP_PKG * p_ep_pkg, c_t * p_title )
{
  docgen_EP_PKG * ep_pkg;Escher_ObjectSet_s msg_ms_space={0}; Escher_ObjectSet_s * msg_ms = &msg_ms_space;Escher_ObjectSet_s sq_ps_space={0}; Escher_ObjectSet_s * sq_ps = &sq_ps_space;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* SELECT many sq_ps RELATED BY ep_pkg->PE_PE[R8000]->SQ_P[R8001] */
  Escher_ClearSet( sq_ps );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_SQ_P_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_SQ_P * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sq_ps, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) sq_ps, R8001_subtype );
  }}}}}
  /* SELECT many msg_ms RELATED BY ep_pkg->PE_PE[R8000]->MSG_M[R8001] */
  Escher_ClearSet( msg_ms );
  {  if ( 0 != ep_pkg ) {
  docgen_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_MSG_M_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {docgen_MSG_M * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) msg_ms, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) msg_ms, R8001_subtype );
  }}}}}
  /* IF ( ( not_empty sq_ps or not_empty msg_ms ) ) */
  if ( ( ( ! Escher_SetIsEmpty( sq_ps ) ) || ( ! Escher_SetIsEmpty( msg_ms ) ) ) ) {
    docgen_MSG_R * msg_r=0;docgen_MSG_SM * msg_sm=0;docgen_MSG_AM * msg_am=0;docgen_SQ_P * sq_p=0;docgen_DOC_ROW * doc_row1;c_t * columns[3]={0,0,0};c_t * format[3]={0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;Escher_ObjectSet_s msg_rs_space={0}; Escher_ObjectSet_s * msg_rs = &msg_rs_space;Escher_ObjectSet_s msg_sms_space={0}; Escher_ObjectSet_s * msg_sms = &msg_sms_space;Escher_ObjectSet_s msg_ams_space={0}; Escher_ObjectSet_s * msg_ams = &msg_ams_space;
    /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
    empty_doc_par = 0;
    /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
    empty_doc_row = 0;
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:, title:PARAM.title) */
    doc_sec = docgen_DOC_SEC_op_populate(p_doc_sec, "", p_title);
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par, num_cols:3, title:PARAM.title) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par, 3, p_title);
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[2] = Description */
    columns[2] = Escher_strcpy( columns[2], "Description" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Package.gif */
    columns[0] = Escher_strcpy( columns[0], "Package.gif" );
    /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
    doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
    /* RELATE doc_row1 TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row1 );
    /* FOR EACH sq_p IN sq_ps */
    { Escher_Iterator_s itersq_p;
    docgen_SQ_P * iisq_p;
    Escher_IteratorReset( &itersq_p, sq_ps );
    while ( (iisq_p = (docgen_SQ_P *)Escher_IteratorNext( &itersq_p )) != 0 ) {
      sq_p = iisq_p; {
      docgen_SQ_AP * sq_ap=0;
      /* SELECT one sq_ap RELATED BY sq_p->SQ_AP[R930] */
      sq_ap = 0;
      if ( ( 0 != sq_p ) && ( docgen_SQ_AP_CLASS_NUMBER == sq_p->R930_object_id ) )      sq_ap = ( 0 != sq_p ) ? (docgen_SQ_AP *) sq_p->R930_subtype : 0;
      /* IF ( not_empty sq_ap ) */
      if ( ( 0 != sq_ap ) ) {
        docgen_DOC_ROW * doc_row2;
        /* ASSIGN columns[2] = sq_ap.Descrip */
        columns[2] = Escher_strcpy( columns[2], sq_ap->Descrip );
        /* ASSIGN columns[1] = sq_ap.Name */
        columns[1] = Escher_strcpy( columns[1], sq_ap->Name );
        /* ASSIGN columns[0] = Actor.gif */
        columns[0] = Escher_strcpy( columns[0], "Actor.gif" );
        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
        /* ASSIGN doc_row1 = doc_row2 */
        doc_row1 = doc_row2;
      }
      else {
        docgen_SQ_CIP * sq_cip=0;
        /* SELECT one sq_cip RELATED BY sq_p->SQ_CIP[R930] */
        sq_cip = 0;
        if ( ( 0 != sq_p ) && ( docgen_SQ_CIP_CLASS_NUMBER == sq_p->R930_object_id ) )        sq_cip = ( 0 != sq_p ) ? (docgen_SQ_CIP *) sq_p->R930_subtype : 0;
        /* IF ( not_empty sq_cip ) */
        if ( ( 0 != sq_cip ) ) {
          docgen_DOC_ROW * doc_row2;
          /* ASSIGN columns[2] = sq_cip.Descrip */
          columns[2] = Escher_strcpy( columns[2], sq_cip->Descrip );
          /* ASSIGN columns[1] = sq_cip.Name */
          columns[1] = Escher_strcpy( columns[1], sq_cip->Name );
          /* ASSIGN columns[0] = Instance.gif */
          columns[0] = Escher_strcpy( columns[0], "Instance.gif" );
          /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
          doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
          /* ASSIGN doc_row1 = doc_row2 */
          doc_row1 = doc_row2;
        }
        else {
          docgen_SQ_CP * sq_cp=0;
          /* SELECT one sq_cp RELATED BY sq_p->SQ_CP[R930] */
          sq_cp = 0;
          if ( ( 0 != sq_p ) && ( docgen_SQ_CP_CLASS_NUMBER == sq_p->R930_object_id ) )          sq_cp = ( 0 != sq_p ) ? (docgen_SQ_CP *) sq_p->R930_subtype : 0;
          /* IF ( not_empty sq_cp ) */
          if ( ( 0 != sq_cp ) ) {
            docgen_SQ_CPA * sq_cpa=0;docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;Escher_ObjectSet_s sq_cpas_space={0}; Escher_ObjectSet_s * sq_cpas = &sq_cpas_space;docgen_O_OBJ * o_obj=0;
            /* SELECT one o_obj RELATED BY sq_cp->O_OBJ[R939] */
            o_obj = ( 0 != sq_cp ) ? sq_cp->O_OBJ_R939_represents : 0;
            /* ASSIGN name = sq_cp.InformalName */
            name = Escher_strcpy( name, sq_cp->InformalName );
            /* ASSIGN description = sq_cp.Descrip */
            description = Escher_strcpy( description, sq_cp->Descrip );
            /* IF ( not_empty o_obj ) */
            if ( ( 0 != o_obj ) ) {
              /* ASSIGN name = o_obj.Name */
              name = Escher_strcpy( name, o_obj->Name );
              /* IF ( (  == description ) ) */
              if ( ( Escher_strcmp( "", description ) == 0 ) ) {
                /* ASSIGN description = o_obj.Descrip */
                description = Escher_strcpy( description, o_obj->Descrip );
              }
            }
            /* ASSIGN columns[2] = description */
            columns[2] = Escher_strcpy( columns[2], description );
            /* ASSIGN columns[1] = name */
            columns[1] = Escher_strcpy( columns[1], name );
            /* ASSIGN columns[0] = Class.gif */
            columns[0] = Escher_strcpy( columns[0], "Class.gif" );
            /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
            doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
            /* ASSIGN doc_row1 = doc_row2 */
            doc_row1 = doc_row2;
            /* SELECT many sq_cpas RELATED BY sq_cp->SQ_CPA[R935] */
            Escher_ClearSet( sq_cpas );
            if ( 0 != sq_cp ) {
              Escher_CopySet( sq_cpas, &sq_cp->SQ_CPA_R935_may_have );
            }
            /* FOR EACH sq_cpa IN sq_cpas */
            { Escher_Iterator_s itersq_cpa;
            docgen_SQ_CPA * iisq_cpa;
            Escher_IteratorReset( &itersq_cpa, sq_cpas );
            while ( (iisq_cpa = (docgen_SQ_CPA *)Escher_IteratorNext( &itersq_cpa )) != 0 ) {
              sq_cpa = iisq_cpa; {
              /* ASSIGN columns[2] = sq_cpa.Descrip */
              columns[2] = Escher_strcpy( columns[2], sq_cpa->Descrip );
              /* ASSIGN columns[1] = ( ( sq_cpa.Name + : ) + sq_cpa.Type ) */
              columns[1] = Escher_strcpy( columns[1], Escher_stradd( Escher_stradd( sq_cpa->Name, ":" ), sq_cpa->Type ) );
              /* ASSIGN columns[0] = Attribute.gif */
              columns[0] = Escher_strcpy( columns[0], "Attribute.gif" );
              /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
              doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
              /* ASSIGN doc_row1 = doc_row2 */
              doc_row1 = doc_row2;
            }}}
            Escher_ClearSet( sq_cpas ); 
          }
          else {
            docgen_SQ_COP * sq_cop=0;
            /* SELECT one sq_cop RELATED BY sq_p->SQ_COP[R930] */
            sq_cop = 0;
            if ( ( 0 != sq_p ) && ( docgen_SQ_COP_CLASS_NUMBER == sq_p->R930_object_id ) )            sq_cop = ( 0 != sq_p ) ? (docgen_SQ_COP *) sq_p->R930_subtype : 0;
            /* IF ( not_empty sq_cop ) */
            if ( ( 0 != sq_cop ) ) {
              docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;docgen_C_C * c_c=0;
              /* SELECT one c_c RELATED BY sq_cop->C_C[R955] */
              c_c = ( 0 != sq_cop ) ? sq_cop->C_C_R955_represents : 0;
              /* ASSIGN name = sq_cop.InformalComponentName */
              name = Escher_strcpy( name, sq_cop->InformalComponentName );
              /* ASSIGN description = sq_cop.Descrip */
              description = Escher_strcpy( description, sq_cop->Descrip );
              /* IF ( not_empty c_c ) */
              if ( ( 0 != c_c ) ) {
                /* ASSIGN name = c_c.Name */
                name = Escher_strcpy( name, c_c->Name );
                /* IF ( (  == description ) ) */
                if ( ( Escher_strcmp( "", description ) == 0 ) ) {
                  /* ASSIGN description = c_c.Descrip */
                  description = Escher_strcpy( description, c_c->Descrip );
                }
              }
              /* ASSIGN columns[2] = description */
              columns[2] = Escher_strcpy( columns[2], description );
              /* ASSIGN columns[1] = name */
              columns[1] = Escher_strcpy( columns[1], name );
              /* ASSIGN columns[0] = Component.gif */
              columns[0] = Escher_strcpy( columns[0], "Component.gif" );
              /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
              doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
              /* ASSIGN doc_row1 = doc_row2 */
              doc_row1 = doc_row2;
            }
            else {
              docgen_SQ_EEP * sq_eep=0;
              /* SELECT one sq_eep RELATED BY sq_p->SQ_EEP[R930] */
              sq_eep = 0;
              if ( ( 0 != sq_p ) && ( docgen_SQ_EEP_CLASS_NUMBER == sq_p->R930_object_id ) )              sq_eep = ( 0 != sq_p ) ? (docgen_SQ_EEP *) sq_p->R930_subtype : 0;
              /* IF ( not_empty sq_eep ) */
              if ( ( 0 != sq_eep ) ) {
                docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;docgen_S_EE * s_ee=0;
                /* ASSIGN name = sq_eep.InformalName */
                name = Escher_strcpy( name, sq_eep->InformalName );
                /* ASSIGN description = sq_eep.Descrip */
                description = Escher_strcpy( description, sq_eep->Descrip );
                /* SELECT one s_ee RELATED BY sq_eep->S_EE[R933] */
                s_ee = ( 0 != sq_eep ) ? sq_eep->S_EE_R933_represents : 0;
                /* IF ( not_empty s_ee ) */
                if ( ( 0 != s_ee ) ) {
                  /* ASSIGN name = s_ee.Name */
                  name = Escher_strcpy( name, s_ee->Name );
                  /* IF ( (  == description ) ) */
                  if ( ( Escher_strcmp( "", description ) == 0 ) ) {
                    /* ASSIGN description = s_ee.Descrip */
                    description = Escher_strcpy( description, s_ee->Descrip );
                  }
                }
                /* ASSIGN columns[2] = description */
                columns[2] = Escher_strcpy( columns[2], description );
                /* ASSIGN columns[1] = name */
                columns[1] = Escher_strcpy( columns[1], name );
                /* ASSIGN columns[0] = ExternalEntity.gif */
                columns[0] = Escher_strcpy( columns[0], "ExternalEntity.gif" );
                /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                /* ASSIGN doc_row1 = doc_row2 */
                doc_row1 = doc_row2;
              }
              else {
                docgen_SQ_PP * sq_pp=0;
                /* SELECT one sq_pp RELATED BY sq_p->SQ_PP[R930] */
                sq_pp = 0;
                if ( ( 0 != sq_p ) && ( docgen_SQ_PP_CLASS_NUMBER == sq_p->R930_object_id ) )                sq_pp = ( 0 != sq_p ) ? (docgen_SQ_PP *) sq_p->R930_subtype : 0;
                /* IF ( not_empty sq_pp ) */
                if ( ( 0 != sq_pp ) ) {
                  docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;
                  /* ASSIGN name = sq_pp.InformalName */
                  name = Escher_strcpy( name, sq_pp->InformalName );
                  /* ASSIGN description = sq_pp.Descrip */
                  description = Escher_strcpy( description, sq_pp->Descrip );
                  /* SELECT one ep_pkg RELATED BY sq_pp->EP_PKG[R956] */
                  ep_pkg = ( 0 != sq_pp ) ? sq_pp->EP_PKG_R956_represents : 0;
                  /* IF ( not_empty ep_pkg ) */
                  if ( ( 0 != ep_pkg ) ) {
                    /* ASSIGN name = ep_pkg.Name */
                    name = Escher_strcpy( name, ep_pkg->Name );
                    /* IF ( (  == description ) ) */
                    if ( ( Escher_strcmp( "", description ) == 0 ) ) {
                      /* ASSIGN description = ep_pkg.Descrip */
                      description = Escher_strcpy( description, ep_pkg->Descrip );
                    }
                  }
                  /* ASSIGN columns[2] = description */
                  columns[2] = Escher_strcpy( columns[2], description );
                  /* ASSIGN columns[1] = name */
                  columns[1] = Escher_strcpy( columns[1], name );
                  /* ASSIGN columns[0] = Package.gif */
                  columns[0] = Escher_strcpy( columns[0], "Package.gif" );
                  /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                  doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                  /* ASSIGN doc_row1 = doc_row2 */
                  doc_row1 = doc_row2;
                }
                else {
                  docgen_SQ_LS * sq_ls=0;
                  /* SELECT one sq_ls RELATED BY sq_p->SQ_LS[R930] */
                  sq_ls = 0;
                  if ( ( 0 != sq_p ) && ( docgen_SQ_LS_CLASS_NUMBER == sq_p->R930_object_id ) )                  sq_ls = ( 0 != sq_p ) ? (docgen_SQ_LS *) sq_p->R930_subtype : 0;
                  /* IF ( not_empty sq_ls ) */
                  if ( ( 0 != sq_ls ) ) {
                    docgen_SQ_TS * sq_ts=0;docgen_SQ_TM * sq_tm=0;Escher_ObjectSet_s sq_tss_space={0}; Escher_ObjectSet_s * sq_tss = &sq_tss_space;Escher_ObjectSet_s sq_tms_space={0}; Escher_ObjectSet_s * sq_tms = &sq_tms_space;
                    /* IF ( (  != sq_ls.Descrip ) ) */
                    if ( ( Escher_strcmp( "", sq_ls->Descrip ) != 0 ) ) {
                      docgen_DOC_ROW * doc_row2;
                      /* ASSIGN columns[2] = sq_ls.Descrip */
                      columns[2] = Escher_strcpy( columns[2], sq_ls->Descrip );
                      /* ASSIGN columns[1] =  */
                      columns[1] = Escher_strcpy( columns[1], "" );
                      /* ASSIGN columns[0] = Lifespan.gif */
                      columns[0] = Escher_strcpy( columns[0], "Lifespan.gif" );
                      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                      /* ASSIGN doc_row1 = doc_row2 */
                      doc_row1 = doc_row2;
                    }
                    /* SELECT many sq_tms RELATED BY sq_ls->SQ_TM[R931] */
                    Escher_ClearSet( sq_tms );
                    if ( 0 != sq_ls ) {
                      Escher_CopySet( sq_tms, &sq_ls->SQ_TM_R931_has_a_point_in_time_referenced_by );
                    }
                    /* FOR EACH sq_tm IN sq_tms */
                    { Escher_Iterator_s itersq_tm;
                    docgen_SQ_TM * iisq_tm;
                    Escher_IteratorReset( &itersq_tm, sq_tms );
                    while ( (iisq_tm = (docgen_SQ_TM *)Escher_IteratorNext( &itersq_tm )) != 0 ) {
                      sq_tm = iisq_tm; {
                      /* IF ( (  != sq_tm.Descrip ) ) */
                      if ( ( Escher_strcmp( "", sq_tm->Descrip ) != 0 ) ) {
                        docgen_DOC_ROW * doc_row2;
                        /* ASSIGN columns[2] = sq_tm.Descrip */
                        columns[2] = Escher_strcpy( columns[2], sq_tm->Descrip );
                        /* ASSIGN columns[1] = sq_tm.Name */
                        columns[1] = Escher_strcpy( columns[1], sq_tm->Name );
                        /* ASSIGN columns[0] = TimeingMark.gif */
                        columns[0] = Escher_strcpy( columns[0], "TimeingMark.gif" );
                        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                        /* ASSIGN doc_row1 = doc_row2 */
                        doc_row1 = doc_row2;
                      }
                    }}}
                    /* SELECT many sq_tss RELATED BY sq_ls->SQ_TM[R931]->SQ_TS[R941] */
                    Escher_ClearSet( sq_tss );
                    {                    if ( 0 != sq_ls ) {
                    docgen_SQ_TM * SQ_TM_R931_has_a_point_in_time_referenced_by;
                    Escher_Iterator_s iSQ_TM_R931_has_a_point_in_time_referenced_by;
                    Escher_IteratorReset( &iSQ_TM_R931_has_a_point_in_time_referenced_by, &sq_ls->SQ_TM_R931_has_a_point_in_time_referenced_by );
                    while ( 0 != ( SQ_TM_R931_has_a_point_in_time_referenced_by = (docgen_SQ_TM *) Escher_IteratorNext( &iSQ_TM_R931_has_a_point_in_time_referenced_by ) ) ) {
                    docgen_SQ_TS * SQ_TS_R941_defines_start_of;
                    Escher_Iterator_s iSQ_TS_R941_defines_start_of;
                    Escher_IteratorReset( &iSQ_TS_R941_defines_start_of, &SQ_TM_R931_has_a_point_in_time_referenced_by->SQ_TS_R941_defines_start_of );
                    while ( 0 != ( SQ_TS_R941_defines_start_of = (docgen_SQ_TS *) Escher_IteratorNext( &iSQ_TS_R941_defines_start_of ) ) ) {
                      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sq_tss, SQ_TS_R941_defines_start_of ) ) {
                        Escher_SetInsertElement( (Escher_ObjectSet_s *) sq_tss, SQ_TS_R941_defines_start_of );
                    }}}}}
                    /* FOR EACH sq_ts IN sq_tss */
                    { Escher_Iterator_s itersq_ts;
                    docgen_SQ_TS * iisq_ts;
                    Escher_IteratorReset( &itersq_ts, sq_tss );
                    while ( (iisq_ts = (docgen_SQ_TS *)Escher_IteratorNext( &itersq_ts )) != 0 ) {
                      sq_ts = iisq_ts; {
                      /* IF ( (  != sq_tm.Descrip ) ) */
                      if ( ( Escher_strcmp( "", sq_tm->Descrip ) != 0 ) ) {
                        docgen_DOC_ROW * doc_row2;
                        /* ASSIGN columns[2] = sq_ts.Descrip */
                        columns[2] = Escher_strcpy( columns[2], sq_ts->Descrip );
                        /* ASSIGN columns[1] = sq_ts.Name */
                        columns[1] = Escher_strcpy( columns[1], sq_ts->Name );
                        /* ASSIGN columns[0] = TimeSpan.gif */
                        columns[0] = Escher_strcpy( columns[0], "TimeSpan.gif" );
                        /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                        doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                        /* ASSIGN doc_row1 = doc_row2 */
                        doc_row1 = doc_row2;
                      }
                    }}}
                    Escher_ClearSet( sq_tss ); Escher_ClearSet( sq_tms ); 
                  }
                  else {
                    docgen_IA_UCP * ia_ucp=0;
                    /* SELECT one ia_ucp RELATED BY sq_p->IA_UCP[R930] */
                    ia_ucp = 0;
                    if ( ( 0 != sq_p ) && ( docgen_IA_UCP_CLASS_NUMBER == sq_p->R930_object_id ) )                    ia_ucp = ( 0 != sq_p ) ? (docgen_IA_UCP *) sq_p->R930_subtype : 0;
                    /* IF ( not_empty ia_ucp ) */
                    if ( ( 0 != ia_ucp ) ) {
                      docgen_DOC_ROW * doc_row2;
                      /* ASSIGN columns[2] = ia_ucp.Descrip */
                      columns[2] = Escher_strcpy( columns[2], ia_ucp->Descrip );
                      /* ASSIGN columns[1] = ia_ucp.Name */
                      columns[1] = Escher_strcpy( columns[1], ia_ucp->Name );
                      /* ASSIGN columns[0] = UseCase.gif */
                      columns[0] = Escher_strcpy( columns[0], "UseCase.gif" );
                      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
                      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
                      /* ASSIGN doc_row1 = doc_row2 */
                      doc_row1 = doc_row2;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }}}
    /* SELECT many msg_ams RELATED BY msg_ms->MSG_AM[R1018] */
    Escher_ClearSet( msg_ams );
    {docgen_MSG_M * docgen_MSG_M_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, msg_ms );
    while ( 0 != ( docgen_MSG_M_linkage = (docgen_MSG_M *) Escher_IteratorNext( &start_many_iterator ) ) ) {
      if ( ( 0 != docgen_MSG_M_linkage ) && ( docgen_MSG_AM_CLASS_NUMBER == docgen_MSG_M_linkage->R1018_object_id ) )
      {docgen_MSG_AM * R1018_subtype = docgen_MSG_M_linkage->R1018_subtype;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) msg_ams, R1018_subtype ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) msg_ams, R1018_subtype );
    }}}}
    /* FOR EACH msg_am IN msg_ams */
    { Escher_Iterator_s itermsg_am;
    docgen_MSG_AM * iimsg_am;
    Escher_IteratorReset( &itermsg_am, msg_ams );
    while ( (iimsg_am = (docgen_MSG_AM *)Escher_IteratorNext( &itermsg_am )) != 0 ) {
      msg_am = iimsg_am; {
      docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;docgen_SM_EVT * sm_evt=0;
      /* ASSIGN name = msg_am.InformalName */
      name = Escher_strcpy( name, msg_am->InformalName );
      /* ASSIGN description = msg_am.Descrip */
      description = Escher_strcpy( description, msg_am->Descrip );
      /* SELECT one sm_evt RELATED BY msg_am->MSG_E[R1019]->SM_EVT[R1009] */
      sm_evt = 0;
      {      if ( 0 != msg_am ) {
      docgen_MSG_E * R1019_subtype = (docgen_MSG_E *) msg_am->R1019_subtype;
      if ( 0 != R1019_subtype )      if ( ( 0 != msg_am ) && ( docgen_MSG_E_CLASS_NUMBER == msg_am->R1019_object_id ) ) {
      sm_evt = R1019_subtype->SM_EVT_R1009_generates;
}}}
      /* IF ( not_empty sm_evt ) */
      if ( ( 0 != sm_evt ) ) {
        /* ASSIGN name = sm_evt.Mning */
        name = Escher_strcpy( name, sm_evt->Mning );
        /* ASSIGN description = sm_evt.Unq_Lbl */
        description = Escher_strcpy( description, sm_evt->Unq_Lbl );
      }
      else {
        docgen_C_AS * c_as=0;
        /* SELECT one c_as RELATED BY msg_am->MSG_SIG[R1019]->C_AS[R1021] */
        c_as = 0;
        {        if ( 0 != msg_am ) {
        docgen_MSG_SIG * R1019_subtype = (docgen_MSG_SIG *) msg_am->R1019_subtype;
        if ( 0 != R1019_subtype )        if ( ( 0 != msg_am ) && ( docgen_MSG_SIG_CLASS_NUMBER == msg_am->R1019_object_id ) ) {
        c_as = R1019_subtype->C_AS_R1021_sends;
}}}
        /* IF ( not_empty c_as ) */
        if ( ( 0 != c_as ) ) {
          /* ASSIGN name = c_as.Name */
          name = Escher_strcpy( name, c_as->Name );
          /* ASSIGN description = c_as.Descrip */
          description = Escher_strcpy( description, c_as->Descrip );
        }
      }
      /* ASSIGN columns[2] = description */
      columns[2] = Escher_strcpy( columns[2], description );
      /* ASSIGN columns[1] = name */
      columns[1] = Escher_strcpy( columns[1], name );
      /* ASSIGN columns[0] = AsynchronousMessage.gif */
      columns[0] = Escher_strcpy( columns[0], "AsynchronousMessage.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many msg_sms RELATED BY msg_ms->MSG_SM[R1018] */
    Escher_ClearSet( msg_sms );
    {docgen_MSG_M * docgen_MSG_M_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, msg_ms );
    while ( 0 != ( docgen_MSG_M_linkage = (docgen_MSG_M *) Escher_IteratorNext( &start_many_iterator ) ) ) {
      if ( ( 0 != docgen_MSG_M_linkage ) && ( docgen_MSG_SM_CLASS_NUMBER == docgen_MSG_M_linkage->R1018_object_id ) )
      {docgen_MSG_SM * R1018_subtype = docgen_MSG_M_linkage->R1018_subtype;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) msg_sms, R1018_subtype ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) msg_sms, R1018_subtype );
    }}}}
    /* FOR EACH msg_sm IN msg_sms */
    { Escher_Iterator_s itermsg_sm;
    docgen_MSG_SM * iimsg_sm;
    Escher_IteratorReset( &itermsg_sm, msg_sms );
    while ( (iimsg_sm = (docgen_MSG_SM *)Escher_IteratorNext( &itermsg_sm )) != 0 ) {
      msg_sm = iimsg_sm; {
      docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;docgen_S_SYNC * s_sync=0;
      /* ASSIGN name = msg_sm.InformalName */
      name = Escher_strcpy( name, msg_sm->InformalName );
      /* ASSIGN description = msg_sm.Descrip */
      description = Escher_strcpy( description, msg_sm->Descrip );
      /* SELECT one s_sync RELATED BY msg_sm->MSG_F[R1020]->S_SYNC[R1010] */
      s_sync = 0;
      {      if ( 0 != msg_sm ) {
      docgen_MSG_F * R1020_subtype = (docgen_MSG_F *) msg_sm->R1020_subtype;
      if ( 0 != R1020_subtype )      if ( ( 0 != msg_sm ) && ( docgen_MSG_F_CLASS_NUMBER == msg_sm->R1020_object_id ) ) {
      s_sync = R1020_subtype->S_SYNC_R1010_is_invocation_of;
}}}
      /* IF ( not_empty s_sync ) */
      if ( ( 0 != s_sync ) ) {
        /* ASSIGN name = s_sync.Name */
        name = Escher_strcpy( name, s_sync->Name );
        /* ASSIGN description = s_sync.Descrip */
        description = Escher_strcpy( description, s_sync->Descrip );
      }
      else {
        docgen_O_TFR * o_tfr=0;
        /* SELECT one o_tfr RELATED BY msg_sm->MSG_O[R1020]->O_TFR[R1011] */
        o_tfr = 0;
        {        if ( 0 != msg_sm ) {
        docgen_MSG_O * R1020_subtype = (docgen_MSG_O *) msg_sm->R1020_subtype;
        if ( 0 != R1020_subtype )        if ( ( 0 != msg_sm ) && ( docgen_MSG_O_CLASS_NUMBER == msg_sm->R1020_object_id ) ) {
        o_tfr = R1020_subtype->O_TFR_R1011_is_invocation_of;
}}}
        /* IF ( not_empty o_tfr ) */
        if ( ( 0 != o_tfr ) ) {
          /* ASSIGN name = o_tfr.Name */
          name = Escher_strcpy( name, o_tfr->Name );
          /* ASSIGN description = o_tfr.Descrip */
          description = Escher_strcpy( description, o_tfr->Descrip );
        }
        else {
          docgen_S_BRG * s_brg=0;
          /* SELECT one s_brg RELATED BY msg_sm->MSG_B[R1020]->S_BRG[R1012] */
          s_brg = 0;
          {          if ( 0 != msg_sm ) {
          docgen_MSG_B * R1020_subtype = (docgen_MSG_B *) msg_sm->R1020_subtype;
          if ( 0 != R1020_subtype )          if ( ( 0 != msg_sm ) && ( docgen_MSG_B_CLASS_NUMBER == msg_sm->R1020_object_id ) ) {
          s_brg = R1020_subtype->S_BRG_R1012_is_invocation_of;
}}}
          /* IF ( not_empty s_brg ) */
          if ( ( 0 != s_brg ) ) {
            /* ASSIGN name = s_brg.Name */
            name = Escher_strcpy( name, s_brg->Name );
            /* ASSIGN description = s_brg.Descrip */
            description = Escher_strcpy( description, s_brg->Descrip );
          }
          else {
            docgen_C_IO * c_io=0;
            /* SELECT one c_io RELATED BY msg_sm->MSG_IOP[R1020]->C_IO[R1022] */
            c_io = 0;
            {            if ( 0 != msg_sm ) {
            docgen_MSG_IOP * R1020_subtype = (docgen_MSG_IOP *) msg_sm->R1020_subtype;
            if ( 0 != R1020_subtype )            if ( ( 0 != msg_sm ) && ( docgen_MSG_IOP_CLASS_NUMBER == msg_sm->R1020_object_id ) ) {
            c_io = R1020_subtype->C_IO_R1022_sends;
}}}
            /* IF ( not_empty c_io ) */
            if ( ( 0 != c_io ) ) {
              /* ASSIGN name = c_io.Name */
              name = Escher_strcpy( name, c_io->Name );
              /* ASSIGN description = c_io.Descrip */
              description = Escher_strcpy( description, c_io->Descrip );
            }
          }
        }
      }
      /* ASSIGN columns[2] = description */
      columns[2] = Escher_strcpy( columns[2], description );
      /* ASSIGN columns[1] = name */
      columns[1] = Escher_strcpy( columns[1], name );
      /* ASSIGN columns[0] = SynchronousMessage.gif */
      columns[0] = Escher_strcpy( columns[0], "SynchronousMessage.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    /* SELECT many msg_rs RELATED BY msg_ms->MSG_R[R1018] */
    Escher_ClearSet( msg_rs );
    {docgen_MSG_M * docgen_MSG_M_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, msg_ms );
    while ( 0 != ( docgen_MSG_M_linkage = (docgen_MSG_M *) Escher_IteratorNext( &start_many_iterator ) ) ) {
      if ( ( 0 != docgen_MSG_M_linkage ) && ( docgen_MSG_R_CLASS_NUMBER == docgen_MSG_M_linkage->R1018_object_id ) )
      {docgen_MSG_R * R1018_subtype = docgen_MSG_M_linkage->R1018_subtype;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) msg_rs, R1018_subtype ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) msg_rs, R1018_subtype );
    }}}}
    /* FOR EACH msg_r IN msg_rs */
    { Escher_Iterator_s itermsg_r;
    docgen_MSG_R * iimsg_r;
    Escher_IteratorReset( &itermsg_r, msg_rs );
    while ( (iimsg_r = (docgen_MSG_R *)Escher_IteratorNext( &itermsg_r )) != 0 ) {
      msg_r = iimsg_r; {
      docgen_DOC_ROW * doc_row2;c_t * description=0;c_t * name=0;
      /* ASSIGN name = msg_r.Name */
      name = Escher_strcpy( name, msg_r->Name );
      /* ASSIGN description = msg_r.Descrip */
      description = Escher_strcpy( description, msg_r->Descrip );
      /* ASSIGN columns[2] = description */
      columns[2] = Escher_strcpy( columns[2], description );
      /* ASSIGN columns[1] = name */
      columns[1] = Escher_strcpy( columns[1], name );
      /* ASSIGN columns[0] = ReturnMessage.gif */
      columns[0] = Escher_strcpy( columns[0], "ReturnMessage.gif" );
      /* ASSIGN doc_row2 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row1) */
      doc_row2 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row1);
      /* ASSIGN doc_row1 = doc_row2 */
      doc_row1 = doc_row2;
    }}}
    Escher_ClearSet( msg_rs ); Escher_ClearSet( msg_sms ); Escher_ClearSet( msg_ams ); 
  }
  Escher_ClearSet( msg_ms ); Escher_ClearSet( sq_ps ); 
}

/*
 * Domain Function:  docgen_interfaces
 */
void
docgen_docgen_interfaces( Escher_ObjectSet_s * p_c_is, docgen_DOC_SEC * p_doc_sec )
{
  docgen_C_I * c_i=0;Escher_ObjectSet_s c_is_space={0}; Escher_ObjectSet_s * c_is = &c_is_space;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
  empty_doc_row = 0;
  /* ASSIGN c_is = PARAM.c_is */
  Escher_CopySet( c_is, p_c_is );
  /* FOR EACH c_i IN c_is */
  { Escher_Iterator_s iterc_i;
  docgen_C_I * iic_i;
  Escher_IteratorReset( &iterc_i, c_is );
  while ( (iic_i = (docgen_C_I *)Escher_IteratorNext( &iterc_i )) != 0 ) {
    c_i = iic_i; {
    docgen_C_EP * c_ep=0;docgen_DOC_ROW * doc_row;c_t * columns[4]={0,0,0,0};c_t * format[4]={0,0,0,0};docgen_DOC_TBL * doc_tbl;docgen_DOC_PAR * doc_par2;docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;Escher_ObjectSet_s c_eps_space={0}; Escher_ObjectSet_s * c_eps = &c_eps_space;
    /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:PARAM.doc_sec, subtitle:Interface, title:c_i.Name) */
    doc_sec1 = docgen_DOC_SEC_op_populate(p_doc_sec, "Interface", c_i->Name);
    /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:c_i.Descrip) */
    doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, c_i->Descrip);
    /* ASSIGN doc_par2 = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par1, text:) */
    doc_par2 = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par1, "");
    /* ASSIGN doc_tbl = DOC_TBL::populate(doc_par:doc_par2, num_cols:4, title:( ( c_i.Name +   ) + Messages )) */
    doc_tbl = docgen_DOC_TBL_op_populate(doc_par2, 4, Escher_stradd( Escher_stradd( c_i->Name, " " ), "Messages" ));
    /* ASSIGN format[3] = text */
    format[3] = Escher_strcpy( format[3], "text" );
    /* ASSIGN format[2] = text */
    format[2] = Escher_strcpy( format[2], "text" );
    /* ASSIGN format[1] = text */
    format[1] = Escher_strcpy( format[1], "text" );
    /* ASSIGN format[0] = image */
    format[0] = Escher_strcpy( format[0], "image" );
    /* ASSIGN columns[3] = Description */
    columns[3] = Escher_strcpy( columns[3], "Description" );
    /* ASSIGN columns[2] = Direction */
    columns[2] = Escher_strcpy( columns[2], "Direction" );
    /* ASSIGN columns[1] = Name */
    columns[1] = Escher_strcpy( columns[1], "Name" );
    /* ASSIGN columns[0] = Message.gif */
    columns[0] = Escher_strcpy( columns[0], "Message.gif" );
    /* ASSIGN doc_row = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:empty_doc_row) */
    doc_row = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, empty_doc_row);
    /* RELATE doc_row TO doc_tbl ACROSS R2317 */
    docgen_DOC_ROW_R2317_Link_has_first( doc_tbl, doc_row );
    /* ASSIGN columns[0] = SendSignal.gif */
    columns[0] = Escher_strcpy( columns[0], "SendSignal.gif" );
    /* SELECT many c_eps RELATED BY c_i->C_EP[R4003] */
    Escher_ClearSet( c_eps );
    if ( 0 != c_i ) {
      Escher_CopySet( c_eps, &c_i->C_EP_R4003_is_defined_by );
    }
    /* FOR EACH c_ep IN c_eps */
    { Escher_Iterator_s iterc_ep;
    docgen_C_EP * iic_ep;
    Escher_IteratorReset( &iterc_ep, c_eps );
    while ( (iic_ep = (docgen_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
      c_ep = iic_ep; {
      docgen_C_AS * c_as=0;
      /* SELECT one c_as RELATED BY c_ep->C_AS[R4004] */
      c_as = 0;
      if ( ( 0 != c_ep ) && ( docgen_C_AS_CLASS_NUMBER == c_ep->R4004_object_id ) )      c_as = ( 0 != c_ep ) ? (docgen_C_AS *) c_ep->R4004_subtype : 0;
      /* IF ( not_empty c_as ) */
      if ( ( 0 != c_as ) ) {
        docgen_DOC_ROW * doc_row1;
        /* ASSIGN columns[3] = c_as.Descrip */
        columns[3] = Escher_strcpy( columns[3], c_as->Descrip );
        /* IF ( ( ClientServer == c_as.Direction ) ) */
        if ( ( docgen_IFDirectionType_ClientServer_e == c_as->Direction ) ) {
          /* ASSIGN columns[2] = Client to Server (Requirer to Provider) */
          columns[2] = Escher_strcpy( columns[2], "Client to Server (Requirer to Provider)" );
        }
        else {
          /* ASSIGN columns[2] = Server to Client (Provider to Requirer) */
          columns[2] = Escher_strcpy( columns[2], "Server to Client (Provider to Requirer)" );
        }
        /* ASSIGN columns[1] = c_as.Name */
        columns[1] = Escher_strcpy( columns[1], c_as->Name );
        /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
        doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
        /* ASSIGN doc_row = doc_row1 */
        doc_row = doc_row1;
      }
    }}}
    /* ASSIGN columns[0] = Operation.gif */
    columns[0] = Escher_strcpy( columns[0], "Operation.gif" );
    /* FOR EACH c_ep IN c_eps */
    { Escher_Iterator_s iterc_ep;
    docgen_C_EP * iic_ep;
    Escher_IteratorReset( &iterc_ep, c_eps );
    while ( (iic_ep = (docgen_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
      c_ep = iic_ep; {
      docgen_C_IO * c_io=0;
      /* SELECT one c_io RELATED BY c_ep->C_IO[R4004] */
      c_io = 0;
      if ( ( 0 != c_ep ) && ( docgen_C_IO_CLASS_NUMBER == c_ep->R4004_object_id ) )      c_io = ( 0 != c_ep ) ? (docgen_C_IO *) c_ep->R4004_subtype : 0;
      /* IF ( not_empty c_io ) */
      if ( ( 0 != c_io ) ) {
        docgen_DOC_ROW * doc_row1;
        /* ASSIGN columns[3] = c_io.Descrip */
        columns[3] = Escher_strcpy( columns[3], c_io->Descrip );
        /* IF ( ( ClientServer == c_io.Direction ) ) */
        if ( ( docgen_IFDirectionType_ClientServer_e == c_io->Direction ) ) {
          /* ASSIGN columns[2] = Client to Server (Requirer to Provider) */
          columns[2] = Escher_strcpy( columns[2], "Client to Server (Requirer to Provider)" );
        }
        else {
          /* ASSIGN columns[2] = Server to Client (Provider to Requirer ) */
          columns[2] = Escher_strcpy( columns[2], "Server to Client (Provider to Requirer )" );
        }
        /* ASSIGN columns[1] = c_io.Name */
        columns[1] = Escher_strcpy( columns[1], c_io->Name );
        /* ASSIGN doc_row1 = DOC_ROW::populate(columns:columns, count:doc_tbl.num_cols, format:format, predecessor:doc_row) */
        doc_row1 = docgen_DOC_ROW_op_populate(columns, doc_tbl->num_cols, format, doc_row);
        /* ASSIGN doc_row = doc_row1 */
        doc_row = doc_row1;
      }
    }}}
    Escher_ClearSet( c_eps ); 
  }}}
  Escher_ClearSet( c_is );
}

/*
 * Domain Function:  docgen_load_project
 */
void
docgen_docgen_load_project()
{
  c_t * inputModelName=0;
  /* ASSIGN inputModelName = DocGenTest */
  inputModelName = Escher_strcpy( inputModelName, "DocGenTest" );
  /* LOG::LogInfo( message:( Populating metamodel with:  + inputModelName ) ) */
  LOG_LogInfo( Escher_stradd( "Populating metamodel with: ", inputModelName ) );
  /* POP::populate( project:inputModelName ) */
  POP_populate( inputModelName );
  /* LOG::LogInfo( message:Model to model transformation... ) */
  LOG_LogInfo( "Model to model transformation..." );
}

/*
 * Domain Function:  docgen_packages
 */
void
docgen_docgen_packages( docgen_DOC_SEC * p_doc_sec, Escher_ObjectSet_s * p_ep_pkgs )
{
  docgen_EP_PKG * ep_pkg=0;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;docgen_DOC_SEC * parent_doc_sec;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
  empty_doc_row = 0;
  /* ASSIGN parent_doc_sec = PARAM.doc_sec */
  parent_doc_sec = p_doc_sec;
  /* ASSIGN ep_pkgs = PARAM.ep_pkgs */
  Escher_CopySet( ep_pkgs, p_ep_pkgs );
  /* FOR EACH ep_pkg IN ep_pkgs */
  { Escher_Iterator_s iterep_pkg;
  docgen_EP_PKG * iiep_pkg;
  Escher_IteratorReset( &iterep_pkg, ep_pkgs );
  while ( (iiep_pkg = (docgen_EP_PKG *)Escher_IteratorNext( &iterep_pkg )) != 0 ) {
    ep_pkg = iiep_pkg; {
    docgen_DOC_FIG * doc_fig1;c_t * image_name=0;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;Escher_ObjectSet_s child_ep_pkgs_space={0}; Escher_ObjectSet_s * child_ep_pkgs = &child_ep_pkgs_space;Escher_ObjectSet_s c_is_space={0}; Escher_ObjectSet_s * c_is = &c_is_space;Escher_ObjectSet_s c_cs_space={0}; Escher_ObjectSet_s * c_cs = &c_cs_space;
    /* LOG::LogInfo( message:( processing package  + ep_pkg.Name ) ) */
    LOG_LogInfo( Escher_stradd( "processing package ", ep_pkg->Name ) );
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:parent_doc_sec, subtitle:Package, title:ep_pkg.Name) */
    doc_sec = docgen_DOC_SEC_op_populate(parent_doc_sec, "Package", ep_pkg->Name);
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:ep_pkg.Descrip) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, ep_pkg->Descrip);
    /* ASSIGN image_name = ::getContainerListForEP_PKG(container_list:Package Diagram, epk:ep_pkg) */
    image_name = Escher_strcpy( image_name, docgen_getContainerListForEP_PKG( "Package Diagram", ep_pkg ) );
    /* ASSIGN doc_fig1 = DOC_FIG::populate(doc_par:doc_par, image_target:image_name, title:( ep_pkg.Name +  Package Diagram )) */
    doc_fig1 = docgen_DOC_FIG_op_populate(doc_par, image_name, Escher_stradd( ep_pkg->Name, " Package Diagram" ));
    /* SELECT many c_cs RELATED BY ep_pkg->PE_PE[R8000]->C_C[R8001] */
    Escher_ClearSet( c_cs );
    {    if ( 0 != ep_pkg ) {
    docgen_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_C_C_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {docgen_C_C * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_cs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) c_cs, R8001_subtype );
    }}}}}
    /* ::docgen_components( c_cs:c_cs, doc_sec:doc_sec ) */
    docgen_docgen_components( c_cs, doc_sec );
    /* SELECT many c_is RELATED BY ep_pkg->PE_PE[R8000]->C_I[R8001] */
    Escher_ClearSet( c_is );
    {    if ( 0 != ep_pkg ) {
    docgen_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_C_I_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {docgen_C_I * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_is, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) c_is, R8001_subtype );
    }}}}}
    /* ::docgen_interfaces( c_is:c_is, doc_sec:doc_sec ) */
    docgen_docgen_interfaces( c_is, doc_sec );
    /* ::docgen_datatypes( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Datatypes ) */
    docgen_docgen_datatypes( doc_sec, ep_pkg, "Datatypes" );
    /* ::docgen_classes( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Classes ) */
    docgen_docgen_classes( doc_sec, ep_pkg, "Classes" );
    /* ::docgen_associations( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Associations ) */
    docgen_docgen_associations( doc_sec, ep_pkg, "Associations" );
    /* ::docgen_functions( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Functions ) */
    docgen_docgen_functions( doc_sec, ep_pkg, "Functions" );
    /* ::docgen_external_entities( doc_sec:doc_sec, ep_pkg:ep_pkg, title:External Entities ) */
    docgen_docgen_external_entities( doc_sec, ep_pkg, "External Entities" );
    /* ::docgen_activity_elements( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Activity Elements ) */
    docgen_docgen_activity_elements( doc_sec, ep_pkg, "Activity Elements" );
    /* ::docgen_interaction_participants( doc_sec:doc_sec, ep_pkg:ep_pkg, title:Interaction Participants ) */
    docgen_docgen_interaction_participants( doc_sec, ep_pkg, "Interaction Participants" );
    /* SELECT many child_ep_pkgs RELATED BY ep_pkg->PE_PE[R8000]->EP_PKG[R8001] */
    Escher_ClearSet( child_ep_pkgs );
    {    if ( 0 != ep_pkg ) {
    docgen_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (docgen_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( docgen_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {docgen_EP_PKG * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) child_ep_pkgs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) child_ep_pkgs, R8001_subtype );
    }}}}}
    /* IF ( not_empty child_ep_pkgs ) */
    if ( ( ! Escher_SetIsEmpty( child_ep_pkgs ) ) ) {
      docgen_DOC_PAR * doc_par1;docgen_DOC_SEC * doc_sec1;
      /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:doc_sec, subtitle:, title:( ep_pkg.Name +  Packages )) */
      doc_sec1 = docgen_DOC_SEC_op_populate(doc_sec, "", Escher_stradd( ep_pkg->Name, " Packages" ));
      /* ASSIGN doc_par1 = DOC_PAR::populate(doc_sec:doc_sec1, predecessor:empty_doc_par, text:Rendered here are the contained package diagrams.) */
      doc_par1 = docgen_DOC_PAR_op_populate(doc_sec1, empty_doc_par, "Rendered here are the contained package diagrams.");
      /* ::docgen_packages( doc_sec:doc_sec1, ep_pkgs:child_ep_pkgs ) */
      docgen_docgen_packages( doc_sec1, child_ep_pkgs );
    }
    Escher_ClearSet( child_ep_pkgs ); Escher_ClearSet( c_is ); Escher_ClearSet( c_cs ); 
  }}}
  Escher_ClearSet( ep_pkgs );
}

/*
 * Domain Function:  docgen_system
 */
void
docgen_docgen_system()
{
  docgen_S_SYS * s_sys=0;docgen_DOC_SEC * prev_system_doc_sec;docgen_DOC_DOC * doc_doc;Escher_ObjectSet_s s_syss_space={0}; Escher_ObjectSet_s * s_syss = &s_syss_space;docgen_DOC_ROW * empty_doc_row=0;docgen_DOC_PAR * empty_doc_par=0;docgen_DOC_SEC * empty_doc_sec=0;
  /* LOG::LogInfo( message:starting docgen_system ) */
  LOG_LogInfo( "starting docgen_system" );
  /* CREATE OBJECT INSTANCE doc_doc OF DOC_DOC */
  doc_doc = (docgen_DOC_DOC *) Escher_CreateInstance( docgen_DOMAIN_ID, docgen_DOC_DOC_CLASS_NUMBER );
  /* ASSIGN doc_doc.title = BridgePoint xtUML Generated Documentation */
  doc_doc->title = Escher_strcpy( doc_doc->title, "BridgePoint xtUML Generated Documentation" );
  /* ASSIGN doc_doc.subtitle =  */
  doc_doc->subtitle = Escher_strcpy( doc_doc->subtitle, "" );
  /* ASSIGN doc_doc.author = xtUML.org */
  doc_doc->author = Escher_strcpy( doc_doc->author, "xtUML.org" );
  /* ASSIGN doc_doc.font_family = Arial */
  doc_doc->font_family = Escher_strcpy( doc_doc->font_family, "Arial" );
  /* ASSIGN doc_doc.company = xtUML.org */
  doc_doc->company = Escher_strcpy( doc_doc->company, "xtUML.org" );
  /* ASSIGN doc_doc.copyright =  */
  doc_doc->copyright = Escher_strcpy( doc_doc->copyright, "" );
  /* ASSIGN doc_doc.filename = doc.xml */
  doc_doc->filename = Escher_strcpy( doc_doc->filename, "doc.xml" );
  /* ASSIGN doc_doc.model_image_ext = .png */
  doc_doc->model_image_ext = Escher_strcpy( doc_doc->model_image_ext, ".png" );
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_row FROM INSTANCES OF DOC_ROW WHERE FALSE */
  empty_doc_row = 0;
  /* ASSIGN prev_system_doc_sec = empty_doc_sec */
  prev_system_doc_sec = empty_doc_sec;
  /* SELECT many s_syss FROM INSTANCES OF S_SYS */
  Escher_CopySet( s_syss, &pG_docgen_S_SYS_extent.active );
  /* FOR EACH s_sys IN s_syss */
  { Escher_Iterator_s iters_sys;
  docgen_S_SYS * iis_sys;
  Escher_IteratorReset( &iters_sys, s_syss );
  while ( (iis_sys = (docgen_S_SYS *)Escher_IteratorNext( &iters_sys )) != 0 ) {
    s_sys = iis_sys; {
    docgen_DOC_SEC * predecessor;docgen_DOC_SEC * parent;docgen_DOC_PAR * fig_doc_par;docgen_DOC_PAR * doc_par;docgen_DOC_SEC * doc_sec;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;
    /* LOG::LogInfo( message:( Processing system  + s_sys.Name ) ) */
    LOG_LogInfo( Escher_stradd( "Processing system ", s_sys->Name ) );
    /* ASSIGN doc_sec = DOC_SEC::populate(parent_doc_sec:empty_doc_sec, subtitle:Generated Documentation, title:s_sys.Name) */
    doc_sec = docgen_DOC_SEC_op_populate(empty_doc_sec, "Generated Documentation", s_sys->Name);
    /* IF ( ( prev_system_doc_sec == empty_doc_sec ) ) */
    if ( ( prev_system_doc_sec == empty_doc_sec ) ) {
      /* RELATE doc_sec TO doc_doc ACROSS R2300 */
      docgen_DOC_SEC_R2300_Link_has_first( doc_doc, doc_sec );
    }
    else {
      /* RELATE prev_system_doc_sec TO doc_sec ACROSS R2306 */
      docgen_DOC_SEC_R2306_Link_follows( prev_system_doc_sec, doc_sec );
    }
    /* ASSIGN prev_system_doc_sec = doc_sec */
    prev_system_doc_sec = doc_sec;
    /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:doc_sec, predecessor:empty_doc_par, text:( ( Please find below generated documentation for the system named  + s_sys.Name ) + . )) */
    doc_par = docgen_DOC_PAR_op_populate(doc_sec, empty_doc_par, Escher_stradd( Escher_stradd( "Please find below generated documentation for the system named ", s_sys->Name ), "." ));
    /* ASSIGN fig_doc_par = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:doc_par, text:) */
    fig_doc_par = docgen_DOC_PAR_op_populate(empty_doc_sec, doc_par, "");
    /* ASSIGN parent = doc_sec */
    parent = doc_sec;
    /* ASSIGN predecessor = empty_doc_sec */
    predecessor = empty_doc_sec;
    /* SELECT many ep_pkgs RELATED BY s_sys->EP_PKG[R1401] */
    Escher_ClearSet( ep_pkgs );
    if ( 0 != s_sys ) {
      Escher_CopySet( ep_pkgs, &s_sys->EP_PKG_R1401_contains );
    }
    /* IF ( not_empty ep_pkgs ) */
    if ( ( ! Escher_SetIsEmpty( ep_pkgs ) ) ) {
      docgen_DOC_SEC * doc_sec1;
      /* LOG::LogInfo( message:processing element packages ) */
      LOG_LogInfo( "processing element packages" );
      /* ASSIGN doc_sec1 = DOC_SEC::populate(parent_doc_sec:doc_sec, subtitle:, title:System-Level Packages) */
      doc_sec1 = docgen_DOC_SEC_op_populate(doc_sec, "", "System-Level Packages");
      /* ::docgen_packages( doc_sec:doc_sec1, ep_pkgs:ep_pkgs ) */
      docgen_docgen_packages( doc_sec1, ep_pkgs );
    }
    else {
      /* LOG::LogInfo( message:no element packages ) */
      LOG_LogInfo( "no element packages" );
    }
    /* LOG::LogInfo( message:ending system ) */
    LOG_LogInfo( "ending system" );
    Escher_ClearSet( ep_pkgs ); 
  }}}
  Escher_ClearSet( s_syss );
}

/*
 * Domain Function:  getContainerListForC_C
 */
c_t *
docgen_getContainerListForC_C( docgen_C_C * p_comp, c_t * p_container_list )
{
  c_t * list=0;docgen_C_C * comp;docgen_EP_PKG * ep_pkg=0;docgen_C_C * c_c=0;
  /* ASSIGN comp = PARAM.comp */
  comp = p_comp;
  /* ASSIGN list = comp.Name */
  list = Escher_strcpy( list, comp->Name );
  /* IF ( (  != PARAM.container_list ) ) */
  if ( ( Escher_strcmp( "", p_container_list ) != 0 ) ) {
    /* ASSIGN list = ( ( list + - ) + PARAM.container_list ) */
    list = Escher_strcpy( list, Escher_stradd( Escher_stradd( list, "-" ), p_container_list ) );
  }
  /* SELECT one c_c RELATED BY comp->PE_PE[R8001]->C_C[R8003] */
  c_c = 0;
  {  if ( 0 != comp ) {
  docgen_PE_PE * PE_PE_R8001 = comp->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  c_c = PE_PE_R8001->C_C_R8003_contained_in;
}}}
  /* SELECT one ep_pkg RELATED BY comp->PE_PE[R8001]->EP_PKG[R8000] */
  ep_pkg = 0;
  {  if ( 0 != comp ) {
  docgen_PE_PE * PE_PE_R8001 = comp->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
  /* IF ( not_empty c_c ) */
  if ( ( 0 != c_c ) ) {
    /* ASSIGN list = ::getContainerListForC_C(comp:c_c, container_list:list) */
    list = Escher_strcpy( list, docgen_getContainerListForC_C( c_c, list ) );
  }
  else if ( ( 0 != ep_pkg ) ) {
    /* ASSIGN list = ::getContainerListForEP_PKG(container_list:list, epk:ep_pkg) */
    list = Escher_strcpy( list, docgen_getContainerListForEP_PKG( list, ep_pkg ) );
  }
  /* RETURN list */
  {c_t * xtumlOALrv = list;
  return xtumlOALrv;}
}

/*
 * Domain Function:  getContainerListForEP_PKG
 */
c_t *
docgen_getContainerListForEP_PKG( c_t * p_container_list, docgen_EP_PKG * p_epk )
{
  c_t * list=0;docgen_EP_PKG * epk;docgen_EP_PKG * ep_pkg=0;docgen_C_C * c_c=0;docgen_S_SYS * system=0;
  /* ASSIGN epk = PARAM.epk */
  epk = p_epk;
  /* ASSIGN list = epk.Name */
  list = Escher_strcpy( list, epk->Name );
  /* IF ( ( PARAM.container_list !=  ) ) */
  if ( ( Escher_strcmp( p_container_list, "" ) != 0 ) ) {
    /* ASSIGN list = ( ( list + - ) + PARAM.container_list ) */
    list = Escher_strcpy( list, Escher_stradd( Escher_stradd( list, "-" ), p_container_list ) );
  }
  /* SELECT one system RELATED BY epk->S_SYS[R1401] */
  system = ( 0 != epk ) ? epk->S_SYS_R1401_directly_contained_under : 0;
  /* SELECT one c_c RELATED BY epk->PE_PE[R8001]->C_C[R8003] */
  c_c = 0;
  {  if ( 0 != epk ) {
  docgen_PE_PE * PE_PE_R8001 = epk->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  c_c = PE_PE_R8001->C_C_R8003_contained_in;
}}}
  /* SELECT one ep_pkg RELATED BY epk->PE_PE[R8001]->EP_PKG[R8000] */
  ep_pkg = 0;
  {  if ( 0 != epk ) {
  docgen_PE_PE * PE_PE_R8001 = epk->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
  /* IF ( not_empty system ) */
  if ( ( 0 != system ) ) {
    /* ASSIGN list = ::getContainerListForS_SYS(container_list:list, sys:system) */
    list = Escher_strcpy( list, docgen_getContainerListForS_SYS( list, system ) );
  }
  else if ( ( 0 != c_c ) ) {
    /* ASSIGN list = ::getContainerListForC_C(comp:c_c, container_list:list) */
    list = Escher_strcpy( list, docgen_getContainerListForC_C( c_c, list ) );
  }
  else if ( ( 0 != ep_pkg ) ) {
    /* ASSIGN list = ::getContainerListForEP_PKG(container_list:list, epk:ep_pkg) */
    list = Escher_strcpy( list, docgen_getContainerListForEP_PKG( list, ep_pkg ) );
  }
  /* RETURN list */
  {c_t * xtumlOALrv = list;
  return xtumlOALrv;}
}

/*
 * Domain Function:  getContainerListForS_SYS
 */
c_t *
docgen_getContainerListForS_SYS( c_t * p_container_list, docgen_S_SYS * p_sys )
{
  c_t * list=0;docgen_S_SYS * sys;
  /* ASSIGN sys = PARAM.sys */
  sys = p_sys;
  /* ASSIGN list = sys.Name */
  list = Escher_strcpy( list, sys->Name );
  /* IF ( (  != PARAM.container_list ) ) */
  if ( ( Escher_strcmp( "", p_container_list ) != 0 ) ) {
    /* ASSIGN list = ( ( list + - ) + PARAM.container_list ) */
    list = Escher_strcpy( list, Escher_stradd( Escher_stradd( list, "-" ), p_container_list ) );
  }
  /* RETURN list */
  {c_t * xtumlOALrv = list;
  return xtumlOALrv;}
}

/*
 * Domain Function:  hoover
 */
void
docgen_hoover()
{
  docgen_O_OBJ * o_obj=0;docgen_DOC_DOC * doc_doc=0;
  /* SELECT any doc_doc FROM INSTANCES OF DOC_DOC */
  doc_doc = (docgen_DOC_DOC *) Escher_SetGetAny( &pG_docgen_DOC_DOC_extent.active );
  /* SELECT any o_obj FROM INSTANCES OF O_OBJ */
  o_obj = (docgen_O_OBJ *) Escher_SetGetAny( &pG_docgen_O_OBJ_extent.active );
}
Escher_idf docgen_instance_dumpers[ docgen_MAX_CLASS_NUMBERS ] = {
  docgen_MSG_M_instancedumper,
  docgen_MSG_A_instancedumper,
  docgen_MSG_O_instancedumper,
  docgen_MSG_B_instancedumper,
  docgen_MSG_E_instancedumper,
  docgen_MSG_F_instancedumper,
  docgen_MSG_BA_instancedumper,
  docgen_MSG_OA_instancedumper,
  docgen_MSG_FA_instancedumper,
  docgen_MSG_EA_instancedumper,
  docgen_MSG_R_instancedumper,
  docgen_MSG_SM_instancedumper,
  docgen_MSG_AM_instancedumper,
  docgen_MSG_ISM_instancedumper,
  docgen_MSG_IAM_instancedumper,
  docgen_MSG_IA_instancedumper,
  docgen_MSG_SIG_instancedumper,
  docgen_MSG_IOP_instancedumper,
  docgen_MSG_EPA_instancedumper,
  docgen_O_OBJ_instancedumper,
  docgen_O_IOBJ_instancedumper,
  docgen_O_ATTR_instancedumper,
  docgen_O_ID_instancedumper,
  docgen_O_OIDA_instancedumper,
  docgen_O_BATTR_instancedumper,
  docgen_O_DBATTR_instancedumper,
  docgen_O_NBATTR_instancedumper,
  docgen_O_RATTR_instancedumper,
  docgen_S_CDT_instancedumper,
  docgen_A_N_instancedumper,
  docgen_A_E_instancedumper,
  docgen_A_ACT_instancedumper,
  docgen_A_OBJ_instancedumper,
  docgen_A_CTL_instancedumper,
  docgen_A_INI_instancedumper,
  docgen_A_AF_instancedumper,
  docgen_A_FF_instancedumper,
  docgen_A_DM_instancedumper,
  docgen_O_REF_instancedumper,
  docgen_A_FJ_instancedumper,
  docgen_A_GA_instancedumper,
  docgen_A_AE_instancedumper,
  docgen_A_SS_instancedumper,
  docgen_O_RTIDA_instancedumper,
  docgen_COMM_LNK_instancedumper,
  docgen_O_TFR_instancedumper,
  docgen_O_TPARM_instancedumper,
  docgen_S_UDT_instancedumper,
  docgen_UC_UCA_instancedumper,
  docgen_UC_BA_instancedumper,
  docgen_UC_G_instancedumper,
  docgen_UC_I_instancedumper,
  docgen_UC_E_instancedumper,
  docgen_S_BRG_instancedumper,
  docgen_A_AP_instancedumper,
  docgen_A_ATE_instancedumper,
  docgen_A_AEA_instancedumper,
  docgen_S_BPARM_instancedumper,
  docgen_EP_PKG_instancedumper,
  docgen_S_EDT_instancedumper,
  docgen_CNST_CSP_instancedumper,
  docgen_CNST_SYC_instancedumper,
  docgen_CNST_LFSC_instancedumper,
  docgen_CNST_LSC_instancedumper,
  docgen_S_ENUM_instancedumper,
  docgen_S_SYNC_instancedumper,
  docgen_S_SPARM_instancedumper,
  docgen_S_SYS_instancedumper,
  docgen_G_EIS_instancedumper,
  docgen_R_REL_instancedumper,
  docgen_R_OIR_instancedumper,
  docgen_R_RTO_instancedumper,
  docgen_R_RGO_instancedumper,
  docgen_R_SIMP_instancedumper,
  docgen_R_PART_instancedumper,
  docgen_R_FORM_instancedumper,
  docgen_R_ASSOC_instancedumper,
  docgen_R_AONE_instancedumper,
  docgen_R_AOTH_instancedumper,
  docgen_R_ASSR_instancedumper,
  docgen_R_SUBSUP_instancedumper,
  docgen_R_SUPER_instancedumper,
  docgen_R_SUB_instancedumper,
  docgen_R_COMP_instancedumper,
  docgen_R_CONE_instancedumper,
  docgen_R_COTH_instancedumper,
  docgen_DOC_DOC_instancedumper,
  docgen_DOC_SEC_instancedumper,
  docgen_DOC_DATE_instancedumper,
  docgen_DOC_HEAD_instancedumper,
  docgen_DOC_FOOT_instancedumper,
  docgen_DOC_ADDR_instancedumper,
  docgen_DOC_PAR_instancedumper,
  docgen_DOC_FIG_instancedumper,
  docgen_DOC_LINK_instancedumper,
  docgen_DOC_TBL_instancedumper,
  docgen_DOC_IMG_instancedumper,
  docgen_DOC_CELL_instancedumper,
  docgen_DOC_ROW_instancedumper,
  docgen_I_LNK_instancedumper,
  docgen_I_EVI_instancedumper,
  docgen_I_AVL_instancedumper,
  docgen_I_INS_instancedumper,
  docgen_I_EXE_instancedumper,
  docgen_I_STF_instancedumper,
  docgen_I_BSF_instancedumper,
  docgen_I_STACK_instancedumper,
  docgen_I_DIV_instancedumper,
  docgen_I_TIM_instancedumper,
  docgen_I_EQE_instancedumper,
  docgen_I_SQE_instancedumper,
  docgen_I_MON_instancedumper,
  docgen_I_VSF_instancedumper,
  docgen_I_LIP_instancedumper,
  docgen_I_RCH_instancedumper,
  docgen_I_CIN_instancedumper,
  docgen_I_ICQE_instancedumper,
  docgen_S_AW_instancedumper,
  docgen_S_IRDT_instancedumper,
  docgen_S_SDT_instancedumper,
  docgen_S_MBR_instancedumper,
  docgen_S_DIM_instancedumper,
  docgen_S_EE_instancedumper,
  docgen_C_C_instancedumper,
  docgen_C_I_instancedumper,
  docgen_C_P_instancedumper,
  docgen_C_R_instancedumper,
  docgen_C_EP_instancedumper,
  docgen_C_AS_instancedumper,
  docgen_C_IO_instancedumper,
  docgen_C_SF_instancedumper,
  docgen_C_PP_instancedumper,
  docgen_C_IR_instancedumper,
  docgen_C_DG_instancedumper,
  docgen_C_PO_instancedumper,
  docgen_C_RID_instancedumper,
  docgen_SPR_REP_instancedumper,
  docgen_SPR_PEP_instancedumper,
  docgen_SPR_RO_instancedumper,
  docgen_SPR_RS_instancedumper,
  docgen_SPR_PO_instancedumper,
  docgen_SPR_PS_instancedumper,
  docgen_CL_IPINS_instancedumper,
  docgen_CL_IP_instancedumper,
  docgen_CL_IR_instancedumper,
  docgen_CL_IIR_instancedumper,
  docgen_CL_IC_instancedumper,
  docgen_CL_POR_instancedumper,
  docgen_S_EEM_instancedumper,
  docgen_SM_SM_instancedumper,
  docgen_SM_STATE_instancedumper,
  docgen_SM_EVT_instancedumper,
  docgen_SM_SEME_instancedumper,
  docgen_SM_NSTXN_instancedumper,
  docgen_SM_EIGN_instancedumper,
  docgen_SM_CH_instancedumper,
  docgen_SM_TXN_instancedumper,
  docgen_SM_NETXN_instancedumper,
  docgen_SM_CRTXN_instancedumper,
  docgen_SM_MOORE_instancedumper,
  docgen_SM_MEALY_instancedumper,
  docgen_SM_MOAH_instancedumper,
  docgen_SM_MEAH_instancedumper,
  docgen_SM_AH_instancedumper,
  docgen_SM_ACT_instancedumper,
  docgen_SM_EVTDI_instancedumper,
  docgen_SM_ISM_instancedumper,
  docgen_SM_ASM_instancedumper,
  docgen_SM_PEVT_instancedumper,
  docgen_SM_SEVT_instancedumper,
  docgen_SM_NLEVT_instancedumper,
  docgen_SM_LEVT_instancedumper,
  docgen_SM_SGEVT_instancedumper,
  docgen_SM_TAH_instancedumper,
  docgen_ACT_BLK_instancedumper,
  docgen_ACT_ACT_instancedumper,
  docgen_ACT_SMT_instancedumper,
  docgen_ACT_AI_instancedumper,
  docgen_ACT_SRW_instancedumper,
  docgen_ACT_SEL_instancedumper,
  docgen_ACT_FOR_instancedumper,
  docgen_ACT_CNV_instancedumper,
  docgen_ACT_REL_instancedumper,
  docgen_ACT_UNR_instancedumper,
  docgen_ACT_E_instancedumper,
  docgen_ACT_FIW_instancedumper,
  docgen_ACT_FIO_instancedumper,
  docgen_ACT_CR_instancedumper,
  docgen_ACT_DEL_instancedumper,
  docgen_ACT_RU_instancedumper,
  docgen_ACT_URU_instancedumper,
  docgen_ACT_IF_instancedumper,
  docgen_ACT_TFM_instancedumper,
  docgen_ACT_WHL_instancedumper,
  docgen_ACT_BRG_instancedumper,
  docgen_ACT_EL_instancedumper,
  docgen_ACT_SR_instancedumper,
  docgen_ACT_RET_instancedumper,
  docgen_ACT_FNC_instancedumper,
  docgen_ACT_IOP_instancedumper,
  docgen_ACT_LNK_instancedumper,
  docgen_ACT_SGN_instancedumper,
  docgen_ACT_CTL_instancedumper,
  docgen_ACT_BRK_instancedumper,
  docgen_ACT_CON_instancedumper,
  docgen_ACT_SAB_instancedumper,
  docgen_ACT_DAB_instancedumper,
  docgen_ACT_FNB_instancedumper,
  docgen_ACT_OPB_instancedumper,
  docgen_ACT_BRB_instancedumper,
  docgen_ACT_POB_instancedumper,
  docgen_ACT_PSB_instancedumper,
  docgen_ACT_ROB_instancedumper,
  docgen_ACT_RSB_instancedumper,
  docgen_ACT_BIC_instancedumper,
  docgen_ACT_TAB_instancedumper,
  docgen_ACT_BIE_instancedumper,
  docgen_E_CEI_instancedumper,
  docgen_E_GEN_instancedumper,
  docgen_E_GPR_instancedumper,
  docgen_E_CEA_instancedumper,
  docgen_E_GAR_instancedumper,
  docgen_E_GEC_instancedumper,
  docgen_E_CEC_instancedumper,
  docgen_E_ESS_instancedumper,
  docgen_E_CES_instancedumper,
  docgen_E_GES_instancedumper,
  docgen_E_CSME_instancedumper,
  docgen_E_GSME_instancedumper,
  docgen_PE_PE_instancedumper,
  docgen_PE_VIS_instancedumper,
  docgen_PE_CVS_instancedumper,
  docgen_PE_SRS_instancedumper,
  docgen_PE_CRS_instancedumper,
  docgen_V_VAL_instancedumper,
  docgen_V_PAR_instancedumper,
  docgen_V_BIN_instancedumper,
  docgen_V_LBO_instancedumper,
  docgen_V_LRL_instancedumper,
  docgen_V_TVL_instancedumper,
  docgen_V_EDV_instancedumper,
  docgen_V_ISR_instancedumper,
  docgen_V_TRV_instancedumper,
  docgen_V_UNY_instancedumper,
  docgen_V_LST_instancedumper,
  docgen_V_LIN_instancedumper,
  docgen_V_AVL_instancedumper,
  docgen_V_IRF_instancedumper,
  docgen_V_BRV_instancedumper,
  docgen_V_VAR_instancedumper,
  docgen_V_INT_instancedumper,
  docgen_V_INS_instancedumper,
  docgen_V_TRN_instancedumper,
  docgen_V_SLR_instancedumper,
  docgen_V_PVL_instancedumper,
  docgen_V_FNV_instancedumper,
  docgen_V_LEN_instancedumper,
  docgen_V_LOC_instancedumper,
  docgen_V_MVL_instancedumper,
  docgen_V_AER_instancedumper,
  docgen_V_ALV_instancedumper,
  docgen_V_MSV_instancedumper,
  docgen_V_EPR_instancedumper,
  docgen_V_SCV_instancedumper,
  docgen_PA_SIC_instancedumper,
  docgen_PA_DIC_instancedumper,
  docgen_SQ_LS_instancedumper,
  docgen_SQ_CIP_instancedumper,
  docgen_SQ_COP_instancedumper,
  docgen_SQ_TM_instancedumper,
  docgen_SQ_TS_instancedumper,
  docgen_SQ_CP_instancedumper,
  docgen_SQ_P_instancedumper,
  docgen_SQ_EEP_instancedumper,
  docgen_SQ_CPA_instancedumper,
  docgen_SQ_AV_instancedumper,
  docgen_SQ_AP_instancedumper,
  docgen_SQ_IA_instancedumper,
  docgen_SQ_FA_instancedumper,
  docgen_SQ_FAV_instancedumper,
  docgen_SQ_IAV_instancedumper,
  docgen_IA_UCP_instancedumper,
  docgen_SQ_PP_instancedumper,
  docgen_S_DT_instancedumper
};
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const docgen_class_info[ docgen_MAX_CLASS_NUMBERS ] = {
  &pG_docgen_MSG_M_extent,
  &pG_docgen_MSG_A_extent,
  &pG_docgen_MSG_O_extent,
  &pG_docgen_MSG_B_extent,
  &pG_docgen_MSG_E_extent,
  &pG_docgen_MSG_F_extent,
  &pG_docgen_MSG_BA_extent,
  &pG_docgen_MSG_OA_extent,
  &pG_docgen_MSG_FA_extent,
  &pG_docgen_MSG_EA_extent,
  &pG_docgen_MSG_R_extent,
  &pG_docgen_MSG_SM_extent,
  &pG_docgen_MSG_AM_extent,
  &pG_docgen_MSG_ISM_extent,
  &pG_docgen_MSG_IAM_extent,
  &pG_docgen_MSG_IA_extent,
  &pG_docgen_MSG_SIG_extent,
  &pG_docgen_MSG_IOP_extent,
  &pG_docgen_MSG_EPA_extent,
  &pG_docgen_O_OBJ_extent,
  &pG_docgen_O_IOBJ_extent,
  &pG_docgen_O_ATTR_extent,
  &pG_docgen_O_ID_extent,
  &pG_docgen_O_OIDA_extent,
  &pG_docgen_O_BATTR_extent,
  &pG_docgen_O_DBATTR_extent,
  &pG_docgen_O_NBATTR_extent,
  &pG_docgen_O_RATTR_extent,
  &pG_docgen_S_CDT_extent,
  &pG_docgen_A_N_extent,
  &pG_docgen_A_E_extent,
  &pG_docgen_A_ACT_extent,
  &pG_docgen_A_OBJ_extent,
  &pG_docgen_A_CTL_extent,
  &pG_docgen_A_INI_extent,
  &pG_docgen_A_AF_extent,
  &pG_docgen_A_FF_extent,
  &pG_docgen_A_DM_extent,
  &pG_docgen_O_REF_extent,
  &pG_docgen_A_FJ_extent,
  &pG_docgen_A_GA_extent,
  &pG_docgen_A_AE_extent,
  &pG_docgen_A_SS_extent,
  &pG_docgen_O_RTIDA_extent,
  &pG_docgen_COMM_LNK_extent,
  &pG_docgen_O_TFR_extent,
  &pG_docgen_O_TPARM_extent,
  &pG_docgen_S_UDT_extent,
  &pG_docgen_UC_UCA_extent,
  &pG_docgen_UC_BA_extent,
  &pG_docgen_UC_G_extent,
  &pG_docgen_UC_I_extent,
  &pG_docgen_UC_E_extent,
  &pG_docgen_S_BRG_extent,
  &pG_docgen_A_AP_extent,
  &pG_docgen_A_ATE_extent,
  &pG_docgen_A_AEA_extent,
  &pG_docgen_S_BPARM_extent,
  &pG_docgen_EP_PKG_extent,
  &pG_docgen_S_EDT_extent,
  &pG_docgen_CNST_CSP_extent,
  &pG_docgen_CNST_SYC_extent,
  &pG_docgen_CNST_LFSC_extent,
  &pG_docgen_CNST_LSC_extent,
  &pG_docgen_S_ENUM_extent,
  &pG_docgen_S_SYNC_extent,
  &pG_docgen_S_SPARM_extent,
  &pG_docgen_S_SYS_extent,
  &pG_docgen_G_EIS_extent,
  &pG_docgen_R_REL_extent,
  &pG_docgen_R_OIR_extent,
  &pG_docgen_R_RTO_extent,
  &pG_docgen_R_RGO_extent,
  &pG_docgen_R_SIMP_extent,
  &pG_docgen_R_PART_extent,
  &pG_docgen_R_FORM_extent,
  &pG_docgen_R_ASSOC_extent,
  &pG_docgen_R_AONE_extent,
  &pG_docgen_R_AOTH_extent,
  &pG_docgen_R_ASSR_extent,
  &pG_docgen_R_SUBSUP_extent,
  &pG_docgen_R_SUPER_extent,
  &pG_docgen_R_SUB_extent,
  &pG_docgen_R_COMP_extent,
  &pG_docgen_R_CONE_extent,
  &pG_docgen_R_COTH_extent,
  &pG_docgen_DOC_DOC_extent,
  &pG_docgen_DOC_SEC_extent,
  &pG_docgen_DOC_DATE_extent,
  &pG_docgen_DOC_HEAD_extent,
  &pG_docgen_DOC_FOOT_extent,
  &pG_docgen_DOC_ADDR_extent,
  &pG_docgen_DOC_PAR_extent,
  &pG_docgen_DOC_FIG_extent,
  &pG_docgen_DOC_LINK_extent,
  &pG_docgen_DOC_TBL_extent,
  &pG_docgen_DOC_IMG_extent,
  &pG_docgen_DOC_CELL_extent,
  &pG_docgen_DOC_ROW_extent,
  &pG_docgen_I_LNK_extent,
  &pG_docgen_I_EVI_extent,
  &pG_docgen_I_AVL_extent,
  &pG_docgen_I_INS_extent,
  &pG_docgen_I_EXE_extent,
  &pG_docgen_I_STF_extent,
  &pG_docgen_I_BSF_extent,
  &pG_docgen_I_STACK_extent,
  &pG_docgen_I_DIV_extent,
  &pG_docgen_I_TIM_extent,
  &pG_docgen_I_EQE_extent,
  &pG_docgen_I_SQE_extent,
  &pG_docgen_I_MON_extent,
  &pG_docgen_I_VSF_extent,
  &pG_docgen_I_LIP_extent,
  &pG_docgen_I_RCH_extent,
  &pG_docgen_I_CIN_extent,
  &pG_docgen_I_ICQE_extent,
  &pG_docgen_S_AW_extent,
  &pG_docgen_S_IRDT_extent,
  &pG_docgen_S_SDT_extent,
  &pG_docgen_S_MBR_extent,
  &pG_docgen_S_DIM_extent,
  &pG_docgen_S_EE_extent,
  &pG_docgen_C_C_extent,
  &pG_docgen_C_I_extent,
  &pG_docgen_C_P_extent,
  &pG_docgen_C_R_extent,
  &pG_docgen_C_EP_extent,
  &pG_docgen_C_AS_extent,
  &pG_docgen_C_IO_extent,
  &pG_docgen_C_SF_extent,
  &pG_docgen_C_PP_extent,
  &pG_docgen_C_IR_extent,
  &pG_docgen_C_DG_extent,
  &pG_docgen_C_PO_extent,
  &pG_docgen_C_RID_extent,
  &pG_docgen_SPR_REP_extent,
  &pG_docgen_SPR_PEP_extent,
  &pG_docgen_SPR_RO_extent,
  &pG_docgen_SPR_RS_extent,
  &pG_docgen_SPR_PO_extent,
  &pG_docgen_SPR_PS_extent,
  &pG_docgen_CL_IPINS_extent,
  &pG_docgen_CL_IP_extent,
  &pG_docgen_CL_IR_extent,
  &pG_docgen_CL_IIR_extent,
  &pG_docgen_CL_IC_extent,
  &pG_docgen_CL_POR_extent,
  &pG_docgen_S_EEM_extent,
  &pG_docgen_SM_SM_extent,
  &pG_docgen_SM_STATE_extent,
  &pG_docgen_SM_EVT_extent,
  &pG_docgen_SM_SEME_extent,
  &pG_docgen_SM_NSTXN_extent,
  &pG_docgen_SM_EIGN_extent,
  &pG_docgen_SM_CH_extent,
  &pG_docgen_SM_TXN_extent,
  &pG_docgen_SM_NETXN_extent,
  &pG_docgen_SM_CRTXN_extent,
  &pG_docgen_SM_MOORE_extent,
  &pG_docgen_SM_MEALY_extent,
  &pG_docgen_SM_MOAH_extent,
  &pG_docgen_SM_MEAH_extent,
  &pG_docgen_SM_AH_extent,
  &pG_docgen_SM_ACT_extent,
  &pG_docgen_SM_EVTDI_extent,
  &pG_docgen_SM_ISM_extent,
  &pG_docgen_SM_ASM_extent,
  &pG_docgen_SM_PEVT_extent,
  &pG_docgen_SM_SEVT_extent,
  &pG_docgen_SM_NLEVT_extent,
  &pG_docgen_SM_LEVT_extent,
  &pG_docgen_SM_SGEVT_extent,
  &pG_docgen_SM_TAH_extent,
  &pG_docgen_ACT_BLK_extent,
  &pG_docgen_ACT_ACT_extent,
  &pG_docgen_ACT_SMT_extent,
  &pG_docgen_ACT_AI_extent,
  &pG_docgen_ACT_SRW_extent,
  &pG_docgen_ACT_SEL_extent,
  &pG_docgen_ACT_FOR_extent,
  &pG_docgen_ACT_CNV_extent,
  &pG_docgen_ACT_REL_extent,
  &pG_docgen_ACT_UNR_extent,
  &pG_docgen_ACT_E_extent,
  &pG_docgen_ACT_FIW_extent,
  &pG_docgen_ACT_FIO_extent,
  &pG_docgen_ACT_CR_extent,
  &pG_docgen_ACT_DEL_extent,
  &pG_docgen_ACT_RU_extent,
  &pG_docgen_ACT_URU_extent,
  &pG_docgen_ACT_IF_extent,
  &pG_docgen_ACT_TFM_extent,
  &pG_docgen_ACT_WHL_extent,
  &pG_docgen_ACT_BRG_extent,
  &pG_docgen_ACT_EL_extent,
  &pG_docgen_ACT_SR_extent,
  &pG_docgen_ACT_RET_extent,
  &pG_docgen_ACT_FNC_extent,
  &pG_docgen_ACT_IOP_extent,
  &pG_docgen_ACT_LNK_extent,
  &pG_docgen_ACT_SGN_extent,
  &pG_docgen_ACT_CTL_extent,
  &pG_docgen_ACT_BRK_extent,
  &pG_docgen_ACT_CON_extent,
  &pG_docgen_ACT_SAB_extent,
  &pG_docgen_ACT_DAB_extent,
  &pG_docgen_ACT_FNB_extent,
  &pG_docgen_ACT_OPB_extent,
  &pG_docgen_ACT_BRB_extent,
  &pG_docgen_ACT_POB_extent,
  &pG_docgen_ACT_PSB_extent,
  &pG_docgen_ACT_ROB_extent,
  &pG_docgen_ACT_RSB_extent,
  &pG_docgen_ACT_BIC_extent,
  &pG_docgen_ACT_TAB_extent,
  &pG_docgen_ACT_BIE_extent,
  &pG_docgen_E_CEI_extent,
  &pG_docgen_E_GEN_extent,
  &pG_docgen_E_GPR_extent,
  &pG_docgen_E_CEA_extent,
  &pG_docgen_E_GAR_extent,
  &pG_docgen_E_GEC_extent,
  &pG_docgen_E_CEC_extent,
  &pG_docgen_E_ESS_extent,
  &pG_docgen_E_CES_extent,
  &pG_docgen_E_GES_extent,
  &pG_docgen_E_CSME_extent,
  &pG_docgen_E_GSME_extent,
  &pG_docgen_PE_PE_extent,
  &pG_docgen_PE_VIS_extent,
  &pG_docgen_PE_CVS_extent,
  &pG_docgen_PE_SRS_extent,
  &pG_docgen_PE_CRS_extent,
  &pG_docgen_V_VAL_extent,
  &pG_docgen_V_PAR_extent,
  &pG_docgen_V_BIN_extent,
  &pG_docgen_V_LBO_extent,
  &pG_docgen_V_LRL_extent,
  &pG_docgen_V_TVL_extent,
  &pG_docgen_V_EDV_extent,
  &pG_docgen_V_ISR_extent,
  &pG_docgen_V_TRV_extent,
  &pG_docgen_V_UNY_extent,
  &pG_docgen_V_LST_extent,
  &pG_docgen_V_LIN_extent,
  &pG_docgen_V_AVL_extent,
  &pG_docgen_V_IRF_extent,
  &pG_docgen_V_BRV_extent,
  &pG_docgen_V_VAR_extent,
  &pG_docgen_V_INT_extent,
  &pG_docgen_V_INS_extent,
  &pG_docgen_V_TRN_extent,
  &pG_docgen_V_SLR_extent,
  &pG_docgen_V_PVL_extent,
  &pG_docgen_V_FNV_extent,
  &pG_docgen_V_LEN_extent,
  &pG_docgen_V_LOC_extent,
  &pG_docgen_V_MVL_extent,
  &pG_docgen_V_AER_extent,
  &pG_docgen_V_ALV_extent,
  &pG_docgen_V_MSV_extent,
  &pG_docgen_V_EPR_extent,
  &pG_docgen_V_SCV_extent,
  &pG_docgen_PA_SIC_extent,
  &pG_docgen_PA_DIC_extent,
  &pG_docgen_SQ_LS_extent,
  &pG_docgen_SQ_CIP_extent,
  &pG_docgen_SQ_COP_extent,
  &pG_docgen_SQ_TM_extent,
  &pG_docgen_SQ_TS_extent,
  &pG_docgen_SQ_CP_extent,
  &pG_docgen_SQ_P_extent,
  &pG_docgen_SQ_EEP_extent,
  &pG_docgen_SQ_CPA_extent,
  &pG_docgen_SQ_AV_extent,
  &pG_docgen_SQ_AP_extent,
  &pG_docgen_SQ_IA_extent,
  &pG_docgen_SQ_FA_extent,
  &pG_docgen_SQ_FAV_extent,
  &pG_docgen_SQ_IAV_extent,
  &pG_docgen_IA_UCP_extent,
  &pG_docgen_SQ_PP_extent,
  &pG_docgen_S_DT_extent
};


void docgen_execute_initialization()
{
}
