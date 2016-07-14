/*----------------------------------------------------------------------------
 * File:  masl2xtuml_IDLINK_bridge.c
 *
 * Description:
 * Methods for bridging to an external entity.
 *
 * External Entity:  IDLINK (IDLINK)
 * 
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_IDLINK_bridge.h"
#include "masl2xtuml_classes.h"
#include "masl2xtuml_IDLINK_bridge.h"
#include "maslin_sys_types.h"

/*
 * Bridge:  stitchID
 */
void
masl2xtuml_IDLINK_stitchID( c_t * p_name, masl2xtuml_PE_PE * p_pe_pe, masl2xtuml_S_DT * p_s_dt, masl2xtuml_S_UDT * p_s_udt )
{
  /* Replace/Insert your implementation code here... */
  masl2xtuml_PE_PE * pe_pe;masl2xtuml_S_DT * s_dt;masl2xtuml_S_UDT * s_udt;
  /* ASSIGN pe_pe = PARAM.pe_pe */
  pe_pe = p_pe_pe;
  /* ASSIGN s_dt = PARAM.s_dt */
  s_dt = p_s_dt;
  /* ASSIGN s_udt = PARAM.s_udt */
  s_udt = p_s_udt;
  /* IF ( empty s_dt ) */
  if ( ( 0 == s_dt ) ) {
    /* SELECT one s_dt RELATED BY pe_pe->S_DT[R8001] */
    s_dt = 0;
    if ( ( 0 != pe_pe ) && ( masl2xtuml_S_DT_CLASS_NUMBER == pe_pe->R8001_object_id ) )    s_dt = ( 0 != pe_pe ) ? (masl2xtuml_S_DT *) pe_pe->R8001_subtype : 0;
  }
  /* IF ( empty s_udt ) */
  if ( ( 0 == s_udt ) ) {
    /* SELECT one s_udt RELATED BY s_dt->S_UDT[R17] */
    s_udt = 0;
    if ( ( 0 != s_dt ) && ( masl2xtuml_S_UDT_CLASS_NUMBER == s_dt->R17_object_id ) )    s_udt = ( 0 != s_dt ) ? (masl2xtuml_S_UDT *) s_dt->R17_subtype : 0;
  }
  /* IF ( ( void == PARAM.name ) ) */
  if ( ( Escher_strcmp( "void", p_name ) == 0 ) ) {
    c_t * s=0;
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed00 */
    s_udt->CDT_DT_ID = 0xba5ed00;
  }
  else if ( ( Escher_strcmp( "boolean", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed01 */
    s_udt->CDT_DT_ID = 0xba5ed01;
  }
  else if ( ( Escher_strcmp( "integer", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "character", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "wcharacter", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "byte", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "long_integer", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "real", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed03 */
    s_udt->CDT_DT_ID = 0xba5ed03;
  }
  else if ( ( Escher_strcmp( "string", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed04 */
    s_udt->CDT_DT_ID = 0xba5ed04;
  }
  else if ( ( Escher_strcmp( "wstring", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed04 */
    s_udt->CDT_DT_ID = 0xba5ed04;
  }
  else if ( ( Escher_strcmp( "date", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed0e */
    s_udt->CDT_DT_ID = 0xba5ed0e;
  }
  else if ( ( Escher_strcmp( "duration", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed02 */
    s_udt->CDT_DT_ID = 0xba5ed02;
  }
  else if ( ( Escher_strcmp( "typestamp", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed10 */
    s_udt->CDT_DT_ID = 0xba5ed10;
  }
  else if ( ( Escher_strcmp( "timer", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed0f */
    s_udt->CDT_DT_ID = 0xba5ed0f;
  }
  else if ( ( Escher_strcmp( "event", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed0a */
    s_udt->CDT_DT_ID = 0xba5ed0a;
  }
  else if ( ( Escher_strcmp( "device", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed11 */
    s_udt->CDT_DT_ID = 0xba5ed11;
  }
  else if ( ( Escher_strcmp( "enum", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed11 */
    s_udt->CDT_DT_ID = 0xba5ed11;
  }
  else if ( ( Escher_strcmp( "structure", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed11 */
    s_udt->CDT_DT_ID = 0xba5ed11;
  }
  else if ( ( Escher_strcmp( "instance", p_name ) == 0 ) ) {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed11 */
    s_udt->CDT_DT_ID = 0xba5ed11;
  }
  else if ( ( Escher_strcmp( "MASLtype", p_name ) == 0 ) ) {
    /* ASSIGN pe_pe.Element_ID = 0xba5ed11 */
    pe_pe->Element_ID = 0xba5ed11;
    /* ASSIGN s_dt.DT_ID = 0xba5ed11 */
    s_dt->DT_ID = 0xba5ed11;
    /* ASSIGN s_udt.DT_ID = 0xba5ed11 */
    s_udt->DT_ID = 0xba5ed11;
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed04 */
    s_udt->CDT_DT_ID = 0xba5ed04;
  }
  else {
    /* ASSIGN s_udt.CDT_DT_ID = 0xba5ed11 */
    s_udt->CDT_DT_ID = 0xba5ed11;
  }
}

