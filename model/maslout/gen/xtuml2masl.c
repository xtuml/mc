/*----------------------------------------------------------------------------
 * File:  xtuml2masl.c
 *
 * UML Component Port Messages
 * Component/Module Name:  xtuml2masl
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "xtuml2masl.h"
#include "V_bridge.h"
#include "TRACE_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "LOG_bridge.h"
#include "FILE_bridge.h"
#include "xtuml2masl_classes.h"

/*
 * Interface:  serial
 * Required Port:  out
 * To Provider Message:  end
 */
void
xtuml2masl_out_end()
{
}

/*
 * Interface:  serial
 * Required Port:  out
 * To Provider Message:  populate
 */
void
xtuml2masl_out_populate( c_t * p_element, c_t * p_value[8] )
{
  /* V::v( element:PARAM.element, value:PARAM.value ) */
  V_v( p_element, p_value );
}
extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  Descrip2description
 */
void
xtuml2masl_Descrip2description( c_t * p_Descrip )
{
  c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN value[6] =  */
  value[6] = Escher_strcpy( value[6], "" );
  /* ASSIGN value[5] =  */
  value[5] = Escher_strcpy( value[5], "" );
  /* ASSIGN value[4] =  */
  value[4] = Escher_strcpy( value[4], "" );
  /* ASSIGN value[3] =  */
  value[3] = Escher_strcpy( value[3], "" );
  /* ASSIGN value[2] =  */
  value[2] = Escher_strcpy( value[2], "" );
  /* ASSIGN value[1] =  */
  value[1] = Escher_strcpy( value[1], "" );
  /* ASSIGN value[0] =  */
  value[0] = Escher_strcpy( value[0], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* IF ( (  != STRING::trim(PARAM.Descrip) ) ) */
  if ( ( Escher_strcmp( "", STRING_trim( p_Descrip ) ) != 0 ) ) {
    /* ASSIGN value[0] = STRING::unescapetics(s:PARAM.Descrip) */
    value[0] = Escher_strcpy( value[0], STRING_unescapetics( p_Descrip ) );
    /* out::populate(element:description, value:value) */
    xtuml2masl_out_populate( "description", value );
  }
}

/*
 * Domain Function:  Descrip2pragma
 */
void
xtuml2masl_Descrip2pragma( c_t * p_text )
{
  c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN value[0] =  */
  value[0] = Escher_strcpy( value[0], "" );
  /* ASSIGN value[1] =  */
  value[1] = Escher_strcpy( value[1], "" );
  /* out::populate(element:pragma, value:value) */
  xtuml2masl_out_populate( "pragma", value );
  /* out::populate(element:pragma, value:emptyvalue) */
  xtuml2masl_out_populate( "pragma", emptyvalue );
}

/*
 * Domain Function:  association2relationship
 */
void
xtuml2masl_association2relationship( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_R_REL * r_rel=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s r_rels_space={0}; Escher_ObjectSet_s * r_rels = &r_rels_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many r_rels RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->R_REL[R8001] */
  Escher_ClearSet( r_rels );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_R_REL_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_R_REL * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) r_rels, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) r_rels, R8001_subtype );
  }}}}}}}
  /* FOR EACH r_rel IN r_rels */
  { Escher_Iterator_s iterr_rel;
  xtuml2masl_R_REL * iir_rel;
  Escher_IteratorReset( &iterr_rel, r_rels );
  while ( (iir_rel = (xtuml2masl_R_REL *)Escher_IteratorNext( &iterr_rel )) != 0 ) {
    r_rel = iir_rel; {
    xtuml2masl_R_SUBSUP * r_subsup=0;xtuml2masl_R_ASSOC * r_assoc=0;xtuml2masl_R_SIMP * r_simp=0;
    /* ASSIGN value[0] =  */
    value[0] = Escher_strcpy( value[0], "" );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* ASSIGN value[2] =  */
    value[2] = Escher_strcpy( value[2], "" );
    /* ASSIGN value[3] =  */
    value[3] = Escher_strcpy( value[3], "" );
    /* ASSIGN value[4] =  */
    value[4] = Escher_strcpy( value[4], "" );
    /* ASSIGN value[5] =  */
    value[5] = Escher_strcpy( value[5], "" );
    /* ASSIGN value[6] =  */
    value[6] = Escher_strcpy( value[6], "" );
    /* ASSIGN value[7] =  */
    value[7] = Escher_strcpy( value[7], "" );
    /* ASSIGN value[0] = ( R + STRING::itoa(r_rel.Numb) ) */
    value[0] = Escher_strcpy( value[0], Escher_stradd( "R", STRING_itoa( r_rel->Numb ) ) );
    /* SELECT one r_simp RELATED BY r_rel->R_SIMP[R206] */
    r_simp = 0;
    if ( ( 0 != r_rel ) && ( xtuml2masl_R_SIMP_CLASS_NUMBER == r_rel->R206_object_id ) )    r_simp = ( 0 != r_rel ) ? (xtuml2masl_R_SIMP *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_simp ) */
    if ( ( 0 != r_simp ) ) {
      /* out::populate(element:regularrel, value:value) */
      xtuml2masl_out_populate( "regularrel", value );
      /* ::simpleass2regularrel( c_c:c_c, r_simp:r_simp ) */
      xtuml2masl_simpleass2regularrel( c_c, r_simp );
      /* ASSIGN r_rel.Descrip = ::parsepragmas(list:, s:r_rel.Descrip) */
      r_rel->Descrip = Escher_strcpy( r_rel->Descrip, xtuml2masl_parsepragmas( "", r_rel->Descrip ) );
      /* ::Descrip2description( Descrip:r_rel.Descrip ) */
      xtuml2masl_Descrip2description( r_rel->Descrip );
      /* out::populate(element:regularrel, value:emptyvalue) */
      xtuml2masl_out_populate( "regularrel", emptyvalue );
    }
    /* SELECT one r_assoc RELATED BY r_rel->R_ASSOC[R206] */
    r_assoc = 0;
    if ( ( 0 != r_rel ) && ( xtuml2masl_R_ASSOC_CLASS_NUMBER == r_rel->R206_object_id ) )    r_assoc = ( 0 != r_rel ) ? (xtuml2masl_R_ASSOC *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_assoc ) */
    if ( ( 0 != r_assoc ) ) {
      xtuml2masl_O_OBJ * o_obj=0;
      /* SELECT one o_obj RELATED BY r_assoc->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
      o_obj = 0;
      {      if ( 0 != r_assoc ) {
      xtuml2masl_R_ASSR * R_ASSR_R211_uses_a_formalizer = r_assoc->R_ASSR_R211_uses_a_formalizer;
      if ( 0 != R_ASSR_R211_uses_a_formalizer ) {
      xtuml2masl_R_RGO * R_RGO_R205 = R_ASSR_R211_uses_a_formalizer->R_RGO_R205;
      if ( 0 != R_RGO_R205 ) {
      xtuml2masl_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}}
      /* ASSIGN value[1] = c_c.Name */
      value[1] = Escher_strcpy( value[1], c_c->Name );
      /* ASSIGN value[2] = o_obj.Name */
      value[2] = Escher_strcpy( value[2], o_obj->Name );
      /* out::populate(element:associative, value:value) */
      xtuml2masl_out_populate( "associative", value );
      /* ::associative2associative( c_c:c_c, r_assoc:r_assoc ) */
      xtuml2masl_associative2associative( c_c, r_assoc );
      /* out::populate(element:associative, value:value) */
      xtuml2masl_out_populate( "associative", value );
      /* ASSIGN r_rel.Descrip = ::parsepragmas(list:, s:r_rel.Descrip) */
      r_rel->Descrip = Escher_strcpy( r_rel->Descrip, xtuml2masl_parsepragmas( "", r_rel->Descrip ) );
      /* ::Descrip2description( Descrip:r_rel.Descrip ) */
      xtuml2masl_Descrip2description( r_rel->Descrip );
      /* out::populate(element:associative, value:emptyvalue) */
      xtuml2masl_out_populate( "associative", emptyvalue );
    }
    /* SELECT one r_subsup RELATED BY r_rel->R_SUBSUP[R206] */
    r_subsup = 0;
    if ( ( 0 != r_rel ) && ( xtuml2masl_R_SUBSUP_CLASS_NUMBER == r_rel->R206_object_id ) )    r_subsup = ( 0 != r_rel ) ? (xtuml2masl_R_SUBSUP *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_subsup ) */
    if ( ( 0 != r_subsup ) ) {
      /* out::populate(element:subsuper, value:value) */
      xtuml2masl_out_populate( "subsuper", value );
      /* ::subsuper2subsuper( c_c:c_c, r_subsup:r_subsup ) */
      xtuml2masl_subsuper2subsuper( c_c, r_subsup );
      /* ASSIGN r_rel.Descrip = ::parsepragmas(list:, s:r_rel.Descrip) */
      r_rel->Descrip = Escher_strcpy( r_rel->Descrip, xtuml2masl_parsepragmas( "", r_rel->Descrip ) );
      /* ::Descrip2description( Descrip:r_rel.Descrip ) */
      xtuml2masl_Descrip2description( r_rel->Descrip );
      /* out::populate(element:subsuper, value:emptyvalue) */
      xtuml2masl_out_populate( "subsuper", emptyvalue );
    }
  }}}
  Escher_ClearSet( r_rels ); 
}

/*
 * Domain Function:  associative2associative
 */
void
xtuml2masl_associative2associative( xtuml2masl_C_C * p_c_c, xtuml2masl_R_ASSOC * p_r_assoc )
{
  c_t * othmult=0;c_t * onemult=0;c_t * othcond=0;c_t * onecond=0;c_t * othphrase=0;c_t * onephrase=0;c_t * othname=0;c_t * onename=0;xtuml2masl_R_ASSOC * r_assoc;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};xtuml2masl_O_OBJ * ass_o_obj=0;xtuml2masl_R_ASSR * r_assr=0;xtuml2masl_O_OBJ * oth_o_obj=0;xtuml2masl_R_AOTH * r_aoth=0;xtuml2masl_O_OBJ * one_o_obj=0;xtuml2masl_R_AONE * r_aone=0;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN r_assoc = PARAM.r_assoc */
  r_assoc = p_r_assoc;
  /* SELECT one r_aone RELATED BY r_assoc->R_AONE[R209] */
  r_aone = ( 0 != r_assoc ) ? r_assoc->R_AONE_R209_relates : 0;
  /* SELECT one one_o_obj RELATED BY r_aone->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] */
  one_o_obj = 0;
  {  if ( 0 != r_aone ) {
  xtuml2masl_R_RTO * R_RTO_R204 = r_aone->R_RTO_R204;
  if ( 0 != R_RTO_R204 ) {
  xtuml2masl_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  one_o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}
  /* SELECT one r_aoth RELATED BY r_assoc->R_AOTH[R210] */
  r_aoth = ( 0 != r_assoc ) ? r_assoc->R_AOTH_R210_relates : 0;
  /* SELECT one oth_o_obj RELATED BY r_aoth->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] */
  oth_o_obj = 0;
  {  if ( 0 != r_aoth ) {
  xtuml2masl_R_RTO * R_RTO_R204 = r_aoth->R_RTO_R204;
  if ( 0 != R_RTO_R204 ) {
  xtuml2masl_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  oth_o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}
  /* SELECT one r_assr RELATED BY r_assoc->R_ASSR[R211] */
  r_assr = ( 0 != r_assoc ) ? r_assoc->R_ASSR_R211_uses_a_formalizer : 0;
  /* SELECT one ass_o_obj RELATED BY r_assr->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
  ass_o_obj = 0;
  {  if ( 0 != r_assr ) {
  xtuml2masl_R_RGO * R_RGO_R205 = r_assr->R_RGO_R205;
  if ( 0 != R_RGO_R205 ) {
  xtuml2masl_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  ass_o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}
  /* ASSIGN onename = one_o_obj.Name */
  onename = Escher_strcpy( onename, one_o_obj->Name );
  /* ASSIGN othname = oth_o_obj.Name */
  othname = Escher_strcpy( othname, oth_o_obj->Name );
  /* ASSIGN onephrase = T::underscore(s:r_aone.Txt_Phrs) */
  onephrase = Escher_strcpy( onephrase, T_underscore( r_aone->Txt_Phrs ) );
  /* ASSIGN othphrase = T::underscore(s:r_aoth.Txt_Phrs) */
  othphrase = Escher_strcpy( othphrase, T_underscore( r_aoth->Txt_Phrs ) );
  /* ASSIGN onecond = conditionally */
  onecond = Escher_strcpy( onecond, "conditionally" );
  /* ASSIGN othcond = conditionally */
  othcond = Escher_strcpy( othcond, "conditionally" );
  /* ASSIGN onemult = many */
  onemult = Escher_strcpy( onemult, "many" );
  /* ASSIGN othmult = many */
  othmult = Escher_strcpy( othmult, "many" );
  /* IF ( ( 0 == r_aone.Cond ) ) */
  if ( ( 0 == r_aone->Cond ) ) {
    /* ASSIGN onecond = unconditionally */
    onecond = Escher_strcpy( onecond, "unconditionally" );
  }
  /* IF ( ( 0 == r_aoth.Cond ) ) */
  if ( ( 0 == r_aoth->Cond ) ) {
    /* ASSIGN othcond = unconditionally */
    othcond = Escher_strcpy( othcond, "unconditionally" );
  }
  /* IF ( ( 0 == r_aone.Mult ) ) */
  if ( ( 0 == r_aone->Mult ) ) {
    /* ASSIGN onemult = one */
    onemult = Escher_strcpy( onemult, "one" );
  }
  /* IF ( ( 0 == r_aoth.Mult ) ) */
  if ( ( 0 == r_aoth->Mult ) ) {
    /* ASSIGN othmult = one */
    othmult = Escher_strcpy( othmult, "one" );
  }
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = onename */
  value[1] = Escher_strcpy( value[1], onename );
  /* ASSIGN value[2] = othphrase */
  value[2] = Escher_strcpy( value[2], othphrase );
  /* ASSIGN value[3] = othcond */
  value[3] = Escher_strcpy( value[3], othcond );
  /* ASSIGN value[4] = othmult */
  value[4] = Escher_strcpy( value[4], othmult );
  /* ASSIGN value[5] = c_c.Name */
  value[5] = Escher_strcpy( value[5], c_c->Name );
  /* ASSIGN value[6] = othname */
  value[6] = Escher_strcpy( value[6], othname );
  /* out::populate(element:participation, value:value) */
  xtuml2masl_out_populate( "participation", value );
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = othname */
  value[1] = Escher_strcpy( value[1], othname );
  /* ASSIGN value[2] = onephrase */
  value[2] = Escher_strcpy( value[2], onephrase );
  /* ASSIGN value[3] = onecond */
  value[3] = Escher_strcpy( value[3], onecond );
  /* ASSIGN value[4] = onemult */
  value[4] = Escher_strcpy( value[4], onemult );
  /* ASSIGN value[5] = c_c.Name */
  value[5] = Escher_strcpy( value[5], c_c->Name );
  /* ASSIGN value[6] = onename */
  value[6] = Escher_strcpy( value[6], onename );
  /* out::populate(element:participation, value:value) */
  xtuml2masl_out_populate( "participation", value );
  /* out::populate(element:participation, value:emptyvalue) */
  xtuml2masl_out_populate( "participation", emptyvalue );
}

/*
 * Domain Function:  attribute2attribute
 */
void
xtuml2masl_attribute2attribute( xtuml2masl_C_C * p_c_c, xtuml2masl_O_OBJ * p_o_obj )
{
  xtuml2masl_O_ATTR * o_attr=0;xtuml2masl_C_C * c_c;xtuml2masl_O_OBJ * o_obj;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many o_attrs RELATED BY o_obj->O_ATTR[R102] */
  Escher_ClearSet( o_attrs );
  if ( 0 != o_obj ) {
    Escher_CopySet( o_attrs, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
  }
  /* FOR EACH o_attr IN o_attrs */
  { Escher_Iterator_s itero_attr;
  xtuml2masl_O_ATTR * iio_attr;
  Escher_IteratorReset( &itero_attr, o_attrs );
  while ( (iio_attr = (xtuml2masl_O_ATTR *)Escher_IteratorNext( &itero_attr )) != 0 ) {
    o_attr = iio_attr; {
    xtuml2masl_O_RATTR * o_rattr=0;xtuml2masl_S_DT * s_dt=0;
    /* SELECT one s_dt RELATED BY o_attr->S_DT[R114] */
    s_dt = ( 0 != o_attr ) ? o_attr->S_DT_R114_defines_type_of : 0;
    /* SELECT one o_rattr RELATED BY o_attr->O_RATTR[R106] */
    o_rattr = 0;
    if ( ( 0 != o_attr ) && ( xtuml2masl_O_RATTR_CLASS_NUMBER == o_attr->R106_object_id ) )    o_rattr = ( 0 != o_attr ) ? (xtuml2masl_O_RATTR *) o_attr->R106_subtype : 0;
    /* IF ( not_empty o_rattr ) */
    if ( ( 0 != o_rattr ) ) {
      /* SELECT one s_dt RELATED BY o_rattr->O_BATTR[R113]->O_ATTR[R106]->S_DT[R114] */
      s_dt = 0;
      {      if ( 0 != o_rattr ) {
      xtuml2masl_O_BATTR * O_BATTR_R113_navigates_back_to = o_rattr->O_BATTR_R113_navigates_back_to;
      if ( 0 != O_BATTR_R113_navigates_back_to ) {
      xtuml2masl_O_ATTR * O_ATTR_R106 = O_BATTR_R113_navigates_back_to->O_ATTR_R106;
      if ( 0 != O_ATTR_R106 ) {
      s_dt = O_ATTR_R106->S_DT_R114_defines_type_of;
}}}}
    }
    /* IF ( ( ( current_state == o_attr.Name ) and ( state<State_Model> == s_dt.Name ) ) ) */
    if ( ( ( Escher_strcmp( "current_state", o_attr->Name ) == 0 ) && ( Escher_strcmp( "state<State_Model>", s_dt->Name ) == 0 ) ) ) {
    }
    else {
      xtuml2masl_O_REF * o_ref=0;xtuml2masl_O_OIDA * o_oida=0;
      /* ASSIGN value[0] = o_attr.Name */
      value[0] = Escher_strcpy( value[0], o_attr->Name );
      /* ASSIGN value[1] =  */
      value[1] = Escher_strcpy( value[1], "" );
      /* SELECT any o_oida RELATED BY o_attr->O_OIDA[R105] WHERE ( ( SELECTED.Oid_ID == 0 ) ) */
      o_oida = 0;
      if ( 0 != o_attr ) {
        xtuml2masl_O_OIDA * selected;
        Escher_Iterator_s iO_OIDA_R105;
        Escher_IteratorReset( &iO_OIDA_R105, &o_attr->O_OIDA_R105 );
        while ( 0 != ( selected = (xtuml2masl_O_OIDA *) Escher_IteratorNext( &iO_OIDA_R105 ) ) ) {
          if ( ( selected->Oid_ID == 0 ) ) {
            o_oida = selected;
            break;
      }}}
      /* IF ( not_empty o_oida ) */
      if ( ( 0 != o_oida ) ) {
        /* ASSIGN value[1] = preferred */
        value[1] = Escher_strcpy( value[1], "preferred" );
      }
      /* ASSIGN value[2] =  */
      value[2] = Escher_strcpy( value[2], "" );
      /* IF ( ( ( ( unique_id == s_dt.Name ) or ( MASLunique == s_dt.Name ) ) and empty o_rattr ) ) */
      if ( ( ( ( Escher_strcmp( "unique_id", s_dt->Name ) == 0 ) || ( Escher_strcmp( "MASLunique", s_dt->Name ) == 0 ) ) && ( 0 == o_rattr ) ) ) {
        /* ASSIGN value[2] = unique */
        value[2] = Escher_strcpy( value[2], "unique" );
      }
      /* IF ( ( inst_ref<Timer> == value[2] ) ) */
      if ( ( Escher_strcmp( "inst_ref<Timer>", value[2] ) == 0 ) ) {
        /* ASSIGN value[2] = inst_refTimer */
        value[2] = Escher_strcpy( value[2], "inst_refTimer" );
      }
      /* out::populate(element:attribute, value:value) */
      xtuml2masl_out_populate( "attribute", value );
      /* ASSIGN value[1] =  */
      value[1] = Escher_strcpy( value[1], "" );
      /* ASSIGN value[2] =  */
      value[2] = Escher_strcpy( value[2], "" );
      /* ASSIGN value[0] = o_attr.DefaultValue */
      value[0] = Escher_strcpy( value[0], o_attr->DefaultValue );
      /* IF ( (  == o_attr.DefaultValue ) ) */
      if ( ( Escher_strcmp( "", o_attr->DefaultValue ) == 0 ) ) {
        /* ASSIGN value[0] = s_dt.DefaultValue */
        value[0] = Escher_strcpy( value[0], s_dt->DefaultValue );
      }
      /* IF ( (  != value[0] ) ) */
      if ( ( Escher_strcmp( "", value[0] ) != 0 ) ) {
        /* out::populate(element:expression, value:value) */
        xtuml2masl_out_populate( "expression", value );
      }
      /* IF ( ( s_dt.Name == MASLunique ) ) */
      if ( ( Escher_strcmp( s_dt->Name, "MASLunique" ) == 0 ) ) {
        /* ASSIGN value[0] = integer */
        value[0] = Escher_strcpy( value[0], "integer" );
      }
      else {
        /* ASSIGN value[0] = s_dt.Name */
        value[0] = Escher_strcpy( value[0], s_dt->Name );
      }
      /* out::populate(element:typeref, value:value) */
      xtuml2masl_out_populate( "typeref", value );
      /* out::populate(element:typeref, value:emptyvalue) */
      xtuml2masl_out_populate( "typeref", emptyvalue );
      /* SELECT any o_ref RELATED BY o_attr->O_RATTR[R106]->O_REF[R108] */
      o_ref = 0;
      {      if ( 0 != o_attr ) {
      xtuml2masl_O_RATTR * R106_subtype = (xtuml2masl_O_RATTR *) o_attr->R106_subtype;
      if ( 0 != R106_subtype )      if ( ( 0 != o_attr ) && ( xtuml2masl_O_RATTR_CLASS_NUMBER == o_attr->R106_object_id ) ) {
      o_ref = ( 0 != R106_subtype ) ? (xtuml2masl_O_REF *) Escher_SetGetAny( &R106_subtype->O_REF_R108_resolves_ ) : 0;
}}}
      /* IF ( not_empty o_ref ) */
      if ( ( 0 != o_ref ) ) {
        c_t * textphrase=0;xtuml2masl_R_PART * r_part=0;xtuml2masl_O_OBJ * rto_obj=0;xtuml2masl_R_REL * rel=0;xtuml2masl_R_RTO * rto=0;
        /* SELECT one rto RELATED BY o_ref->O_RTIDA[R111]->R_RTO[R110] */
        rto = 0;
        {        if ( 0 != o_ref ) {
        xtuml2masl_O_RTIDA * O_RTIDA_R111_refers_across_association_via = o_ref->O_RTIDA_R111_refers_across_association_via;
        if ( 0 != O_RTIDA_R111_refers_across_association_via ) {
        rto = O_RTIDA_R111_refers_across_association_via->R_RTO_R110_identifies_for_this_association;
}}}
        /* SELECT one rel RELATED BY rto->R_OIR[R203]->R_REL[R201] */
        rel = 0;
        {        if ( 0 != rto ) {
        xtuml2masl_R_OIR * R_OIR_R203 = rto->R_OIR_R203;
        if ( 0 != R_OIR_R203 ) {
        rel = R_OIR_R203->R_REL_R201_has_instance_associations_abstracted;
}}}
        /* SELECT one rto_obj RELATED BY rto->R_OIR[R203]->O_OBJ[R201] */
        rto_obj = 0;
        {        if ( 0 != rto ) {
        xtuml2masl_R_OIR * R_OIR_R203 = rto->R_OIR_R203;
        if ( 0 != R_OIR_R203 ) {
        rto_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}
        /* ASSIGN value[0] = ( R + STRING::itoa(rel.Numb) ) */
        value[0] = Escher_strcpy( value[0], Escher_stradd( "R", STRING_itoa( rel->Numb ) ) );
        /* ASSIGN value[1] =  */
        value[1] = Escher_strcpy( value[1], "" );
        /* ASSIGN textphrase =  */
        textphrase = Escher_strcpy( textphrase, "" );
        /* SELECT one r_part RELATED BY rto->R_PART[R204] */
        r_part = 0;
        if ( ( 0 != rto ) && ( xtuml2masl_R_PART_CLASS_NUMBER == rto->R204_object_id ) )        r_part = ( 0 != rto ) ? (xtuml2masl_R_PART *) rto->R204_subtype : 0;
        /* IF ( not_empty r_part ) */
        if ( ( 0 != r_part ) ) {
          /* ASSIGN textphrase = r_part.Txt_Phrs */
          textphrase = Escher_strcpy( textphrase, r_part->Txt_Phrs );
        }
        else {
          xtuml2masl_R_AONE * r_aone=0;
          /* SELECT one r_aone RELATED BY rto->R_AONE[R204] */
          r_aone = 0;
          if ( ( 0 != rto ) && ( xtuml2masl_R_AONE_CLASS_NUMBER == rto->R204_object_id ) )          r_aone = ( 0 != rto ) ? (xtuml2masl_R_AONE *) rto->R204_subtype : 0;
          /* IF ( not_empty r_aone ) */
          if ( ( 0 != r_aone ) ) {
            /* ASSIGN textphrase = r_aone.Txt_Phrs */
            textphrase = Escher_strcpy( textphrase, r_aone->Txt_Phrs );
          }
          else {
            xtuml2masl_R_AOTH * r_aoth=0;
            /* SELECT one r_aoth RELATED BY rto->R_AOTH[R204] */
            r_aoth = 0;
            if ( ( 0 != rto ) && ( xtuml2masl_R_AOTH_CLASS_NUMBER == rto->R204_object_id ) )            r_aoth = ( 0 != rto ) ? (xtuml2masl_R_AOTH *) rto->R204_subtype : 0;
            /* IF ( not_empty r_aoth ) */
            if ( ( 0 != r_aoth ) ) {
              /* ASSIGN textphrase = r_aoth.Txt_Phrs */
              textphrase = Escher_strcpy( textphrase, r_aoth->Txt_Phrs );
            }
          }
        }
        /* IF ( (  == textphrase ) ) */
        if ( ( Escher_strcmp( "", textphrase ) == 0 ) ) {
          xtuml2masl_R_SUPER * r_sup=0;
          /* SELECT one r_sup RELATED BY rto->R_SUPER[R204] */
          r_sup = 0;
          if ( ( 0 != rto ) && ( xtuml2masl_R_SUPER_CLASS_NUMBER == rto->R204_object_id ) )          r_sup = ( 0 != rto ) ? (xtuml2masl_R_SUPER *) rto->R204_subtype : 0;
          /* IF ( not_empty r_sup ) */
          if ( ( 0 != r_sup ) ) {
            /* ASSIGN value[2] =  */
            value[2] = Escher_strcpy( value[2], "" );
          }
          else {
            /* ASSIGN value[2] = rto_obj.Name */
            value[2] = Escher_strcpy( value[2], rto_obj->Name );
          }
          /* ASSIGN value[3] =  */
          value[3] = Escher_strcpy( value[3], "" );
        }
        else {
          /* ASSIGN value[2] = textphrase */
          value[2] = Escher_strcpy( value[2], textphrase );
          /* ASSIGN value[3] = rto_obj.Name */
          value[3] = Escher_strcpy( value[3], rto_obj->Name );
        }
        /* ASSIGN value[4] = o_attr.Name */
        value[4] = Escher_strcpy( value[4], o_attr->Name );
        /* out::populate(element:referential, value:value) */
        xtuml2masl_out_populate( "referential", value );
        /* ASSIGN value[1] =  */
        value[1] = Escher_strcpy( value[1], "" );
        /* ASSIGN value[2] =  */
        value[2] = Escher_strcpy( value[2], "" );
        /* ASSIGN value[3] =  */
        value[3] = Escher_strcpy( value[3], "" );
        /* ASSIGN value[4] =  */
        value[4] = Escher_strcpy( value[4], "" );
      }
      /* ASSIGN o_attr.Descrip = ::parsepragmas(list:, s:o_attr.Descrip) */
      o_attr->Descrip = Escher_strcpy( o_attr->Descrip, xtuml2masl_parsepragmas( "", o_attr->Descrip ) );
      /* ::Descrip2description( Descrip:o_attr.Descrip ) */
      xtuml2masl_Descrip2description( o_attr->Descrip );
      /* out::populate(element:attribute, value:emptyvalue) */
      xtuml2masl_out_populate( "attribute", emptyvalue );
    }
  }}}
  Escher_ClearSet( o_attrs ); 
}

/*
 * Domain Function:  body2code_block
 */
void
xtuml2masl_body2code_block( c_t * p_name, c_t * p_text )
{
  c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN value[0] = PARAM.text */
  value[0] = Escher_strcpy( value[0], p_text );
  /* out::populate(element:codeblock, value:value) */
  xtuml2masl_out_populate( "codeblock", value );
  /* out::populate(element:codeblock, value:emptyvalue) */
  xtuml2masl_out_populate( "codeblock", emptyvalue );
}

/*
 * Domain Function:  bridge2routine
 */
void
xtuml2masl_bridge2routine( xtuml2masl_C_C * p_c_c, xtuml2masl_S_EE * p_s_ee )
{
  xtuml2masl_S_BRG * s_brg=0;xtuml2masl_S_EE * s_ee;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s s_brgs_space={0}; Escher_ObjectSet_s * s_brgs = &s_brgs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN s_ee = PARAM.s_ee */
  s_ee = p_s_ee;
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = terminator */
  value[1] = Escher_strcpy( value[1], "terminator" );
  /* SELECT many s_brgs RELATED BY s_ee->S_BRG[R19] */
  Escher_ClearSet( s_brgs );
  if ( 0 != s_ee ) {
    Escher_CopySet( s_brgs, &s_ee->S_BRG_R19_uses );
  }
  /* FOR EACH s_brg IN s_brgs */
  { Escher_Iterator_s iters_brg;
  xtuml2masl_S_BRG * iis_brg;
  Escher_IteratorReset( &iters_brg, s_brgs );
  while ( (iis_brg = (xtuml2masl_S_BRG *)Escher_IteratorNext( &iters_brg )) != 0 ) {
    s_brg = iis_brg; {
    c_t * sig=0;c_t * path=0;xtuml2masl_S_BPARM * first_s_bparm;xtuml2masl_EP_PKG * ep_pkg=0;xtuml2masl_S_DT * s_dt=0;xtuml2masl_S_BPARM * s_bparm=0;
    /* ASSIGN value[2] = private */
    value[2] = Escher_strcpy( value[2], "private" );
    /* ASSIGN value[3] = s_brg.Name */
    value[3] = Escher_strcpy( value[3], s_brg->Name );
    /* out::populate(element:routine, value:value) */
    xtuml2masl_out_populate( "routine", value );
    /* SELECT any s_bparm RELATED BY s_brg->S_BPARM[R21] */
    s_bparm = ( 0 != s_brg ) ? (xtuml2masl_S_BPARM *) Escher_SetGetAny( &s_brg->S_BPARM_R21_is_part_of ) : 0;
    /* ASSIGN first_s_bparm = s_bparm */
    first_s_bparm = s_bparm;
    /* WHILE ( not_empty s_bparm ) */
    while ( ( 0 != s_bparm ) ) {
      /* ASSIGN first_s_bparm = s_bparm */
      first_s_bparm = s_bparm;
      /* SELECT one s_bparm RELATED BY s_bparm->S_BPARM[R55.succeeds] */
      s_bparm = ( 0 != s_bparm ) ? s_bparm->S_BPARM_R55_succeeds : 0;
    }
    /* ::parameterS_BPARM2parameter( s_bparm:first_s_bparm ) */
    xtuml2masl_parameterS_BPARM2parameter( first_s_bparm );
    /* SELECT one s_dt RELATED BY s_brg->S_DT[R20] */
    s_dt = ( 0 != s_brg ) ? s_brg->S_DT_R20_return_value_defined_by : 0;
    /* IF ( not_empty s_dt ) */
    if ( ( 0 != s_dt ) ) {
      /* IF ( ( void != s_dt.Name ) ) */
      if ( ( Escher_strcmp( "void", s_dt->Name ) != 0 ) ) {
        /* ASSIGN value[0] = s_dt.Name */
        value[0] = Escher_strcpy( value[0], s_dt->Name );
        /* out::populate(element:typeref, value:value) */
        xtuml2masl_out_populate( "typeref", value );
        /* out::populate(element:typeref, value:emptyvalue) */
        xtuml2masl_out_populate( "typeref", emptyvalue );
      }
    }
    /* SELECT one ep_pkg RELATED BY s_ee->PE_PE[R8001]->EP_PKG[R8000] */
    ep_pkg = 0;
    {    if ( 0 != s_ee ) {
    xtuml2masl_PE_PE * PE_PE_R8001 = s_ee->PE_PE_R8001;
    if ( 0 != PE_PE_R8001 ) {
    ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
    /* ASSIGN path = ::package_get_path(ep_pkg:ep_pkg) */
    path = Escher_strcpy( path, xtuml2masl_package_get_path( ep_pkg ) );
    /* ASSIGN sig = ::underscore_signature(::bridge_getsignature(flavor:1, s_brg:s_brg)) */
    sig = Escher_strcpy( sig, xtuml2masl_underscore_signature( xtuml2masl_bridge_getsignature( 1, s_brg ) ) );
    /* ::body2code_block( name:( ( ( ( path + / ) + s_ee.Name ) + _ ) + sig ), STRING::unescapetics(s:s_brg.Action_Semantics_internal) ) */
    xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( path, "/" ), s_ee->Name ), "_" ), sig ), STRING_unescapetics( s_brg->Action_Semantics_internal ) );
    /* out::populate(element:routine, value:emptyvalue) */
    xtuml2masl_out_populate( "routine", emptyvalue );
  }}}
  Escher_ClearSet( s_brgs ); 
}

/*
 * Domain Function:  bridge_getsignature
 */
c_t *
xtuml2masl_bridge_getsignature( const i_t p_flavor, xtuml2masl_S_BRG * p_s_brg )
{
  c_t * signature=0;xtuml2masl_S_BRG * s_brg;xtuml2masl_S_DT * returntype=0;
  /* ASSIGN s_brg = PARAM.s_brg */
  s_brg = p_s_brg;
  /* ASSIGN signature =  */
  signature = Escher_strcpy( signature, "" );
  /* SELECT one returntype RELATED BY s_brg->S_DT[R20] */
  returntype = ( 0 != s_brg ) ? s_brg->S_DT_R20_return_value_defined_by : 0;
  /* ASSIGN signature = ( ( signature + returntype.Name ) +   ) */
  signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, returntype->Name ), " " ) );
  /* ASSIGN signature = ( signature + s_brg.Name ) */
  signature = Escher_strcpy( signature, Escher_stradd( signature, s_brg->Name ) );
  /* IF ( ( 1 == PARAM.flavor ) ) */
  if ( ( 1 == p_flavor ) ) {
    c_t * separator=0;xtuml2masl_S_BPARM * first_param;xtuml2masl_S_BPARM * parameter=0;
    /* SELECT any parameter RELATED BY s_brg->S_BPARM[R21] */
    parameter = ( 0 != s_brg ) ? (xtuml2masl_S_BPARM *) Escher_SetGetAny( &s_brg->S_BPARM_R21_is_part_of ) : 0;
    /* ASSIGN first_param = parameter */
    first_param = parameter;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      /* ASSIGN first_param = parameter */
      first_param = parameter;
      /* SELECT one parameter RELATED BY parameter->S_BPARM[R55.succeeds] */
      parameter = ( 0 != parameter ) ? parameter->S_BPARM_R55_succeeds : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* ASSIGN parameter = first_param */
    parameter = first_param;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      xtuml2masl_S_DT * type=0;
      /* SELECT one type RELATED BY parameter->S_DT[R22] */
      type = ( 0 != parameter ) ? parameter->S_DT_R22_is_defined_by : 0;
      /* ASSIGN signature = ( ( signature + separator ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, separator ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* SELECT one parameter RELATED BY parameter->S_BPARM[R55.precedes] */
      parameter = ( 0 != parameter ) ? parameter->S_BPARM_R55_precedes : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
  }
  else if ( ( 0 == p_flavor ) ) {
    i_t count;i_t num_params;c_t * separator=0;xtuml2masl_S_BPARM * curr_param=0;xtuml2masl_S_BPARM * last_param=0;Escher_ObjectSet_s parameters_space={0}; Escher_ObjectSet_s * parameters = &parameters_space;
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* SELECT many parameters RELATED BY s_brg->S_BPARM[R21] */
    Escher_ClearSet( parameters );
    if ( 0 != s_brg ) {
      Escher_CopySet( parameters, &s_brg->S_BPARM_R21_is_part_of );
    }
    /* ASSIGN num_params = cardinality parameters */
    num_params = Escher_SetCardinality( parameters );
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN count = 0 */
    count = 0;
    /* SELECT any last_param FROM INSTANCES OF S_BPARM WHERE FALSE */
    last_param = 0;
    /* SELECT any curr_param FROM INSTANCES OF S_BPARM WHERE FALSE */
    curr_param = 0;
    /* WHILE ( ( count < num_params ) ) */
    while ( ( count < num_params ) ) {
      xtuml2masl_S_BPARM * parameter=0;xtuml2masl_S_DT * type=0;
      /* FOR EACH parameter IN parameters */
      { Escher_Iterator_s iterparameter;
      xtuml2masl_S_BPARM * iiparameter;
      Escher_IteratorReset( &iterparameter, parameters );
      while ( (iiparameter = (xtuml2masl_S_BPARM *)Escher_IteratorNext( &iterparameter )) != 0 ) {
        parameter = iiparameter; {
        /* IF ( ( ( ( ( empty curr_param and empty last_param ) or ( ( ( empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) ) or ( ( not_empty curr_param and empty last_param ) and ( parameter.Name < curr_param.Name ) ) ) or ( ( ( ( not_empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) and ( parameter.Name < curr_param.Name ) ) ) ) */
        if ( ( ( ( ( ( 0 == curr_param ) && ( 0 == last_param ) ) || ( ( ( ( 0 == curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) ) || ( ( ( 0 != curr_param ) && ( 0 == last_param ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) || ( ( ( ( ( 0 != curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) ) {
          /* ASSIGN curr_param = parameter */
          curr_param = parameter;
        }
      }}}
      /* SELECT one type RELATED BY curr_param->S_DT[R22] */
      type = ( 0 != curr_param ) ? curr_param->S_DT_R22_is_defined_by : 0;
      /* ASSIGN signature = ( ( ( ( signature + separator ) + curr_param.Name ) + : ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( signature, separator ), curr_param->Name ), ":" ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* ASSIGN last_param = curr_param */
      last_param = curr_param;
      /* SELECT any curr_param FROM INSTANCES OF S_BPARM WHERE FALSE */
      curr_param = 0;
      /* ASSIGN count = ( count + 1 ) */
      count = ( count + 1 );
    }
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
    Escher_ClearSet( parameters ); 
  }
  /* RETURN signature */
  {c_t * xtumlOALrv = signature;
  return xtumlOALrv;}
}

/*
 * Domain Function:  class2object
 */
void
xtuml2masl_class2object( xtuml2masl_C_C * p_c_c, const bool p_kl )
{
  xtuml2masl_O_OBJ * o_obj=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_objs_space={0}; Escher_ObjectSet_s * o_objs = &o_objs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many o_objs RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001] */
  Escher_ClearSet( o_objs );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_objs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_objs, R8001_subtype );
  }}}}}}}
  /* FOR EACH o_obj IN o_objs */
  { Escher_Iterator_s itero_obj;
  xtuml2masl_O_OBJ * iio_obj;
  Escher_IteratorReset( &itero_obj, o_objs );
  while ( (iio_obj = (xtuml2masl_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
    o_obj = iio_obj; {
    xtuml2masl_SM_SM * sm_sm=0;
    /* ASSIGN value[0] = o_obj.Name */
    value[0] = Escher_strcpy( value[0], o_obj->Name );
    /* out::populate(element:object, value:value) */
    xtuml2masl_out_populate( "object", value );
    /* ::attribute2attribute( c_c:c_c, o_obj:o_obj ) */
    xtuml2masl_attribute2attribute( c_c, o_obj );
    /* ::identifier2identifier( o_obj:o_obj ) */
    xtuml2masl_identifier2identifier( o_obj );
    /* ::classop2objectop( c_c:c_c, o_obj:o_obj ) */
    xtuml2masl_classop2objectop( c_c, o_obj );
    /* SELECT one sm_sm RELATED BY o_obj->SM_ISM[R518]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != o_obj ) {
    xtuml2masl_SM_ISM * SM_ISM_R518 = o_obj->SM_ISM_R518;
    if ( 0 != SM_ISM_R518 ) {
    sm_sm = SM_ISM_R518->SM_SM_R517;
}}}
    /* IF ( not_empty sm_sm ) */
    if ( ( 0 != sm_sm ) ) {
      /* ::state2state( o_obj:o_obj, sm_sm:sm_sm, type: ) */
      xtuml2masl_state2state( o_obj, sm_sm, "" );
      /* ::event2event( sm_sm:sm_sm, type: ) */
      xtuml2masl_event2event( sm_sm, "" );
      /* ::statemachine2statemachine( o_obj:o_obj, sm_sm:sm_sm, type: ) */
      xtuml2masl_statemachine2statemachine( o_obj, sm_sm, "" );
    }
    /* SELECT one sm_sm RELATED BY o_obj->SM_ASM[R519]->SM_SM[R517] */
    sm_sm = 0;
    {    if ( 0 != o_obj ) {
    xtuml2masl_SM_ASM * SM_ASM_R519 = o_obj->SM_ASM_R519;
    if ( 0 != SM_ASM_R519 ) {
    sm_sm = SM_ASM_R519->SM_SM_R517;
}}}
    /* IF ( not_empty sm_sm ) */
    if ( ( 0 != sm_sm ) ) {
      /* ::state2state( o_obj:o_obj, sm_sm:sm_sm, type:assigner ) */
      xtuml2masl_state2state( o_obj, sm_sm, "assigner" );
      /* ::event2event( sm_sm:sm_sm, type:assigner ) */
      xtuml2masl_event2event( sm_sm, "assigner" );
      /* ::statemachine2statemachine( o_obj:o_obj, sm_sm:sm_sm, type:assigner ) */
      xtuml2masl_statemachine2statemachine( o_obj, sm_sm, "assigner" );
    }
    /* IF ( PARAM.kl ) */
    if ( p_kl ) {
      c_t * quote=0;
      c_t quote_space[2] = {'"',0};
      /* ASSIGN value[0] = key_letter */
      value[0] = Escher_strcpy( value[0], "key_letter" );
      /* out::populate(element:pragma, value:value) */
      xtuml2masl_out_populate( "pragma", value );
      /* ASSIGN quote = STRING::quote() */
      // TODO SKB removed - quote = Escher_strcpy( quote, STRING_quote() );
      quote = quote_space;
      /* ASSIGN value[0] = ( ( quote + o_obj.Key_Lett ) + quote ) */
      value[0] = Escher_strcpy( value[0], Escher_stradd( Escher_stradd( quote, o_obj->Key_Lett ), quote ) );
      /* out::populate(element:pragmaitem, value:value) */
      xtuml2masl_out_populate( "pragmaitem", value );
      /* out::populate(element:pragma, value:emptyvalue) */
      xtuml2masl_out_populate( "pragma", emptyvalue );
    }
    /* ASSIGN o_obj.Descrip = ::parsepragmas(list:, s:o_obj.Descrip) */
    o_obj->Descrip = Escher_strcpy( o_obj->Descrip, xtuml2masl_parsepragmas( "", o_obj->Descrip ) );
    /* ::Descrip2description( Descrip:o_obj.Descrip ) */
    xtuml2masl_Descrip2description( o_obj->Descrip );
    /* out::populate(element:object, value:emptyvalue) */
    xtuml2masl_out_populate( "object", emptyvalue );
  }}}
  Escher_ClearSet( o_objs ); 
}

/*
 * Domain Function:  class2objectdeclaration
 */
void
xtuml2masl_class2objectdeclaration( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_O_OBJ * o_obj=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_objs_space={0}; Escher_ObjectSet_s * o_objs = &o_objs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many o_objs RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001] */
  Escher_ClearSet( o_objs );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_objs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_objs, R8001_subtype );
  }}}}}}}
  /* FOR EACH o_obj IN o_objs */
  { Escher_Iterator_s itero_obj;
  xtuml2masl_O_OBJ * iio_obj;
  Escher_IteratorReset( &itero_obj, o_objs );
  while ( (iio_obj = (xtuml2masl_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
    o_obj = iio_obj; {
    i_t j;i_t i;i_t len;c_t * search_term=0;
    /* ASSIGN value[0] = o_obj.Name */
    value[0] = Escher_strcpy( value[0], o_obj->Name );
    /* out::populate(element:object, value:value) */
    xtuml2masl_out_populate( "object", value );
    /* ASSIGN search_term = declaration */
    search_term = Escher_strcpy( search_term, "declaration" );
    /* ASSIGN len = STRING::strlen(s:search_term) */
    len = STRING_strlen( search_term );
    /* ASSIGN i = STRING::indexof(haystack:o_obj.Descrip, needle:( ( < + search_term ) + > )) */
    i = STRING_indexof( o_obj->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
    /* ASSIGN j = STRING::indexof(haystack:o_obj.Descrip, needle:( ( </ + search_term ) + > )) */
    j = STRING_indexof( o_obj->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
    /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
    if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
      c_t * descrip_end=0;c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
      /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:o_obj.Descrip) */
      pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, o_obj->Descrip ) );
      /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
      s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
      /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:o_obj.Descrip) */
      descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, o_obj->Descrip ) );
      /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:o_obj.Descrip) */
      descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, o_obj->Descrip ) );
      /* ASSIGN o_obj.Descrip = ( descrip_begin + descrip_end ) */
      o_obj->Descrip = Escher_strcpy( o_obj->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
    }
    /* out::populate(element:object, value:emptyvalue) */
    xtuml2masl_out_populate( "object", emptyvalue );
  }}}
  Escher_ClearSet( o_objs ); 
}

/*
 * Domain Function:  class_get_path
 */
c_t *
xtuml2masl_class_get_path( xtuml2masl_O_OBJ * p_o_obj )
{
  c_t * parent_path=0;xtuml2masl_O_OBJ * o_obj;xtuml2masl_EP_PKG * ep_pkg=0;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT one ep_pkg RELATED BY o_obj->PE_PE[R8001]->EP_PKG[R8000] */
  ep_pkg = 0;
  {  if ( 0 != o_obj ) {
  xtuml2masl_PE_PE * PE_PE_R8001 = o_obj->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
  /* ASSIGN parent_path = ::package_get_path(ep_pkg:ep_pkg) */
  parent_path = Escher_strcpy( parent_path, xtuml2masl_package_get_path( ep_pkg ) );
  /* IF ( not_empty o_obj ) */
  if ( ( 0 != o_obj ) ) {
    /* RETURN ( ( parent_path + / ) + o_obj.Name ) */
    {c_t * xtumlOALrv = Escher_stradd( Escher_stradd( parent_path, "/" ), o_obj->Name );
    return xtumlOALrv;}
  }
  else {
    /* TRACE::log( flavor:failure, id:114, message:error building path of object ) */
    TRACE_log( "failure", 114, "error building path of object" );
    /* RETURN  */
    {c_t * xtumlOALrv = "";
    return xtumlOALrv;}
  }
}

/*
 * Domain Function:  classop2objectop
 */
void
xtuml2masl_classop2objectop( xtuml2masl_C_C * p_c_c, xtuml2masl_O_OBJ * p_o_obj )
{
  xtuml2masl_O_TFR * o_tfr=0;xtuml2masl_O_OBJ * o_obj;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_tfrs_space={0}; Escher_ObjectSet_s * o_tfrs = &o_tfrs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = o_obj.Name */
  value[1] = Escher_strcpy( value[1], o_obj->Name );
  /* SELECT many o_tfrs RELATED BY o_obj->O_TFR[R115] */
  Escher_ClearSet( o_tfrs );
  if ( 0 != o_obj ) {
    Escher_CopySet( o_tfrs, &o_obj->O_TFR_R115_may_contain );
  }
  /* FOR EACH o_tfr IN o_tfrs */
  { Escher_Iterator_s itero_tfr;
  xtuml2masl_O_TFR * iio_tfr;
  Escher_IteratorReset( &itero_tfr, o_tfrs );
  while ( (iio_tfr = (xtuml2masl_O_TFR *)Escher_IteratorNext( &itero_tfr )) != 0 ) {
    o_tfr = iio_tfr; {
    xtuml2masl_O_TPARM * first_o_tparm;c_t * sig=0;c_t * path=0;bool deferred;xtuml2masl_model * model=0;xtuml2masl_S_DT * s_dt=0;xtuml2masl_O_TPARM * o_tparm=0;
    /* ASSIGN value[2] = public */
    value[2] = Escher_strcpy( value[2], "public" );
    /* ASSIGN value[3] = o_tfr.Name */
    value[3] = Escher_strcpy( value[3], o_tfr->Name );
    /* ASSIGN value[4] =  */
    value[4] = Escher_strcpy( value[4], "" );
    /* IF ( ( Instance == o_tfr.Instance_Based ) ) */
    if ( ( xtuml2masl_Scope_Instance_e == o_tfr->Instance_Based ) ) {
      /* ASSIGN value[4] = instance */
      value[4] = Escher_strcpy( value[4], "instance" );
    }
    /* ASSIGN value[5] =  */
    value[5] = Escher_strcpy( value[5], "" );
    /* ASSIGN deferred = FALSE */
    deferred = FALSE;
    /* ASSIGN path = ::class_get_path(o_obj:o_obj) */
    path = Escher_strcpy( path, xtuml2masl_class_get_path( o_obj ) );
    /* ASSIGN sig = ::underscore_signature(::operation_getsignature(flavor:1, o_tfr:o_tfr)) */
    sig = Escher_strcpy( sig, xtuml2masl_underscore_signature( xtuml2masl_operation_getsignature( 1, o_tfr ) ) );
    /* SELECT any model FROM INSTANCES OF model */
    model = (xtuml2masl_model *) Escher_SetGetAny( &pG_xtuml2masl_model_extent.active );
    /* IF ( ( not_empty model and not FILE::exists() ) ) */
    if ( ( ( 0 != model ) && !FILE_exists( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( model->projectroot, "/models/" ), path ), "/" ), sig ), ".masl" ) ) ) ) {
      xtuml2masl_R_REL * subsuper_rel=0;Escher_ObjectSet_s subsuper_rels_space={0}; Escher_ObjectSet_s * subsuper_rels = &subsuper_rels_space;
      /* SELECT many subsuper_rels RELATED BY o_tfr->O_OBJ[R115]->R_OIR[R201]->R_RTO[R203]->R_SUPER[R204]->R_SUBSUP[R212]->R_REL[R206] */
      Escher_ClearSet( subsuper_rels );
      {      if ( 0 != o_tfr ) {
      xtuml2masl_O_OBJ * O_OBJ_R115_is_associated_with = o_tfr->O_OBJ_R115_is_associated_with;
      if ( 0 != O_OBJ_R115_is_associated_with ) {
      xtuml2masl_R_OIR * R_OIR_R201;
      Escher_Iterator_s iR_OIR_R201;
      Escher_IteratorReset( &iR_OIR_R201, &O_OBJ_R115_is_associated_with->R_OIR_R201 );
      while ( 0 != ( R_OIR_R201 = (xtuml2masl_R_OIR *) Escher_IteratorNext( &iR_OIR_R201 ) ) ) {
      xtuml2masl_R_RTO * R203_subtype = (xtuml2masl_R_RTO *) R_OIR_R201->R203_subtype;
      if ( 0 != R203_subtype )      if ( ( 0 != R_OIR_R201 ) && ( xtuml2masl_R_RTO_CLASS_NUMBER == R_OIR_R201->R203_object_id ) ) {
      xtuml2masl_R_SUPER * R204_subtype = (xtuml2masl_R_SUPER *) R203_subtype->R204_subtype;
      if ( 0 != R204_subtype )      if ( ( 0 != R203_subtype ) && ( xtuml2masl_R_SUPER_CLASS_NUMBER == R203_subtype->R204_object_id ) ) {
      xtuml2masl_R_SUBSUP * R_SUBSUP_R212_is_related_to_subtypes_via = R204_subtype->R_SUBSUP_R212_is_related_to_subtypes_via;
      if ( 0 != R_SUBSUP_R212_is_related_to_subtypes_via ) {
      {xtuml2masl_R_REL * R_REL_R206 = R_SUBSUP_R212_is_related_to_subtypes_via->R_REL_R206;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subsuper_rels, R_REL_R206 ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) subsuper_rels, R_REL_R206 );
      }}}}}}}}}
      /* FOR EACH subsuper_rel IN subsuper_rels */
      { Escher_Iterator_s itersubsuper_rel;
      xtuml2masl_R_REL * iisubsuper_rel;
      Escher_IteratorReset( &itersubsuper_rel, subsuper_rels );
      while ( (iisubsuper_rel = (xtuml2masl_R_REL *)Escher_IteratorNext( &itersubsuper_rel )) != 0 ) {
        subsuper_rel = iisubsuper_rel; {
        xtuml2masl_O_OBJ * subtype=0;i_t i;Escher_ObjectSet_s subtypes_space={0}; Escher_ObjectSet_s * subtypes = &subtypes_space;
        /* SELECT many subtypes RELATED BY subsuper_rel->R_OIR[R201]->R_RGO[R203]->R_OIR[R203]->O_OBJ[R201] */
        Escher_ClearSet( subtypes );
        {        if ( 0 != subsuper_rel ) {
        xtuml2masl_R_OIR * R_OIR_R201;
        Escher_Iterator_s iR_OIR_R201;
        Escher_IteratorReset( &iR_OIR_R201, &subsuper_rel->R_OIR_R201 );
        while ( 0 != ( R_OIR_R201 = (xtuml2masl_R_OIR *) Escher_IteratorNext( &iR_OIR_R201 ) ) ) {
        xtuml2masl_R_RGO * R203_subtype = (xtuml2masl_R_RGO *) R_OIR_R201->R203_subtype;
        if ( 0 != R203_subtype )        if ( ( 0 != R_OIR_R201 ) && ( xtuml2masl_R_RGO_CLASS_NUMBER == R_OIR_R201->R203_object_id ) ) {
        xtuml2masl_R_OIR * R_OIR_R203 = R203_subtype->R_OIR_R203;
        if ( 0 != R_OIR_R203 ) {
        {xtuml2masl_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) subtypes, O_OBJ_R201_abstracts_association_between_instances_of ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) subtypes, O_OBJ_R201_abstracts_association_between_instances_of );
        }}}}}}}
        /* ASSIGN i = 0 */
        i = 0;
        /* FOR EACH subtype IN subtypes */
        { Escher_Iterator_s itersubtype;
        xtuml2masl_O_OBJ * iisubtype;
        Escher_IteratorReset( &itersubtype, subtypes );
        while ( (iisubtype = (xtuml2masl_O_OBJ *)Escher_IteratorNext( &itersubtype )) != 0 ) {
          subtype = iisubtype; {
          xtuml2masl_O_TFR * sub_o_tfr=0;Escher_ObjectSet_s sub_o_tfrs_space={0}; Escher_ObjectSet_s * sub_o_tfrs = &sub_o_tfrs_space;
          /* SELECT many sub_o_tfrs RELATED BY subtype->O_TFR[R115] */
          Escher_ClearSet( sub_o_tfrs );
          if ( 0 != subtype ) {
            Escher_CopySet( sub_o_tfrs, &subtype->O_TFR_R115_may_contain );
          }
          /* FOR EACH sub_o_tfr IN sub_o_tfrs */
          { Escher_Iterator_s itersub_o_tfr;
          xtuml2masl_O_TFR * iisub_o_tfr;
          Escher_IteratorReset( &itersub_o_tfr, sub_o_tfrs );
          while ( (iisub_o_tfr = (xtuml2masl_O_TFR *)Escher_IteratorNext( &itersub_o_tfr )) != 0 ) {
            sub_o_tfr = iisub_o_tfr; {
            /* IF ( ( ::operation_getsignature(1, o_tfr) == ::operation_getsignature(1, sub_o_tfr) ) ) */
            if ( ( Escher_strcmp( xtuml2masl_operation_getsignature( 1, o_tfr ), xtuml2masl_operation_getsignature( 1, sub_o_tfr ) ) == 0 ) ) {
              /* ASSIGN i = ( i + 1 ) */
              i = ( i + 1 );
              /* BREAK */
              break;
            }
          }}}
          Escher_ClearSet( sub_o_tfrs ); 
        }}}
        /* IF ( ( i == cardinality subtypes ) ) */
        if ( ( i == Escher_SetCardinality( subtypes ) ) ) {
          /* ASSIGN value[5] = ( R + STRING::itoa(subsuper_rel.Numb) ) */
          value[5] = Escher_strcpy( value[5], Escher_stradd( "R", STRING_itoa( subsuper_rel->Numb ) ) );
          /* ASSIGN deferred = TRUE */
          deferred = TRUE;
          /* BREAK */
          Escher_ClearSet( subtypes ); 
          break;
        }
        Escher_ClearSet( subtypes ); 
      }}}
      Escher_ClearSet( subsuper_rels ); 
    }
    /* SELECT any o_tparm RELATED BY o_tfr->O_TPARM[R117] */
    o_tparm = ( 0 != o_tfr ) ? (xtuml2masl_O_TPARM *) Escher_SetGetAny( &o_tfr->O_TPARM_R117_contains ) : 0;
    /* ASSIGN first_o_tparm = o_tparm */
    first_o_tparm = o_tparm;
    /* WHILE ( not_empty o_tparm ) */
    while ( ( 0 != o_tparm ) ) {
      /* ASSIGN first_o_tparm = o_tparm */
      first_o_tparm = o_tparm;
      /* SELECT one o_tparm RELATED BY o_tparm->O_TPARM[R124.succeeds] */
      o_tparm = ( 0 != o_tparm ) ? o_tparm->O_TPARM_R124_succeeds : 0;
    }
    /* out::populate(element:operation, value:value) */
    xtuml2masl_out_populate( "operation", value );
    /* ::parameterO_TPARM2parameter( o_tparm:first_o_tparm ) */
    xtuml2masl_parameterO_TPARM2parameter( first_o_tparm );
    /* SELECT one s_dt RELATED BY o_tfr->S_DT[R116] */
    s_dt = ( 0 != o_tfr ) ? o_tfr->S_DT_R116_return_code_is_defined_by : 0;
    /* IF ( ( void != s_dt.Name ) ) */
    if ( ( Escher_strcmp( "void", s_dt->Name ) != 0 ) ) {
      /* ASSIGN value[0] = s_dt.Name */
      value[0] = Escher_strcpy( value[0], s_dt->Name );
      /* out::populate(element:typeref, value:value) */
      xtuml2masl_out_populate( "typeref", value );
      /* out::populate(element:typeref, value:emptyvalue) */
      xtuml2masl_out_populate( "typeref", emptyvalue );
    }
    /* IF ( not deferred ) */
    if ( !deferred ) {
      /* ::body2code_block( name:( ( path + / ) + sig ), STRING::unescapetics(s:o_tfr.Action_Semantics_internal) ) */
      xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( path, "/" ), sig ), STRING_unescapetics( o_tfr->Action_Semantics_internal ) );
    }
    /* ASSIGN o_tfr.Descrip = ::parsepragmas(list:, s:o_tfr.Descrip) */
    o_tfr->Descrip = Escher_strcpy( o_tfr->Descrip, xtuml2masl_parsepragmas( "", o_tfr->Descrip ) );
    /* ::Descrip2description( Descrip:o_tfr.Descrip ) */
    xtuml2masl_Descrip2description( o_tfr->Descrip );
    /* out::populate(element:operation, value:emptyvalue) */
    xtuml2masl_out_populate( "operation", emptyvalue );
  }}}
  Escher_ClearSet( o_tfrs ); 
}

/*
 * Domain Function:  component2domain
 */
void
xtuml2masl_component2domain( Escher_ObjectSet_s * p_c_cs, const bool p_kl, const bool p_project )
{
  xtuml2masl_C_C * c_c=0;Escher_ObjectSet_s c_cs_space={0}; Escher_ObjectSet_s * c_cs = &c_cs_space;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_cs = PARAM.c_cs */
  Escher_CopySet( c_cs, p_c_cs );
  /* FOR EACH c_c IN c_cs */
  { Escher_Iterator_s iterc_c;
  xtuml2masl_C_C * iic_c;
  Escher_IteratorReset( &iterc_c, c_cs );
  while ( (iic_c = (xtuml2masl_C_C *)Escher_IteratorNext( &iterc_c )) != 0 ) {
    c_c = iic_c; {
    /* ASSIGN value[0] = c_c.Name */
    value[0] = Escher_strcpy( value[0], c_c->Name );
    /* out::populate(element:domain, value:value) */
    xtuml2masl_out_populate( "domain", value );
    /* IF ( PARAM.project ) */
    if ( p_project ) {
      /* ::port2terminator( c_c:c_c, kl:PARAM.kl, project:PARAM.project ) */
      xtuml2masl_port2terminator( c_c, p_kl, p_project );
    }
    else {
      /* ::class2objectdeclaration( c_c:c_c ) */
      xtuml2masl_class2objectdeclaration( c_c );
      /* ::type2type( c_c:c_c ) */
      xtuml2masl_type2type( c_c );
      /* ::exception2exception( c_c:c_c ) */
      xtuml2masl_exception2exception( c_c );
      /* ::function2routine( c_c:c_c ) */
      xtuml2masl_function2routine( c_c );
      /* ::port2terminator( c_c:c_c, kl:PARAM.kl, project:PARAM.project ) */
      xtuml2masl_port2terminator( c_c, p_kl, p_project );
      /* ::association2relationship( c_c:c_c ) */
      xtuml2masl_association2relationship( c_c );
      /* ::class2object( c_c:c_c, kl:PARAM.kl ) */
      xtuml2masl_class2object( c_c, p_kl );
    }
    /* IF ( PARAM.project ) */
    if ( p_project ) {
      xtuml2masl_CL_IC * cl_ic=0;
      /* SELECT any cl_ic RELATED BY c_c->CL_IC[R4201] */
      cl_ic = ( 0 != c_c ) ? (xtuml2masl_CL_IC *) Escher_SetGetAny( &c_c->CL_IC_R4201_is_represented_by ) : 0;
      /* ASSIGN cl_ic.Descrip = ::parsepragmas(list:project, s:cl_ic.Descrip) */
      cl_ic->Descrip = Escher_strcpy( cl_ic->Descrip, xtuml2masl_parsepragmas( "project", cl_ic->Descrip ) );
      /* ::Descrip2description( Descrip:cl_ic.Descrip ) */
      xtuml2masl_Descrip2description( cl_ic->Descrip );
    }
    else {
      /* ASSIGN c_c.Descrip = ::parsepragmas(list:, s:c_c.Descrip) */
      c_c->Descrip = Escher_strcpy( c_c->Descrip, xtuml2masl_parsepragmas( "", c_c->Descrip ) );
      /* ::Descrip2description( Descrip:c_c.Descrip ) */
      xtuml2masl_Descrip2description( c_c->Descrip );
    }
    /* out::populate(element:domain, value:emptyvalue) */
    xtuml2masl_out_populate( "domain", emptyvalue );
  }}}
  Escher_ClearSet( c_cs );
}

/*
 * Domain Function:  component_get_path
 */
c_t *
xtuml2masl_component_get_path( xtuml2masl_C_C * p_c_c )
{
  c_t * parent_path=0;xtuml2masl_C_C * c_c;xtuml2masl_EP_PKG * ep_pkg=0;
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT one ep_pkg RELATED BY c_c->PE_PE[R8001]->EP_PKG[R8000] */
  ep_pkg = 0;
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
  /* ASSIGN parent_path = ::package_get_path(ep_pkg:ep_pkg) */
  parent_path = Escher_strcpy( parent_path, xtuml2masl_package_get_path( ep_pkg ) );
  /* IF ( not_empty c_c ) */
  if ( ( 0 != c_c ) ) {
    /* RETURN ( ( parent_path + / ) + c_c.Name ) */
    {c_t * xtumlOALrv = Escher_stradd( Escher_stradd( parent_path, "/" ), c_c->Name );
    return xtumlOALrv;}
  }
  else {
    /* TRACE::log( flavor:failure, id:114, message:error building path of component ) */
    TRACE_log( "failure", 114, "error building path of component" );
    /* RETURN  */
    {c_t * xtumlOALrv = "";
    return xtumlOALrv;}
  }
}

/*
 * Domain Function:  event2event
 */
void
xtuml2masl_event2event( xtuml2masl_SM_SM * p_sm_sm, c_t * p_type )
{
  xtuml2masl_SM_EVT * sm_evt=0;xtuml2masl_SM_SM * sm_sm;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s sm_evts_space={0}; Escher_ObjectSet_s * sm_evts = &sm_evts_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* SELECT many sm_evts RELATED BY sm_sm->SM_EVT[R502] */
  Escher_ClearSet( sm_evts );
  if ( 0 != sm_sm ) {
    Escher_CopySet( sm_evts, &sm_sm->SM_EVT_R502_can_be_communicated_to_via );
  }
  /* FOR EACH sm_evt IN sm_evts */
  { Escher_Iterator_s itersm_evt;
  xtuml2masl_SM_EVT * iism_evt;
  Escher_IteratorReset( &itersm_evt, sm_evts );
  while ( (iism_evt = (xtuml2masl_SM_EVT *)Escher_IteratorNext( &itersm_evt )) != 0 ) {
    sm_evt = iism_evt; {
    xtuml2masl_SM_EVTDI * first_sm_evtdi;xtuml2masl_SM_EVTDI * sm_evtdi=0;xtuml2masl_SM_CRTXN * sm_crtxn=0;
    /* ASSIGN value[0] = sm_evt.Mning */
    value[0] = Escher_strcpy( value[0], sm_evt->Mning );
    /* ASSIGN value[1] = PARAM.type */
    value[1] = Escher_strcpy( value[1], p_type );
    /* SELECT one sm_crtxn RELATED BY sm_evt->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509] */
    sm_crtxn = 0;
    {    if ( 0 != sm_evt ) {
    xtuml2masl_SM_SEVT * R525_subtype = (xtuml2masl_SM_SEVT *) sm_evt->R525_subtype;
    if ( 0 != R525_subtype )    if ( ( 0 != sm_evt ) && ( xtuml2masl_SM_SEVT_CLASS_NUMBER == sm_evt->R525_object_id ) ) {
    xtuml2masl_SM_LEVT * R526_subtype = (xtuml2masl_SM_LEVT *) R525_subtype->R526_subtype;
    if ( 0 != R526_subtype )    if ( ( 0 != R525_subtype ) && ( xtuml2masl_SM_LEVT_CLASS_NUMBER == R525_subtype->R526_object_id ) ) {
    sm_crtxn = R526_subtype->SM_CRTXN_R509_has_assigned_to_it;
}}}}
    /* IF ( not_empty sm_crtxn ) */
    if ( ( 0 != sm_crtxn ) ) {
      /* ASSIGN value[1] = creation */
      value[1] = Escher_strcpy( value[1], "creation" );
    }
    /* out::populate(element:event, value:value) */
    xtuml2masl_out_populate( "event", value );
    /* SELECT any sm_evtdi RELATED BY sm_evt->SM_EVTDI[R532] */
    sm_evtdi = ( 0 != sm_evt ) ? (xtuml2masl_SM_EVTDI *) Escher_SetGetAny( &sm_evt->SM_EVTDI_R532_carries ) : 0;
    /* ASSIGN first_sm_evtdi = sm_evtdi */
    first_sm_evtdi = sm_evtdi;
    /* WHILE ( not_empty sm_evtdi ) */
    while ( ( 0 != sm_evtdi ) ) {
      /* ASSIGN first_sm_evtdi = sm_evtdi */
      first_sm_evtdi = sm_evtdi;
      /* SELECT one sm_evtdi RELATED BY sm_evtdi->SM_EVTDI[R533.succeeds] */
      sm_evtdi = ( 0 != sm_evtdi ) ? sm_evtdi->SM_EVTDI_R533_succeeds : 0;
    }
    /* ::parameterSM_EVTDI2parameter( sm_evtdi:first_sm_evtdi ) */
    xtuml2masl_parameterSM_EVTDI2parameter( first_sm_evtdi );
    /* ASSIGN sm_evt.Descrip = ::parsepragmas(list:, s:sm_evt.Descrip) */
    sm_evt->Descrip = Escher_strcpy( sm_evt->Descrip, xtuml2masl_parsepragmas( "", sm_evt->Descrip ) );
    /* ::Descrip2description( Descrip:sm_evt.Descrip ) */
    xtuml2masl_Descrip2description( sm_evt->Descrip );
    /* out::populate(element:event, value:emptyvalue) */
    xtuml2masl_out_populate( "event", emptyvalue );
  }}}
  Escher_ClearSet( sm_evts ); 
}

/*
 * Domain Function:  exception2exception
 */
void
xtuml2masl_exception2exception( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_S_EXP * s_exp=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s sub_pkgs_space={0}; Escher_ObjectSet_s * sub_pkgs = &sub_pkgs_space;Escher_ObjectSet_s s_exps_space={0}; Escher_ObjectSet_s * s_exps = &s_exps_space;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many s_exps RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->S_EXP[R8001] */
  Escher_ClearSet( s_exps );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_EXP_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_EXP * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_exps, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_exps, R8001_subtype );
  }}}}}}}
  /* FOR EACH s_exp IN s_exps */
  { Escher_Iterator_s iters_exp;
  xtuml2masl_S_EXP * iis_exp;
  Escher_IteratorReset( &iters_exp, s_exps );
  while ( (iis_exp = (xtuml2masl_S_EXP *)Escher_IteratorNext( &iters_exp )) != 0 ) {
    s_exp = iis_exp; {
    /* ASSIGN value[0] = s_exp.Name */
    value[0] = Escher_strcpy( value[0], s_exp->Name );
    /* ASSIGN value[1] = private */
    value[1] = Escher_strcpy( value[1], "private" );
    /* out::populate(element:exception, value:value) */
    xtuml2masl_out_populate( "exception", value );
    /* ASSIGN s_exp.Descrip = ::parsepragmas(list:, s:s_exp.Descrip) */
    s_exp->Descrip = Escher_strcpy( s_exp->Descrip, xtuml2masl_parsepragmas( "", s_exp->Descrip ) );
    /* out::populate(element:exception, value:emptyvalue) */
    xtuml2masl_out_populate( "exception", emptyvalue );
  }}}
  /* SELECT many ep_pkgs RELATED BY c_c->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405]->EP_PKG[R1401] WHERE ( ( SELECTED.Name != types ) ) */
  Escher_ClearSet( ep_pkgs );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  xtuml2masl_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  xtuml2masl_S_SYS * S_SYS_R1405 = EP_PKG_R8000_contained_by->S_SYS_R1405;
  if ( 0 != S_SYS_R1405 ) {
  xtuml2masl_EP_PKG * selected;
  Escher_Iterator_s iEP_PKG_R1401_contains;
  Escher_IteratorReset( &iEP_PKG_R1401_contains, &S_SYS_R1405->EP_PKG_R1401_contains );
  while ( 0 != ( selected = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &iEP_PKG_R1401_contains ) ) ) {
    if ( ( Escher_strcmp( selected->Name, "types" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) ep_pkgs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) ep_pkgs, selected );
  }}}
}}}}}
  /* SELECT many s_exps RELATED BY ep_pkgs->PE_PE[R8000]->S_EXP[R8001] */
  Escher_ClearSet( s_exps );
  {  xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, ep_pkgs );
  while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_EXP_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_EXP * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_exps, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_exps, R8001_subtype );
  }}}}}
  /* FOR EACH s_exp IN s_exps */
  { Escher_Iterator_s iters_exp;
  xtuml2masl_S_EXP * iis_exp;
  Escher_IteratorReset( &iters_exp, s_exps );
  while ( (iis_exp = (xtuml2masl_S_EXP *)Escher_IteratorNext( &iters_exp )) != 0 ) {
    s_exp = iis_exp; {
    /* ASSIGN value[0] = s_exp.Name */
    value[0] = Escher_strcpy( value[0], s_exp->Name );
    /* ASSIGN value[1] = public */
    value[1] = Escher_strcpy( value[1], "public" );
    /* out::populate(element:exception, value:value) */
    xtuml2masl_out_populate( "exception", value );
    /* ASSIGN s_exp.Descrip = ::parsepragmas(list:, s:s_exp.Descrip) */
    s_exp->Descrip = Escher_strcpy( s_exp->Descrip, xtuml2masl_parsepragmas( "", s_exp->Descrip ) );
    /* out::populate(element:exception, value:emptyvalue) */
    xtuml2masl_out_populate( "exception", emptyvalue );
  }}}
  /* SELECT many sub_pkgs RELATED BY ep_pkgs->PE_PE[R8000]->EP_PKG[R8001] */
  Escher_ClearSet( sub_pkgs );
  {  xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, ep_pkgs );
  while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_EP_PKG * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype );
  }}}}}
  /* WHILE ( not_empty sub_pkgs ) */
  while ( ( ! Escher_SetIsEmpty( sub_pkgs ) ) ) {
    /* SELECT many s_exps RELATED BY sub_pkgs->PE_PE[R8000]->S_EXP[R8001] */
    Escher_ClearSet( s_exps );
    {    xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, sub_pkgs );
    while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    xtuml2masl_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_EXP_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {xtuml2masl_S_EXP * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_exps, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) s_exps, R8001_subtype );
    }}}}}
    /* FOR EACH s_exp IN s_exps */
    { Escher_Iterator_s iters_exp;
    xtuml2masl_S_EXP * iis_exp;
    Escher_IteratorReset( &iters_exp, s_exps );
    while ( (iis_exp = (xtuml2masl_S_EXP *)Escher_IteratorNext( &iters_exp )) != 0 ) {
      s_exp = iis_exp; {
      /* ASSIGN value[0] = s_exp.Name */
      value[0] = Escher_strcpy( value[0], s_exp->Name );
      /* ASSIGN value[1] = public */
      value[1] = Escher_strcpy( value[1], "public" );
      /* out::populate(element:exception, value:value) */
      xtuml2masl_out_populate( "exception", value );
      /* ASSIGN s_exp.Descrip = ::parsepragmas(list:, s:s_exp.Descrip) */
      s_exp->Descrip = Escher_strcpy( s_exp->Descrip, xtuml2masl_parsepragmas( "", s_exp->Descrip ) );
      /* out::populate(element:exception, value:emptyvalue) */
      xtuml2masl_out_populate( "exception", emptyvalue );
    }}}
    /* SELECT many sub_pkgs RELATED BY sub_pkgs->PE_PE[R8000]->EP_PKG[R8001] */
    Escher_ClearSet( sub_pkgs );
    {    xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, sub_pkgs );
    while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    xtuml2masl_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {xtuml2masl_EP_PKG * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype );
    }}}}}
  }
  Escher_ClearSet( sub_pkgs ); Escher_ClearSet( s_exps ); Escher_ClearSet( ep_pkgs ); 
}

/*
 * Domain Function:  externalentity2terminator
 */
void
xtuml2masl_externalentity2terminator( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_S_EE * s_ee=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s s_ees_space={0}; Escher_ObjectSet_s * s_ees = &s_ees_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many s_ees RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->S_EE[R8001] */
  Escher_ClearSet( s_ees );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_EE_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_EE * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_ees, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_ees, R8001_subtype );
  }}}}}}}
  /* FOR EACH s_ee IN s_ees */
  { Escher_Iterator_s iters_ee;
  xtuml2masl_S_EE * iis_ee;
  Escher_IteratorReset( &iters_ee, s_ees );
  while ( (iis_ee = (xtuml2masl_S_EE *)Escher_IteratorNext( &iters_ee )) != 0 ) {
    s_ee = iis_ee; {
    /* ASSIGN value[0] = s_ee.Name */
    value[0] = Escher_strcpy( value[0], s_ee->Name );
    /* out::populate(element:terminator, value:value) */
    xtuml2masl_out_populate( "terminator", value );
    /* ::bridge2routine( c_c:c_c, s_ee:s_ee ) */
    xtuml2masl_bridge2routine( c_c, s_ee );
    /* out::populate(element:terminator, value:emptyvalue) */
    xtuml2masl_out_populate( "terminator", emptyvalue );
  }}}
  Escher_ClearSet( s_ees ); 
}

/*
 * Domain Function:  function2routine
 */
void
xtuml2masl_function2routine( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_S_SYNC * s_sync=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s s_syncs_space={0}; Escher_ObjectSet_s * s_syncs = &s_syncs_space;Escher_ObjectSet_s c_eps_space={0}; Escher_ObjectSet_s * c_eps = &c_eps_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] =  */
  value[1] = Escher_strcpy( value[1], "" );
  /* SELECT many c_eps RELATED BY c_c->C_PO[R4010]->C_IR[R4016]->C_P[R4009]->C_IR[R4009]->C_I[R4012]->C_EP[R4003] */
  Escher_ClearSet( c_eps );
  {  if ( 0 != c_c ) {
  xtuml2masl_C_PO * C_PO_R4010_communicates_through;
  Escher_Iterator_s iC_PO_R4010_communicates_through;
  Escher_IteratorReset( &iC_PO_R4010_communicates_through, &c_c->C_PO_R4010_communicates_through );
  while ( 0 != ( C_PO_R4010_communicates_through = (xtuml2masl_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) {
  xtuml2masl_C_IR * C_IR_R4016_exposes;
  Escher_Iterator_s iC_IR_R4016_exposes;
  Escher_IteratorReset( &iC_IR_R4016_exposes, &C_PO_R4010_communicates_through->C_IR_R4016_exposes );
  while ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
  xtuml2masl_C_P * R4009_subtype = (xtuml2masl_C_P *) C_IR_R4016_exposes->R4009_subtype;
  if ( 0 != R4009_subtype )  if ( ( 0 != C_IR_R4016_exposes ) && ( xtuml2masl_C_P_CLASS_NUMBER == C_IR_R4016_exposes->R4009_object_id ) ) {
  xtuml2masl_C_IR * C_IR_R4009 = R4009_subtype->C_IR_R4009;
  if ( 0 != C_IR_R4009 ) {
  xtuml2masl_C_I * C_I_R4012_may_be_defined_by = C_IR_R4009->C_I_R4012_may_be_defined_by;
  if ( 0 != C_I_R4012_may_be_defined_by ) {
  xtuml2masl_C_EP * C_EP_R4003_is_defined_by;
  Escher_Iterator_s iC_EP_R4003_is_defined_by;
  Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &C_I_R4012_may_be_defined_by->C_EP_R4003_is_defined_by );
  while ( 0 != ( C_EP_R4003_is_defined_by = (xtuml2masl_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by );
  }}}}}}}}}
  /* SELECT many s_syncs RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->S_SYNC[R8001] */
  Escher_ClearSet( s_syncs );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_SYNC_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_SYNC * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_syncs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_syncs, R8001_subtype );
  }}}}}}}
  /* FOR EACH s_sync IN s_syncs */
  { Escher_Iterator_s iters_sync;
  xtuml2masl_S_SYNC * iis_sync;
  Escher_IteratorReset( &iters_sync, s_syncs );
  while ( (iis_sync = (xtuml2masl_S_SYNC *)Escher_IteratorNext( &iters_sync )) != 0 ) {
    s_sync = iis_sync; {
    xtuml2masl_C_EP * c_ep=0;c_t * sig=0;c_t * path=0;xtuml2masl_S_SPARM * first_s_sparm;xtuml2masl_EP_PKG * ep_pkg=0;xtuml2masl_S_DT * s_dt=0;xtuml2masl_S_SPARM * s_sparm=0;
    /* ASSIGN value[2] = private */
    value[2] = Escher_strcpy( value[2], "private" );
    /* FOR EACH c_ep IN c_eps */
    { Escher_Iterator_s iterc_ep;
    xtuml2masl_C_EP * iic_ep;
    Escher_IteratorReset( &iterc_ep, c_eps );
    while ( (iic_ep = (xtuml2masl_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
      c_ep = iic_ep; {
      /* IF ( ( c_ep.Name == s_sync.Name ) ) */
      if ( ( Escher_strcmp( c_ep->Name, s_sync->Name ) == 0 ) ) {
        /* ASSIGN value[2] = public */
        value[2] = Escher_strcpy( value[2], "public" );
        /* BREAK */
        break;
      }
    }}}
    /* ASSIGN value[3] = s_sync.Name */
    value[3] = Escher_strcpy( value[3], s_sync->Name );
    /* SELECT any s_sparm RELATED BY s_sync->S_SPARM[R24] */
    s_sparm = ( 0 != s_sync ) ? (xtuml2masl_S_SPARM *) Escher_SetGetAny( &s_sync->S_SPARM_R24_defines ) : 0;
    /* ASSIGN first_s_sparm = s_sparm */
    first_s_sparm = s_sparm;
    /* WHILE ( not_empty s_sparm ) */
    while ( ( 0 != s_sparm ) ) {
      /* ASSIGN first_s_sparm = s_sparm */
      first_s_sparm = s_sparm;
      /* SELECT one s_sparm RELATED BY s_sparm->S_SPARM[R54.succeeds] */
      s_sparm = ( 0 != s_sparm ) ? s_sparm->S_SPARM_R54_succeeds : 0;
    }
    /* out::populate(element:routine, value:value) */
    xtuml2masl_out_populate( "routine", value );
    /* ::parameterS_SPARM2parameter( s_sparm:first_s_sparm ) */
    xtuml2masl_parameterS_SPARM2parameter( first_s_sparm );
    /* SELECT one s_dt RELATED BY s_sync->S_DT[R25] */
    s_dt = ( 0 != s_sync ) ? s_sync->S_DT_R25_has_return_type_of : 0;
    /* IF ( not_empty s_dt ) */
    if ( ( 0 != s_dt ) ) {
      /* IF ( ( void != s_dt.Name ) ) */
      if ( ( Escher_strcmp( "void", s_dt->Name ) != 0 ) ) {
        /* ASSIGN value[0] = s_dt.Name */
        value[0] = Escher_strcpy( value[0], s_dt->Name );
        /* out::populate(element:typeref, value:value) */
        xtuml2masl_out_populate( "typeref", value );
        /* out::populate(element:typeref, value:emptyvalue) */
        xtuml2masl_out_populate( "typeref", emptyvalue );
      }
    }
    /* SELECT one ep_pkg RELATED BY s_sync->PE_PE[R8001]->EP_PKG[R8000] */
    ep_pkg = 0;
    {    if ( 0 != s_sync ) {
    xtuml2masl_PE_PE * PE_PE_R8001 = s_sync->PE_PE_R8001;
    if ( 0 != PE_PE_R8001 ) {
    ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
    /* ASSIGN path = ::package_get_path(ep_pkg:ep_pkg) */
    path = Escher_strcpy( path, xtuml2masl_package_get_path( ep_pkg ) );
    /* ASSIGN sig = ::underscore_signature(::function_getsignature(flavor:1, s_sync:s_sync)) */
    sig = Escher_strcpy( sig, xtuml2masl_underscore_signature( xtuml2masl_function_getsignature( 1, s_sync ) ) );
    /* ::body2code_block( name:( ( path + / ) + sig ), STRING::unescapetics(s:s_sync.Action_Semantics_internal) ) */
    xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( path, "/" ), sig ), STRING_unescapetics( s_sync->Action_Semantics_internal ) );
    /* ASSIGN s_sync.Descrip = ::parsepragmas(list:, s:s_sync.Descrip) */
    s_sync->Descrip = Escher_strcpy( s_sync->Descrip, xtuml2masl_parsepragmas( "", s_sync->Descrip ) );
    /* ::Descrip2description( Descrip:s_sync.Descrip ) */
    xtuml2masl_Descrip2description( s_sync->Descrip );
    /* out::populate(element:routine, value:emptyvalue) */
    xtuml2masl_out_populate( "routine", emptyvalue );
  }}}
  Escher_ClearSet( s_syncs ); Escher_ClearSet( c_eps ); 
}

/*
 * Domain Function:  function_getsignature
 */
c_t *
xtuml2masl_function_getsignature( const i_t p_flavor, xtuml2masl_S_SYNC * p_s_sync )
{
  c_t * signature=0;xtuml2masl_S_SYNC * s_sync;xtuml2masl_S_DT * returntype=0;
  /* ASSIGN s_sync = PARAM.s_sync */
  s_sync = p_s_sync;
  /* ASSIGN signature =  */
  signature = Escher_strcpy( signature, "" );
  /* SELECT one returntype RELATED BY s_sync->S_DT[R25] */
  returntype = ( 0 != s_sync ) ? s_sync->S_DT_R25_has_return_type_of : 0;
  /* ASSIGN signature = ( ( signature + returntype.Name ) +   ) */
  signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, returntype->Name ), " " ) );
  /* ASSIGN signature = ( signature + s_sync.Name ) */
  signature = Escher_strcpy( signature, Escher_stradd( signature, s_sync->Name ) );
  /* IF ( ( 1 == PARAM.flavor ) ) */
  if ( ( 1 == p_flavor ) ) {
    c_t * separator=0;xtuml2masl_S_SPARM * first_param;xtuml2masl_S_SPARM * parameter=0;
    /* SELECT any parameter RELATED BY s_sync->S_SPARM[R24] */
    parameter = ( 0 != s_sync ) ? (xtuml2masl_S_SPARM *) Escher_SetGetAny( &s_sync->S_SPARM_R24_defines ) : 0;
    /* ASSIGN first_param = parameter */
    first_param = parameter;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      /* ASSIGN first_param = parameter */
      first_param = parameter;
      /* SELECT one parameter RELATED BY parameter->S_SPARM[R54.succeeds] */
      parameter = ( 0 != parameter ) ? parameter->S_SPARM_R54_succeeds : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* ASSIGN parameter = first_param */
    parameter = first_param;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      xtuml2masl_S_DT * type=0;
      /* SELECT one type RELATED BY parameter->S_DT[R26] */
      type = ( 0 != parameter ) ? parameter->S_DT_R26_is_typed_by_ : 0;
      /* ASSIGN signature = ( ( signature + separator ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, separator ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* SELECT one parameter RELATED BY parameter->S_SPARM[R54.precedes] */
      parameter = ( 0 != parameter ) ? parameter->S_SPARM_R54_precedes : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
  }
  else if ( ( 0 == p_flavor ) ) {
    i_t count;i_t num_params;c_t * separator=0;xtuml2masl_S_SPARM * curr_param=0;xtuml2masl_S_SPARM * last_param=0;Escher_ObjectSet_s parameters_space={0}; Escher_ObjectSet_s * parameters = &parameters_space;
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* SELECT many parameters RELATED BY s_sync->S_SPARM[R24] */
    Escher_ClearSet( parameters );
    if ( 0 != s_sync ) {
      Escher_CopySet( parameters, &s_sync->S_SPARM_R24_defines );
    }
    /* ASSIGN num_params = cardinality parameters */
    num_params = Escher_SetCardinality( parameters );
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN count = 0 */
    count = 0;
    /* SELECT any last_param FROM INSTANCES OF S_SPARM WHERE FALSE */
    last_param = 0;
    /* SELECT any curr_param FROM INSTANCES OF S_SPARM WHERE FALSE */
    curr_param = 0;
    /* WHILE ( ( count < num_params ) ) */
    while ( ( count < num_params ) ) {
      xtuml2masl_S_SPARM * parameter=0;xtuml2masl_S_DT * type=0;
      /* FOR EACH parameter IN parameters */
      { Escher_Iterator_s iterparameter;
      xtuml2masl_S_SPARM * iiparameter;
      Escher_IteratorReset( &iterparameter, parameters );
      while ( (iiparameter = (xtuml2masl_S_SPARM *)Escher_IteratorNext( &iterparameter )) != 0 ) {
        parameter = iiparameter; {
        /* IF ( ( ( ( ( empty curr_param and empty last_param ) or ( ( ( empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) ) or ( ( not_empty curr_param and empty last_param ) and ( parameter.Name < curr_param.Name ) ) ) or ( ( ( ( not_empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) and ( parameter.Name < curr_param.Name ) ) ) ) */
        if ( ( ( ( ( ( 0 == curr_param ) && ( 0 == last_param ) ) || ( ( ( ( 0 == curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) ) || ( ( ( 0 != curr_param ) && ( 0 == last_param ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) || ( ( ( ( ( 0 != curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) ) {
          /* ASSIGN curr_param = parameter */
          curr_param = parameter;
        }
      }}}
      /* SELECT one type RELATED BY curr_param->S_DT[R26] */
      type = ( 0 != curr_param ) ? curr_param->S_DT_R26_is_typed_by_ : 0;
      /* ASSIGN signature = ( ( ( ( signature + separator ) + curr_param.Name ) + : ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( signature, separator ), curr_param->Name ), ":" ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* ASSIGN last_param = curr_param */
      last_param = curr_param;
      /* SELECT any curr_param FROM INSTANCES OF S_SPARM WHERE FALSE */
      curr_param = 0;
      /* ASSIGN count = ( count + 1 ) */
      count = ( count + 1 );
    }
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
    Escher_ClearSet( parameters ); 
  }
  /* RETURN signature */
  {c_t * xtumlOALrv = signature;
  return xtumlOALrv;}
}

/*
 * Domain Function:  identifier2identifier
 */
void
xtuml2masl_identifier2identifier( xtuml2masl_O_OBJ * p_o_obj )
{
  xtuml2masl_O_ID * o_id=0;xtuml2masl_O_OBJ * o_obj;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_ids_space={0}; Escher_ObjectSet_s * o_ids = &o_ids_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT many o_ids RELATED BY o_obj->O_ID[R104] WHERE ( ( SELECTED.Oid_ID != 0 ) ) */
  Escher_ClearSet( o_ids );
  {xtuml2masl_O_ID * selected;
  Escher_Iterator_s iO_ID_R104_is_identified_by;
  Escher_IteratorReset( &iO_ID_R104_is_identified_by, &o_obj->O_ID_R104_is_identified_by );
  while ( 0 != ( selected = (xtuml2masl_O_ID *) Escher_IteratorNext( &iO_ID_R104_is_identified_by ) ) ) {
    if ( ( selected->Oid_ID != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_ids, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) o_ids, selected );
  }}}}
  /* FOR EACH o_id IN o_ids */
  { Escher_Iterator_s itero_id;
  xtuml2masl_O_ID * iio_id;
  Escher_IteratorReset( &itero_id, o_ids );
  while ( (iio_id = (xtuml2masl_O_ID *)Escher_IteratorNext( &itero_id )) != 0 ) {
    o_id = iio_id; {
    Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;
    /* ASSIGN value[7] =  */
    value[7] = Escher_strcpy( value[7], "" );
    /* ASSIGN value[6] =  */
    value[6] = Escher_strcpy( value[6], "" );
    /* ASSIGN value[5] =  */
    value[5] = Escher_strcpy( value[5], "" );
    /* ASSIGN value[4] =  */
    value[4] = Escher_strcpy( value[4], "" );
    /* ASSIGN value[3] =  */
    value[3] = Escher_strcpy( value[3], "" );
    /* ASSIGN value[2] =  */
    value[2] = Escher_strcpy( value[2], "" );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* ASSIGN value[0] =  */
    value[0] = Escher_strcpy( value[0], "" );
    /* SELECT many o_attrs RELATED BY o_id->O_ATTR[R105] */
    Escher_ClearSet( o_attrs );
    {    if ( 0 != o_id ) {
    xtuml2masl_O_OIDA * O_OIDA_R105;
    Escher_Iterator_s iO_OIDA_R105;
    Escher_IteratorReset( &iO_OIDA_R105, &o_id->O_OIDA_R105 );
    while ( 0 != ( O_OIDA_R105 = (xtuml2masl_O_OIDA *) Escher_IteratorNext( &iO_OIDA_R105 ) ) ) {
    {xtuml2masl_O_ATTR * O_ATTR_R105_is_made_up_of_ = O_OIDA_R105->O_ATTR_R105_is_made_up_of_;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R105_is_made_up_of_ ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) o_attrs, O_ATTR_R105_is_made_up_of_ );
    }}}}}
    /* IF ( not_empty o_attrs ) */
    if ( ( ! Escher_SetIsEmpty( o_attrs ) ) ) {
      xtuml2masl_O_ATTR * o_attr=0;i_t j;i_t i;c_t * search_term=0;
      /* out::populate(element:identifier, value:value) */
      xtuml2masl_out_populate( "identifier", value );
      /* FOR EACH o_attr IN o_attrs */
      { Escher_Iterator_s itero_attr;
      xtuml2masl_O_ATTR * iio_attr;
      Escher_IteratorReset( &itero_attr, o_attrs );
      while ( (iio_attr = (xtuml2masl_O_ATTR *)Escher_IteratorNext( &itero_attr )) != 0 ) {
        o_attr = iio_attr; {
        /* ASSIGN value[0] = o_attr.Name */
        value[0] = Escher_strcpy( value[0], o_attr->Name );
        /* out::populate(element:attribute, value:value) */
        xtuml2masl_out_populate( "attribute", value );
        /* out::populate(element:attribute, value:emptyvalue) */
        xtuml2masl_out_populate( "attribute", emptyvalue );
      }}}
      /* ASSIGN search_term = identifier2 */
      search_term = Escher_strcpy( search_term, "identifier2" );
      /* IF ( ( o_id.Oid_ID == 2 ) ) */
      if ( ( o_id->Oid_ID == 2 ) ) {
        /* ASSIGN search_term = identifier3 */
        search_term = Escher_strcpy( search_term, "identifier3" );
      }
      /* ASSIGN i = STRING::indexof(haystack:o_obj.Descrip, needle:( ( < + search_term ) + > )) */
      i = STRING_indexof( o_obj->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
      /* ASSIGN j = STRING::indexof(haystack:o_obj.Descrip, needle:( ( </ + search_term ) + > )) */
      j = STRING_indexof( o_obj->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
      /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
      if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
        c_t * descrip_end=0;c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
        /* ASSIGN pragma_string = STRING::substr(begin:( i + 12 ), end:j, s:o_obj.Descrip) */
        pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( i + 12 ), j, o_obj->Descrip ) );
        /* ASSIGN s = ::parsepragmas(list:, s:pragma_string) */
        s = Escher_strcpy( s, xtuml2masl_parsepragmas( "", pragma_string ) );
        /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:o_obj.Descrip) */
        descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, o_obj->Descrip ) );
        /* ASSIGN descrip_end = STRING::substr(begin:( j + 14 ), end:- 1, s:o_obj.Descrip) */
        descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( j + 14 ), -1, o_obj->Descrip ) );
        /* ASSIGN o_obj.Descrip = ( descrip_begin + descrip_end ) */
        o_obj->Descrip = Escher_strcpy( o_obj->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
      }
      /* out::populate(element:identifier, value:emptyvalue) */
      xtuml2masl_out_populate( "identifier", emptyvalue );
    }
    Escher_ClearSet( o_attrs ); 
  }}}
  Escher_ClearSet( o_ids ); 
}

/*
 * Domain Function:  masl_domain
 */
void
xtuml2masl_masl_domain( c_t * p_domain, const bool p_kl )
{
  c_t * domain=0;Escher_ObjectSet_s c_cs_space={0}; Escher_ObjectSet_s * c_cs = &c_cs_space;
  /* TRACE::log( flavor:info, id:103, message:Starting domain. ) */
  TRACE_log( "info", 103, "Starting domain." );
  /* ASSIGN domain = PARAM.domain */
  domain = Escher_strcpy( domain, p_domain );
  /* SELECT many c_cs FROM INSTANCES OF C_C WHERE FALSE */
  Escher_ClearSet( c_cs );
  /* IF ( ( (  == domain ) or ( * == domain ) ) ) */
  if ( ( ( Escher_strcmp( "", domain ) == 0 ) || ( Escher_strcmp( "*", domain ) == 0 ) ) ) {
    /* SELECT many c_cs FROM INSTANCES OF C_C */
    Escher_CopySet( c_cs, &pG_xtuml2masl_C_C_extent.active );
  }
  else {
    /* SELECT many c_cs FROM INSTANCES OF C_C WHERE ( SELECTED.Name == domain ) */
    Escher_ClearSet( c_cs );
    { xtuml2masl_C_C * selected;
      Escher_Iterator_s iterc_csxtuml2masl_C_C;
      Escher_IteratorReset( &iterc_csxtuml2masl_C_C, &pG_xtuml2masl_C_C_extent.active );
      while ( (selected = (xtuml2masl_C_C *) Escher_IteratorNext( &iterc_csxtuml2masl_C_C )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, domain ) == 0 ) ) {
          Escher_SetInsertElement( c_cs, selected );
        }
      }
    }
  }
  /* IF ( empty c_cs ) */
  if ( Escher_SetIsEmpty( c_cs ) ) {
    /* TRACE::log( flavor:failure, id:1, message:( ERROR:  Component/domain not found in model:   + domain ) ) */
    TRACE_log( "failure", 1, Escher_stradd( "ERROR:  Component/domain not found in model:  ", domain ) );
  }
  else {
    xtuml2masl_C_C * c_c=0;
    /* ::component2domain( c_cs:c_cs, kl:PARAM.kl, project:FALSE ) */
    xtuml2masl_component2domain( c_cs, p_kl, FALSE );
    /* FOR EACH c_c IN c_cs */
    { Escher_Iterator_s iterc_c;
    xtuml2masl_C_C * iic_c;
    Escher_IteratorReset( &iterc_c, c_cs );
    while ( (iic_c = (xtuml2masl_C_C *)Escher_IteratorNext( &iterc_c )) != 0 ) {
      c_c = iic_c; {
    }}}
  }
  /* TRACE::log( flavor:info, id:104, message:Done. ) */
  TRACE_log( "info", 104, "Done." );
  Escher_ClearSet( c_cs );
}

/*
 * Domain Function:  masl_project
 */
void
xtuml2masl_masl_project( const bool p_kl, c_t * p_project )
{
  c_t * project=0;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;
  /* TRACE::log( flavor:info, id:101, message:Starting Project ) */
  TRACE_log( "info", 101, "Starting Project" );
  /* ASSIGN project = PARAM.project */
  project = Escher_strcpy( project, p_project );
  /* SELECT many ep_pkgs FROM INSTANCES OF EP_PKG WHERE FALSE */
  Escher_ClearSet( ep_pkgs );
  /* IF ( ( (  == project ) or ( * == project ) ) ) */
  if ( ( ( Escher_strcmp( "", project ) == 0 ) || ( Escher_strcmp( "*", project ) == 0 ) ) ) {
    /* SELECT many ep_pkgs FROM INSTANCES OF EP_PKG WHERE ( SELECTED.Descrip == project ) */
    Escher_ClearSet( ep_pkgs );
    { xtuml2masl_EP_PKG * selected;
      Escher_Iterator_s iterep_pkgsxtuml2masl_EP_PKG;
      Escher_IteratorReset( &iterep_pkgsxtuml2masl_EP_PKG, &pG_xtuml2masl_EP_PKG_extent.active );
      while ( (selected = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &iterep_pkgsxtuml2masl_EP_PKG )) != 0 ) {
        if ( ( Escher_strcmp( selected->Descrip, project ) == 0 ) ) {
          Escher_SetInsertElement( ep_pkgs, selected );
        }
      }
    }
  }
  else {
    /* SELECT many ep_pkgs FROM INSTANCES OF EP_PKG WHERE ( SELECTED.Name == project ) */
    Escher_ClearSet( ep_pkgs );
    { xtuml2masl_EP_PKG * selected;
      Escher_Iterator_s iterep_pkgsxtuml2masl_EP_PKG;
      Escher_IteratorReset( &iterep_pkgsxtuml2masl_EP_PKG, &pG_xtuml2masl_EP_PKG_extent.active );
      while ( (selected = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &iterep_pkgsxtuml2masl_EP_PKG )) != 0 ) {
        if ( ( Escher_strcmp( selected->Name, project ) == 0 ) ) {
          Escher_SetInsertElement( ep_pkgs, selected );
        }
      }
    }
  }
  /* IF ( empty ep_pkgs ) */
  if ( Escher_SetIsEmpty( ep_pkgs ) ) {
    /* TRACE::log( flavor:failure, id:1, message:( ERROR:  project package was not found: + project ) ) */
    TRACE_log( "failure", 1, Escher_stradd( "ERROR:  project package was not found:", project ) );
  }
  /* ::package2project( ep_pkgs:ep_pkgs, kl:PARAM.kl ) */
  xtuml2masl_package2project( ep_pkgs, p_kl );
  /* TRACE::log( flavor:info, id:102, message:Done ) */
  TRACE_log( "info", 102, "Done" );
  Escher_ClearSet( ep_pkgs );
}

/*
 * Domain Function:  message2routine
 */
void
xtuml2masl_message2routine( xtuml2masl_C_C * p_c_c, xtuml2masl_C_PO * p_c_po, const bool p_project )
{
  xtuml2masl_C_EP * c_ep=0;xtuml2masl_C_PO * c_po;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s c_eps_space={0}; Escher_ObjectSet_s * c_eps = &c_eps_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN c_po = PARAM.c_po */
  c_po = p_c_po;
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] =  */
  value[1] = Escher_strcpy( value[1], "" );
  /* SELECT many c_eps RELATED BY c_po->C_IR[R4016]->C_I[R4012]->C_EP[R4003] */
  Escher_ClearSet( c_eps );
  {  if ( 0 != c_po ) {
  xtuml2masl_C_IR * C_IR_R4016_exposes;
  Escher_Iterator_s iC_IR_R4016_exposes;
  Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
  while ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
  xtuml2masl_C_I * C_I_R4012_may_be_defined_by = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
  if ( 0 != C_I_R4012_may_be_defined_by ) {
  xtuml2masl_C_EP * C_EP_R4003_is_defined_by;
  Escher_Iterator_s iC_EP_R4003_is_defined_by;
  Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &C_I_R4012_may_be_defined_by->C_EP_R4003_is_defined_by );
  while ( 0 != ( C_EP_R4003_is_defined_by = (xtuml2masl_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by );
  }}}}}}
  /* FOR EACH c_ep IN c_eps */
  { Escher_Iterator_s iterc_ep;
  xtuml2masl_C_EP * iic_ep;
  Escher_IteratorReset( &iterc_ep, c_eps );
  while ( (iic_ep = (xtuml2masl_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
    c_ep = iic_ep; {
    c_t * sig=0;c_t * port_name=0;c_t * path=0;xtuml2masl_C_PP * first_c_pp;xtuml2masl_S_DT * s_dt=0;xtuml2masl_C_PP * c_pp=0;
    /* ASSIGN value[2] = private */
    value[2] = Escher_strcpy( value[2], "private" );
    /* ASSIGN value[3] = c_ep.Name */
    value[3] = Escher_strcpy( value[3], c_ep->Name );
    /* out::populate(element:routine, value:value) */
    xtuml2masl_out_populate( "routine", value );
    /* SELECT any c_pp RELATED BY c_ep->C_PP[R4006] */
    c_pp = ( 0 != c_ep ) ? (xtuml2masl_C_PP *) Escher_SetGetAny( &c_ep->C_PP_R4006_is_parameter_to ) : 0;
    /* ASSIGN first_c_pp = c_pp */
    first_c_pp = c_pp;
    /* WHILE ( not_empty c_pp ) */
    while ( ( 0 != c_pp ) ) {
      /* ASSIGN first_c_pp = c_pp */
      first_c_pp = c_pp;
      /* SELECT one c_pp RELATED BY c_pp->C_PP[R4021.succeeds] */
      c_pp = ( 0 != c_pp ) ? c_pp->C_PP_R4021_succeeds : 0;
    }
    /* ::parameterC_PP2parameter( c_pp:first_c_pp ) */
    xtuml2masl_parameterC_PP2parameter( first_c_pp );
    /* SELECT one s_dt RELATED BY c_ep->C_IO[R4004]->S_DT[R4008] */
    s_dt = 0;
    {    if ( 0 != c_ep ) {
    xtuml2masl_C_IO * R4004_subtype = (xtuml2masl_C_IO *) c_ep->R4004_subtype;
    if ( 0 != R4004_subtype )    if ( ( 0 != c_ep ) && ( xtuml2masl_C_IO_CLASS_NUMBER == c_ep->R4004_object_id ) ) {
    s_dt = R4004_subtype->S_DT_R4008_has_return_defined_by;
}}}
    /* IF ( not_empty s_dt ) */
    if ( ( 0 != s_dt ) ) {
      /* IF ( ( void != s_dt.Name ) ) */
      if ( ( Escher_strcmp( "void", s_dt->Name ) != 0 ) ) {
        /* ASSIGN value[0] = s_dt.Name */
        value[0] = Escher_strcpy( value[0], s_dt->Name );
        /* ASSIGN value[1] =  */
        value[1] = Escher_strcpy( value[1], "" );
        /* ASSIGN value[2] =  */
        value[2] = Escher_strcpy( value[2], "" );
        /* ASSIGN value[3] =  */
        value[3] = Escher_strcpy( value[3], "" );
        /* out::populate(element:typeref, value:value) */
        xtuml2masl_out_populate( "typeref", value );
        /* out::populate(element:typeref, value:emptyvalue) */
        xtuml2masl_out_populate( "typeref", emptyvalue );
      }
    }
    /* ASSIGN path =  */
    path = Escher_strcpy( path, "" );
    /* ASSIGN port_name =  */
    port_name = Escher_strcpy( port_name, "" );
    /* IF ( PARAM.project ) */
    if ( p_project ) {
      xtuml2masl_C_C * project_c_c=0;xtuml2masl_C_PO * project_c_po=0;
      /* SELECT any project_c_po RELATED BY c_po->C_IR[R4016]->C_I[R4012]->C_IR[R4012]->C_P[R4009]->C_IR[R4009]->C_PO[R4016] */
      project_c_po = 0;
      {      if ( 0 != c_po ) {
      xtuml2masl_C_IR * C_IR_R4016_exposes;
      Escher_Iterator_s iC_IR_R4016_exposes;
      Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
      while ( ( 0 == project_c_po ) && ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
      xtuml2masl_C_I * C_I_R4012_may_be_defined_by = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
      if ( 0 != C_I_R4012_may_be_defined_by ) {
      xtuml2masl_C_IR * C_IR_R4012_is_formal_definition;
      Escher_Iterator_s iC_IR_R4012_is_formal_definition;
      Escher_IteratorReset( &iC_IR_R4012_is_formal_definition, &C_I_R4012_may_be_defined_by->C_IR_R4012_is_formal_definition );
      while ( ( 0 == project_c_po ) && ( 0 != ( C_IR_R4012_is_formal_definition = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4012_is_formal_definition ) ) ) ) {
      xtuml2masl_C_P * R4009_subtype = (xtuml2masl_C_P *) C_IR_R4012_is_formal_definition->R4009_subtype;
      if ( 0 != R4009_subtype )      if ( ( 0 != C_IR_R4012_is_formal_definition ) && ( xtuml2masl_C_P_CLASS_NUMBER == C_IR_R4012_is_formal_definition->R4009_object_id ) ) {
      xtuml2masl_C_IR * C_IR_R4009 = R4009_subtype->C_IR_R4009;
      if ( 0 != C_IR_R4009 ) {
      project_c_po = C_IR_R4009->C_PO_R4016_originates_from;
}}}}}}}
      /* SELECT one project_c_c RELATED BY project_c_po->C_C[R4010] */
      project_c_c = ( 0 != project_c_po ) ? project_c_po->C_C_R4010_appears_in : 0;
      /* ASSIGN path = ::component_get_path(c_c:project_c_c) */
      path = Escher_strcpy( path, xtuml2masl_component_get_path( project_c_c ) );
      /* ASSIGN port_name = project_c_po.Name */
      port_name = Escher_strcpy( port_name, project_c_po->Name );
    }
    else {
      /* ASSIGN path = ::component_get_path(c_c:c_c) */
      path = Escher_strcpy( path, xtuml2masl_component_get_path( c_c ) );
      /* ASSIGN port_name = c_po.Name */
      port_name = Escher_strcpy( port_name, c_po->Name );
    }
    /* ASSIGN sig = ::underscore_signature(::message_getsignature(c_ep:c_ep, flavor:1)) */
    sig = Escher_strcpy( sig, xtuml2masl_underscore_signature( xtuml2masl_message_getsignature( c_ep, 1 ) ) );
    /* IF ( PARAM.project ) */
    if ( p_project ) {
      xtuml2masl_SPR_PO * spr_po=0;
      /* SELECT any spr_po RELATED BY c_ep->SPR_PEP[R4501]->SPR_PO[R4503] */
      spr_po = 0;
      {      if ( 0 != c_ep ) {
      xtuml2masl_SPR_PEP * SPR_PEP_R4501;
      Escher_Iterator_s iSPR_PEP_R4501;
      Escher_IteratorReset( &iSPR_PEP_R4501, &c_ep->SPR_PEP_R4501 );
      while ( ( 0 == spr_po ) && ( 0 != ( SPR_PEP_R4501 = (xtuml2masl_SPR_PEP *) Escher_IteratorNext( &iSPR_PEP_R4501 ) ) ) ) {
      if ( ( 0 != SPR_PEP_R4501 ) && ( xtuml2masl_SPR_PO_CLASS_NUMBER == SPR_PEP_R4501->R4503_object_id ) )      spr_po = (xtuml2masl_SPR_PO *) SPR_PEP_R4501->R4503_subtype;
}}}
      /* ::body2code_block( name:( ( ( ( path + / ) + port_name ) + _ ) + sig ), STRING::unescapetics(s:spr_po.Action_Semantics_internal) ) */
      xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( path, "/" ), port_name ), "_" ), sig ), STRING_unescapetics( spr_po->Action_Semantics_internal ) );
      /* ASSIGN spr_po.Descrip = ::parsepragmas(list:, s:spr_po.Descrip) */
      spr_po->Descrip = Escher_strcpy( spr_po->Descrip, xtuml2masl_parsepragmas( "", spr_po->Descrip ) );
      /* ::Descrip2description( Descrip:spr_po.Descrip ) */
      xtuml2masl_Descrip2description( spr_po->Descrip );
    }
    else {
      xtuml2masl_SPR_RO * spr_ro=0;
      /* SELECT any spr_ro RELATED BY c_ep->SPR_REP[R4500]->SPR_RO[R4502] */
      spr_ro = 0;
      {      if ( 0 != c_ep ) {
      xtuml2masl_SPR_REP * SPR_REP_R4500;
      Escher_Iterator_s iSPR_REP_R4500;
      Escher_IteratorReset( &iSPR_REP_R4500, &c_ep->SPR_REP_R4500 );
      while ( ( 0 == spr_ro ) && ( 0 != ( SPR_REP_R4500 = (xtuml2masl_SPR_REP *) Escher_IteratorNext( &iSPR_REP_R4500 ) ) ) ) {
      if ( ( 0 != SPR_REP_R4500 ) && ( xtuml2masl_SPR_RO_CLASS_NUMBER == SPR_REP_R4500->R4502_object_id ) )      spr_ro = (xtuml2masl_SPR_RO *) SPR_REP_R4500->R4502_subtype;
}}}
      /* ::body2code_block( name:( ( ( ( path + / ) + port_name ) + _ ) + sig ), STRING::unescapetics(s:spr_ro.Action_Semantics_internal) ) */
      xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( path, "/" ), port_name ), "_" ), sig ), STRING_unescapetics( spr_ro->Action_Semantics_internal ) );
      /* ASSIGN spr_ro.Descrip = ::parsepragmas(list:, s:spr_ro.Descrip) */
      spr_ro->Descrip = Escher_strcpy( spr_ro->Descrip, xtuml2masl_parsepragmas( "", spr_ro->Descrip ) );
      /* ::Descrip2description( Descrip:spr_ro.Descrip ) */
      xtuml2masl_Descrip2description( spr_ro->Descrip );
    }
    /* out::populate(element:routine, value:emptyvalue) */
    xtuml2masl_out_populate( "routine", emptyvalue );
  }}}
  Escher_ClearSet( c_eps ); 
}

/*
 * Domain Function:  message_getsignature
 */
c_t *
xtuml2masl_message_getsignature( xtuml2masl_C_EP * p_c_ep, const i_t p_flavor )
{
  xtuml2masl_C_EP * c_ep;xtuml2masl_C_IO * c_io=0;
  /* ASSIGN c_ep = PARAM.c_ep */
  c_ep = p_c_ep;
  /* SELECT one c_io RELATED BY c_ep->C_IO[R4004] */
  c_io = 0;
  if ( ( 0 != c_ep ) && ( xtuml2masl_C_IO_CLASS_NUMBER == c_ep->R4004_object_id ) )  c_io = ( 0 != c_ep ) ? (xtuml2masl_C_IO *) c_ep->R4004_subtype : 0;
  /* IF ( not_empty c_io ) */
  if ( ( 0 != c_io ) ) {
    c_t * signature=0;xtuml2masl_S_DT * returntype=0;
    /* ASSIGN signature =  */
    signature = Escher_strcpy( signature, "" );
    /* SELECT one returntype RELATED BY c_io->S_DT[R4008] */
    returntype = ( 0 != c_io ) ? c_io->S_DT_R4008_has_return_defined_by : 0;
    /* ASSIGN signature = ( ( signature + returntype.Name ) +   ) */
    signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, returntype->Name ), " " ) );
    /* ASSIGN signature = ( signature + c_io.Name ) */
    signature = Escher_strcpy( signature, Escher_stradd( signature, c_io->Name ) );
    /* IF ( ( 1 == PARAM.flavor ) ) */
    if ( ( 1 == p_flavor ) ) {
      c_t * separator=0;xtuml2masl_C_PP * first_param;xtuml2masl_C_PP * parameter=0;
      /* SELECT any parameter RELATED BY c_io->C_EP[R4004]->C_PP[R4006] */
      parameter = 0;
      {      if ( 0 != c_io ) {
      xtuml2masl_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
      if ( 0 != C_EP_R4004 ) {
      parameter = ( 0 != C_EP_R4004 ) ? (xtuml2masl_C_PP *) Escher_SetGetAny( &C_EP_R4004->C_PP_R4006_is_parameter_to ) : 0;
}}}
      /* ASSIGN first_param = parameter */
      first_param = parameter;
      /* WHILE ( not_empty parameter ) */
      while ( ( 0 != parameter ) ) {
        /* ASSIGN first_param = parameter */
        first_param = parameter;
        /* SELECT one parameter RELATED BY parameter->C_PP[R4021.succeeds] */
        parameter = ( 0 != parameter ) ? parameter->C_PP_R4021_succeeds : 0;
      }
      /* IF ( not_empty first_param ) */
      if ( ( 0 != first_param ) ) {
        /* ASSIGN signature = ( signature + ( ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
      }
      /* ASSIGN separator =  */
      separator = Escher_strcpy( separator, "" );
      /* ASSIGN parameter = first_param */
      parameter = first_param;
      /* WHILE ( not_empty parameter ) */
      while ( ( 0 != parameter ) ) {
        xtuml2masl_S_DT * type=0;
        /* SELECT one type RELATED BY parameter->S_DT[R4007] */
        type = ( 0 != parameter ) ? parameter->S_DT_R4007_is_typed_by : 0;
        /* ASSIGN signature = ( ( signature + separator ) + type.Name ) */
        signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, separator ), type->Name ) );
        /* ASSIGN separator = ,  */
        separator = Escher_strcpy( separator, ", " );
        /* SELECT one parameter RELATED BY parameter->C_PP[R4021.precedes] */
        parameter = ( 0 != parameter ) ? parameter->C_PP_R4021_precedes : 0;
      }
      /* IF ( not_empty first_param ) */
      if ( ( 0 != first_param ) ) {
        /* ASSIGN signature = ( signature + ) ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
      }
    }
    else if ( ( 0 == p_flavor ) ) {
      i_t count;i_t num_params;c_t * separator=0;xtuml2masl_C_PP * curr_param=0;xtuml2masl_C_PP * last_param=0;Escher_ObjectSet_s parameters_space={0}; Escher_ObjectSet_s * parameters = &parameters_space;
      /* ASSIGN separator =  */
      separator = Escher_strcpy( separator, "" );
      /* SELECT many parameters RELATED BY c_io->C_EP[R4004]->C_PP[R4006] */
      Escher_ClearSet( parameters );
      {      if ( 0 != c_io ) {
      xtuml2masl_C_EP * C_EP_R4004 = c_io->C_EP_R4004;
      if ( 0 != C_EP_R4004 ) {
      xtuml2masl_C_PP * C_PP_R4006_is_parameter_to;
      Escher_Iterator_s iC_PP_R4006_is_parameter_to;
      Escher_IteratorReset( &iC_PP_R4006_is_parameter_to, &C_EP_R4004->C_PP_R4006_is_parameter_to );
      while ( 0 != ( C_PP_R4006_is_parameter_to = (xtuml2masl_C_PP *) Escher_IteratorNext( &iC_PP_R4006_is_parameter_to ) ) ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) parameters, C_PP_R4006_is_parameter_to ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) parameters, C_PP_R4006_is_parameter_to );
      }}}}}
      /* ASSIGN num_params = cardinality parameters */
      num_params = Escher_SetCardinality( parameters );
      /* IF ( ( num_params > 0 ) ) */
      if ( ( num_params > 0 ) ) {
        /* ASSIGN signature = ( signature + ( ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
      }
      /* ASSIGN count = 0 */
      count = 0;
      /* SELECT any last_param FROM INSTANCES OF C_PP WHERE FALSE */
      last_param = 0;
      /* SELECT any curr_param FROM INSTANCES OF C_PP WHERE FALSE */
      curr_param = 0;
      /* WHILE ( ( count < num_params ) ) */
      while ( ( count < num_params ) ) {
        xtuml2masl_C_PP * parameter=0;xtuml2masl_S_DT * type=0;
        /* FOR EACH parameter IN parameters */
        { Escher_Iterator_s iterparameter;
        xtuml2masl_C_PP * iiparameter;
        Escher_IteratorReset( &iterparameter, parameters );
        while ( (iiparameter = (xtuml2masl_C_PP *)Escher_IteratorNext( &iterparameter )) != 0 ) {
          parameter = iiparameter; {
          /* IF ( ( ( ( ( empty curr_param and empty last_param ) or ( ( ( empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) ) or ( ( not_empty curr_param and empty last_param ) and ( parameter.Name < curr_param.Name ) ) ) or ( ( ( ( not_empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) and ( parameter.Name < curr_param.Name ) ) ) ) */
          if ( ( ( ( ( ( 0 == curr_param ) && ( 0 == last_param ) ) || ( ( ( ( 0 == curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) ) || ( ( ( 0 != curr_param ) && ( 0 == last_param ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) || ( ( ( ( ( 0 != curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) ) {
            /* ASSIGN curr_param = parameter */
            curr_param = parameter;
          }
        }}}
        /* SELECT one type RELATED BY curr_param->S_DT[R4007] */
        type = ( 0 != curr_param ) ? curr_param->S_DT_R4007_is_typed_by : 0;
        /* ASSIGN signature = ( ( ( ( signature + separator ) + curr_param.Name ) + : ) + type.Name ) */
        signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( signature, separator ), curr_param->Name ), ":" ), type->Name ) );
        /* ASSIGN separator = ,  */
        separator = Escher_strcpy( separator, ", " );
        /* ASSIGN last_param = curr_param */
        last_param = curr_param;
        /* SELECT any curr_param FROM INSTANCES OF C_PP WHERE FALSE */
        curr_param = 0;
        /* ASSIGN count = ( count + 1 ) */
        count = ( count + 1 );
      }
      /* IF ( ( num_params > 0 ) ) */
      if ( ( num_params > 0 ) ) {
        /* ASSIGN signature = ( signature + ) ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
      }
      Escher_ClearSet( parameters ); 
    }
    /* RETURN signature */
    {c_t * xtumlOALrv = signature;
    return xtumlOALrv;}
  }
  else {
    c_t * signature=0;xtuml2masl_C_AS * c_as=0;
    /* SELECT one c_as RELATED BY c_ep->C_AS[R4004] */
    c_as = 0;
    if ( ( 0 != c_ep ) && ( xtuml2masl_C_AS_CLASS_NUMBER == c_ep->R4004_object_id ) )    c_as = ( 0 != c_ep ) ? (xtuml2masl_C_AS *) c_ep->R4004_subtype : 0;
    /* ASSIGN signature =  */
    signature = Escher_strcpy( signature, "" );
    /* ASSIGN signature = ( signature + c_as.Name ) */
    signature = Escher_strcpy( signature, Escher_stradd( signature, c_as->Name ) );
    /* IF ( ( 1 == PARAM.flavor ) ) */
    if ( ( 1 == p_flavor ) ) {
      c_t * separator=0;xtuml2masl_C_PP * first_param;xtuml2masl_C_PP * parameter=0;
      /* SELECT any parameter RELATED BY c_as->C_EP[R4004]->C_PP[R4006] */
      parameter = 0;
      {      if ( 0 != c_as ) {
      xtuml2masl_C_EP * C_EP_R4004 = c_as->C_EP_R4004;
      if ( 0 != C_EP_R4004 ) {
      parameter = ( 0 != C_EP_R4004 ) ? (xtuml2masl_C_PP *) Escher_SetGetAny( &C_EP_R4004->C_PP_R4006_is_parameter_to ) : 0;
}}}
      /* ASSIGN first_param = parameter */
      first_param = parameter;
      /* WHILE ( not_empty parameter ) */
      while ( ( 0 != parameter ) ) {
        /* ASSIGN first_param = parameter */
        first_param = parameter;
        /* SELECT one parameter RELATED BY parameter->C_PP[R4021.succeeds] */
        parameter = ( 0 != parameter ) ? parameter->C_PP_R4021_succeeds : 0;
      }
      /* IF ( not_empty first_param ) */
      if ( ( 0 != first_param ) ) {
        /* ASSIGN signature = ( signature + ( ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
      }
      /* ASSIGN separator =  */
      separator = Escher_strcpy( separator, "" );
      /* ASSIGN parameter = first_param */
      parameter = first_param;
      /* WHILE ( not_empty parameter ) */
      while ( ( 0 != parameter ) ) {
        xtuml2masl_S_DT * type=0;
        /* SELECT one type RELATED BY parameter->S_DT[R4007] */
        type = ( 0 != parameter ) ? parameter->S_DT_R4007_is_typed_by : 0;
        /* ASSIGN signature = ( ( signature + separator ) + type.Name ) */
        signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, separator ), type->Name ) );
        /* ASSIGN separator = ,  */
        separator = Escher_strcpy( separator, ", " );
        /* SELECT one parameter RELATED BY parameter->C_PP[R4021.precedes] */
        parameter = ( 0 != parameter ) ? parameter->C_PP_R4021_precedes : 0;
      }
      /* IF ( not_empty first_param ) */
      if ( ( 0 != first_param ) ) {
        /* ASSIGN signature = ( signature + ) ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
      }
    }
    else if ( ( 0 == p_flavor ) ) {
      i_t count;i_t num_params;c_t * separator=0;xtuml2masl_C_PP * curr_param=0;xtuml2masl_C_PP * last_param=0;Escher_ObjectSet_s parameters_space={0}; Escher_ObjectSet_s * parameters = &parameters_space;
      /* ASSIGN separator =  */
      separator = Escher_strcpy( separator, "" );
      /* SELECT many parameters RELATED BY c_as->C_EP[R4004]->C_PP[R4006] */
      Escher_ClearSet( parameters );
      {      if ( 0 != c_as ) {
      xtuml2masl_C_EP * C_EP_R4004 = c_as->C_EP_R4004;
      if ( 0 != C_EP_R4004 ) {
      xtuml2masl_C_PP * C_PP_R4006_is_parameter_to;
      Escher_Iterator_s iC_PP_R4006_is_parameter_to;
      Escher_IteratorReset( &iC_PP_R4006_is_parameter_to, &C_EP_R4004->C_PP_R4006_is_parameter_to );
      while ( 0 != ( C_PP_R4006_is_parameter_to = (xtuml2masl_C_PP *) Escher_IteratorNext( &iC_PP_R4006_is_parameter_to ) ) ) {
        if ( ! Escher_SetContains( (Escher_ObjectSet_s *) parameters, C_PP_R4006_is_parameter_to ) ) {
          Escher_SetInsertElement( (Escher_ObjectSet_s *) parameters, C_PP_R4006_is_parameter_to );
      }}}}}
      /* ASSIGN num_params = cardinality parameters */
      num_params = Escher_SetCardinality( parameters );
      /* IF ( ( num_params > 0 ) ) */
      if ( ( num_params > 0 ) ) {
        /* ASSIGN signature = ( signature + ( ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
      }
      /* ASSIGN count = 0 */
      count = 0;
      /* SELECT any last_param FROM INSTANCES OF C_PP WHERE FALSE */
      last_param = 0;
      /* SELECT any curr_param FROM INSTANCES OF C_PP WHERE FALSE */
      curr_param = 0;
      /* WHILE ( ( count < num_params ) ) */
      while ( ( count < num_params ) ) {
        xtuml2masl_C_PP * parameter=0;xtuml2masl_S_DT * type=0;
        /* FOR EACH parameter IN parameters */
        { Escher_Iterator_s iterparameter;
        xtuml2masl_C_PP * iiparameter;
        Escher_IteratorReset( &iterparameter, parameters );
        while ( (iiparameter = (xtuml2masl_C_PP *)Escher_IteratorNext( &iterparameter )) != 0 ) {
          parameter = iiparameter; {
          /* IF ( ( ( ( ( empty curr_param and empty last_param ) or ( ( ( empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) ) or ( ( not_empty curr_param and empty last_param ) and ( parameter.Name < curr_param.Name ) ) ) or ( ( ( ( not_empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) and ( parameter.Name < curr_param.Name ) ) ) ) */
          if ( ( ( ( ( ( 0 == curr_param ) && ( 0 == last_param ) ) || ( ( ( ( 0 == curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) ) || ( ( ( 0 != curr_param ) && ( 0 == last_param ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) || ( ( ( ( ( 0 != curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) ) {
            /* ASSIGN curr_param = parameter */
            curr_param = parameter;
          }
        }}}
        /* SELECT one type RELATED BY curr_param->S_DT[R4007] */
        type = ( 0 != curr_param ) ? curr_param->S_DT_R4007_is_typed_by : 0;
        /* ASSIGN signature = ( ( ( ( signature + separator ) + curr_param.Name ) + : ) + type.Name ) */
        signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( signature, separator ), curr_param->Name ), ":" ), type->Name ) );
        /* ASSIGN separator = ,  */
        separator = Escher_strcpy( separator, ", " );
        /* ASSIGN last_param = curr_param */
        last_param = curr_param;
        /* SELECT any curr_param FROM INSTANCES OF C_PP WHERE FALSE */
        curr_param = 0;
        /* ASSIGN count = ( count + 1 ) */
        count = ( count + 1 );
      }
      /* IF ( ( num_params > 0 ) ) */
      if ( ( num_params > 0 ) ) {
        /* ASSIGN signature = ( signature + ) ) */
        signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
      }
      Escher_ClearSet( parameters ); 
    }
    /* RETURN signature */
    {c_t * xtumlOALrv = signature;
    return xtumlOALrv;}
  }
}

/*
 * Domain Function:  operation_getsignature
 */
c_t *
xtuml2masl_operation_getsignature( const i_t p_flavor, xtuml2masl_O_TFR * p_o_tfr )
{
  c_t * signature=0;xtuml2masl_O_TFR * o_tfr;xtuml2masl_S_DT * returntype=0;
  /* ASSIGN o_tfr = PARAM.o_tfr */
  o_tfr = p_o_tfr;
  /* ASSIGN signature =  */
  signature = Escher_strcpy( signature, "" );
  /* SELECT one returntype RELATED BY o_tfr->S_DT[R116] */
  returntype = ( 0 != o_tfr ) ? o_tfr->S_DT_R116_return_code_is_defined_by : 0;
  /* ASSIGN signature = ( ( signature + returntype.Name ) +   ) */
  signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, returntype->Name ), " " ) );
  /* ASSIGN signature = ( signature + o_tfr.Name ) */
  signature = Escher_strcpy( signature, Escher_stradd( signature, o_tfr->Name ) );
  /* IF ( ( 1 == PARAM.flavor ) ) */
  if ( ( 1 == p_flavor ) ) {
    c_t * separator=0;xtuml2masl_O_TPARM * first_param;xtuml2masl_O_TPARM * parameter=0;
    /* SELECT any parameter RELATED BY o_tfr->O_TPARM[R117] */
    parameter = ( 0 != o_tfr ) ? (xtuml2masl_O_TPARM *) Escher_SetGetAny( &o_tfr->O_TPARM_R117_contains ) : 0;
    /* ASSIGN first_param = parameter */
    first_param = parameter;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      /* ASSIGN first_param = parameter */
      first_param = parameter;
      /* SELECT one parameter RELATED BY parameter->O_TPARM[R124.succeeds] */
      parameter = ( 0 != parameter ) ? parameter->O_TPARM_R124_succeeds : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* ASSIGN parameter = first_param */
    parameter = first_param;
    /* WHILE ( not_empty parameter ) */
    while ( ( 0 != parameter ) ) {
      xtuml2masl_S_DT * type=0;
      /* SELECT one type RELATED BY parameter->S_DT[R118] */
      type = ( 0 != parameter ) ? parameter->S_DT_R118_is_defined_by : 0;
      /* ASSIGN signature = ( ( signature + separator ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( signature, separator ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* SELECT one parameter RELATED BY parameter->O_TPARM[R124.precedes] */
      parameter = ( 0 != parameter ) ? parameter->O_TPARM_R124_precedes : 0;
    }
    /* IF ( not_empty first_param ) */
    if ( ( 0 != first_param ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
  }
  else if ( ( 0 == p_flavor ) ) {
    i_t count;i_t num_params;c_t * separator=0;xtuml2masl_O_TPARM * curr_param=0;xtuml2masl_O_TPARM * last_param=0;Escher_ObjectSet_s parameters_space={0}; Escher_ObjectSet_s * parameters = &parameters_space;
    /* ASSIGN separator =  */
    separator = Escher_strcpy( separator, "" );
    /* SELECT many parameters RELATED BY o_tfr->O_TPARM[R117] */
    Escher_ClearSet( parameters );
    if ( 0 != o_tfr ) {
      Escher_CopySet( parameters, &o_tfr->O_TPARM_R117_contains );
    }
    /* ASSIGN num_params = cardinality parameters */
    num_params = Escher_SetCardinality( parameters );
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ( ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, "(" ) );
    }
    /* ASSIGN count = 0 */
    count = 0;
    /* SELECT any last_param FROM INSTANCES OF O_TPARM WHERE FALSE */
    last_param = 0;
    /* SELECT any curr_param FROM INSTANCES OF O_TPARM WHERE FALSE */
    curr_param = 0;
    /* WHILE ( ( count < num_params ) ) */
    while ( ( count < num_params ) ) {
      xtuml2masl_O_TPARM * parameter=0;xtuml2masl_S_DT * type=0;
      /* FOR EACH parameter IN parameters */
      { Escher_Iterator_s iterparameter;
      xtuml2masl_O_TPARM * iiparameter;
      Escher_IteratorReset( &iterparameter, parameters );
      while ( (iiparameter = (xtuml2masl_O_TPARM *)Escher_IteratorNext( &iterparameter )) != 0 ) {
        parameter = iiparameter; {
        /* IF ( ( ( ( ( empty curr_param and empty last_param ) or ( ( ( empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) ) or ( ( not_empty curr_param and empty last_param ) and ( parameter.Name < curr_param.Name ) ) ) or ( ( ( ( not_empty curr_param and not_empty last_param ) and ( parameter != last_param ) ) and ( parameter.Name >= last_param.Name ) ) and ( parameter.Name < curr_param.Name ) ) ) ) */
        if ( ( ( ( ( ( 0 == curr_param ) && ( 0 == last_param ) ) || ( ( ( ( 0 == curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) ) || ( ( ( 0 != curr_param ) && ( 0 == last_param ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) || ( ( ( ( ( 0 != curr_param ) && ( 0 != last_param ) ) && ( parameter != last_param ) ) && ( Escher_strcmp( parameter->Name, last_param->Name ) >= 0 ) ) && ( Escher_strcmp( parameter->Name, curr_param->Name ) < 0 ) ) ) ) {
          /* ASSIGN curr_param = parameter */
          curr_param = parameter;
        }
      }}}
      /* SELECT one type RELATED BY curr_param->S_DT[R118] */
      type = ( 0 != curr_param ) ? curr_param->S_DT_R118_is_defined_by : 0;
      /* ASSIGN signature = ( ( ( ( signature + separator ) + curr_param.Name ) + : ) + type.Name ) */
      signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( Escher_stradd( Escher_stradd( signature, separator ), curr_param->Name ), ":" ), type->Name ) );
      /* ASSIGN separator = ,  */
      separator = Escher_strcpy( separator, ", " );
      /* ASSIGN last_param = curr_param */
      last_param = curr_param;
      /* SELECT any curr_param FROM INSTANCES OF O_TPARM WHERE FALSE */
      curr_param = 0;
      /* ASSIGN count = ( count + 1 ) */
      count = ( count + 1 );
    }
    /* IF ( ( num_params > 0 ) ) */
    if ( ( num_params > 0 ) ) {
      /* ASSIGN signature = ( signature + ) ) */
      signature = Escher_strcpy( signature, Escher_stradd( signature, ")" ) );
    }
    Escher_ClearSet( parameters ); 
  }
  /* RETURN signature */
  {c_t * xtumlOALrv = signature;
  return xtumlOALrv;}
}

/*
 * Domain Function:  package2project
 */
void
xtuml2masl_package2project( Escher_ObjectSet_s * p_ep_pkgs, const bool p_kl )
{
  xtuml2masl_EP_PKG * ep_pkg=0;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN ep_pkgs = PARAM.ep_pkgs */
  Escher_CopySet( ep_pkgs, p_ep_pkgs );
  /* FOR EACH ep_pkg IN ep_pkgs */
  { Escher_Iterator_s iterep_pkg;
  xtuml2masl_EP_PKG * iiep_pkg;
  Escher_IteratorReset( &iterep_pkg, ep_pkgs );
  while ( (iiep_pkg = (xtuml2masl_EP_PKG *)Escher_IteratorNext( &iterep_pkg )) != 0 ) {
    ep_pkg = iiep_pkg; {
    xtuml2masl_C_C * project_c_c=0;
    /* SELECT any project_c_c RELATED BY ep_pkg->PE_PE[R8000]->C_C[R8001] */
    project_c_c = 0;
    {    if ( 0 != ep_pkg ) {
    xtuml2masl_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &ep_pkg->PE_PE_R8000_contains );
    while ( ( 0 == project_c_c ) && ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_C_C_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    project_c_c = (xtuml2masl_C_C *) PE_PE_R8000_contains->R8001_subtype;
}}}
    /* IF ( not_empty project_c_c ) */
    if ( ( 0 != project_c_c ) ) {
      Escher_ObjectSet_s referred_c_cs_space={0}; Escher_ObjectSet_s * referred_c_cs = &referred_c_cs_space;
      /* ASSIGN value[0] = ep_pkg.Name */
      value[0] = Escher_strcpy( value[0], ep_pkg->Name );
      /* out::populate(element:project, value:value) */
      xtuml2masl_out_populate( "project", value );
      /* SELECT many referred_c_cs RELATED BY ep_pkgs->PE_PE[R8000]->CL_IC[R8001]->C_C[R4201] */
      Escher_ClearSet( referred_c_cs );
      {      xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
      Escher_Iterator_s start_many_iterator;
      Escher_IteratorReset( &start_many_iterator, ep_pkgs );
      while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
      xtuml2masl_PE_PE * PE_PE_R8000_contains;
      Escher_Iterator_s iPE_PE_R8000_contains;
      Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
      while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
      xtuml2masl_CL_IC * R8001_subtype = (xtuml2masl_CL_IC *) PE_PE_R8000_contains->R8001_subtype;
      if ( 0 != R8001_subtype )      if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_CL_IC_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) ) {
      {xtuml2masl_C_C * C_C_R4201_represents = R8001_subtype->C_C_R4201_represents;
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) referred_c_cs, C_C_R4201_represents ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) referred_c_cs, C_C_R4201_represents );
      }}}}}}
      /* ::component2domain( c_cs:referred_c_cs, kl:PARAM.kl, project:TRUE ) */
      xtuml2masl_component2domain( referred_c_cs, p_kl, TRUE );
      /* ASSIGN project_c_c.Descrip = ::parsepragmas(list:, s:project_c_c.Descrip) */
      project_c_c->Descrip = Escher_strcpy( project_c_c->Descrip, xtuml2masl_parsepragmas( "", project_c_c->Descrip ) );
      /* ::Descrip2description( Descrip:project_c_c.Descrip ) */
      xtuml2masl_Descrip2description( project_c_c->Descrip );
      /* out::populate(element:project, value:emptyvalue) */
      xtuml2masl_out_populate( "project", emptyvalue );
      Escher_ClearSet( referred_c_cs ); 
    }
  }}}
  Escher_ClearSet( ep_pkgs );
}

/*
 * Domain Function:  package_get_path
 */
c_t *
xtuml2masl_package_get_path( xtuml2masl_EP_PKG * p_ep_pkg )
{
  c_t * parent_path=0;xtuml2masl_EP_PKG * ep_pkg;xtuml2masl_EP_PKG * parent_ep_pkg=0;
  /* ASSIGN ep_pkg = PARAM.ep_pkg */
  ep_pkg = p_ep_pkg;
  /* ASSIGN parent_path =  */
  parent_path = Escher_strcpy( parent_path, "" );
  /* SELECT one parent_ep_pkg RELATED BY ep_pkg->PE_PE[R8001]->EP_PKG[R8000] */
  parent_ep_pkg = 0;
  {  if ( 0 != ep_pkg ) {
  xtuml2masl_PE_PE * PE_PE_R8001 = ep_pkg->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  parent_ep_pkg = PE_PE_R8001->EP_PKG_R8000_contained_by;
}}}
  /* IF ( not_empty parent_ep_pkg ) */
  if ( ( 0 != parent_ep_pkg ) ) {
    /* ASSIGN parent_path = ::package_get_path(ep_pkg:parent_ep_pkg) */
    parent_path = Escher_strcpy( parent_path, xtuml2masl_package_get_path( parent_ep_pkg ) );
  }
  else {
    xtuml2masl_S_SYS * s_sys=0;
    /* SELECT one s_sys RELATED BY ep_pkg->S_SYS[R1401] */
    s_sys = ( 0 != ep_pkg ) ? ep_pkg->S_SYS_R1401_directly_contained_under : 0;
    /* IF ( not_empty s_sys ) */
    if ( ( 0 != s_sys ) ) {
      /* ASSIGN parent_path = s_sys.Name */
      parent_path = Escher_strcpy( parent_path, s_sys->Name );
    }
    else {
      xtuml2masl_C_C * c_c=0;
      /* SELECT one c_c RELATED BY ep_pkg->PE_PE[R8001]->C_C[R8003] */
      c_c = 0;
      {      if ( 0 != ep_pkg ) {
      xtuml2masl_PE_PE * PE_PE_R8001 = ep_pkg->PE_PE_R8001;
      if ( 0 != PE_PE_R8001 ) {
      c_c = PE_PE_R8001->C_C_R8003_contained_in;
}}}
      /* IF ( not_empty c_c ) */
      if ( ( 0 != c_c ) ) {
        /* ASSIGN parent_path = ::component_get_path(c_c:c_c) */
        parent_path = Escher_strcpy( parent_path, xtuml2masl_component_get_path( c_c ) );
      }
      else {
        /* TRACE::log( flavor:failure, id:110, message:error building path of package ) */
        TRACE_log( "failure", 110, "error building path of package" );
      }
    }
  }
  /* IF ( not_empty ep_pkg ) */
  if ( ( 0 != ep_pkg ) ) {
    /* RETURN ( ( parent_path + / ) + ep_pkg.Name ) */
    {c_t * xtumlOALrv = Escher_stradd( Escher_stradd( parent_path, "/" ), ep_pkg->Name );
    return xtumlOALrv;}
  }
  else {
    /* TRACE::log( flavor:failure, id:113, message:error building path of package ) */
    TRACE_log( "failure", 113, "error building path of package" );
    /* RETURN  */
    {c_t * xtumlOALrv = "";
    return xtumlOALrv;}
  }
}

/*
 * Domain Function:  parameterC_PP2parameter
 */
void
xtuml2masl_parameterC_PP2parameter( xtuml2masl_C_PP * p_c_pp )
{
  xtuml2masl_C_PP * c_pp;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_pp = PARAM.c_pp */
  c_pp = p_c_pp;
  /* IF ( not_empty c_pp ) */
  if ( ( 0 != c_pp ) ) {
    xtuml2masl_S_DT * s_dt=0;
    /* ASSIGN value[0] = c_pp.Name */
    value[0] = Escher_strcpy( value[0], c_pp->Name );
    /* IF ( ( 0 == c_pp.By_Ref ) ) */
    if ( ( 0 == c_pp->By_Ref ) ) {
      /* ASSIGN value[1] = in */
      value[1] = Escher_strcpy( value[1], "in" );
    }
    else {
      /* ASSIGN value[1] = out */
      value[1] = Escher_strcpy( value[1], "out" );
    }
    /* out::populate(element:parameter, value:value) */
    xtuml2masl_out_populate( "parameter", value );
    /* SELECT one s_dt RELATED BY c_pp->S_DT[R4007] */
    s_dt = ( 0 != c_pp ) ? c_pp->S_DT_R4007_is_typed_by : 0;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* out::populate(element:typeref, value:value) */
    xtuml2masl_out_populate( "typeref", value );
    /* out::populate(element:typeref, value:emptyvalue) */
    xtuml2masl_out_populate( "typeref", emptyvalue );
    /* SELECT one c_pp RELATED BY c_pp->C_PP[R4021.precedes] */
    c_pp = ( 0 != c_pp ) ? c_pp->C_PP_R4021_precedes : 0;
    /* ::parameterC_PP2parameter( c_pp:c_pp ) */
    xtuml2masl_parameterC_PP2parameter( c_pp );
    /* out::populate(element:parameter, value:emptyvalue) */
    xtuml2masl_out_populate( "parameter", emptyvalue );
  }
}

/*
 * Domain Function:  parameterO_TPARM2parameter
 */
void
xtuml2masl_parameterO_TPARM2parameter( xtuml2masl_O_TPARM * p_o_tparm )
{
  xtuml2masl_O_TPARM * o_tparm;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN o_tparm = PARAM.o_tparm */
  o_tparm = p_o_tparm;
  /* IF ( not_empty o_tparm ) */
  if ( ( 0 != o_tparm ) ) {
    xtuml2masl_S_DT * s_dt=0;
    /* ASSIGN value[0] = o_tparm.Name */
    value[0] = Escher_strcpy( value[0], o_tparm->Name );
    /* IF ( ( 0 == o_tparm.By_Ref ) ) */
    if ( ( 0 == o_tparm->By_Ref ) ) {
      /* ASSIGN value[1] = in */
      value[1] = Escher_strcpy( value[1], "in" );
    }
    else {
      /* ASSIGN value[1] = out */
      value[1] = Escher_strcpy( value[1], "out" );
    }
    /* out::populate(element:parameter, value:value) */
    xtuml2masl_out_populate( "parameter", value );
    /* SELECT one s_dt RELATED BY o_tparm->S_DT[R118] */
    s_dt = ( 0 != o_tparm ) ? o_tparm->S_DT_R118_is_defined_by : 0;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* out::populate(element:typeref, value:value) */
    xtuml2masl_out_populate( "typeref", value );
    /* out::populate(element:typeref, value:emptyvalue) */
    xtuml2masl_out_populate( "typeref", emptyvalue );
    /* SELECT one o_tparm RELATED BY o_tparm->O_TPARM[R124.precedes] */
    o_tparm = ( 0 != o_tparm ) ? o_tparm->O_TPARM_R124_precedes : 0;
    /* ::parameterO_TPARM2parameter( o_tparm:o_tparm ) */
    xtuml2masl_parameterO_TPARM2parameter( o_tparm );
    /* out::populate(element:parameter, value:emptyvalue) */
    xtuml2masl_out_populate( "parameter", emptyvalue );
  }
}

/*
 * Domain Function:  parameterSM_EVTDI2parameter
 */
void
xtuml2masl_parameterSM_EVTDI2parameter( xtuml2masl_SM_EVTDI * p_sm_evtdi )
{
  xtuml2masl_SM_EVTDI * sm_evtdi;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN sm_evtdi = PARAM.sm_evtdi */
  sm_evtdi = p_sm_evtdi;
  /* IF ( not_empty sm_evtdi ) */
  if ( ( 0 != sm_evtdi ) ) {
    xtuml2masl_S_DT * s_dt=0;
    /* ASSIGN value[0] = sm_evtdi.Name */
    value[0] = Escher_strcpy( value[0], sm_evtdi->Name );
    /* ASSIGN value[1] = in */
    value[1] = Escher_strcpy( value[1], "in" );
    /* out::populate(element:parameter, value:value) */
    xtuml2masl_out_populate( "parameter", value );
    /* SELECT one s_dt RELATED BY sm_evtdi->S_DT[R524] */
    s_dt = ( 0 != sm_evtdi ) ? sm_evtdi->S_DT_R524_is_defined_by : 0;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* out::populate(element:typeref, value:value) */
    xtuml2masl_out_populate( "typeref", value );
    /* out::populate(element:typeref, value:emptyvalue) */
    xtuml2masl_out_populate( "typeref", emptyvalue );
    /* SELECT one sm_evtdi RELATED BY sm_evtdi->SM_EVTDI[R533.precedes] */
    sm_evtdi = ( 0 != sm_evtdi ) ? sm_evtdi->SM_EVTDI_R533_precedes : 0;
    /* ::parameterSM_EVTDI2parameter( sm_evtdi:sm_evtdi ) */
    xtuml2masl_parameterSM_EVTDI2parameter( sm_evtdi );
    /* out::populate(element:parameter, value:emptyvalue) */
    xtuml2masl_out_populate( "parameter", emptyvalue );
  }
}

/*
 * Domain Function:  parameterS_BPARM2parameter
 */
void
xtuml2masl_parameterS_BPARM2parameter( xtuml2masl_S_BPARM * p_s_bparm )
{
  xtuml2masl_S_BPARM * s_bparm;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN s_bparm = PARAM.s_bparm */
  s_bparm = p_s_bparm;
  /* IF ( not_empty s_bparm ) */
  if ( ( 0 != s_bparm ) ) {
    xtuml2masl_S_DT * s_dt=0;
    /* ASSIGN value[0] = s_bparm.Name */
    value[0] = Escher_strcpy( value[0], s_bparm->Name );
    /* IF ( ( 0 == s_bparm.By_Ref ) ) */
    if ( ( 0 == s_bparm->By_Ref ) ) {
      /* ASSIGN value[1] = in */
      value[1] = Escher_strcpy( value[1], "in" );
    }
    else {
      /* ASSIGN value[1] = out */
      value[1] = Escher_strcpy( value[1], "out" );
    }
    /* out::populate(element:parameter, value:value) */
    xtuml2masl_out_populate( "parameter", value );
    /* SELECT one s_dt RELATED BY s_bparm->S_DT[R22] */
    s_dt = ( 0 != s_bparm ) ? s_bparm->S_DT_R22_is_defined_by : 0;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* out::populate(element:typeref, value:value) */
    xtuml2masl_out_populate( "typeref", value );
    /* out::populate(element:typeref, value:emptyvalue) */
    xtuml2masl_out_populate( "typeref", emptyvalue );
    /* SELECT one s_bparm RELATED BY s_bparm->S_BPARM[R55.precedes] */
    s_bparm = ( 0 != s_bparm ) ? s_bparm->S_BPARM_R55_precedes : 0;
    /* ::parameterS_BPARM2parameter( s_bparm:s_bparm ) */
    xtuml2masl_parameterS_BPARM2parameter( s_bparm );
    /* out::populate(element:parameter, value:emptyvalue) */
    xtuml2masl_out_populate( "parameter", emptyvalue );
  }
}

/*
 * Domain Function:  parameterS_SPARM2parameter
 */
void
xtuml2masl_parameterS_SPARM2parameter( xtuml2masl_S_SPARM * p_s_sparm )
{
  xtuml2masl_S_SPARM * s_sparm;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN s_sparm = PARAM.s_sparm */
  s_sparm = p_s_sparm;
  /* IF ( not_empty s_sparm ) */
  if ( ( 0 != s_sparm ) ) {
    xtuml2masl_S_DT * s_dt=0;
    /* ASSIGN value[0] = s_sparm.Name */
    value[0] = Escher_strcpy( value[0], s_sparm->Name );
    /* IF ( ( 0 == s_sparm.By_Ref ) ) */
    if ( ( 0 == s_sparm->By_Ref ) ) {
      /* ASSIGN value[1] = in */
      value[1] = Escher_strcpy( value[1], "in" );
    }
    else {
      /* ASSIGN value[1] = out */
      value[1] = Escher_strcpy( value[1], "out" );
    }
    /* out::populate(element:parameter, value:value) */
    xtuml2masl_out_populate( "parameter", value );
    /* SELECT one s_dt RELATED BY s_sparm->S_DT[R26] */
    s_dt = ( 0 != s_sparm ) ? s_sparm->S_DT_R26_is_typed_by_ : 0;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* out::populate(element:typeref, value:value) */
    xtuml2masl_out_populate( "typeref", value );
    /* out::populate(element:typeref, value:emptyvalue) */
    xtuml2masl_out_populate( "typeref", emptyvalue );
    /* SELECT one s_sparm RELATED BY s_sparm->S_SPARM[R54.precedes] */
    s_sparm = ( 0 != s_sparm ) ? s_sparm->S_SPARM_R54_precedes : 0;
    /* ::parameterS_SPARM2parameter( s_sparm:s_sparm ) */
    xtuml2masl_parameterS_SPARM2parameter( s_sparm );
    /* out::populate(element:parameter, value:emptyvalue) */
    xtuml2masl_out_populate( "parameter", emptyvalue );
  }
}

/*
 * Domain Function:  parsepragmas
 */
c_t *
xtuml2masl_parsepragmas( c_t * p_list, c_t * p_s )
{
  i_t i;c_t * return_string=0;c_t * list=0;c_t * string=0;c_t * emptyvalue[8]={0};c_t * value[8]={0};
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN value[6] =  */
  value[6] = Escher_strcpy( value[6], "" );
  /* ASSIGN value[5] =  */
  value[5] = Escher_strcpy( value[5], "" );
  /* ASSIGN value[4] =  */
  value[4] = Escher_strcpy( value[4], "" );
  /* ASSIGN value[3] =  */
  value[3] = Escher_strcpy( value[3], "" );
  /* ASSIGN value[2] =  */
  value[2] = Escher_strcpy( value[2], "" );
  /* ASSIGN value[1] =  */
  value[1] = Escher_strcpy( value[1], "" );
  /* ASSIGN value[0] =  */
  value[0] = Escher_strcpy( value[0], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN string = PARAM.s */
  string = Escher_strcpy( string, p_s );
  /* ASSIGN list = PARAM.list */
  list = Escher_strcpy( list, p_list );
  /* ASSIGN return_string =  */
  return_string = Escher_strcpy( return_string, "" );
  /* ASSIGN i = STRING::indexof(haystack:string, needle:pragma) */
  i = STRING_indexof( string, "pragma" );
  /* ASSIGN return_string = STRING::substr(begin:0, end:i, s:string) */
  return_string = Escher_strcpy( return_string, STRING_substr( 0, i, string ) );
  /* ASSIGN string = STRING::substr(begin:i, end:- 1, s:string) */
  string = Escher_strcpy( string, STRING_substr( i, -1, string ) );
  /* WHILE ( ( - 1 != i ) ) */
  while ( ( -1 != i ) ) {
    i_t k;i_t j;
    /* ASSIGN value[0] = STRING::getword(i:6, j:- 1, s:string) */
    value[0] = Escher_strcpy( value[0], STRING_getword( 6, -1, string ) );
    /* ASSIGN value[1] = list */
    value[1] = Escher_strcpy( value[1], list );
    /* out::populate(element:pragma, value:value) */
    xtuml2masl_out_populate( "pragma", value );
    /* ASSIGN j = STRING::indexof(haystack:string, needle:() */
    j = STRING_indexof( string, "(" );
    /* ASSIGN k = STRING::indexof(haystack:string, needle:)) */
    k = STRING_indexof( string, ")" );
    /* WHILE ( ( not ( ( - 1 == j ) or ( j > k ) ) and ( - 1 != k ) ) ) */
    while ( ( !( ( -1 == j ) || ( j > k ) ) && ( -1 != k ) ) ) {
      /* ASSIGN string = STRING::substr(begin:( j + 1 ), end:- 1, s:string) */
      string = Escher_strcpy( string, STRING_substr( ( j + 1 ), -1, string ) );
      /* ASSIGN k = STRING::indexof(haystack:string, needle:)) */
      k = STRING_indexof( string, ")" );
      /* ASSIGN value[0] = STRING::getword(i:0, j:k, s:string) */
      value[0] = Escher_strcpy( value[0], STRING_getword( 0, k, string ) );
      /* ASSIGN value[1] =  */
      value[1] = Escher_strcpy( value[1], "" );
      /* IF ( (  != STRING::trim(value[0]) ) ) */
      if ( ( Escher_strcmp( "", STRING_trim( value[0] ) ) != 0 ) ) {
        /* out::populate(element:pragmaitem, value:value) */
        xtuml2masl_out_populate( "pragmaitem", value );
      }
      /* ASSIGN j = STRING::indexof(haystack:string, needle:,) */
      j = STRING_indexof( string, "," );
    }
    /* ASSIGN k = STRING::indexof(haystack:string, needle:)) */
    k = STRING_indexof( string, ")" );
    /* ASSIGN string = STRING::substr(begin:k, end:- 1, s:string) */
    string = Escher_strcpy( string, STRING_substr( k, -1, string ) );
    /* out::populate(element:pragma, value:emptyvalue) */
    xtuml2masl_out_populate( "pragma", emptyvalue );
    /* ASSIGN i = STRING::indexof(haystack:string, needle:pragma) */
    i = STRING_indexof( string, "pragma" );
    /* ASSIGN return_string = ( return_string + STRING::substr(2, i, string) ) */
    return_string = Escher_strcpy( return_string, Escher_stradd( return_string, STRING_substr( 2, i, string ) ) );
    /* ASSIGN string = STRING::substr(begin:i, end:- 1, s:string) */
    string = Escher_strcpy( string, STRING_substr( i, -1, string ) );
  }
  /* RETURN return_string */
  {c_t * xtumlOALrv = return_string;
  return xtumlOALrv;}
}

/*
 * Domain Function:  port2terminator
 */
void
xtuml2masl_port2terminator( xtuml2masl_C_C * p_c_c, const bool p_kl, const bool p_project )
{
  xtuml2masl_C_PO * c_po=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s c_pos_space={0}; Escher_ObjectSet_s * c_pos = &c_pos_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many c_pos RELATED BY c_c->C_PO[R4010]->C_IR[R4016]->C_R[R4009]->C_IR[R4009]->C_PO[R4016] */
  Escher_ClearSet( c_pos );
  {  if ( 0 != c_c ) {
  xtuml2masl_C_PO * C_PO_R4010_communicates_through;
  Escher_Iterator_s iC_PO_R4010_communicates_through;
  Escher_IteratorReset( &iC_PO_R4010_communicates_through, &c_c->C_PO_R4010_communicates_through );
  while ( 0 != ( C_PO_R4010_communicates_through = (xtuml2masl_C_PO *) Escher_IteratorNext( &iC_PO_R4010_communicates_through ) ) ) {
  xtuml2masl_C_IR * C_IR_R4016_exposes;
  Escher_Iterator_s iC_IR_R4016_exposes;
  Escher_IteratorReset( &iC_IR_R4016_exposes, &C_PO_R4010_communicates_through->C_IR_R4016_exposes );
  while ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
  xtuml2masl_C_R * R4009_subtype = (xtuml2masl_C_R *) C_IR_R4016_exposes->R4009_subtype;
  if ( 0 != R4009_subtype )  if ( ( 0 != C_IR_R4016_exposes ) && ( xtuml2masl_C_R_CLASS_NUMBER == C_IR_R4016_exposes->R4009_object_id ) ) {
  xtuml2masl_C_IR * C_IR_R4009 = R4009_subtype->C_IR_R4009;
  if ( 0 != C_IR_R4009 ) {
  {xtuml2masl_C_PO * C_PO_R4016_originates_from = C_IR_R4009->C_PO_R4016_originates_from;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_pos, C_PO_R4016_originates_from ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) c_pos, C_PO_R4016_originates_from );
  }}}}}}}}
  /* FOR EACH c_po IN c_pos */
  { Escher_Iterator_s iterc_po;
  xtuml2masl_C_PO * iic_po;
  Escher_IteratorReset( &iterc_po, c_pos );
  while ( (iic_po = (xtuml2masl_C_PO *)Escher_IteratorNext( &iterc_po )) != 0 ) {
    c_po = iic_po; {
    xtuml2masl_C_P * provision=0;
    /* SELECT any provision RELATED BY c_po->C_IR[R4016]->C_I[R4012]->C_IR[R4012]->C_P[R4009] */
    provision = 0;
    {    if ( 0 != c_po ) {
    xtuml2masl_C_IR * C_IR_R4016_exposes;
    Escher_Iterator_s iC_IR_R4016_exposes;
    Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
    while ( ( 0 == provision ) && ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
    xtuml2masl_C_I * C_I_R4012_may_be_defined_by = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
    if ( 0 != C_I_R4012_may_be_defined_by ) {
    xtuml2masl_C_IR * C_IR_R4012_is_formal_definition;
    Escher_Iterator_s iC_IR_R4012_is_formal_definition;
    Escher_IteratorReset( &iC_IR_R4012_is_formal_definition, &C_I_R4012_may_be_defined_by->C_IR_R4012_is_formal_definition );
    while ( ( 0 == provision ) && ( 0 != ( C_IR_R4012_is_formal_definition = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4012_is_formal_definition ) ) ) ) {
    if ( ( 0 != C_IR_R4012_is_formal_definition ) && ( xtuml2masl_C_P_CLASS_NUMBER == C_IR_R4012_is_formal_definition->R4009_object_id ) )    provision = (xtuml2masl_C_P *) C_IR_R4012_is_formal_definition->R4009_subtype;
}}}}}
    /* IF ( ( not PARAM.project or ( PARAM.project and not_empty provision ) ) ) */
    if ( ( !p_project || ( p_project && ( 0 != provision ) ) ) ) {
      /* ASSIGN value[0] = c_po.Name */
      value[0] = Escher_strcpy( value[0], c_po->Name );
      /* out::populate(element:terminator, value:value) */
      xtuml2masl_out_populate( "terminator", value );
      /* ::message2routine( c_c:c_c, c_po:c_po, project:PARAM.project ) */
      xtuml2masl_message2routine( c_c, c_po, p_project );
      /* IF ( PARAM.project ) */
      if ( p_project ) {
        xtuml2masl_C_P * c_p=0;
        /* SELECT any c_p RELATED BY c_po->C_IR[R4016]->C_I[R4012]->C_IR[R4012]->C_P[R4009] */
        c_p = 0;
        {        if ( 0 != c_po ) {
        xtuml2masl_C_IR * C_IR_R4016_exposes;
        Escher_Iterator_s iC_IR_R4016_exposes;
        Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
        while ( ( 0 == c_p ) && ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
        xtuml2masl_C_I * C_I_R4012_may_be_defined_by = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
        if ( 0 != C_I_R4012_may_be_defined_by ) {
        xtuml2masl_C_IR * C_IR_R4012_is_formal_definition;
        Escher_Iterator_s iC_IR_R4012_is_formal_definition;
        Escher_IteratorReset( &iC_IR_R4012_is_formal_definition, &C_I_R4012_may_be_defined_by->C_IR_R4012_is_formal_definition );
        while ( ( 0 == c_p ) && ( 0 != ( C_IR_R4012_is_formal_definition = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4012_is_formal_definition ) ) ) ) {
        if ( ( 0 != C_IR_R4012_is_formal_definition ) && ( xtuml2masl_C_P_CLASS_NUMBER == C_IR_R4012_is_formal_definition->R4009_object_id ) )        c_p = (xtuml2masl_C_P *) C_IR_R4012_is_formal_definition->R4009_subtype;
}}}}}
        /* IF ( not_empty c_p ) */
        if ( ( 0 != c_p ) ) {
          /* IF ( not PARAM.kl ) */
          if ( !p_kl ) {
            /* ASSIGN c_p.Descrip = ::remove_kl(s:c_p.Descrip) */
            c_p->Descrip = Escher_strcpy( c_p->Descrip, xtuml2masl_remove_kl( c_p->Descrip ) );
          }
          /* ASSIGN c_p.Descrip = ::parsepragmas(list:, s:c_p.Descrip) */
          c_p->Descrip = Escher_strcpy( c_p->Descrip, xtuml2masl_parsepragmas( "", c_p->Descrip ) );
          /* ::Descrip2description( Descrip:c_p.Descrip ) */
          xtuml2masl_Descrip2description( c_p->Descrip );
        }
      }
      else {
        xtuml2masl_C_R * c_r=0;
        /* SELECT any c_r RELATED BY c_po->C_IR[R4016]->C_R[R4009] */
        c_r = 0;
        {        if ( 0 != c_po ) {
        xtuml2masl_C_IR * C_IR_R4016_exposes;
        Escher_Iterator_s iC_IR_R4016_exposes;
        Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
        while ( ( 0 == c_r ) && ( 0 != ( C_IR_R4016_exposes = (xtuml2masl_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) ) {
        if ( ( 0 != C_IR_R4016_exposes ) && ( xtuml2masl_C_R_CLASS_NUMBER == C_IR_R4016_exposes->R4009_object_id ) )        c_r = (xtuml2masl_C_R *) C_IR_R4016_exposes->R4009_subtype;
}}}
        /* IF ( not_empty c_r ) */
        if ( ( 0 != c_r ) ) {
          /* IF ( not PARAM.kl ) */
          if ( !p_kl ) {
            /* ASSIGN c_r.Descrip = ::remove_kl(s:c_r.Descrip) */
            c_r->Descrip = Escher_strcpy( c_r->Descrip, xtuml2masl_remove_kl( c_r->Descrip ) );
          }
          /* ASSIGN c_r.Descrip = ::parsepragmas(list:, s:c_r.Descrip) */
          c_r->Descrip = Escher_strcpy( c_r->Descrip, xtuml2masl_parsepragmas( "", c_r->Descrip ) );
          /* ::Descrip2description( Descrip:c_r.Descrip ) */
          xtuml2masl_Descrip2description( c_r->Descrip );
        }
      }
      /* out::populate(element:terminator, value:emptyvalue) */
      xtuml2masl_out_populate( "terminator", emptyvalue );
    }
  }}}
  Escher_ClearSet( c_pos ); 
}

/*
 * Domain Function:  remove_kl
 */
c_t *
xtuml2masl_remove_kl( c_t * p_s )
{
  i_t start_index;c_t * string=0;
  /* ASSIGN string = PARAM.s */
  string = Escher_strcpy( string, p_s );
  /* ASSIGN start_index = STRING::indexof(haystack:string, needle:pragma key_letter) */
  start_index = STRING_indexof( string, "pragma key_letter" );
  /* WHILE ( ( - 1 != start_index ) ) */
  while ( ( -1 != start_index ) ) {
    i_t end_index;c_t * temp_str=0;c_t * substr_begin=0;
    /* ASSIGN substr_begin = STRING::substr(begin:0, end:start_index, s:string) */
    substr_begin = Escher_strcpy( substr_begin, STRING_substr( 0, start_index, string ) );
    /* ASSIGN temp_str = STRING::substr(begin:start_index, end:- 1, s:string) */
    temp_str = Escher_strcpy( temp_str, STRING_substr( start_index, -1, string ) );
    /* ASSIGN end_index = STRING::indexof(haystack:temp_str, needle:;) */
    end_index = STRING_indexof( temp_str, ";" );
    /* IF ( ( - 1 != end_index ) ) */
    if ( ( -1 != end_index ) ) {
      c_t * substr_end=0;
      /* ASSIGN substr_end = STRING::substr(begin:( end_index + 1 ), end:- 1, s:temp_str) */
      substr_end = Escher_strcpy( substr_end, STRING_substr( ( end_index + 1 ), -1, temp_str ) );
      /* ASSIGN string = ( substr_begin + substr_end ) */
      string = Escher_strcpy( string, Escher_stradd( substr_begin, substr_end ) );
      /* ASSIGN start_index = STRING::indexof(haystack:string, needle:pragma key_letter) */
      start_index = STRING_indexof( string, "pragma key_letter" );
    }
    else {
      /* ASSIGN start_index = - 1 */
      start_index = -1;
    }
  }
  /* RETURN string */
  {c_t * xtumlOALrv = string;
  return xtumlOALrv;}
}

/*
 * Domain Function:  simpleass2regularrel
 */
void
xtuml2masl_simpleass2regularrel( xtuml2masl_C_C * p_c_c, xtuml2masl_R_SIMP * p_r_simp )
{
  xtuml2masl_R_PART * r_part=0;i_t i;c_t * toname[8]={0};c_t * mult[8]={0};c_t * cond[8]={0};c_t * phrase[8]={0};c_t * name[8]={0};xtuml2masl_R_SIMP * r_simp;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s r_parts_space={0}; Escher_ObjectSet_s * r_parts = &r_parts_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN r_simp = PARAM.r_simp */
  r_simp = p_r_simp;
  /* SELECT many r_parts RELATED BY r_simp->R_PART[R207] */
  Escher_ClearSet( r_parts );
  if ( 0 != r_simp ) {
    Escher_CopySet( r_parts, &r_simp->R_PART_R207_relates );
  }
  /* ASSIGN name[7] =  */
  name[7] = Escher_strcpy( name[7], "" );
  /* ASSIGN phrase[7] =  */
  phrase[7] = Escher_strcpy( phrase[7], "" );
  /* ASSIGN cond[7] =  */
  cond[7] = Escher_strcpy( cond[7], "" );
  /* ASSIGN mult[7] =  */
  mult[7] = Escher_strcpy( mult[7], "" );
  /* ASSIGN toname[7] =  */
  toname[7] = Escher_strcpy( toname[7], "" );
  /* ASSIGN i = 0 */
  i = 0;
  /* FOR EACH r_part IN r_parts */
  { Escher_Iterator_s iterr_part;
  xtuml2masl_R_PART * iir_part;
  Escher_IteratorReset( &iterr_part, r_parts );
  while ( (iir_part = (xtuml2masl_R_PART *)Escher_IteratorNext( &iterr_part )) != 0 ) {
    r_part = iir_part; {
    xtuml2masl_O_OBJ * o_obj=0;
    /* SELECT one o_obj RELATED BY r_part->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] */
    o_obj = 0;
    {    if ( 0 != r_part ) {
    xtuml2masl_R_RTO * R_RTO_R204 = r_part->R_RTO_R204;
    if ( 0 != R_RTO_R204 ) {
    xtuml2masl_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
    if ( 0 != R_OIR_R203 ) {
    o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}
    /* ASSIGN name[i] = o_obj.Name */
    name[i] = Escher_strcpy( name[i], o_obj->Name );
    /* ASSIGN phrase[i] = T::underscore(s:r_part.Txt_Phrs) */
    phrase[i] = Escher_strcpy( phrase[i], T_underscore( r_part->Txt_Phrs ) );
    /* IF ( ( 0 == r_part.Cond ) ) */
    if ( ( 0 == r_part->Cond ) ) {
      /* ASSIGN cond[i] = unconditionally */
      cond[i] = Escher_strcpy( cond[i], "unconditionally" );
    }
    else {
      /* ASSIGN cond[i] = conditionally */
      cond[i] = Escher_strcpy( cond[i], "conditionally" );
    }
    /* IF ( ( 0 == r_part.Mult ) ) */
    if ( ( 0 == r_part->Mult ) ) {
      /* ASSIGN mult[i] = one */
      mult[i] = Escher_strcpy( mult[i], "one" );
    }
    else {
      /* ASSIGN mult[i] = many */
      mult[i] = Escher_strcpy( mult[i], "many" );
    }
    /* ASSIGN toname[i] =  */
    toname[i] = Escher_strcpy( toname[i], "" );
    /* ASSIGN i = ( i + 1 ) */
    i = ( i + 1 );
  }}}
  /* IF ( ( 1 == i ) ) */
  if ( ( 1 == i ) ) {
    xtuml2masl_O_OBJ * o_obj=0;xtuml2masl_R_FORM * r_form=0;
    /* SELECT one r_form RELATED BY r_simp->R_FORM[R208] */
    r_form = ( 0 != r_simp ) ? r_simp->R_FORM_R208_relates : 0;
    /* SELECT one o_obj RELATED BY r_form->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
    o_obj = 0;
    {    if ( 0 != r_form ) {
    xtuml2masl_R_RGO * R_RGO_R205 = r_form->R_RGO_R205;
    if ( 0 != R_RGO_R205 ) {
    xtuml2masl_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
    if ( 0 != R_OIR_R203 ) {
    o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}
    /* ASSIGN name[1] = o_obj.Name */
    name[1] = Escher_strcpy( name[1], o_obj->Name );
    /* ASSIGN phrase[1] = T::underscore(s:r_form.Txt_Phrs) */
    phrase[1] = Escher_strcpy( phrase[1], T_underscore( r_form->Txt_Phrs ) );
    /* IF ( ( 0 == r_form.Cond ) ) */
    if ( ( 0 == r_form->Cond ) ) {
      /* ASSIGN cond[1] = unconditionally */
      cond[1] = Escher_strcpy( cond[1], "unconditionally" );
    }
    else {
      /* ASSIGN cond[1] = conditionally */
      cond[1] = Escher_strcpy( cond[1], "conditionally" );
    }
    /* IF ( ( 0 == r_form.Mult ) ) */
    if ( ( 0 == r_form->Mult ) ) {
      /* ASSIGN mult[1] = one */
      mult[1] = Escher_strcpy( mult[1], "one" );
    }
    else {
      /* ASSIGN mult[1] = many */
      mult[1] = Escher_strcpy( mult[1], "many" );
    }
    /* ASSIGN toname[1] =  */
    toname[1] = Escher_strcpy( toname[1], "" );
  }
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = name[0] */
  value[1] = Escher_strcpy( value[1], name[0] );
  /* ASSIGN value[2] = phrase[1] */
  value[2] = Escher_strcpy( value[2], phrase[1] );
  /* ASSIGN value[3] = cond[1] */
  value[3] = Escher_strcpy( value[3], cond[1] );
  /* ASSIGN value[4] = mult[1] */
  value[4] = Escher_strcpy( value[4], mult[1] );
  /* ASSIGN value[5] = c_c.Name */
  value[5] = Escher_strcpy( value[5], c_c->Name );
  /* ASSIGN value[6] = name[1] */
  value[6] = Escher_strcpy( value[6], name[1] );
  /* out::populate(element:participation, value:value) */
  xtuml2masl_out_populate( "participation", value );
  /* ASSIGN value[0] = c_c.Name */
  value[0] = Escher_strcpy( value[0], c_c->Name );
  /* ASSIGN value[1] = name[1] */
  value[1] = Escher_strcpy( value[1], name[1] );
  /* ASSIGN value[2] = phrase[0] */
  value[2] = Escher_strcpy( value[2], phrase[0] );
  /* ASSIGN value[3] = cond[0] */
  value[3] = Escher_strcpy( value[3], cond[0] );
  /* ASSIGN value[4] = mult[0] */
  value[4] = Escher_strcpy( value[4], mult[0] );
  /* ASSIGN value[5] = c_c.Name */
  value[5] = Escher_strcpy( value[5], c_c->Name );
  /* ASSIGN value[6] = name[0] */
  value[6] = Escher_strcpy( value[6], name[0] );
  /* out::populate(element:participation, value:value) */
  xtuml2masl_out_populate( "participation", value );
  /* out::populate(element:participation, value:emptyvalue) */
  xtuml2masl_out_populate( "participation", emptyvalue );
  Escher_ClearSet( r_parts ); 
}

/*
 * Domain Function:  state2state
 */
void
xtuml2masl_state2state( xtuml2masl_O_OBJ * p_o_obj, xtuml2masl_SM_SM * p_sm_sm, c_t * p_type )
{
  i_t lowest;c_t * path=0;xtuml2masl_SM_SM * sm_sm;xtuml2masl_O_OBJ * o_obj;c_t * emptyvalue[8]={0};c_t * value[8]={0};xtuml2masl_SM_STATE * sm_state=0;Escher_ObjectSet_s sm_states_space={0}; Escher_ObjectSet_s * sm_states = &sm_states_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* ASSIGN path = ::class_get_path(o_obj:o_obj) */
  path = Escher_strcpy( path, xtuml2masl_class_get_path( o_obj ) );
  /* SELECT many sm_states RELATED BY sm_sm->SM_STATE[R501] */
  Escher_ClearSet( sm_states );
  if ( 0 != sm_sm ) {
    Escher_CopySet( sm_states, &sm_sm->SM_STATE_R501_is_decomposed_into );
  }
  /* SELECT any sm_state RELATED BY sm_sm->SM_STATE[R501] */
  sm_state = ( 0 != sm_sm ) ? (xtuml2masl_SM_STATE *) Escher_SetGetAny( &sm_sm->SM_STATE_R501_is_decomposed_into ) : 0;
  /* ASSIGN lowest = 7777 */
  lowest = 7777;
  /* IF ( not_empty sm_state ) */
  if ( ( 0 != sm_state ) ) {
    /* ASSIGN lowest = sm_state.Numb */
    lowest = sm_state->Numb;
  }
  /* IF ( ( assigner == PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner", p_type ) == 0 ) ) {
    /* FOR EACH sm_state IN sm_states */
    { Escher_Iterator_s itersm_state;
    xtuml2masl_SM_STATE * iism_state;
    Escher_IteratorReset( &itersm_state, sm_states );
    while ( (iism_state = (xtuml2masl_SM_STATE *)Escher_IteratorNext( &itersm_state )) != 0 ) {
      sm_state = iism_state; {
      /* IF ( ( sm_state.Numb < lowest ) ) */
      if ( ( sm_state->Numb < lowest ) ) {
        /* ASSIGN lowest = sm_state.Numb */
        lowest = sm_state->Numb;
      }
    }}}
    /* ASSIGN path = ( path + /ClassStateMachine ) */
    path = Escher_strcpy( path, Escher_stradd( path, "/ClassStateMachine" ) );
  }
  else {
    /* ASSIGN path = ( path + /InstanceStateMachine ) */
    path = Escher_strcpy( path, Escher_stradd( path, "/InstanceStateMachine" ) );
  }
  /* ASSIGN value[0] =  */
  value[0] = Escher_strcpy( value[0], "" );
  /* ASSIGN value[1] = o_obj.Name */
  value[1] = Escher_strcpy( value[1], o_obj->Name );
  /* FOR EACH sm_state IN sm_states */
  { Escher_Iterator_s itersm_state;
  xtuml2masl_SM_STATE * iism_state;
  Escher_IteratorReset( &itersm_state, sm_states );
  while ( (iism_state = (xtuml2masl_SM_STATE *)Escher_IteratorNext( &itersm_state )) != 0 ) {
    sm_state = iism_state; {
    xtuml2masl_SM_EVTDI * first_sm_evtdi;xtuml2masl_SM_ACT * sm_act=0;xtuml2masl_SM_EVTDI * sm_evtdi=0;
    /* ASSIGN value[2] = sm_state.Name */
    value[2] = Escher_strcpy( value[2], sm_state->Name );
    /* ASSIGN value[3] =  */
    value[3] = Escher_strcpy( value[3], "" );
    /* IF ( ( ( assigner == PARAM.type ) and ( lowest == sm_state.Numb ) ) ) */
    if ( ( ( Escher_strcmp( "assigner", p_type ) == 0 ) && ( lowest == sm_state->Numb ) ) ) {
      /* ASSIGN value[3] = assigner start */
      value[3] = Escher_strcpy( value[3], "assigner start" );
    }
    else if ( ( Escher_strcmp( "assigner", p_type ) == 0 ) ) {
      /* ASSIGN value[3] = assigner */
      value[3] = Escher_strcpy( value[3], "assigner" );
    }
    else if ( ( 1 == sm_state->Final ) ) {
      /* ASSIGN value[3] = terminal */
      value[3] = Escher_strcpy( value[3], "terminal" );
    }
    else {
      xtuml2masl_SM_CRTXN * sm_crtxn=0;
      /* SELECT any sm_crtxn RELATED BY sm_state->SM_TXN[R506]->SM_CRTXN[R507] */
      sm_crtxn = 0;
      {      if ( 0 != sm_state ) {
      xtuml2masl_SM_TXN * SM_TXN_R506_is_destination_of;
      Escher_Iterator_s iSM_TXN_R506_is_destination_of;
      Escher_IteratorReset( &iSM_TXN_R506_is_destination_of, &sm_state->SM_TXN_R506_is_destination_of );
      while ( ( 0 == sm_crtxn ) && ( 0 != ( SM_TXN_R506_is_destination_of = (xtuml2masl_SM_TXN *) Escher_IteratorNext( &iSM_TXN_R506_is_destination_of ) ) ) ) {
      if ( ( 0 != SM_TXN_R506_is_destination_of ) && ( xtuml2masl_SM_CRTXN_CLASS_NUMBER == SM_TXN_R506_is_destination_of->R507_object_id ) )      sm_crtxn = (xtuml2masl_SM_CRTXN *) SM_TXN_R506_is_destination_of->R507_subtype;
}}}
      /* IF ( not_empty sm_crtxn ) */
      if ( ( 0 != sm_crtxn ) ) {
        /* ASSIGN value[3] = creation */
        value[3] = Escher_strcpy( value[3], "creation" );
      }
    }
    /* out::populate(element:state, value:value) */
    xtuml2masl_out_populate( "state", value );
    /* SELECT any sm_evtdi RELATED BY sm_state->SM_TXN[R506]->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]->SM_EVTDI[R532] */
    sm_evtdi = 0;
    {    if ( 0 != sm_state ) {
    xtuml2masl_SM_TXN * SM_TXN_R506_is_destination_of;
    Escher_Iterator_s iSM_TXN_R506_is_destination_of;
    Escher_IteratorReset( &iSM_TXN_R506_is_destination_of, &sm_state->SM_TXN_R506_is_destination_of );
    while ( ( 0 == sm_evtdi ) && ( 0 != ( SM_TXN_R506_is_destination_of = (xtuml2masl_SM_TXN *) Escher_IteratorNext( &iSM_TXN_R506_is_destination_of ) ) ) ) {
    xtuml2masl_SM_NSTXN * R507_subtype = (xtuml2masl_SM_NSTXN *) SM_TXN_R506_is_destination_of->R507_subtype;
    if ( 0 != R507_subtype )    if ( ( 0 != SM_TXN_R506_is_destination_of ) && ( xtuml2masl_SM_NSTXN_CLASS_NUMBER == SM_TXN_R506_is_destination_of->R507_object_id ) ) {
    xtuml2masl_SM_SEME * SM_SEME_R504 = R507_subtype->SM_SEME_R504;
    if ( 0 != SM_SEME_R504 ) {
    xtuml2masl_SM_SEVT * SM_SEVT_R503_receives = SM_SEME_R504->SM_SEVT_R503_receives;
    if ( 0 != SM_SEVT_R503_receives ) {
    xtuml2masl_SM_EVT * SM_EVT_R525 = SM_SEVT_R503_receives->SM_EVT_R525;
    if ( 0 != SM_EVT_R525 ) {
    sm_evtdi = ( 0 != SM_EVT_R525 ) ? (xtuml2masl_SM_EVTDI *) Escher_SetGetAny( &SM_EVT_R525->SM_EVTDI_R532_carries ) : 0;
}}}}}}}
    /* IF ( empty sm_evtdi ) */
    if ( ( 0 == sm_evtdi ) ) {
      /* SELECT any sm_evtdi RELATED BY sm_state->SM_TXN[R506]->SM_CRTXN[R507]->SM_LEVT[R509]->SM_SEVT[R526]->SM_EVT[R525]->SM_EVTDI[R532] */
      sm_evtdi = 0;
      {      if ( 0 != sm_state ) {
      xtuml2masl_SM_TXN * SM_TXN_R506_is_destination_of;
      Escher_Iterator_s iSM_TXN_R506_is_destination_of;
      Escher_IteratorReset( &iSM_TXN_R506_is_destination_of, &sm_state->SM_TXN_R506_is_destination_of );
      while ( ( 0 == sm_evtdi ) && ( 0 != ( SM_TXN_R506_is_destination_of = (xtuml2masl_SM_TXN *) Escher_IteratorNext( &iSM_TXN_R506_is_destination_of ) ) ) ) {
      xtuml2masl_SM_CRTXN * R507_subtype = (xtuml2masl_SM_CRTXN *) SM_TXN_R506_is_destination_of->R507_subtype;
      if ( 0 != R507_subtype )      if ( ( 0 != SM_TXN_R506_is_destination_of ) && ( xtuml2masl_SM_CRTXN_CLASS_NUMBER == SM_TXN_R506_is_destination_of->R507_object_id ) ) {
      xtuml2masl_SM_LEVT * SM_LEVT_R509_is_assigned_to = R507_subtype->SM_LEVT_R509_is_assigned_to;
      if ( 0 != SM_LEVT_R509_is_assigned_to ) {
      xtuml2masl_SM_SEVT * SM_SEVT_R526 = SM_LEVT_R509_is_assigned_to->SM_SEVT_R526;
      if ( 0 != SM_SEVT_R526 ) {
      xtuml2masl_SM_EVT * SM_EVT_R525 = SM_SEVT_R526->SM_EVT_R525;
      if ( 0 != SM_EVT_R525 ) {
      sm_evtdi = ( 0 != SM_EVT_R525 ) ? (xtuml2masl_SM_EVTDI *) Escher_SetGetAny( &SM_EVT_R525->SM_EVTDI_R532_carries ) : 0;
}}}}}}}
    }
    /* ASSIGN first_sm_evtdi = sm_evtdi */
    first_sm_evtdi = sm_evtdi;
    /* WHILE ( not_empty sm_evtdi ) */
    while ( ( 0 != sm_evtdi ) ) {
      /* ASSIGN first_sm_evtdi = sm_evtdi */
      first_sm_evtdi = sm_evtdi;
      /* SELECT one sm_evtdi RELATED BY sm_evtdi->SM_EVTDI[R533.succeeds] */
      sm_evtdi = ( 0 != sm_evtdi ) ? sm_evtdi->SM_EVTDI_R533_succeeds : 0;
    }
    /* ::parameterSM_EVTDI2parameter( sm_evtdi:first_sm_evtdi ) */
    xtuml2masl_parameterSM_EVTDI2parameter( first_sm_evtdi );
    /* SELECT one sm_act RELATED BY sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514] */
    sm_act = 0;
    {    if ( 0 != sm_state ) {
    xtuml2masl_SM_MOAH * SM_MOAH_R511 = sm_state->SM_MOAH_R511;
    if ( 0 != SM_MOAH_R511 ) {
    xtuml2masl_SM_AH * SM_AH_R513 = SM_MOAH_R511->SM_AH_R513;
    if ( 0 != SM_AH_R513 ) {
    sm_act = SM_AH_R513->SM_ACT_R514_houses;
}}}}
    /* ::body2code_block( name:( ( path + / ) + sm_state.Name ), STRING::unescapetics(s:sm_act.Action_Semantics_internal) ) */
    xtuml2masl_body2code_block( Escher_stradd( Escher_stradd( path, "/" ), sm_state->Name ), STRING_unescapetics( sm_act->Action_Semantics_internal ) );
    /* ASSIGN sm_act.Descrip = ::parsepragmas(list:, s:sm_act.Descrip) */
    sm_act->Descrip = Escher_strcpy( sm_act->Descrip, xtuml2masl_parsepragmas( "", sm_act->Descrip ) );
    /* ::Descrip2description( Descrip:sm_act.Descrip ) */
    xtuml2masl_Descrip2description( sm_act->Descrip );
    /* out::populate(element:state, value:emptyvalue) */
    xtuml2masl_out_populate( "state", emptyvalue );
  }}}
  Escher_ClearSet( sm_states ); 
}

/*
 * Domain Function:  statemachine2statemachine
 */
void
xtuml2masl_statemachine2statemachine( xtuml2masl_O_OBJ * p_o_obj, xtuml2masl_SM_SM * p_sm_sm, c_t * p_type )
{
  xtuml2masl_SM_STATE * sm_state=0;xtuml2masl_SM_SM * sm_sm;xtuml2masl_O_OBJ * o_obj;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s sm_states_space={0}; Escher_ObjectSet_s * sm_states = &sm_states_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* ASSIGN sm_sm = PARAM.sm_sm */
  sm_sm = p_sm_sm;
  /* ASSIGN value[0] = PARAM.type */
  value[0] = Escher_strcpy( value[0], p_type );
  /* out::populate(element:transitiontable, value:value) */
  xtuml2masl_out_populate( "transitiontable", value );
  /* IF ( ( assigner != PARAM.type ) ) */
  if ( ( Escher_strcmp( "assigner", p_type ) != 0 ) ) {
    xtuml2masl_SM_EVT * sm_evt=0;i_t j;i_t i;i_t len;c_t * search_term=0;Escher_ObjectSet_s sm_evts_space={0}; Escher_ObjectSet_s * sm_evts = &sm_evts_space;
    /* ASSIGN value[0] = Non_Existent */
    value[0] = Escher_strcpy( value[0], "Non_Existent" );
    /* SELECT many sm_evts RELATED BY sm_sm->SM_EVT[R502] */
    Escher_ClearSet( sm_evts );
    if ( 0 != sm_sm ) {
      Escher_CopySet( sm_evts, &sm_sm->SM_EVT_R502_can_be_communicated_to_via );
    }
    /* FOR EACH sm_evt IN sm_evts */
    { Escher_Iterator_s itersm_evt;
    xtuml2masl_SM_EVT * iism_evt;
    Escher_IteratorReset( &itersm_evt, sm_evts );
    while ( (iism_evt = (xtuml2masl_SM_EVT *)Escher_IteratorNext( &itersm_evt )) != 0 ) {
      sm_evt = iism_evt; {
      xtuml2masl_SM_CRTXN * sm_crtxn=0;
      /* ASSIGN value[1] =  */
      value[1] = Escher_strcpy( value[1], "" );
      /* ASSIGN value[2] =  */
      value[2] = Escher_strcpy( value[2], "" );
      /* ASSIGN value[3] = sm_evt.Mning */
      value[3] = Escher_strcpy( value[3], sm_evt->Mning );
      /* ASSIGN value[4] = Cannot_Happen */
      value[4] = Escher_strcpy( value[4], "Cannot_Happen" );
      /* SELECT one sm_crtxn RELATED BY sm_evt->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509] */
      sm_crtxn = 0;
      {      if ( 0 != sm_evt ) {
      xtuml2masl_SM_SEVT * R525_subtype = (xtuml2masl_SM_SEVT *) sm_evt->R525_subtype;
      if ( 0 != R525_subtype )      if ( ( 0 != sm_evt ) && ( xtuml2masl_SM_SEVT_CLASS_NUMBER == sm_evt->R525_object_id ) ) {
      xtuml2masl_SM_LEVT * R526_subtype = (xtuml2masl_SM_LEVT *) R525_subtype->R526_subtype;
      if ( 0 != R526_subtype )      if ( ( 0 != R525_subtype ) && ( xtuml2masl_SM_LEVT_CLASS_NUMBER == R525_subtype->R526_object_id ) ) {
      sm_crtxn = R526_subtype->SM_CRTXN_R509_has_assigned_to_it;
}}}}
      /* IF ( not_empty sm_crtxn ) */
      if ( ( 0 != sm_crtxn ) ) {
        xtuml2masl_SM_STATE * sm_state=0;
        /* SELECT one sm_state RELATED BY sm_crtxn->SM_TXN[R507]->SM_STATE[R506] */
        sm_state = 0;
        {        if ( 0 != sm_crtxn ) {
        xtuml2masl_SM_TXN * SM_TXN_R507 = sm_crtxn->SM_TXN_R507;
        if ( 0 != SM_TXN_R507 ) {
        sm_state = SM_TXN_R507->SM_STATE_R506_is_destined_to;
}}}
        /* ASSIGN value[4] = sm_state.Name */
        value[4] = Escher_strcpy( value[4], sm_state->Name );
      }
      /* out::populate(element:transition, value:value) */
      xtuml2masl_out_populate( "transition", value );
      /* out::populate(element:transition, value:emptyvalue) */
      xtuml2masl_out_populate( "transition", emptyvalue );
    }}}
    /* ASSIGN search_term = Non_Existent */
    search_term = Escher_strcpy( search_term, "Non_Existent" );
    /* ASSIGN len = STRING::strlen(s:search_term) */
    len = STRING_strlen( search_term );
    /* ASSIGN i = STRING::indexof(haystack:sm_sm.Descrip, needle:( ( < + search_term ) + > )) */
    i = STRING_indexof( sm_sm->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
    /* ASSIGN j = STRING::indexof(haystack:sm_sm.Descrip, needle:( ( </ + search_term ) + > )) */
    j = STRING_indexof( sm_sm->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
    /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
    if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
      c_t * descrip_end=0;c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
      /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:sm_sm.Descrip) */
      pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, sm_sm->Descrip ) );
      /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
      s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
      /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:sm_sm.Descrip) */
      descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, sm_sm->Descrip ) );
      /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:sm_sm.Descrip) */
      descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, sm_sm->Descrip ) );
      /* ASSIGN sm_sm.Descrip = ( descrip_begin + descrip_end ) */
      sm_sm->Descrip = Escher_strcpy( sm_sm->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
    }
    Escher_ClearSet( sm_evts ); 
  }
  /* SELECT many sm_states RELATED BY sm_sm->SM_STATE[R501] */
  Escher_ClearSet( sm_states );
  if ( 0 != sm_sm ) {
    Escher_CopySet( sm_states, &sm_sm->SM_STATE_R501_is_decomposed_into );
  }
  /* FOR EACH sm_state IN sm_states */
  { Escher_Iterator_s itersm_state;
  xtuml2masl_SM_STATE * iism_state;
  Escher_IteratorReset( &itersm_state, sm_states );
  while ( (iism_state = (xtuml2masl_SM_STATE *)Escher_IteratorNext( &itersm_state )) != 0 ) {
    sm_state = iism_state; {
    xtuml2masl_SM_SEME * sm_seme=0;i_t j;i_t i;i_t len;c_t * search_term=0;Escher_ObjectSet_s sm_semes_space={0}; Escher_ObjectSet_s * sm_semes = &sm_semes_space;
    /* ASSIGN value[0] = sm_state.Name */
    value[0] = Escher_strcpy( value[0], sm_state->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* ASSIGN value[2] =  */
    value[2] = Escher_strcpy( value[2], "" );
    /* ASSIGN value[3] =  */
    value[3] = Escher_strcpy( value[3], "" );
    /* ASSIGN value[4] =  */
    value[4] = Escher_strcpy( value[4], "" );
    /* SELECT many sm_semes RELATED BY sm_state->SM_SEME[R503] */
    Escher_ClearSet( sm_semes );
    if ( 0 != sm_state ) {
      Escher_CopySet( sm_semes, &sm_state->SM_SEME_R503 );
    }
    /* FOR EACH sm_seme IN sm_semes */
    { Escher_Iterator_s itersm_seme;
    xtuml2masl_SM_SEME * iism_seme;
    Escher_IteratorReset( &itersm_seme, sm_semes );
    while ( (iism_seme = (xtuml2masl_SM_SEME *)Escher_IteratorNext( &itersm_seme )) != 0 ) {
      sm_seme = iism_seme; {
      xtuml2masl_SM_STATE * next_sm_state=0;xtuml2masl_SM_EVT * sm_evt=0;
      /* SELECT one sm_evt RELATED BY sm_seme->SM_SEVT[R503]->SM_EVT[R525] */
      sm_evt = 0;
      {      if ( 0 != sm_seme ) {
      xtuml2masl_SM_SEVT * SM_SEVT_R503_receives = sm_seme->SM_SEVT_R503_receives;
      if ( 0 != SM_SEVT_R503_receives ) {
      sm_evt = SM_SEVT_R503_receives->SM_EVT_R525;
}}}
      /* ASSIGN value[3] = sm_evt.Mning */
      value[3] = Escher_strcpy( value[3], sm_evt->Mning );
      /* SELECT one next_sm_state RELATED BY sm_seme->SM_NSTXN[R504]->SM_TXN[R507]->SM_STATE[R506] */
      next_sm_state = 0;
      {      if ( 0 != sm_seme ) {
      xtuml2masl_SM_NSTXN * R504_subtype = (xtuml2masl_SM_NSTXN *) sm_seme->R504_subtype;
      if ( 0 != R504_subtype )      if ( ( 0 != sm_seme ) && ( xtuml2masl_SM_NSTXN_CLASS_NUMBER == sm_seme->R504_object_id ) ) {
      xtuml2masl_SM_TXN * SM_TXN_R507 = R504_subtype->SM_TXN_R507;
      if ( 0 != SM_TXN_R507 ) {
      next_sm_state = SM_TXN_R507->SM_STATE_R506_is_destined_to;
}}}}
      /* IF ( not_empty next_sm_state ) */
      if ( ( 0 != next_sm_state ) ) {
        /* ASSIGN value[4] = next_sm_state.Name */
        value[4] = Escher_strcpy( value[4], next_sm_state->Name );
      }
      else {
        xtuml2masl_SM_EIGN * sm_eign=0;
        /* SELECT one sm_eign RELATED BY sm_seme->SM_EIGN[R504] */
        sm_eign = 0;
        if ( ( 0 != sm_seme ) && ( xtuml2masl_SM_EIGN_CLASS_NUMBER == sm_seme->R504_object_id ) )        sm_eign = ( 0 != sm_seme ) ? (xtuml2masl_SM_EIGN *) sm_seme->R504_subtype : 0;
        /* IF ( not_empty sm_eign ) */
        if ( ( 0 != sm_eign ) ) {
          /* ASSIGN value[4] = Ignore */
          value[4] = Escher_strcpy( value[4], "Ignore" );
        }
        else {
          xtuml2masl_SM_CH * sm_ch=0;
          /* SELECT one sm_ch RELATED BY sm_seme->SM_CH[R504] */
          sm_ch = 0;
          if ( ( 0 != sm_seme ) && ( xtuml2masl_SM_CH_CLASS_NUMBER == sm_seme->R504_object_id ) )          sm_ch = ( 0 != sm_seme ) ? (xtuml2masl_SM_CH *) sm_seme->R504_subtype : 0;
          /* IF ( not_empty sm_ch ) */
          if ( ( 0 != sm_ch ) ) {
            /* ASSIGN value[4] = Cannot_Happen */
            value[4] = Escher_strcpy( value[4], "Cannot_Happen" );
          }
          else {
            /* TRACE::log( flavor:failure, id:102, message:invalid state machine ) */
            TRACE_log( "failure", 102, "invalid state machine" );
          }
        }
      }
      /* out::populate(element:transition, value:value) */
      xtuml2masl_out_populate( "transition", value );
      /* out::populate(element:transition, value:emptyvalue) */
      xtuml2masl_out_populate( "transition", emptyvalue );
    }}}
    /* ASSIGN search_term = sm_state.Name */
    search_term = Escher_strcpy( search_term, sm_state->Name );
    /* ASSIGN len = STRING::strlen(s:search_term) */
    len = STRING_strlen( search_term );
    /* ASSIGN i = STRING::indexof(haystack:sm_sm.Descrip, needle:( ( < + search_term ) + > )) */
    i = STRING_indexof( sm_sm->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
    /* ASSIGN j = STRING::indexof(haystack:sm_sm.Descrip, needle:( ( </ + search_term ) + > )) */
    j = STRING_indexof( sm_sm->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
    /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
    if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
      c_t * descrip_end=0;c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
      /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:sm_sm.Descrip) */
      pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, sm_sm->Descrip ) );
      /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
      s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
      /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:sm_sm.Descrip) */
      descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, sm_sm->Descrip ) );
      /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:sm_sm.Descrip) */
      descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, sm_sm->Descrip ) );
      /* ASSIGN sm_sm.Descrip = ( descrip_begin + descrip_end ) */
      sm_sm->Descrip = Escher_strcpy( sm_sm->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
    }
    Escher_ClearSet( sm_semes ); 
  }}}
  /* ASSIGN sm_sm.Descrip = ::parsepragmas(list:, s:sm_sm.Descrip) */
  sm_sm->Descrip = Escher_strcpy( sm_sm->Descrip, xtuml2masl_parsepragmas( "", sm_sm->Descrip ) );
  /* out::populate(element:transitiontable, value:emptyvalue) */
  xtuml2masl_out_populate( "transitiontable", emptyvalue );
  Escher_ClearSet( sm_states ); 
}

/*
 * Domain Function:  subsuper2subsuper
 */
void
xtuml2masl_subsuper2subsuper( xtuml2masl_C_C * p_c_c, xtuml2masl_R_SUBSUP * p_r_subsup )
{
  xtuml2masl_R_SUBSUP * r_subsup;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s o_objs_space={0}; Escher_ObjectSet_s * o_objs = &o_objs_space;xtuml2masl_O_OBJ * o_obj=0;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* ASSIGN r_subsup = PARAM.r_subsup */
  r_subsup = p_r_subsup;
  /* SELECT one o_obj RELATED BY r_subsup->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201] */
  o_obj = 0;
  {  if ( 0 != r_subsup ) {
  xtuml2masl_R_SUPER * R_SUPER_R212_relates = r_subsup->R_SUPER_R212_relates;
  if ( 0 != R_SUPER_R212_relates ) {
  xtuml2masl_R_RTO * R_RTO_R204 = R_SUPER_R212_relates->R_RTO_R204;
  if ( 0 != R_RTO_R204 ) {
  xtuml2masl_R_OIR * R_OIR_R203 = R_RTO_R204->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}}
  /* ASSIGN value[0] =  */
  value[0] = Escher_strcpy( value[0], "" );
  /* ASSIGN value[1] = o_obj.Name */
  value[1] = Escher_strcpy( value[1], o_obj->Name );
  /* ASSIGN value[2] =  */
  value[2] = Escher_strcpy( value[2], "" );
  /* ASSIGN value[3] =  */
  value[3] = Escher_strcpy( value[3], "" );
  /* ASSIGN value[4] =  */
  value[4] = Escher_strcpy( value[4], "" );
  /* ASSIGN value[5] =  */
  value[5] = Escher_strcpy( value[5], "" );
  /* ASSIGN value[6] =  */
  value[6] = Escher_strcpy( value[6], "" );
  /* out::populate(element:participation, value:value) */
  xtuml2masl_out_populate( "participation", value );
  /* ASSIGN value[6] = o_obj.Name */
  value[6] = Escher_strcpy( value[6], o_obj->Name );
  /* SELECT many o_objs RELATED BY r_subsup->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
  Escher_ClearSet( o_objs );
  {  if ( 0 != r_subsup ) {
  xtuml2masl_R_SUB * R_SUB_R213_relates;
  Escher_Iterator_s iR_SUB_R213_relates;
  Escher_IteratorReset( &iR_SUB_R213_relates, &r_subsup->R_SUB_R213_relates );
  while ( 0 != ( R_SUB_R213_relates = (xtuml2masl_R_SUB *) Escher_IteratorNext( &iR_SUB_R213_relates ) ) ) {
  xtuml2masl_R_RGO * R_RGO_R205 = R_SUB_R213_relates->R_RGO_R205;
  if ( 0 != R_RGO_R205 ) {
  xtuml2masl_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
  if ( 0 != R_OIR_R203 ) {
  {xtuml2masl_O_OBJ * O_OBJ_R201_abstracts_association_between_instances_of = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_objs, O_OBJ_R201_abstracts_association_between_instances_of ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_objs, O_OBJ_R201_abstracts_association_between_instances_of );
  }}}}}}}
  /* FOR EACH o_obj IN o_objs */
  { Escher_Iterator_s itero_obj;
  xtuml2masl_O_OBJ * iio_obj;
  Escher_IteratorReset( &itero_obj, o_objs );
  while ( (iio_obj = (xtuml2masl_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
    o_obj = iio_obj; {
    /* ASSIGN value[1] = o_obj.Name */
    value[1] = Escher_strcpy( value[1], o_obj->Name );
    /* out::populate(element:participation, value:value) */
    xtuml2masl_out_populate( "participation", value );
  }}}
  /* out::populate(element:participation, value:emptyvalue) */
  xtuml2masl_out_populate( "participation", emptyvalue );
  Escher_ClearSet( o_objs ); 
}

/*
 * Domain Function:  type2type
 */
void
xtuml2masl_type2type( xtuml2masl_C_C * p_c_c )
{
  xtuml2masl_S_DT * s_dt=0;xtuml2masl_C_C * c_c;c_t * emptyvalue[8]={0};c_t * value[8]={0};Escher_ObjectSet_s sub_pkgs_space={0}; Escher_ObjectSet_s * sub_pkgs = &sub_pkgs_space;Escher_ObjectSet_s s_dts_space={0}; Escher_ObjectSet_s * s_dts = &s_dts_space;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN emptyvalue[7] =  */
  emptyvalue[7] = Escher_strcpy( emptyvalue[7], "" );
  /* ASSIGN emptyvalue[6] =  */
  emptyvalue[6] = Escher_strcpy( emptyvalue[6], "" );
  /* ASSIGN emptyvalue[5] =  */
  emptyvalue[5] = Escher_strcpy( emptyvalue[5], "" );
  /* ASSIGN emptyvalue[4] =  */
  emptyvalue[4] = Escher_strcpy( emptyvalue[4], "" );
  /* ASSIGN emptyvalue[3] =  */
  emptyvalue[3] = Escher_strcpy( emptyvalue[3], "" );
  /* ASSIGN emptyvalue[2] =  */
  emptyvalue[2] = Escher_strcpy( emptyvalue[2], "" );
  /* ASSIGN emptyvalue[1] =  */
  emptyvalue[1] = Escher_strcpy( emptyvalue[1], "" );
  /* ASSIGN emptyvalue[0] =  */
  emptyvalue[0] = Escher_strcpy( emptyvalue[0], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many s_dts RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->S_DT[R8001] */
  Escher_ClearSet( s_dts );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  xtuml2masl_EP_PKG * R8001_subtype = (xtuml2masl_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
  }}}}}}}
  /* FOR EACH s_dt IN s_dts */
  { Escher_Iterator_s iters_dt;
  xtuml2masl_S_DT * iis_dt;
  Escher_IteratorReset( &iters_dt, s_dts );
  while ( (iis_dt = (xtuml2masl_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
    s_dt = iis_dt; {
    xtuml2masl_S_IRDT * s_irdt=0;
    /* SELECT one s_irdt RELATED BY s_dt->S_IRDT[R17] */
    s_irdt = 0;
    if ( ( 0 != s_dt ) && ( xtuml2masl_S_IRDT_CLASS_NUMBER == s_dt->R17_object_id ) )    s_irdt = ( 0 != s_dt ) ? (xtuml2masl_S_IRDT *) s_dt->R17_subtype : 0;
    /* IF ( empty s_irdt ) */
    if ( ( 0 == s_irdt ) ) {
      i_t j;i_t i;i_t len;c_t * search_term=0;xtuml2masl_S_EDT * s_edt=0;xtuml2masl_S_UDT * s_udt=0;
      /* SELECT one s_udt RELATED BY s_dt->S_UDT[R17] */
      s_udt = 0;
      if ( ( 0 != s_dt ) && ( xtuml2masl_S_UDT_CLASS_NUMBER == s_dt->R17_object_id ) )      s_udt = ( 0 != s_dt ) ? (xtuml2masl_S_UDT *) s_dt->R17_subtype : 0;
      /* SELECT one s_edt RELATED BY s_dt->S_EDT[R17] */
      s_edt = 0;
      if ( ( 0 != s_dt ) && ( xtuml2masl_S_EDT_CLASS_NUMBER == s_dt->R17_object_id ) )      s_edt = ( 0 != s_dt ) ? (xtuml2masl_S_EDT *) s_dt->R17_subtype : 0;
      /* ASSIGN value[0] = s_dt.Name */
      value[0] = Escher_strcpy( value[0], s_dt->Name );
      /* ASSIGN value[1] = private */
      value[1] = Escher_strcpy( value[1], "private" );
      /* IF ( not_empty s_udt ) */
      if ( ( 0 != s_udt ) ) {
        i_t end_index;i_t start_index;xtuml2masl_S_DT * base_s_dt=0;
        /* SELECT one base_s_dt RELATED BY s_udt->S_DT[R18] */
        base_s_dt = ( 0 != s_udt ) ? s_udt->S_DT_R18_are_defined_within : 0;
        /* ASSIGN start_index = STRING::indexof(haystack:s_dt.Descrip, needle:<definition>) */
        start_index = STRING_indexof( s_dt->Descrip, "<definition>" );
        /* ASSIGN end_index = STRING::indexof(haystack:s_dt.Descrip, needle:</definition>) */
        end_index = STRING_indexof( s_dt->Descrip, "</definition>" );
        /* IF ( ( ( - 1 != start_index ) and ( - 1 != end_index ) ) ) */
        if ( ( ( -1 != start_index ) && ( -1 != end_index ) ) ) {
          c_t * descrip_end=0;c_t * descrip_start=0;
          /* ASSIGN value[2] = STRING::substr(begin:( start_index + 12 ), end:end_index, s:s_dt.Descrip) */
          value[2] = Escher_strcpy( value[2], STRING_substr( ( start_index + 12 ), end_index, s_dt->Descrip ) );
          /* ASSIGN descrip_start = STRING::substr(begin:0, end:start_index, s:s_dt.Descrip) */
          descrip_start = Escher_strcpy( descrip_start, STRING_substr( 0, start_index, s_dt->Descrip ) );
          /* ASSIGN descrip_end = STRING::substr(begin:( end_index + 13 ), end:- 1, s:s_dt.Descrip) */
          descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( end_index + 13 ), -1, s_dt->Descrip ) );
          /* ASSIGN s_dt.Descrip = ( descrip_start + descrip_end ) */
          s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_start, descrip_end ) );
        }
        else {
          /* IF ( ( ( base_s_dt.Name == MASLtype ) or ( s_dt.Name == MASLtype ) ) ) */
          if ( ( ( Escher_strcmp( base_s_dt->Name, "MASLtype" ) == 0 ) || ( Escher_strcmp( s_dt->Name, "MASLtype" ) == 0 ) ) ) {
            /* CONTINUE */
            continue;
          }
          else {
            /* ASSIGN value[2] = base_s_dt.Name */
            value[2] = Escher_strcpy( value[2], base_s_dt->Name );
          }
        }
      }
      else if ( ( 0 != s_edt ) ) {
        bool first;xtuml2masl_S_ENUM * next_s_enum;c_t * enum_definition=0;xtuml2masl_S_ENUM * s_enum=0;xtuml2masl_S_ENUM * prev_s_enum=0;
        /* SELECT any s_enum FROM INSTANCES OF S_ENUM WHERE FALSE */
        s_enum = 0;
        /* SELECT any prev_s_enum RELATED BY s_edt->S_ENUM[R27] */
        prev_s_enum = ( 0 != s_edt ) ? (xtuml2masl_S_ENUM *) Escher_SetGetAny( &s_edt->S_ENUM_R27_defines ) : 0;
        /* WHILE ( not_empty prev_s_enum ) */
        while ( ( 0 != prev_s_enum ) ) {
          /* ASSIGN s_enum = prev_s_enum */
          s_enum = prev_s_enum;
          /* SELECT one prev_s_enum RELATED BY s_enum->S_ENUM[R56.precedes] */
          prev_s_enum = ( 0 != s_enum ) ? s_enum->S_ENUM_R56_precedes : 0;
        }
        /* ASSIGN enum_definition = enum ( */
        enum_definition = Escher_strcpy( enum_definition, "enum (" );
        /* ASSIGN next_s_enum = s_enum */
        next_s_enum = s_enum;
        /* ASSIGN first = TRUE */
        first = TRUE;
        /* WHILE ( not_empty next_s_enum ) */
        while ( ( 0 != next_s_enum ) ) {
          /* IF ( not first ) */
          if ( !first ) {
            /* ASSIGN enum_definition = ( enum_definition + ,  ) */
            enum_definition = Escher_strcpy( enum_definition, Escher_stradd( enum_definition, ", " ) );
          }
          /* ASSIGN first = FALSE */
          first = FALSE;
          /* ASSIGN enum_definition = ( enum_definition + next_s_enum.Name ) */
          enum_definition = Escher_strcpy( enum_definition, Escher_stradd( enum_definition, next_s_enum->Name ) );
          /* ASSIGN s_enum = next_s_enum */
          s_enum = next_s_enum;
          /* SELECT one next_s_enum RELATED BY s_enum->S_ENUM[R56.succeeds] */
          next_s_enum = ( 0 != s_enum ) ? s_enum->S_ENUM_R56_succeeds : 0;
        }
        /* ASSIGN enum_definition = ( enum_definition + ) ) */
        enum_definition = Escher_strcpy( enum_definition, Escher_stradd( enum_definition, ")" ) );
        /* ASSIGN value[2] = enum_definition */
        value[2] = Escher_strcpy( value[2], enum_definition );
      }
      else {
        /* CONTINUE */
        continue;
      }
      /* out::populate(element:type, value:value) */
      xtuml2masl_out_populate( "type", value );
      /* ASSIGN search_term = declaration */
      search_term = Escher_strcpy( search_term, "declaration" );
      /* ASSIGN len = STRING::strlen(s:search_term) */
      len = STRING_strlen( search_term );
      /* ASSIGN i = STRING::indexof(haystack:s_dt.Descrip, needle:( ( < + search_term ) + > )) */
      i = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
      /* ASSIGN j = STRING::indexof(haystack:s_dt.Descrip, needle:( ( </ + search_term ) + > )) */
      j = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
      /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
      if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
        c_t * descrip_end=0;c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
        /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:s_dt.Descrip) */
        pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, s_dt->Descrip ) );
        /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
        s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
        /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:s_dt.Descrip) */
        descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, s_dt->Descrip ) );
        /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:s_dt.Descrip) */
        descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, s_dt->Descrip ) );
        /* ASSIGN s_dt.Descrip = ( descrip_begin + descrip_end ) */
        s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
      }
      /* ASSIGN s_dt.Descrip = ::parsepragmas(list:, s:s_dt.Descrip) */
      s_dt->Descrip = Escher_strcpy( s_dt->Descrip, xtuml2masl_parsepragmas( "", s_dt->Descrip ) );
      /* ::Descrip2description( Descrip:s_dt.Descrip ) */
      xtuml2masl_Descrip2description( s_dt->Descrip );
      /* out::populate(element:type, value:emptyvalue) */
      xtuml2masl_out_populate( "type", emptyvalue );
    }
  }}}
  /* SELECT many ep_pkgs RELATED BY c_c->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405]->EP_PKG[R1401] WHERE ( ( SELECTED.Name != types ) ) */
  Escher_ClearSet( ep_pkgs );
  {  if ( 0 != c_c ) {
  xtuml2masl_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  xtuml2masl_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  xtuml2masl_S_SYS * S_SYS_R1405 = EP_PKG_R8000_contained_by->S_SYS_R1405;
  if ( 0 != S_SYS_R1405 ) {
  xtuml2masl_EP_PKG * selected;
  Escher_Iterator_s iEP_PKG_R1401_contains;
  Escher_IteratorReset( &iEP_PKG_R1401_contains, &S_SYS_R1405->EP_PKG_R1401_contains );
  while ( 0 != ( selected = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &iEP_PKG_R1401_contains ) ) ) {
    if ( ( Escher_strcmp( selected->Name, "types" ) != 0 ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) ep_pkgs, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) ep_pkgs, selected );
  }}}
}}}}}
  /* SELECT many s_dts RELATED BY ep_pkgs->PE_PE[R8000]->S_DT[R8001] */
  Escher_ClearSet( s_dts );
  {  xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, ep_pkgs );
  while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
  }}}}}
  /* FOR EACH s_dt IN s_dts */
  { Escher_Iterator_s iters_dt;
  xtuml2masl_S_DT * iis_dt;
  Escher_IteratorReset( &iters_dt, s_dts );
  while ( (iis_dt = (xtuml2masl_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
    s_dt = iis_dt; {
    i_t end_index;i_t start_index;
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] = public */
    value[1] = Escher_strcpy( value[1], "public" );
    /* ASSIGN start_index = STRING::indexof(haystack:s_dt.Descrip, needle:<definition>) */
    start_index = STRING_indexof( s_dt->Descrip, "<definition>" );
    /* ASSIGN end_index = STRING::indexof(haystack:s_dt.Descrip, needle:</definition>) */
    end_index = STRING_indexof( s_dt->Descrip, "</definition>" );
    /* IF ( ( ( - 1 != start_index ) and ( - 1 != end_index ) ) ) */
    if ( ( ( -1 != start_index ) && ( -1 != end_index ) ) ) {
      i_t j;i_t i;i_t len;c_t * search_term=0;c_t * descrip_end=0;c_t * descrip_start=0;
      /* ASSIGN value[2] = STRING::substr(begin:( start_index + 12 ), end:end_index, s:s_dt.Descrip) */
      value[2] = Escher_strcpy( value[2], STRING_substr( ( start_index + 12 ), end_index, s_dt->Descrip ) );
      /* ASSIGN descrip_start = STRING::substr(begin:0, end:start_index, s:s_dt.Descrip) */
      descrip_start = Escher_strcpy( descrip_start, STRING_substr( 0, start_index, s_dt->Descrip ) );
      /* ASSIGN descrip_end = STRING::substr(begin:( end_index + 13 ), end:- 1, s:s_dt.Descrip) */
      descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( end_index + 13 ), -1, s_dt->Descrip ) );
      /* ASSIGN s_dt.Descrip = ( descrip_start + descrip_end ) */
      s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_start, descrip_end ) );
      /* out::populate(element:type, value:value) */
      xtuml2masl_out_populate( "type", value );
      /* ASSIGN search_term = declaration */
      search_term = Escher_strcpy( search_term, "declaration" );
      /* ASSIGN len = STRING::strlen(s:search_term) */
      len = STRING_strlen( search_term );
      /* ASSIGN i = STRING::indexof(haystack:s_dt.Descrip, needle:( ( < + search_term ) + > )) */
      i = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
      /* ASSIGN j = STRING::indexof(haystack:s_dt.Descrip, needle:( ( </ + search_term ) + > )) */
      j = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
      /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
      if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
        c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
        /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:s_dt.Descrip) */
        pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, s_dt->Descrip ) );
        /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
        s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
        /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:s_dt.Descrip) */
        descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, s_dt->Descrip ) );
        /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:s_dt.Descrip) */
        descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, s_dt->Descrip ) );
        /* ASSIGN s_dt.Descrip = ( descrip_begin + descrip_end ) */
        s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
      }
      /* ASSIGN s_dt.Descrip = ::parsepragmas(list:, s:s_dt.Descrip) */
      s_dt->Descrip = Escher_strcpy( s_dt->Descrip, xtuml2masl_parsepragmas( "", s_dt->Descrip ) );
      /* ::Descrip2description( Descrip:s_dt.Descrip ) */
      xtuml2masl_Descrip2description( s_dt->Descrip );
      /* out::populate(element:type, value:emptyvalue) */
      xtuml2masl_out_populate( "type", emptyvalue );
    }
  }}}
  /* SELECT many sub_pkgs RELATED BY ep_pkgs->PE_PE[R8000]->EP_PKG[R8001] */
  Escher_ClearSet( sub_pkgs );
  {  xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, ep_pkgs );
  while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
  xtuml2masl_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {xtuml2masl_EP_PKG * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype );
  }}}}}
  /* WHILE ( not_empty sub_pkgs ) */
  while ( ( ! Escher_SetIsEmpty( sub_pkgs ) ) ) {
    /* SELECT many s_dts RELATED BY sub_pkgs->PE_PE[R8000]->S_DT[R8001] */
    Escher_ClearSet( s_dts );
    {    xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, sub_pkgs );
    while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    xtuml2masl_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {xtuml2masl_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
    }}}}}
    /* FOR EACH s_dt IN s_dts */
    { Escher_Iterator_s iters_dt;
    xtuml2masl_S_DT * iis_dt;
    Escher_IteratorReset( &iters_dt, s_dts );
    while ( (iis_dt = (xtuml2masl_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
      s_dt = iis_dt; {
      i_t end_index;i_t start_index;
      /* ASSIGN value[0] = s_dt.Name */
      value[0] = Escher_strcpy( value[0], s_dt->Name );
      /* ASSIGN value[1] = public */
      value[1] = Escher_strcpy( value[1], "public" );
      /* ASSIGN start_index = STRING::indexof(haystack:s_dt.Descrip, needle:<definition>) */
      start_index = STRING_indexof( s_dt->Descrip, "<definition>" );
      /* ASSIGN end_index = STRING::indexof(haystack:s_dt.Descrip, needle:</definition>) */
      end_index = STRING_indexof( s_dt->Descrip, "</definition>" );
      /* IF ( ( ( - 1 != start_index ) and ( - 1 != end_index ) ) ) */
      if ( ( ( -1 != start_index ) && ( -1 != end_index ) ) ) {
        i_t j;i_t i;i_t len;c_t * search_term=0;c_t * descrip_end=0;c_t * descrip_start=0;
        /* ASSIGN value[2] = STRING::substr(begin:( start_index + 12 ), end:end_index, s:s_dt.Descrip) */
        value[2] = Escher_strcpy( value[2], STRING_substr( ( start_index + 12 ), end_index, s_dt->Descrip ) );
        /* ASSIGN descrip_start = STRING::substr(begin:0, end:start_index, s:s_dt.Descrip) */
        descrip_start = Escher_strcpy( descrip_start, STRING_substr( 0, start_index, s_dt->Descrip ) );
        /* ASSIGN descrip_end = STRING::substr(begin:( end_index + 13 ), end:- 1, s:s_dt.Descrip) */
        descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( end_index + 13 ), -1, s_dt->Descrip ) );
        /* ASSIGN s_dt.Descrip = ( descrip_start + descrip_end ) */
        s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_start, descrip_end ) );
        /* out::populate(element:type, value:value) */
        xtuml2masl_out_populate( "type", value );
        /* ASSIGN search_term = declaration */
        search_term = Escher_strcpy( search_term, "declaration" );
        /* ASSIGN len = STRING::strlen(s:search_term) */
        len = STRING_strlen( search_term );
        /* ASSIGN i = STRING::indexof(haystack:s_dt.Descrip, needle:( ( < + search_term ) + > )) */
        i = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "<", search_term ), ">" ) );
        /* ASSIGN j = STRING::indexof(haystack:s_dt.Descrip, needle:( ( </ + search_term ) + > )) */
        j = STRING_indexof( s_dt->Descrip, Escher_stradd( Escher_stradd( "</", search_term ), ">" ) );
        /* IF ( ( ( ( - 1 != i ) and ( - 1 != j ) ) and ( j > i ) ) ) */
        if ( ( ( ( -1 != i ) && ( -1 != j ) ) && ( j > i ) ) ) {
          c_t * descrip_begin=0;c_t * s=0;c_t * pragma_string=0;
          /* ASSIGN pragma_string = STRING::substr(begin:( ( i + len ) + 2 ), end:j, s:s_dt.Descrip) */
          pragma_string = Escher_strcpy( pragma_string, STRING_substr( ( ( i + len ) + 2 ), j, s_dt->Descrip ) );
          /* ASSIGN s = ::parsepragmas(list:search_term, s:pragma_string) */
          s = Escher_strcpy( s, xtuml2masl_parsepragmas( search_term, pragma_string ) );
          /* ASSIGN descrip_begin = STRING::substr(begin:0, end:i, s:s_dt.Descrip) */
          descrip_begin = Escher_strcpy( descrip_begin, STRING_substr( 0, i, s_dt->Descrip ) );
          /* ASSIGN descrip_end = STRING::substr(begin:( ( j + len ) + 3 ), end:- 1, s:s_dt.Descrip) */
          descrip_end = Escher_strcpy( descrip_end, STRING_substr( ( ( j + len ) + 3 ), -1, s_dt->Descrip ) );
          /* ASSIGN s_dt.Descrip = ( descrip_begin + descrip_end ) */
          s_dt->Descrip = Escher_strcpy( s_dt->Descrip, Escher_stradd( descrip_begin, descrip_end ) );
        }
        /* ASSIGN s_dt.Descrip = ::parsepragmas(list:, s:s_dt.Descrip) */
        s_dt->Descrip = Escher_strcpy( s_dt->Descrip, xtuml2masl_parsepragmas( "", s_dt->Descrip ) );
        /* ::Descrip2description( Descrip:s_dt.Descrip ) */
        xtuml2masl_Descrip2description( s_dt->Descrip );
        /* out::populate(element:type, value:emptyvalue) */
        xtuml2masl_out_populate( "type", emptyvalue );
      }
    }}}
    /* SELECT many sub_pkgs RELATED BY sub_pkgs->PE_PE[R8000]->EP_PKG[R8001] */
    Escher_ClearSet( sub_pkgs );
    {    xtuml2masl_EP_PKG * xtuml2masl_EP_PKG_linkage;
    Escher_Iterator_s start_many_iterator;
    Escher_IteratorReset( &start_many_iterator, sub_pkgs );
    while ( 0 != ( xtuml2masl_EP_PKG_linkage = (xtuml2masl_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
    xtuml2masl_PE_PE * PE_PE_R8000_contains;
    Escher_Iterator_s iPE_PE_R8000_contains;
    Escher_IteratorReset( &iPE_PE_R8000_contains, &xtuml2masl_EP_PKG_linkage->PE_PE_R8000_contains );
    while ( 0 != ( PE_PE_R8000_contains = (xtuml2masl_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
    if ( ( 0 != PE_PE_R8000_contains ) && ( xtuml2masl_EP_PKG_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )    {xtuml2masl_EP_PKG * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) sub_pkgs, R8001_subtype );
    }}}}}
  }
  Escher_ClearSet( sub_pkgs ); Escher_ClearSet( s_dts ); Escher_ClearSet( ep_pkgs ); 
}

/*
 * Domain Function:  underscore_signature
 */
c_t *
xtuml2masl_underscore_signature( c_t * p_signature )
{
  i_t i;c_t * signature=0;
  /* ASSIGN signature = PARAM.signature */
  signature = Escher_strcpy( signature, p_signature );
  /* ASSIGN i = STRING::indexof(haystack:signature, needle:,) */
  i = STRING_indexof( signature, "," );
  /* WHILE ( ( i != - 1 ) ) */
  while ( ( i != -1 ) ) {
    c_t * sig_end=0;c_t * sig_begin=0;
    /* ASSIGN sig_begin = STRING::substr(begin:0, end:i, s:signature) */
    sig_begin = Escher_strcpy( sig_begin, STRING_substr( 0, i, signature ) );
    /* ASSIGN sig_end = STRING::substr(begin:( i + 1 ), end:- 1, s:signature) */
    sig_end = Escher_strcpy( sig_end, STRING_substr( ( i + 1 ), -1, signature ) );
    /* ASSIGN signature = ( ( sig_begin + _ ) + sig_end ) */
    signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( sig_begin, "_" ), sig_end ) );
    /* ASSIGN i = STRING::indexof(haystack:signature, needle:,) */
    i = STRING_indexof( signature, "," );
  }
  /* ASSIGN i = STRING::indexof(haystack:signature, needle:() */
  i = STRING_indexof( signature, "(" );
  /* WHILE ( ( i != - 1 ) ) */
  while ( ( i != -1 ) ) {
    c_t * sig_end=0;c_t * sig_begin=0;
    /* ASSIGN sig_begin = STRING::substr(begin:0, end:i, s:signature) */
    sig_begin = Escher_strcpy( sig_begin, STRING_substr( 0, i, signature ) );
    /* ASSIGN sig_end = STRING::substr(begin:( i + 1 ), end:- 1, s:signature) */
    sig_end = Escher_strcpy( sig_end, STRING_substr( ( i + 1 ), -1, signature ) );
    /* ASSIGN signature = ( ( sig_begin + _ ) + sig_end ) */
    signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( sig_begin, "_" ), sig_end ) );
    /* ASSIGN i = STRING::indexof(haystack:signature, needle:() */
    i = STRING_indexof( signature, "(" );
  }
  /* ASSIGN i = STRING::indexof(haystack:signature, needle: ) */
  i = STRING_indexof( signature, " " );
  /* WHILE ( ( i != - 1 ) ) */
  while ( ( i != -1 ) ) {
    c_t * sig_end=0;c_t * sig_begin=0;
    /* ASSIGN sig_begin = STRING::substr(begin:0, end:i, s:signature) */
    sig_begin = Escher_strcpy( sig_begin, STRING_substr( 0, i, signature ) );
    /* ASSIGN sig_end = STRING::substr(begin:( i + 1 ), end:- 1, s:signature) */
    sig_end = Escher_strcpy( sig_end, STRING_substr( ( i + 1 ), -1, signature ) );
    /* ASSIGN signature = ( ( sig_begin + _ ) + sig_end ) */
    signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( sig_begin, "_" ), sig_end ) );
    /* ASSIGN i = STRING::indexof(haystack:signature, needle: ) */
    i = STRING_indexof( signature, " " );
  }
  /* ASSIGN i = STRING::indexof(haystack:signature, needle:)) */
  i = STRING_indexof( signature, ")" );
  /* WHILE ( ( i != - 1 ) ) */
  while ( ( i != -1 ) ) {
    c_t * sig_end=0;c_t * sig_begin=0;
    /* ASSIGN sig_begin = STRING::substr(begin:0, end:i, s:signature) */
    sig_begin = Escher_strcpy( sig_begin, STRING_substr( 0, i, signature ) );
    /* ASSIGN sig_end = STRING::substr(begin:( i + 1 ), end:- 1, s:signature) */
    sig_end = Escher_strcpy( sig_end, STRING_substr( ( i + 1 ), -1, signature ) );
    /* ASSIGN signature = ( sig_begin + sig_end ) */
    signature = Escher_strcpy( signature, Escher_stradd( sig_begin, sig_end ) );
    /* ASSIGN i = STRING::indexof(haystack:signature, needle:)) */
    i = STRING_indexof( signature, ")" );
  }
  /* ASSIGN i = STRING::indexof(haystack:signature, needle:__) */
  i = STRING_indexof( signature, "__" );
  /* WHILE ( ( i != - 1 ) ) */
  while ( ( i != -1 ) ) {
    c_t * sig_end=0;c_t * sig_begin=0;
    /* ASSIGN sig_begin = STRING::substr(begin:0, end:i, s:signature) */
    sig_begin = Escher_strcpy( sig_begin, STRING_substr( 0, i, signature ) );
    /* ASSIGN sig_end = STRING::substr(begin:( i + 2 ), end:- 1, s:signature) */
    sig_end = Escher_strcpy( sig_end, STRING_substr( ( i + 2 ), -1, signature ) );
    /* ASSIGN signature = ( ( sig_begin + _ ) + sig_end ) */
    signature = Escher_strcpy( signature, Escher_stradd( Escher_stradd( sig_begin, "_" ), sig_end ) );
    /* ASSIGN i = STRING::indexof(haystack:signature, needle:__) */
    i = STRING_indexof( signature, "__" );
  }
  /* RETURN signature */
  {c_t * xtumlOALrv = signature;
  return xtumlOALrv;}
}
Escher_idf xtuml2masl_instance_dumpers[ xtuml2masl_MAX_CLASS_NUMBERS ] = {
  xtuml2masl_MSG_M_instancedumper,
  xtuml2masl_MSG_A_instancedumper,
  xtuml2masl_MSG_O_instancedumper,
  xtuml2masl_MSG_B_instancedumper,
  xtuml2masl_MSG_E_instancedumper,
  xtuml2masl_MSG_F_instancedumper,
  xtuml2masl_MSG_BA_instancedumper,
  xtuml2masl_MSG_OA_instancedumper,
  xtuml2masl_MSG_FA_instancedumper,
  xtuml2masl_MSG_EA_instancedumper,
  xtuml2masl_MSG_R_instancedumper,
  xtuml2masl_MSG_SM_instancedumper,
  xtuml2masl_MSG_AM_instancedumper,
  xtuml2masl_MSG_ISM_instancedumper,
  xtuml2masl_MSG_IAM_instancedumper,
  xtuml2masl_MSG_IA_instancedumper,
  xtuml2masl_MSG_SIG_instancedumper,
  xtuml2masl_MSG_IOP_instancedumper,
  xtuml2masl_MSG_EPA_instancedumper,
  xtuml2masl_O_OBJ_instancedumper,
  xtuml2masl_O_IOBJ_instancedumper,
  xtuml2masl_O_ATTR_instancedumper,
  xtuml2masl_O_ID_instancedumper,
  xtuml2masl_O_OIDA_instancedumper,
  xtuml2masl_O_BATTR_instancedumper,
  xtuml2masl_O_DBATTR_instancedumper,
  xtuml2masl_O_NBATTR_instancedumper,
  xtuml2masl_O_RATTR_instancedumper,
  xtuml2masl_S_CDT_instancedumper,
  xtuml2masl_A_N_instancedumper,
  xtuml2masl_A_E_instancedumper,
  xtuml2masl_A_ACT_instancedumper,
  xtuml2masl_A_OBJ_instancedumper,
  xtuml2masl_A_CTL_instancedumper,
  xtuml2masl_A_INI_instancedumper,
  xtuml2masl_A_AF_instancedumper,
  xtuml2masl_A_FF_instancedumper,
  xtuml2masl_A_DM_instancedumper,
  xtuml2masl_O_REF_instancedumper,
  xtuml2masl_A_FJ_instancedumper,
  xtuml2masl_A_GA_instancedumper,
  xtuml2masl_A_AE_instancedumper,
  xtuml2masl_A_SS_instancedumper,
  xtuml2masl_O_RTIDA_instancedumper,
  xtuml2masl_COMM_LNK_instancedumper,
  xtuml2masl_O_TFR_instancedumper,
  xtuml2masl_O_TPARM_instancedumper,
  xtuml2masl_S_UDT_instancedumper,
  xtuml2masl_UC_UCA_instancedumper,
  xtuml2masl_UC_BA_instancedumper,
  xtuml2masl_UC_G_instancedumper,
  xtuml2masl_UC_I_instancedumper,
  xtuml2masl_UC_E_instancedumper,
  xtuml2masl_S_BRG_instancedumper,
  xtuml2masl_A_AP_instancedumper,
  xtuml2masl_A_ATE_instancedumper,
  xtuml2masl_A_AEA_instancedumper,
  xtuml2masl_S_BPARM_instancedumper,
  xtuml2masl_EP_PKG_instancedumper,
  xtuml2masl_S_EDT_instancedumper,
  xtuml2masl_CNST_CSP_instancedumper,
  xtuml2masl_CNST_SYC_instancedumper,
  xtuml2masl_CNST_LFSC_instancedumper,
  xtuml2masl_CNST_LSC_instancedumper,
  xtuml2masl_S_ENUM_instancedumper,
  xtuml2masl_S_SYNC_instancedumper,
  xtuml2masl_S_SPARM_instancedumper,
  xtuml2masl_S_SYS_instancedumper,
  xtuml2masl_G_EIS_instancedumper,
  xtuml2masl_model_instancedumper,
  xtuml2masl_R_REL_instancedumper,
  xtuml2masl_R_OIR_instancedumper,
  xtuml2masl_R_RTO_instancedumper,
  xtuml2masl_R_RGO_instancedumper,
  xtuml2masl_R_SIMP_instancedumper,
  xtuml2masl_R_PART_instancedumper,
  xtuml2masl_R_FORM_instancedumper,
  xtuml2masl_R_ASSOC_instancedumper,
  xtuml2masl_R_AONE_instancedumper,
  xtuml2masl_R_AOTH_instancedumper,
  xtuml2masl_R_ASSR_instancedumper,
  xtuml2masl_R_SUBSUP_instancedumper,
  xtuml2masl_R_SUPER_instancedumper,
  xtuml2masl_R_SUB_instancedumper,
  xtuml2masl_R_COMP_instancedumper,
  xtuml2masl_R_CONE_instancedumper,
  xtuml2masl_R_COTH_instancedumper,
  xtuml2masl_I_LNK_instancedumper,
  xtuml2masl_I_EVI_instancedumper,
  xtuml2masl_I_AVL_instancedumper,
  xtuml2masl_I_INS_instancedumper,
  xtuml2masl_I_EXE_instancedumper,
  xtuml2masl_I_STF_instancedumper,
  xtuml2masl_I_BSF_instancedumper,
  xtuml2masl_I_STACK_instancedumper,
  xtuml2masl_I_DIV_instancedumper,
  xtuml2masl_I_TIM_instancedumper,
  xtuml2masl_I_EQE_instancedumper,
  xtuml2masl_I_SQE_instancedumper,
  xtuml2masl_I_MON_instancedumper,
  xtuml2masl_I_VSF_instancedumper,
  xtuml2masl_I_LIP_instancedumper,
  xtuml2masl_I_RCH_instancedumper,
  xtuml2masl_I_CIN_instancedumper,
  xtuml2masl_I_ICQE_instancedumper,
  xtuml2masl_S_AW_instancedumper,
  xtuml2masl_S_IRDT_instancedumper,
  xtuml2masl_S_SDT_instancedumper,
  xtuml2masl_S_MBR_instancedumper,
  xtuml2masl_S_DIM_instancedumper,
  xtuml2masl_S_EXP_instancedumper,
  xtuml2masl_S_EE_instancedumper,
  xtuml2masl_C_C_instancedumper,
  xtuml2masl_C_I_instancedumper,
  xtuml2masl_C_P_instancedumper,
  xtuml2masl_C_R_instancedumper,
  xtuml2masl_C_EP_instancedumper,
  xtuml2masl_C_AS_instancedumper,
  xtuml2masl_C_IO_instancedumper,
  xtuml2masl_C_SF_instancedumper,
  xtuml2masl_C_PP_instancedumper,
  xtuml2masl_C_IR_instancedumper,
  xtuml2masl_C_DG_instancedumper,
  xtuml2masl_C_PO_instancedumper,
  xtuml2masl_C_RID_instancedumper,
  xtuml2masl_SPR_REP_instancedumper,
  xtuml2masl_SPR_PEP_instancedumper,
  xtuml2masl_SPR_RO_instancedumper,
  xtuml2masl_SPR_RS_instancedumper,
  xtuml2masl_SPR_PO_instancedumper,
  xtuml2masl_SPR_PS_instancedumper,
  xtuml2masl_CL_IPINS_instancedumper,
  xtuml2masl_CL_IP_instancedumper,
  xtuml2masl_CL_IR_instancedumper,
  xtuml2masl_CL_IIR_instancedumper,
  xtuml2masl_CL_IC_instancedumper,
  xtuml2masl_CL_POR_instancedumper,
  xtuml2masl_S_EEM_instancedumper,
  xtuml2masl_SM_SM_instancedumper,
  xtuml2masl_SM_STATE_instancedumper,
  xtuml2masl_SM_EVT_instancedumper,
  xtuml2masl_SM_SEME_instancedumper,
  xtuml2masl_SM_NSTXN_instancedumper,
  xtuml2masl_SM_EIGN_instancedumper,
  xtuml2masl_SM_CH_instancedumper,
  xtuml2masl_SM_TXN_instancedumper,
  xtuml2masl_SM_NETXN_instancedumper,
  xtuml2masl_SM_CRTXN_instancedumper,
  xtuml2masl_SM_MOORE_instancedumper,
  xtuml2masl_SM_MEALY_instancedumper,
  xtuml2masl_SM_MOAH_instancedumper,
  xtuml2masl_SM_MEAH_instancedumper,
  xtuml2masl_SM_AH_instancedumper,
  xtuml2masl_SM_ACT_instancedumper,
  xtuml2masl_SM_EVTDI_instancedumper,
  xtuml2masl_SM_ISM_instancedumper,
  xtuml2masl_SM_ASM_instancedumper,
  xtuml2masl_SM_PEVT_instancedumper,
  xtuml2masl_SM_SEVT_instancedumper,
  xtuml2masl_SM_NLEVT_instancedumper,
  xtuml2masl_SM_LEVT_instancedumper,
  xtuml2masl_SM_SGEVT_instancedumper,
  xtuml2masl_SM_TAH_instancedumper,
  xtuml2masl_ACT_BLK_instancedumper,
  xtuml2masl_ACT_ACT_instancedumper,
  xtuml2masl_ACT_SMT_instancedumper,
  xtuml2masl_ACT_AI_instancedumper,
  xtuml2masl_ACT_SRW_instancedumper,
  xtuml2masl_ACT_SEL_instancedumper,
  xtuml2masl_ACT_FOR_instancedumper,
  xtuml2masl_ACT_CNV_instancedumper,
  xtuml2masl_ACT_REL_instancedumper,
  xtuml2masl_ACT_UNR_instancedumper,
  xtuml2masl_ACT_E_instancedumper,
  xtuml2masl_ACT_FIW_instancedumper,
  xtuml2masl_ACT_FIO_instancedumper,
  xtuml2masl_ACT_CR_instancedumper,
  xtuml2masl_ACT_DEL_instancedumper,
  xtuml2masl_ACT_RU_instancedumper,
  xtuml2masl_ACT_URU_instancedumper,
  xtuml2masl_ACT_IF_instancedumper,
  xtuml2masl_ACT_TFM_instancedumper,
  xtuml2masl_ACT_WHL_instancedumper,
  xtuml2masl_ACT_BRG_instancedumper,
  xtuml2masl_ACT_EL_instancedumper,
  xtuml2masl_ACT_SR_instancedumper,
  xtuml2masl_ACT_RET_instancedumper,
  xtuml2masl_ACT_FNC_instancedumper,
  xtuml2masl_ACT_IOP_instancedumper,
  xtuml2masl_ACT_LNK_instancedumper,
  xtuml2masl_ACT_SGN_instancedumper,
  xtuml2masl_ACT_CTL_instancedumper,
  xtuml2masl_ACT_BRK_instancedumper,
  xtuml2masl_ACT_CON_instancedumper,
  xtuml2masl_ACT_SAB_instancedumper,
  xtuml2masl_ACT_DAB_instancedumper,
  xtuml2masl_ACT_FNB_instancedumper,
  xtuml2masl_ACT_OPB_instancedumper,
  xtuml2masl_ACT_BRB_instancedumper,
  xtuml2masl_ACT_POB_instancedumper,
  xtuml2masl_ACT_PSB_instancedumper,
  xtuml2masl_ACT_ROB_instancedumper,
  xtuml2masl_ACT_RSB_instancedumper,
  xtuml2masl_ACT_BIC_instancedumper,
  xtuml2masl_ACT_TAB_instancedumper,
  xtuml2masl_ACT_BIE_instancedumper,
  xtuml2masl_E_CEI_instancedumper,
  xtuml2masl_E_GEN_instancedumper,
  xtuml2masl_E_GPR_instancedumper,
  xtuml2masl_E_CEA_instancedumper,
  xtuml2masl_E_GAR_instancedumper,
  xtuml2masl_E_GEC_instancedumper,
  xtuml2masl_E_CEC_instancedumper,
  xtuml2masl_E_ESS_instancedumper,
  xtuml2masl_E_CES_instancedumper,
  xtuml2masl_E_GES_instancedumper,
  xtuml2masl_E_CSME_instancedumper,
  xtuml2masl_E_GSME_instancedumper,
  xtuml2masl_PE_PE_instancedumper,
  xtuml2masl_PE_VIS_instancedumper,
  xtuml2masl_PE_CVS_instancedumper,
  xtuml2masl_PE_SRS_instancedumper,
  xtuml2masl_PE_CRS_instancedumper,
  xtuml2masl_V_VAL_instancedumper,
  xtuml2masl_V_PAR_instancedumper,
  xtuml2masl_V_BIN_instancedumper,
  xtuml2masl_V_LBO_instancedumper,
  xtuml2masl_V_LRL_instancedumper,
  xtuml2masl_V_TVL_instancedumper,
  xtuml2masl_V_EDV_instancedumper,
  xtuml2masl_V_ISR_instancedumper,
  xtuml2masl_V_TRV_instancedumper,
  xtuml2masl_V_UNY_instancedumper,
  xtuml2masl_V_LST_instancedumper,
  xtuml2masl_V_LIN_instancedumper,
  xtuml2masl_V_AVL_instancedumper,
  xtuml2masl_V_IRF_instancedumper,
  xtuml2masl_V_BRV_instancedumper,
  xtuml2masl_V_VAR_instancedumper,
  xtuml2masl_V_INT_instancedumper,
  xtuml2masl_V_INS_instancedumper,
  xtuml2masl_V_TRN_instancedumper,
  xtuml2masl_V_SLR_instancedumper,
  xtuml2masl_V_PVL_instancedumper,
  xtuml2masl_V_FNV_instancedumper,
  xtuml2masl_V_LEN_instancedumper,
  xtuml2masl_V_LOC_instancedumper,
  xtuml2masl_V_MVL_instancedumper,
  xtuml2masl_V_AER_instancedumper,
  xtuml2masl_V_ALV_instancedumper,
  xtuml2masl_V_MSV_instancedumper,
  xtuml2masl_V_EPR_instancedumper,
  xtuml2masl_V_SCV_instancedumper,
  xtuml2masl_PA_SIC_instancedumper,
  xtuml2masl_PA_DIC_instancedumper,
  xtuml2masl_SQ_LS_instancedumper,
  xtuml2masl_SQ_CIP_instancedumper,
  xtuml2masl_SQ_COP_instancedumper,
  xtuml2masl_SQ_TM_instancedumper,
  xtuml2masl_SQ_TS_instancedumper,
  xtuml2masl_SQ_CP_instancedumper,
  xtuml2masl_SQ_P_instancedumper,
  xtuml2masl_SQ_EEP_instancedumper,
  xtuml2masl_SQ_CPA_instancedumper,
  xtuml2masl_SQ_AV_instancedumper,
  xtuml2masl_SQ_AP_instancedumper,
  xtuml2masl_SQ_IA_instancedumper,
  xtuml2masl_SQ_FA_instancedumper,
  xtuml2masl_SQ_FAV_instancedumper,
  xtuml2masl_SQ_IAV_instancedumper,
  xtuml2masl_IA_UCP_instancedumper,
  xtuml2masl_SQ_PP_instancedumper,
  xtuml2masl_S_DT_instancedumper
};
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const xtuml2masl_class_info[ xtuml2masl_MAX_CLASS_NUMBERS ] = {
  &pG_xtuml2masl_MSG_M_extent,
  &pG_xtuml2masl_MSG_A_extent,
  &pG_xtuml2masl_MSG_O_extent,
  &pG_xtuml2masl_MSG_B_extent,
  &pG_xtuml2masl_MSG_E_extent,
  &pG_xtuml2masl_MSG_F_extent,
  &pG_xtuml2masl_MSG_BA_extent,
  &pG_xtuml2masl_MSG_OA_extent,
  &pG_xtuml2masl_MSG_FA_extent,
  &pG_xtuml2masl_MSG_EA_extent,
  &pG_xtuml2masl_MSG_R_extent,
  &pG_xtuml2masl_MSG_SM_extent,
  &pG_xtuml2masl_MSG_AM_extent,
  &pG_xtuml2masl_MSG_ISM_extent,
  &pG_xtuml2masl_MSG_IAM_extent,
  &pG_xtuml2masl_MSG_IA_extent,
  &pG_xtuml2masl_MSG_SIG_extent,
  &pG_xtuml2masl_MSG_IOP_extent,
  &pG_xtuml2masl_MSG_EPA_extent,
  &pG_xtuml2masl_O_OBJ_extent,
  &pG_xtuml2masl_O_IOBJ_extent,
  &pG_xtuml2masl_O_ATTR_extent,
  &pG_xtuml2masl_O_ID_extent,
  &pG_xtuml2masl_O_OIDA_extent,
  &pG_xtuml2masl_O_BATTR_extent,
  &pG_xtuml2masl_O_DBATTR_extent,
  &pG_xtuml2masl_O_NBATTR_extent,
  &pG_xtuml2masl_O_RATTR_extent,
  &pG_xtuml2masl_S_CDT_extent,
  &pG_xtuml2masl_A_N_extent,
  &pG_xtuml2masl_A_E_extent,
  &pG_xtuml2masl_A_ACT_extent,
  &pG_xtuml2masl_A_OBJ_extent,
  &pG_xtuml2masl_A_CTL_extent,
  &pG_xtuml2masl_A_INI_extent,
  &pG_xtuml2masl_A_AF_extent,
  &pG_xtuml2masl_A_FF_extent,
  &pG_xtuml2masl_A_DM_extent,
  &pG_xtuml2masl_O_REF_extent,
  &pG_xtuml2masl_A_FJ_extent,
  &pG_xtuml2masl_A_GA_extent,
  &pG_xtuml2masl_A_AE_extent,
  &pG_xtuml2masl_A_SS_extent,
  &pG_xtuml2masl_O_RTIDA_extent,
  &pG_xtuml2masl_COMM_LNK_extent,
  &pG_xtuml2masl_O_TFR_extent,
  &pG_xtuml2masl_O_TPARM_extent,
  &pG_xtuml2masl_S_UDT_extent,
  &pG_xtuml2masl_UC_UCA_extent,
  &pG_xtuml2masl_UC_BA_extent,
  &pG_xtuml2masl_UC_G_extent,
  &pG_xtuml2masl_UC_I_extent,
  &pG_xtuml2masl_UC_E_extent,
  &pG_xtuml2masl_S_BRG_extent,
  &pG_xtuml2masl_A_AP_extent,
  &pG_xtuml2masl_A_ATE_extent,
  &pG_xtuml2masl_A_AEA_extent,
  &pG_xtuml2masl_S_BPARM_extent,
  &pG_xtuml2masl_EP_PKG_extent,
  &pG_xtuml2masl_S_EDT_extent,
  &pG_xtuml2masl_CNST_CSP_extent,
  &pG_xtuml2masl_CNST_SYC_extent,
  &pG_xtuml2masl_CNST_LFSC_extent,
  &pG_xtuml2masl_CNST_LSC_extent,
  &pG_xtuml2masl_S_ENUM_extent,
  &pG_xtuml2masl_S_SYNC_extent,
  &pG_xtuml2masl_S_SPARM_extent,
  &pG_xtuml2masl_S_SYS_extent,
  &pG_xtuml2masl_G_EIS_extent,
  &pG_xtuml2masl_model_extent,
  &pG_xtuml2masl_R_REL_extent,
  &pG_xtuml2masl_R_OIR_extent,
  &pG_xtuml2masl_R_RTO_extent,
  &pG_xtuml2masl_R_RGO_extent,
  &pG_xtuml2masl_R_SIMP_extent,
  &pG_xtuml2masl_R_PART_extent,
  &pG_xtuml2masl_R_FORM_extent,
  &pG_xtuml2masl_R_ASSOC_extent,
  &pG_xtuml2masl_R_AONE_extent,
  &pG_xtuml2masl_R_AOTH_extent,
  &pG_xtuml2masl_R_ASSR_extent,
  &pG_xtuml2masl_R_SUBSUP_extent,
  &pG_xtuml2masl_R_SUPER_extent,
  &pG_xtuml2masl_R_SUB_extent,
  &pG_xtuml2masl_R_COMP_extent,
  &pG_xtuml2masl_R_CONE_extent,
  &pG_xtuml2masl_R_COTH_extent,
  &pG_xtuml2masl_I_LNK_extent,
  &pG_xtuml2masl_I_EVI_extent,
  &pG_xtuml2masl_I_AVL_extent,
  &pG_xtuml2masl_I_INS_extent,
  &pG_xtuml2masl_I_EXE_extent,
  &pG_xtuml2masl_I_STF_extent,
  &pG_xtuml2masl_I_BSF_extent,
  &pG_xtuml2masl_I_STACK_extent,
  &pG_xtuml2masl_I_DIV_extent,
  &pG_xtuml2masl_I_TIM_extent,
  &pG_xtuml2masl_I_EQE_extent,
  &pG_xtuml2masl_I_SQE_extent,
  &pG_xtuml2masl_I_MON_extent,
  &pG_xtuml2masl_I_VSF_extent,
  &pG_xtuml2masl_I_LIP_extent,
  &pG_xtuml2masl_I_RCH_extent,
  &pG_xtuml2masl_I_CIN_extent,
  &pG_xtuml2masl_I_ICQE_extent,
  &pG_xtuml2masl_S_AW_extent,
  &pG_xtuml2masl_S_IRDT_extent,
  &pG_xtuml2masl_S_SDT_extent,
  &pG_xtuml2masl_S_MBR_extent,
  &pG_xtuml2masl_S_DIM_extent,
  &pG_xtuml2masl_S_EXP_extent,
  &pG_xtuml2masl_S_EE_extent,
  &pG_xtuml2masl_C_C_extent,
  &pG_xtuml2masl_C_I_extent,
  &pG_xtuml2masl_C_P_extent,
  &pG_xtuml2masl_C_R_extent,
  &pG_xtuml2masl_C_EP_extent,
  &pG_xtuml2masl_C_AS_extent,
  &pG_xtuml2masl_C_IO_extent,
  &pG_xtuml2masl_C_SF_extent,
  &pG_xtuml2masl_C_PP_extent,
  &pG_xtuml2masl_C_IR_extent,
  &pG_xtuml2masl_C_DG_extent,
  &pG_xtuml2masl_C_PO_extent,
  &pG_xtuml2masl_C_RID_extent,
  &pG_xtuml2masl_SPR_REP_extent,
  &pG_xtuml2masl_SPR_PEP_extent,
  &pG_xtuml2masl_SPR_RO_extent,
  &pG_xtuml2masl_SPR_RS_extent,
  &pG_xtuml2masl_SPR_PO_extent,
  &pG_xtuml2masl_SPR_PS_extent,
  &pG_xtuml2masl_CL_IPINS_extent,
  &pG_xtuml2masl_CL_IP_extent,
  &pG_xtuml2masl_CL_IR_extent,
  &pG_xtuml2masl_CL_IIR_extent,
  &pG_xtuml2masl_CL_IC_extent,
  &pG_xtuml2masl_CL_POR_extent,
  &pG_xtuml2masl_S_EEM_extent,
  &pG_xtuml2masl_SM_SM_extent,
  &pG_xtuml2masl_SM_STATE_extent,
  &pG_xtuml2masl_SM_EVT_extent,
  &pG_xtuml2masl_SM_SEME_extent,
  &pG_xtuml2masl_SM_NSTXN_extent,
  &pG_xtuml2masl_SM_EIGN_extent,
  &pG_xtuml2masl_SM_CH_extent,
  &pG_xtuml2masl_SM_TXN_extent,
  &pG_xtuml2masl_SM_NETXN_extent,
  &pG_xtuml2masl_SM_CRTXN_extent,
  &pG_xtuml2masl_SM_MOORE_extent,
  &pG_xtuml2masl_SM_MEALY_extent,
  &pG_xtuml2masl_SM_MOAH_extent,
  &pG_xtuml2masl_SM_MEAH_extent,
  &pG_xtuml2masl_SM_AH_extent,
  &pG_xtuml2masl_SM_ACT_extent,
  &pG_xtuml2masl_SM_EVTDI_extent,
  &pG_xtuml2masl_SM_ISM_extent,
  &pG_xtuml2masl_SM_ASM_extent,
  &pG_xtuml2masl_SM_PEVT_extent,
  &pG_xtuml2masl_SM_SEVT_extent,
  &pG_xtuml2masl_SM_NLEVT_extent,
  &pG_xtuml2masl_SM_LEVT_extent,
  &pG_xtuml2masl_SM_SGEVT_extent,
  &pG_xtuml2masl_SM_TAH_extent,
  &pG_xtuml2masl_ACT_BLK_extent,
  &pG_xtuml2masl_ACT_ACT_extent,
  &pG_xtuml2masl_ACT_SMT_extent,
  &pG_xtuml2masl_ACT_AI_extent,
  &pG_xtuml2masl_ACT_SRW_extent,
  &pG_xtuml2masl_ACT_SEL_extent,
  &pG_xtuml2masl_ACT_FOR_extent,
  &pG_xtuml2masl_ACT_CNV_extent,
  &pG_xtuml2masl_ACT_REL_extent,
  &pG_xtuml2masl_ACT_UNR_extent,
  &pG_xtuml2masl_ACT_E_extent,
  &pG_xtuml2masl_ACT_FIW_extent,
  &pG_xtuml2masl_ACT_FIO_extent,
  &pG_xtuml2masl_ACT_CR_extent,
  &pG_xtuml2masl_ACT_DEL_extent,
  &pG_xtuml2masl_ACT_RU_extent,
  &pG_xtuml2masl_ACT_URU_extent,
  &pG_xtuml2masl_ACT_IF_extent,
  &pG_xtuml2masl_ACT_TFM_extent,
  &pG_xtuml2masl_ACT_WHL_extent,
  &pG_xtuml2masl_ACT_BRG_extent,
  &pG_xtuml2masl_ACT_EL_extent,
  &pG_xtuml2masl_ACT_SR_extent,
  &pG_xtuml2masl_ACT_RET_extent,
  &pG_xtuml2masl_ACT_FNC_extent,
  &pG_xtuml2masl_ACT_IOP_extent,
  &pG_xtuml2masl_ACT_LNK_extent,
  &pG_xtuml2masl_ACT_SGN_extent,
  &pG_xtuml2masl_ACT_CTL_extent,
  &pG_xtuml2masl_ACT_BRK_extent,
  &pG_xtuml2masl_ACT_CON_extent,
  &pG_xtuml2masl_ACT_SAB_extent,
  &pG_xtuml2masl_ACT_DAB_extent,
  &pG_xtuml2masl_ACT_FNB_extent,
  &pG_xtuml2masl_ACT_OPB_extent,
  &pG_xtuml2masl_ACT_BRB_extent,
  &pG_xtuml2masl_ACT_POB_extent,
  &pG_xtuml2masl_ACT_PSB_extent,
  &pG_xtuml2masl_ACT_ROB_extent,
  &pG_xtuml2masl_ACT_RSB_extent,
  &pG_xtuml2masl_ACT_BIC_extent,
  &pG_xtuml2masl_ACT_TAB_extent,
  &pG_xtuml2masl_ACT_BIE_extent,
  &pG_xtuml2masl_E_CEI_extent,
  &pG_xtuml2masl_E_GEN_extent,
  &pG_xtuml2masl_E_GPR_extent,
  &pG_xtuml2masl_E_CEA_extent,
  &pG_xtuml2masl_E_GAR_extent,
  &pG_xtuml2masl_E_GEC_extent,
  &pG_xtuml2masl_E_CEC_extent,
  &pG_xtuml2masl_E_ESS_extent,
  &pG_xtuml2masl_E_CES_extent,
  &pG_xtuml2masl_E_GES_extent,
  &pG_xtuml2masl_E_CSME_extent,
  &pG_xtuml2masl_E_GSME_extent,
  &pG_xtuml2masl_PE_PE_extent,
  &pG_xtuml2masl_PE_VIS_extent,
  &pG_xtuml2masl_PE_CVS_extent,
  &pG_xtuml2masl_PE_SRS_extent,
  &pG_xtuml2masl_PE_CRS_extent,
  &pG_xtuml2masl_V_VAL_extent,
  &pG_xtuml2masl_V_PAR_extent,
  &pG_xtuml2masl_V_BIN_extent,
  &pG_xtuml2masl_V_LBO_extent,
  &pG_xtuml2masl_V_LRL_extent,
  &pG_xtuml2masl_V_TVL_extent,
  &pG_xtuml2masl_V_EDV_extent,
  &pG_xtuml2masl_V_ISR_extent,
  &pG_xtuml2masl_V_TRV_extent,
  &pG_xtuml2masl_V_UNY_extent,
  &pG_xtuml2masl_V_LST_extent,
  &pG_xtuml2masl_V_LIN_extent,
  &pG_xtuml2masl_V_AVL_extent,
  &pG_xtuml2masl_V_IRF_extent,
  &pG_xtuml2masl_V_BRV_extent,
  &pG_xtuml2masl_V_VAR_extent,
  &pG_xtuml2masl_V_INT_extent,
  &pG_xtuml2masl_V_INS_extent,
  &pG_xtuml2masl_V_TRN_extent,
  &pG_xtuml2masl_V_SLR_extent,
  &pG_xtuml2masl_V_PVL_extent,
  &pG_xtuml2masl_V_FNV_extent,
  &pG_xtuml2masl_V_LEN_extent,
  &pG_xtuml2masl_V_LOC_extent,
  &pG_xtuml2masl_V_MVL_extent,
  &pG_xtuml2masl_V_AER_extent,
  &pG_xtuml2masl_V_ALV_extent,
  &pG_xtuml2masl_V_MSV_extent,
  &pG_xtuml2masl_V_EPR_extent,
  &pG_xtuml2masl_V_SCV_extent,
  &pG_xtuml2masl_PA_SIC_extent,
  &pG_xtuml2masl_PA_DIC_extent,
  &pG_xtuml2masl_SQ_LS_extent,
  &pG_xtuml2masl_SQ_CIP_extent,
  &pG_xtuml2masl_SQ_COP_extent,
  &pG_xtuml2masl_SQ_TM_extent,
  &pG_xtuml2masl_SQ_TS_extent,
  &pG_xtuml2masl_SQ_CP_extent,
  &pG_xtuml2masl_SQ_P_extent,
  &pG_xtuml2masl_SQ_EEP_extent,
  &pG_xtuml2masl_SQ_CPA_extent,
  &pG_xtuml2masl_SQ_AV_extent,
  &pG_xtuml2masl_SQ_AP_extent,
  &pG_xtuml2masl_SQ_IA_extent,
  &pG_xtuml2masl_SQ_FA_extent,
  &pG_xtuml2masl_SQ_FAV_extent,
  &pG_xtuml2masl_SQ_IAV_extent,
  &pG_xtuml2masl_IA_UCP_extent,
  &pG_xtuml2masl_SQ_PP_extent,
  &pG_xtuml2masl_S_DT_extent
};


void xtuml2masl_execute_initialization()
{
}
