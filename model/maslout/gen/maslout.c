/*----------------------------------------------------------------------------
 * File:  maslout.c
 *
 * UML Component Port Messages
 * Component/Module Name:  maslout
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslout_sys_types.h"
#include "maslout.h"
#include "TRACE_bridge.h"
#include "STRING_bridge.h"
#include "T_bridge.h"
#include "LOG_bridge.h"
#include "maslout_classes.h"

/*
 * Interface:  MASLDSL
 * Provided Port:  out
 * To Provider Message:  populate
 */
void
maslout_out_populate( c_t * p_element, c_t * p_value[8] )
{
  int i;
  printf( "%s", p_element );
  for ( i = 0; i < 8; i++ ) {
    if ( p_value[i] && "" != p_value[i] ) { printf( ",%s", p_value[i] ); }
  }
  printf( "\n" );
}

/*
 * Interface:  MASLDSL
 * Provided Port:  out
 * To Provider Message:  render
 */
void
maslout_out_render( c_t * p_element, c_t * p_name )
{
}

/*
 * Interface:  MASLDSL
 * Provided Port:  out
 * To Provider Message:  validate
 */
void
maslout_out_validate( c_t * p_element )
{
}
extern void mark_pass( c_t * );
#define T_T(x) ( 0 == x ) ? s : strcat(s,x)
/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  association2relationship
 */
void
maslout_association2relationship( maslout_C_C * p_c_c )
{
  maslout_R_REL * r_rel=0;maslout_C_C * c_c;c_t * value[9]={0};Escher_ObjectSet_s r_rels_space={0}; Escher_ObjectSet_s * r_rels = &r_rels_space;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many r_rels RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->R_REL[R8001] */
  Escher_ClearSet( r_rels );
  {  if ( 0 != c_c ) {
  maslout_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  maslout_EP_PKG * R8001_subtype = (maslout_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( maslout_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  maslout_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslout_R_REL_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslout_R_REL * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) r_rels, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) r_rels, R8001_subtype );
  }}}}}}}
  /* FOR EACH r_rel IN r_rels */
  { Escher_Iterator_s iterr_rel;
  maslout_R_REL * iir_rel;
  Escher_IteratorReset( &iterr_rel, r_rels );
  while ( (iir_rel = (maslout_R_REL *)Escher_IteratorNext( &iterr_rel )) != 0 ) {
    r_rel = iir_rel; {
    maslout_R_SUBSUP * r_subsup=0;maslout_R_ASSOC * r_assoc=0;maslout_R_SIMP * r_simp=0;
    /* ASSIGN value[0] = ( R + T::s(r_rel.Numb) ) */
    value[0] = Escher_strcpy( value[0], Escher_stradd( "R", T_s( r_rel->Numb ) ) );
    /* SELECT one r_simp RELATED BY r_rel->R_SIMP[R206] */
    r_simp = 0;
    if ( ( 0 != r_rel ) && ( maslout_R_SIMP_CLASS_NUMBER == r_rel->R206_object_id ) )    r_simp = ( 0 != r_rel ) ? (maslout_R_SIMP *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_simp ) */
    if ( ( 0 != r_simp ) ) {
      /* out::populate(element:regularrel, value:value) */
      maslout_out_populate( "regularrel", value );
    }
    /* SELECT one r_assoc RELATED BY r_rel->R_ASSOC[R206] */
    r_assoc = 0;
    if ( ( 0 != r_rel ) && ( maslout_R_ASSOC_CLASS_NUMBER == r_rel->R206_object_id ) )    r_assoc = ( 0 != r_rel ) ? (maslout_R_ASSOC *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_assoc ) */
    if ( ( 0 != r_assoc ) ) {
      maslout_O_OBJ * o_obj=0;
      /* SELECT one o_obj RELATED BY r_assoc->R_ASSR[R211]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201] */
      o_obj = 0;
      {      if ( 0 != r_assoc ) {
      maslout_R_ASSR * R_ASSR_R211_uses_a_formalizer = r_assoc->R_ASSR_R211_uses_a_formalizer;
      if ( 0 != R_ASSR_R211_uses_a_formalizer ) {
      maslout_R_RGO * R_RGO_R205 = R_ASSR_R211_uses_a_formalizer->R_RGO_R205;
      if ( 0 != R_RGO_R205 ) {
      maslout_R_OIR * R_OIR_R203 = R_RGO_R205->R_OIR_R203;
      if ( 0 != R_OIR_R203 ) {
      o_obj = R_OIR_R203->O_OBJ_R201_abstracts_association_between_instances_of;
}}}}}
      /* ASSIGN value[1] = o_obj.Name */
      value[1] = Escher_strcpy( value[1], o_obj->Name );
      /* out::populate(element:associative, value:value) */
      maslout_out_populate( "associative", value );
    }
    /* SELECT one r_subsup RELATED BY r_rel->R_SUBSUP[R206] */
    r_subsup = 0;
    if ( ( 0 != r_rel ) && ( maslout_R_SUBSUP_CLASS_NUMBER == r_rel->R206_object_id ) )    r_subsup = ( 0 != r_rel ) ? (maslout_R_SUBSUP *) r_rel->R206_subtype : 0;
    /* IF ( not_empty r_subsup ) */
    if ( ( 0 != r_subsup ) ) {
      /* out::populate(element:subsuper, value:value) */
      maslout_out_populate( "subsuper", value );
    }
  }}}
  Escher_ClearSet( r_rels ); 
}

/*
 * Domain Function:  attribute2attribute
 */
void
maslout_attribute2attribute( maslout_O_OBJ * p_o_obj )
{
  maslout_O_ATTR * o_attr=0;maslout_O_OBJ * o_obj;c_t * value[9]={0};Escher_ObjectSet_s o_attrs_space={0}; Escher_ObjectSet_s * o_attrs = &o_attrs_space;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN o_obj = PARAM.o_obj */
  o_obj = p_o_obj;
  /* SELECT many o_attrs RELATED BY o_obj->O_ATTR[R102] */
  Escher_ClearSet( o_attrs );
  if ( 0 != o_obj ) {
    Escher_CopySet( o_attrs, &o_obj->O_ATTR_R102_has_characteristics_abstracted_by );
  }
  /* FOR EACH o_attr IN o_attrs */
  { Escher_Iterator_s itero_attr;
  maslout_O_ATTR * iio_attr;
  Escher_IteratorReset( &itero_attr, o_attrs );
  while ( (iio_attr = (maslout_O_ATTR *)Escher_IteratorNext( &itero_attr )) != 0 ) {
    o_attr = iio_attr; {
    /* ASSIGN value[0] = o_attr.Name */
    value[0] = Escher_strcpy( value[0], o_attr->Name );
    /* ASSIGN value[1] =  */
    value[1] = Escher_strcpy( value[1], "" );
    /* ASSIGN value[2] =  */
    value[2] = Escher_strcpy( value[2], "" );
    /* ASSIGN value[3] =  */
    value[3] = Escher_strcpy( value[3], "" );
    /* out::populate(element:attribute, value:value) */
    maslout_out_populate( "attribute", value );
  }}}
  Escher_ClearSet( o_attrs ); 
}

/*
 * Domain Function:  class2object
 */
void
maslout_class2object( maslout_C_C * p_c_c )
{
  maslout_O_OBJ * o_obj=0;maslout_C_C * c_c;c_t * value[9]={0};Escher_ObjectSet_s o_objs_space={0}; Escher_ObjectSet_s * o_objs = &o_objs_space;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many o_objs RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->O_OBJ[R8001] */
  Escher_ClearSet( o_objs );
  {  if ( 0 != c_c ) {
  maslout_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  maslout_EP_PKG * R8001_subtype = (maslout_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( maslout_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  maslout_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslout_O_OBJ_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslout_O_OBJ * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) o_objs, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) o_objs, R8001_subtype );
  }}}}}}}
  /* FOR EACH o_obj IN o_objs */
  { Escher_Iterator_s itero_obj;
  maslout_O_OBJ * iio_obj;
  Escher_IteratorReset( &itero_obj, o_objs );
  while ( (iio_obj = (maslout_O_OBJ *)Escher_IteratorNext( &itero_obj )) != 0 ) {
    o_obj = iio_obj; {
    /* ASSIGN value[0] = o_obj.Name */
    value[0] = Escher_strcpy( value[0], o_obj->Name );
    /* out::populate(element:object, value:value) */
    maslout_out_populate( "object", value );
    /* ::attribute2attribute( o_obj:o_obj ) */
    maslout_attribute2attribute( o_obj );
  }}}
  Escher_ClearSet( o_objs ); 
}

/*
 * Domain Function:  component2domain
 */
void
maslout_component2domain( c_t * p_name )
{
  c_t * name=0;c_t * value[9]={0};maslout_C_C * c_c=0;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN name = PARAM.name */
  name = Escher_strcpy( name, p_name );
  /* SELECT any c_c FROM INSTANCES OF C_C WHERE ( SELECTED.Name == PARAM.name ) */
  c_c = 0;
  { maslout_C_C * selected;
    Escher_Iterator_s iterc_cmaslout_C_C;
    Escher_IteratorReset( &iterc_cmaslout_C_C, &pG_maslout_C_C_extent.active );
    while ( (selected = (maslout_C_C *) Escher_IteratorNext( &iterc_cmaslout_C_C )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
        c_c = selected;
        break;
      }
    }
  }
  /* IF ( empty c_c ) */
  if ( ( 0 == c_c ) ) {
    /* TRACE::log( flavor:failure, id:34, message:( did not find component with name  + PARAM.name ) ) */
    TRACE_log( "failure", 34, Escher_stradd( "did not find component with name ", p_name ) );
  }
  else {
    /* ASSIGN value[0] = c_c.Name */
    value[0] = Escher_strcpy( value[0], c_c->Name );
    /* out::populate(element:domain, value:value) */
    maslout_out_populate( "domain", value );
    /* ::type2type( c_c:c_c ) */
    maslout_type2type( c_c );
    /* ::association2relationship( c_c:c_c ) */
    maslout_association2relationship( c_c );
    /* ::port2terminator( c_c:c_c ) */
    maslout_port2terminator( c_c );
    /* ::class2object( c_c:c_c ) */
    maslout_class2object( c_c );
  }
}

/*
 * Domain Function:  masl_domain
 */
void
maslout_masl_domain()
{
  c_t * name=0;
  /* LOG::LogInfo( message:Starting Domain ) */
  LOG_LogInfo( "Starting Domain" );
  /* ASSIGN name = Tracking */
  name = Escher_strcpy( name, "Tracking" );
  /* ::component2domain( name:name ) */
  maslout_component2domain( name );
  /* SEND out::render(element:domain, name:Tracking) */
  maslout_out_render( "domain", "Tracking" );
  /* LOG::LogInfo( message:Done ) */
  LOG_LogInfo( "Done" );
}

/*
 * Domain Function:  masl_project
 */
void
maslout_masl_project()
{
  /* LOG::LogInfo( message:Starting Project ) */
  LOG_LogInfo( "Starting Project" );
  /* ::package2project( name:System ) */
  maslout_package2project( "System" );
  /* SEND out::render(element:project, name:System) */
  maslout_out_render( "project", "System" );
  /* LOG::LogInfo( message:Done ) */
  LOG_LogInfo( "Done" );
}

/*
 * Domain Function:  message2function
 */
void
maslout_message2function( maslout_C_PO * p_c_po )
{
  maslout_C_EP * c_ep=0;maslout_C_PO * c_po;c_t * value[9]={0};Escher_ObjectSet_s c_eps_space={0}; Escher_ObjectSet_s * c_eps = &c_eps_space;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN c_po = PARAM.c_po */
  c_po = p_c_po;
  /* SELECT many c_eps RELATED BY c_po->C_IR[R4016]->C_I[R4012]->C_EP[R4003] */
  Escher_ClearSet( c_eps );
  {  if ( 0 != c_po ) {
  maslout_C_IR * C_IR_R4016_exposes;
  Escher_Iterator_s iC_IR_R4016_exposes;
  Escher_IteratorReset( &iC_IR_R4016_exposes, &c_po->C_IR_R4016_exposes );
  while ( 0 != ( C_IR_R4016_exposes = (maslout_C_IR *) Escher_IteratorNext( &iC_IR_R4016_exposes ) ) ) {
  maslout_C_I * C_I_R4012_may_be_defined_by = C_IR_R4016_exposes->C_I_R4012_may_be_defined_by;
  if ( 0 != C_I_R4012_may_be_defined_by ) {
  maslout_C_EP * C_EP_R4003_is_defined_by;
  Escher_Iterator_s iC_EP_R4003_is_defined_by;
  Escher_IteratorReset( &iC_EP_R4003_is_defined_by, &C_I_R4012_may_be_defined_by->C_EP_R4003_is_defined_by );
  while ( 0 != ( C_EP_R4003_is_defined_by = (maslout_C_EP *) Escher_IteratorNext( &iC_EP_R4003_is_defined_by ) ) ) {
    if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by ) ) {
      Escher_SetInsertElement( (Escher_ObjectSet_s *) c_eps, C_EP_R4003_is_defined_by );
  }}}}}}
  /* FOR EACH c_ep IN c_eps */
  { Escher_Iterator_s iterc_ep;
  maslout_C_EP * iic_ep;
  Escher_IteratorReset( &iterc_ep, c_eps );
  while ( (iic_ep = (maslout_C_EP *)Escher_IteratorNext( &iterc_ep )) != 0 ) {
    c_ep = iic_ep; {
    c_t * element=0;
    /* ASSIGN element = function */
    element = Escher_strcpy( element, "function" );
    /* ASSIGN element = service */
    element = Escher_strcpy( element, "service" );
    /* ASSIGN value[0] = public */
    value[0] = Escher_strcpy( value[0], "public" );
    /* ASSIGN value[1] = c_ep.Name */
    value[1] = Escher_strcpy( value[1], c_ep->Name );
    /* out::populate(element:element, value:value) */
    maslout_out_populate( element, value );
    /* ::parameter2parameter( c_ep:c_ep ) */
    maslout_parameter2parameter( c_ep );
  }}}
  Escher_ClearSet( c_eps ); 
}

/*
 * Domain Function:  package2project
 */
void
maslout_package2project( c_t * p_name )
{
  maslout_C_C * c_c=0;c_t * value[9]={0};i_t markedsystems;Escher_ObjectSet_s ep_pkgs_space={0}; Escher_ObjectSet_s * ep_pkgs = &ep_pkgs_space;Escher_ObjectSet_s c_cs_space={0}; Escher_ObjectSet_s * c_cs = &c_cs_space;
  /* SELECT many ep_pkgs FROM INSTANCES OF EP_PKG WHERE ( SELECTED.Name == PARAM.name ) */
  Escher_ClearSet( ep_pkgs );
  { maslout_EP_PKG * selected;
    Escher_Iterator_s iterep_pkgsmaslout_EP_PKG;
    Escher_IteratorReset( &iterep_pkgsmaslout_EP_PKG, &pG_maslout_EP_PKG_extent.active );
    while ( (selected = (maslout_EP_PKG *) Escher_IteratorNext( &iterep_pkgsmaslout_EP_PKG )) != 0 ) {
      if ( ( Escher_strcmp( selected->Name, p_name ) == 0 ) ) {
        Escher_SetInsertElement( ep_pkgs, selected );
      }
    }
  }
  /* ASSIGN markedsystems = cardinality ep_pkgs */
  markedsystems = Escher_SetCardinality( ep_pkgs );
  /* IF ( empty ep_pkgs ) */
  if ( Escher_SetIsEmpty( ep_pkgs ) ) {
    /* TRACE::log( flavor:failure, id:1, message:( ERROR:  Marked configuration package was not found in model: + PARAM.name ) ) */
    TRACE_log( "failure", 1, Escher_stradd( "ERROR:  Marked configuration package was not found in model:", p_name ) );
  }
  /* IF ( ( markedsystems > 1 ) ) */
  if ( ( markedsystems > 1 ) ) {
    /* TRACE::log( flavor:failure, id:2, message:WARNING:  More than one package is marked as a system build... choose only one. ) */
    TRACE_log( "failure", 2, "WARNING:  More than one package is marked as a system build... choose only one." );
  }
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN value[0] = PARAM.name */
  value[0] = Escher_strcpy( value[0], p_name );
  /* out::populate(element:project, value:value) */
  maslout_out_populate( "project", value );
  /* SELECT many c_cs RELATED BY ep_pkgs->PE_PE[R8000]->CL_IC[R8001]->C_C[R4201] */
  Escher_ClearSet( c_cs );
  {  maslout_EP_PKG * maslout_EP_PKG_linkage;
  Escher_Iterator_s start_many_iterator;
  Escher_IteratorReset( &start_many_iterator, ep_pkgs );
  while ( 0 != ( maslout_EP_PKG_linkage = (maslout_EP_PKG *) Escher_IteratorNext( &start_many_iterator ) ) ) {
  maslout_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &maslout_EP_PKG_linkage->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  maslout_CL_IC * R8001_subtype = (maslout_CL_IC *) PE_PE_R8000_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8000_contains ) && ( maslout_CL_IC_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) ) {
  {maslout_C_C * C_C_R4201_represents = R8001_subtype->C_C_R4201_represents;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) c_cs, C_C_R4201_represents ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) c_cs, C_C_R4201_represents );
  }}}}}}
  /* FOR EACH c_c IN c_cs */
  { Escher_Iterator_s iterc_c;
  maslout_C_C * iic_c;
  Escher_IteratorReset( &iterc_c, c_cs );
  while ( (iic_c = (maslout_C_C *)Escher_IteratorNext( &iterc_c )) != 0 ) {
    c_c = iic_c; {
    /* ::component2domain( name:c_c.Name ) */
    maslout_component2domain( c_c->Name );
  }}}
  Escher_ClearSet( ep_pkgs );Escher_ClearSet( c_cs ); 
}

/*
 * Domain Function:  parameter2parameter
 */
void
maslout_parameter2parameter( maslout_C_EP * p_c_ep )
{
  c_t * previous=0;maslout_C_PP * first_c_pp;maslout_C_EP * c_ep;c_t * value[9]={0};maslout_C_PP * c_pp=0;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN c_ep = PARAM.c_ep */
  c_ep = p_c_ep;
  /* SELECT any c_pp RELATED BY c_ep->C_PP[R4006] */
  c_pp = ( 0 != c_ep ) ? (maslout_C_PP *) Escher_SetGetAny( &c_ep->C_PP_R4006_is_parameter_to ) : 0;
  /* ASSIGN first_c_pp = c_pp */
  first_c_pp = c_pp;
  /* WHILE ( not_empty c_pp ) */
  while ( ( 0 != c_pp ) ) {
    /* ASSIGN first_c_pp = c_pp */
    first_c_pp = c_pp;
    /* SELECT one c_pp RELATED BY c_pp->C_PP[R4021.precedes] */
    c_pp = ( 0 != c_pp ) ? c_pp->C_PP_R4021_precedes : 0;
  }
  /* ASSIGN previous =  */
  previous = Escher_strcpy( previous, "" );
  /* ASSIGN c_pp = first_c_pp */
  c_pp = first_c_pp;
  /* WHILE ( not_empty c_pp ) */
  while ( ( 0 != c_pp ) ) {
    /* ASSIGN value[0] = c_pp.Name */
    value[0] = Escher_strcpy( value[0], c_pp->Name );
    /* ASSIGN value[1] = in */
    value[1] = Escher_strcpy( value[1], "in" );
    /* out::populate(element:parameter, value:value) */
    maslout_out_populate( "parameter", value );
    /* SELECT one c_pp RELATED BY c_pp->C_PP[R4021.succeeds] */
    c_pp = ( 0 != c_pp ) ? c_pp->C_PP_R4021_succeeds : 0;
  }
}

/*
 * Domain Function:  port2terminator
 */
void
maslout_port2terminator( maslout_C_C * p_c_c )
{
  maslout_C_PO * c_po=0;maslout_C_C * c_c;c_t * value[8]={0};Escher_ObjectSet_s c_pos_space={0}; Escher_ObjectSet_s * c_pos = &c_pos_space;
  /* ASSIGN value[7] =  */
  value[7] = Escher_strcpy( value[7], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many c_pos RELATED BY c_c->C_PO[R4010] */
  Escher_ClearSet( c_pos );
  if ( 0 != c_c ) {
    Escher_CopySet( c_pos, &c_c->C_PO_R4010_communicates_through );
  }
  /* FOR EACH c_po IN c_pos */
  { Escher_Iterator_s iterc_po;
  maslout_C_PO * iic_po;
  Escher_IteratorReset( &iterc_po, c_pos );
  while ( (iic_po = (maslout_C_PO *)Escher_IteratorNext( &iterc_po )) != 0 ) {
    c_po = iic_po; {
    /* ASSIGN value[0] = c_po.Name */
    value[0] = Escher_strcpy( value[0], c_po->Name );
    /* out::populate(element:terminator, value:value) */
    maslout_out_populate( "terminator", value );
    /* ::message2function( c_po:c_po ) */
    maslout_message2function( c_po );
  }}}
  Escher_ClearSet( c_pos ); 
}

/*
 * Domain Function:  type2type
 */
void
maslout_type2type( maslout_C_C * p_c_c )
{
  maslout_S_DT * s_dt=0;maslout_C_C * c_c;c_t * value[9]={0};Escher_ObjectSet_s s_dts_space={0}; Escher_ObjectSet_s * s_dts = &s_dts_space;
  /* ASSIGN value[8] =  */
  value[8] = Escher_strcpy( value[8], "" );
  /* ASSIGN c_c = PARAM.c_c */
  c_c = p_c_c;
  /* SELECT many s_dts RELATED BY c_c->PE_PE[R8003]->EP_PKG[R8001]->PE_PE[R8000]->S_DT[R8001] */
  Escher_ClearSet( s_dts );
  {  if ( 0 != c_c ) {
  maslout_PE_PE * PE_PE_R8003_contains;
  Escher_Iterator_s iPE_PE_R8003_contains;
  Escher_IteratorReset( &iPE_PE_R8003_contains, &c_c->PE_PE_R8003_contains );
  while ( 0 != ( PE_PE_R8003_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8003_contains ) ) ) {
  maslout_EP_PKG * R8001_subtype = (maslout_EP_PKG *) PE_PE_R8003_contains->R8001_subtype;
  if ( 0 != R8001_subtype )  if ( ( 0 != PE_PE_R8003_contains ) && ( maslout_EP_PKG_CLASS_NUMBER == PE_PE_R8003_contains->R8001_object_id ) ) {
  maslout_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &R8001_subtype->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslout_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslout_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
  }}}}}}}
  /* FOR EACH s_dt IN s_dts */
  { Escher_Iterator_s iters_dt;
  maslout_S_DT * iis_dt;
  Escher_IteratorReset( &iters_dt, s_dts );
  while ( (iis_dt = (maslout_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
    s_dt = iis_dt; {
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] = private */
    value[1] = Escher_strcpy( value[1], "private" );
    /* ASSIGN value[2] = s_dt.Descrip */
    value[2] = Escher_strcpy( value[2], s_dt->Descrip );
    /* out::populate(element:type, value:value) */
    maslout_out_populate( "type", value );
  }}}
  /* SELECT many s_dts RELATED BY c_c->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405]->EP_PKG[R1401]->PE_PE[R8000]->S_DT[R8001] */
  Escher_ClearSet( s_dts );
  {  if ( 0 != c_c ) {
  maslout_PE_PE * PE_PE_R8001 = c_c->PE_PE_R8001;
  if ( 0 != PE_PE_R8001 ) {
  maslout_EP_PKG * EP_PKG_R8000_contained_by = PE_PE_R8001->EP_PKG_R8000_contained_by;
  if ( 0 != EP_PKG_R8000_contained_by ) {
  maslout_S_SYS * S_SYS_R1405 = EP_PKG_R8000_contained_by->S_SYS_R1405;
  if ( 0 != S_SYS_R1405 ) {
  maslout_EP_PKG * EP_PKG_R1401_contains;
  Escher_Iterator_s iEP_PKG_R1401_contains;
  Escher_IteratorReset( &iEP_PKG_R1401_contains, &S_SYS_R1405->EP_PKG_R1401_contains );
  while ( 0 != ( EP_PKG_R1401_contains = (maslout_EP_PKG *) Escher_IteratorNext( &iEP_PKG_R1401_contains ) ) ) {
  maslout_PE_PE * PE_PE_R8000_contains;
  Escher_Iterator_s iPE_PE_R8000_contains;
  Escher_IteratorReset( &iPE_PE_R8000_contains, &EP_PKG_R1401_contains->PE_PE_R8000_contains );
  while ( 0 != ( PE_PE_R8000_contains = (maslout_PE_PE *) Escher_IteratorNext( &iPE_PE_R8000_contains ) ) ) {
  if ( ( 0 != PE_PE_R8000_contains ) && ( maslout_S_DT_CLASS_NUMBER == PE_PE_R8000_contains->R8001_object_id ) )  {maslout_S_DT * R8001_subtype = PE_PE_R8000_contains->R8001_subtype;
  if ( ! Escher_SetContains( (Escher_ObjectSet_s *) s_dts, R8001_subtype ) ) {
    Escher_SetInsertElement( (Escher_ObjectSet_s *) s_dts, R8001_subtype );
  }}}}}}}}}
  /* FOR EACH s_dt IN s_dts */
  { Escher_Iterator_s iters_dt;
  maslout_S_DT * iis_dt;
  Escher_IteratorReset( &iters_dt, s_dts );
  while ( (iis_dt = (maslout_S_DT *)Escher_IteratorNext( &iters_dt )) != 0 ) {
    s_dt = iis_dt; {
    /* ASSIGN value[0] = s_dt.Name */
    value[0] = Escher_strcpy( value[0], s_dt->Name );
    /* ASSIGN value[1] = public */
    value[1] = Escher_strcpy( value[1], "public" );
    /* ASSIGN value[2] = s_dt.Descrip */
    value[2] = Escher_strcpy( value[2], s_dt->Descrip );
    /* out::populate(element:type, value:value) */
    maslout_out_populate( "type", value );
  }}}
  Escher_ClearSet( s_dts ); 
}
Escher_idf maslout_instance_dumpers[ maslout_MAX_CLASS_NUMBERS ] = {
  maslout_MSG_M_instancedumper,
  maslout_MSG_A_instancedumper,
  maslout_MSG_O_instancedumper,
  maslout_MSG_B_instancedumper,
  maslout_MSG_E_instancedumper,
  maslout_MSG_F_instancedumper,
  maslout_MSG_BA_instancedumper,
  maslout_MSG_OA_instancedumper,
  maslout_MSG_FA_instancedumper,
  maslout_MSG_EA_instancedumper,
  maslout_MSG_R_instancedumper,
  maslout_MSG_SM_instancedumper,
  maslout_MSG_AM_instancedumper,
  maslout_MSG_ISM_instancedumper,
  maslout_MSG_IAM_instancedumper,
  maslout_MSG_IA_instancedumper,
  maslout_MSG_SIG_instancedumper,
  maslout_MSG_IOP_instancedumper,
  maslout_MSG_EPA_instancedumper,
  maslout_O_OBJ_instancedumper,
  maslout_O_IOBJ_instancedumper,
  maslout_O_ATTR_instancedumper,
  maslout_O_ID_instancedumper,
  maslout_O_OIDA_instancedumper,
  maslout_O_BATTR_instancedumper,
  maslout_O_DBATTR_instancedumper,
  maslout_O_NBATTR_instancedumper,
  maslout_O_RATTR_instancedumper,
  maslout_S_CDT_instancedumper,
  maslout_A_N_instancedumper,
  maslout_A_E_instancedumper,
  maslout_A_ACT_instancedumper,
  maslout_A_OBJ_instancedumper,
  maslout_A_CTL_instancedumper,
  maslout_A_INI_instancedumper,
  maslout_A_AF_instancedumper,
  maslout_A_FF_instancedumper,
  maslout_A_DM_instancedumper,
  maslout_O_REF_instancedumper,
  maslout_A_FJ_instancedumper,
  maslout_A_GA_instancedumper,
  maslout_A_AE_instancedumper,
  maslout_A_SS_instancedumper,
  maslout_O_RTIDA_instancedumper,
  maslout_COMM_LNK_instancedumper,
  maslout_O_TFR_instancedumper,
  maslout_O_TPARM_instancedumper,
  maslout_O_RAVR_instancedumper,
  maslout_S_UDT_instancedumper,
  maslout_UC_UCA_instancedumper,
  maslout_UC_BA_instancedumper,
  maslout_UC_G_instancedumper,
  maslout_UC_I_instancedumper,
  maslout_UC_E_instancedumper,
  maslout_S_BRG_instancedumper,
  maslout_A_AP_instancedumper,
  maslout_A_ATE_instancedumper,
  maslout_A_AEA_instancedumper,
  maslout_S_BPARM_instancedumper,
  maslout_EP_PKG_instancedumper,
  maslout_S_EDT_instancedumper,
  maslout_CNST_CSP_instancedumper,
  maslout_CNST_SYC_instancedumper,
  maslout_CNST_LFSC_instancedumper,
  maslout_CNST_LSC_instancedumper,
  maslout_S_ENUM_instancedumper,
  maslout_S_SYNC_instancedumper,
  maslout_S_SPARM_instancedumper,
  maslout_S_SYS_instancedumper,
  maslout_G_EIS_instancedumper,
  maslout_S_DOM_instancedumper,
  maslout_R_REL_instancedumper,
  maslout_R_OIR_instancedumper,
  maslout_R_RTO_instancedumper,
  maslout_R_RGO_instancedumper,
  maslout_R_SIMP_instancedumper,
  maslout_R_PART_instancedumper,
  maslout_R_FORM_instancedumper,
  maslout_R_ASSOC_instancedumper,
  maslout_R_AONE_instancedumper,
  maslout_R_AOTH_instancedumper,
  maslout_R_ASSR_instancedumper,
  maslout_R_SUBSUP_instancedumper,
  maslout_R_SUPER_instancedumper,
  maslout_R_SUB_instancedumper,
  maslout_R_COMP_instancedumper,
  maslout_R_CONE_instancedumper,
  maslout_R_COTH_instancedumper,
  maslout_I_LNK_instancedumper,
  maslout_I_EVI_instancedumper,
  maslout_I_AVL_instancedumper,
  maslout_I_INS_instancedumper,
  maslout_I_EXE_instancedumper,
  maslout_I_STF_instancedumper,
  maslout_I_BSF_instancedumper,
  maslout_I_STACK_instancedumper,
  maslout_I_DIV_instancedumper,
  maslout_I_TIM_instancedumper,
  maslout_I_EQE_instancedumper,
  maslout_I_SQE_instancedumper,
  maslout_I_MON_instancedumper,
  maslout_CSME_CLM_instancedumper,
  maslout_I_VSF_instancedumper,
  maslout_I_LIP_instancedumper,
  maslout_I_RCH_instancedumper,
  maslout_I_CIN_instancedumper,
  maslout_I_ICQE_instancedumper,
  maslout_CSME_CIE_instancedumper,
  maslout_CSME_CIS_instancedumper,
  maslout_S_SS_instancedumper,
  maslout_BP_BP_instancedumper,
  maslout_BP_OAL_instancedumper,
  maslout_BP_EV_instancedumper,
  maslout_BP_CON_instancedumper,
  maslout_BP_ST_instancedumper,
  maslout_S_AW_instancedumper,
  maslout_S_IRDT_instancedumper,
  maslout_S_SDT_instancedumper,
  maslout_S_MBR_instancedumper,
  maslout_S_DIM_instancedumper,
  maslout_S_EE_instancedumper,
  maslout_C_C_instancedumper,
  maslout_C_I_instancedumper,
  maslout_C_P_instancedumper,
  maslout_C_R_instancedumper,
  maslout_C_EP_instancedumper,
  maslout_C_AS_instancedumper,
  maslout_C_IO_instancedumper,
  maslout_C_SF_instancedumper,
  maslout_C_PP_instancedumper,
  maslout_C_IR_instancedumper,
  maslout_C_DG_instancedumper,
  maslout_C_PO_instancedumper,
  maslout_C_RID_instancedumper,
  maslout_CA_COMM_instancedumper,
  maslout_CA_EESMC_instancedumper,
  maslout_CA_SMSMC_instancedumper,
  maslout_CA_SMEEC_instancedumper,
  maslout_CA_EESME_instancedumper,
  maslout_CA_SMSME_instancedumper,
  maslout_CA_SMEEE_instancedumper,
  maslout_CA_ACC_instancedumper,
  maslout_CA_SMOA_instancedumper,
  maslout_CA_SMEEA_instancedumper,
  maslout_CA_SMOAA_instancedumper,
  maslout_CA_SMEED_instancedumper,
  maslout_SPR_REP_instancedumper,
  maslout_SPR_PEP_instancedumper,
  maslout_SPR_RO_instancedumper,
  maslout_SPR_RS_instancedumper,
  maslout_SPR_PO_instancedumper,
  maslout_SPR_PS_instancedumper,
  maslout_CL_IPINS_instancedumper,
  maslout_CL_IP_instancedumper,
  maslout_CL_IR_instancedumper,
  maslout_CL_IIR_instancedumper,
  maslout_CL_IC_instancedumper,
  maslout_CL_POR_instancedumper,
  maslout_S_EEM_instancedumper,
  maslout_SM_SM_instancedumper,
  maslout_SM_STATE_instancedumper,
  maslout_SM_EVT_instancedumper,
  maslout_SM_SEME_instancedumper,
  maslout_SM_NSTXN_instancedumper,
  maslout_SM_EIGN_instancedumper,
  maslout_SM_CH_instancedumper,
  maslout_SM_TXN_instancedumper,
  maslout_SM_NETXN_instancedumper,
  maslout_SM_CRTXN_instancedumper,
  maslout_SM_MOORE_instancedumper,
  maslout_SM_MEALY_instancedumper,
  maslout_SM_MOAH_instancedumper,
  maslout_SM_MEAH_instancedumper,
  maslout_SM_AH_instancedumper,
  maslout_SM_ACT_instancedumper,
  maslout_SM_EVTDI_instancedumper,
  maslout_SM_SUPDT_instancedumper,
  maslout_SM_SDI_instancedumper,
  maslout_SM_ISM_instancedumper,
  maslout_SM_ASM_instancedumper,
  maslout_SM_PEVT_instancedumper,
  maslout_SM_SEVT_instancedumper,
  maslout_SM_NLEVT_instancedumper,
  maslout_SM_LEVT_instancedumper,
  maslout_SM_SGEVT_instancedumper,
  maslout_SM_TAH_instancedumper,
  maslout_S_EEDI_instancedumper,
  maslout_ACT_BLK_instancedumper,
  maslout_ACT_ACT_instancedumper,
  maslout_ACT_SMT_instancedumper,
  maslout_ACT_AI_instancedumper,
  maslout_ACT_SRW_instancedumper,
  maslout_ACT_SEL_instancedumper,
  maslout_ACT_FOR_instancedumper,
  maslout_ACT_CNV_instancedumper,
  maslout_ACT_REL_instancedumper,
  maslout_ACT_UNR_instancedumper,
  maslout_ACT_E_instancedumper,
  maslout_ACT_FIW_instancedumper,
  maslout_ACT_FIO_instancedumper,
  maslout_ACT_CR_instancedumper,
  maslout_ACT_DEL_instancedumper,
  maslout_ACT_RU_instancedumper,
  maslout_ACT_URU_instancedumper,
  maslout_ACT_IF_instancedumper,
  maslout_ACT_TFM_instancedumper,
  maslout_ACT_WHL_instancedumper,
  maslout_ACT_BRG_instancedumper,
  maslout_ACT_EL_instancedumper,
  maslout_ACT_SR_instancedumper,
  maslout_ACT_RET_instancedumper,
  maslout_ACT_FNC_instancedumper,
  maslout_ACT_IOP_instancedumper,
  maslout_ACT_LNK_instancedumper,
  maslout_ACT_SGN_instancedumper,
  maslout_ACT_CTL_instancedumper,
  maslout_ACT_BRK_instancedumper,
  maslout_ACT_CON_instancedumper,
  maslout_ACT_SAB_instancedumper,
  maslout_ACT_DAB_instancedumper,
  maslout_ACT_FNB_instancedumper,
  maslout_ACT_OPB_instancedumper,
  maslout_ACT_BRB_instancedumper,
  maslout_ACT_POB_instancedumper,
  maslout_ACT_PSB_instancedumper,
  maslout_ACT_ROB_instancedumper,
  maslout_ACT_RSB_instancedumper,
  maslout_ACT_BIC_instancedumper,
  maslout_ACT_TAB_instancedumper,
  maslout_ACT_BIE_instancedumper,
  maslout_S_EEEVT_instancedumper,
  maslout_E_CEI_instancedumper,
  maslout_E_GEN_instancedumper,
  maslout_E_GPR_instancedumper,
  maslout_E_CEA_instancedumper,
  maslout_E_GAR_instancedumper,
  maslout_E_GEC_instancedumper,
  maslout_E_CEE_instancedumper,
  maslout_E_GEE_instancedumper,
  maslout_E_CEC_instancedumper,
  maslout_E_ESS_instancedumper,
  maslout_E_CES_instancedumper,
  maslout_E_GES_instancedumper,
  maslout_E_CSME_instancedumper,
  maslout_E_GSME_instancedumper,
  maslout_S_EEEDI_instancedumper,
  maslout_PE_PE_instancedumper,
  maslout_PE_VIS_instancedumper,
  maslout_PE_CVS_instancedumper,
  maslout_PE_SRS_instancedumper,
  maslout_PE_CRS_instancedumper,
  maslout_V_VAL_instancedumper,
  maslout_V_PAR_instancedumper,
  maslout_V_BIN_instancedumper,
  maslout_V_LBO_instancedumper,
  maslout_V_LRL_instancedumper,
  maslout_V_TVL_instancedumper,
  maslout_V_EDV_instancedumper,
  maslout_V_ISR_instancedumper,
  maslout_V_TRV_instancedumper,
  maslout_V_UNY_instancedumper,
  maslout_V_LST_instancedumper,
  maslout_V_LIN_instancedumper,
  maslout_V_AVL_instancedumper,
  maslout_V_IRF_instancedumper,
  maslout_V_BRV_instancedumper,
  maslout_V_VAR_instancedumper,
  maslout_V_INT_instancedumper,
  maslout_V_INS_instancedumper,
  maslout_V_TRN_instancedumper,
  maslout_V_SLR_instancedumper,
  maslout_V_PVL_instancedumper,
  maslout_V_FNV_instancedumper,
  maslout_V_LEN_instancedumper,
  maslout_V_LOC_instancedumper,
  maslout_V_MVL_instancedumper,
  maslout_V_AER_instancedumper,
  maslout_V_ALV_instancedumper,
  maslout_V_MSV_instancedumper,
  maslout_V_EPR_instancedumper,
  maslout_V_SCV_instancedumper,
  maslout_S_EEEDT_instancedumper,
  maslout_PA_SIC_instancedumper,
  maslout_PA_DIC_instancedumper,
  maslout_SQ_LS_instancedumper,
  maslout_SQ_CIP_instancedumper,
  maslout_SQ_COP_instancedumper,
  maslout_SQ_TM_instancedumper,
  maslout_SQ_TS_instancedumper,
  maslout_SQ_CP_instancedumper,
  maslout_SQ_P_instancedumper,
  maslout_SQ_EEP_instancedumper,
  maslout_SQ_CPA_instancedumper,
  maslout_SQ_AV_instancedumper,
  maslout_SQ_AP_instancedumper,
  maslout_SQ_IA_instancedumper,
  maslout_SQ_FA_instancedumper,
  maslout_SQ_FAV_instancedumper,
  maslout_SQ_IAV_instancedumper,
  maslout_IA_UCP_instancedumper,
  maslout_SQ_PP_instancedumper,
  maslout_SEN_E_instancedumper,
  maslout_SEN_ALE_instancedumper,
  maslout_SEN_DE_instancedumper,
  maslout_SEN_DCE_instancedumper,
  maslout_SEN_RE_instancedumper,
  maslout_SQU_Q_instancedumper,
  maslout_SQU_D_instancedumper,
  maslout_SQU_R_instancedumper,
  maslout_SQU_DE_instancedumper,
  maslout_SQU_A_instancedumper,
  maslout_SP_SP_instancedumper,
  maslout_SP_SE_instancedumper,
  maslout_SP_NS_instancedumper,
  maslout_SP_ALS_instancedumper,
  maslout_SP_DS_instancedumper,
  maslout_SR_SR_instancedumper,
  maslout_SR_M_instancedumper,
  maslout_SR_CM_instancedumper,
  maslout_SR_NM_instancedumper,
  maslout_SR_CMR_instancedumper,
  maslout_S_DT_instancedumper
};
/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const maslout_class_info[ maslout_MAX_CLASS_NUMBERS ] = {
  &pG_maslout_MSG_M_extent,
  &pG_maslout_MSG_A_extent,
  &pG_maslout_MSG_O_extent,
  &pG_maslout_MSG_B_extent,
  &pG_maslout_MSG_E_extent,
  &pG_maslout_MSG_F_extent,
  &pG_maslout_MSG_BA_extent,
  &pG_maslout_MSG_OA_extent,
  &pG_maslout_MSG_FA_extent,
  &pG_maslout_MSG_EA_extent,
  &pG_maslout_MSG_R_extent,
  &pG_maslout_MSG_SM_extent,
  &pG_maslout_MSG_AM_extent,
  &pG_maslout_MSG_ISM_extent,
  &pG_maslout_MSG_IAM_extent,
  &pG_maslout_MSG_IA_extent,
  &pG_maslout_MSG_SIG_extent,
  &pG_maslout_MSG_IOP_extent,
  &pG_maslout_MSG_EPA_extent,
  &pG_maslout_O_OBJ_extent,
  &pG_maslout_O_IOBJ_extent,
  &pG_maslout_O_ATTR_extent,
  &pG_maslout_O_ID_extent,
  &pG_maslout_O_OIDA_extent,
  &pG_maslout_O_BATTR_extent,
  &pG_maslout_O_DBATTR_extent,
  &pG_maslout_O_NBATTR_extent,
  &pG_maslout_O_RATTR_extent,
  &pG_maslout_S_CDT_extent,
  &pG_maslout_A_N_extent,
  &pG_maslout_A_E_extent,
  &pG_maslout_A_ACT_extent,
  &pG_maslout_A_OBJ_extent,
  &pG_maslout_A_CTL_extent,
  &pG_maslout_A_INI_extent,
  &pG_maslout_A_AF_extent,
  &pG_maslout_A_FF_extent,
  &pG_maslout_A_DM_extent,
  &pG_maslout_O_REF_extent,
  &pG_maslout_A_FJ_extent,
  &pG_maslout_A_GA_extent,
  &pG_maslout_A_AE_extent,
  &pG_maslout_A_SS_extent,
  &pG_maslout_O_RTIDA_extent,
  &pG_maslout_COMM_LNK_extent,
  &pG_maslout_O_TFR_extent,
  &pG_maslout_O_TPARM_extent,
  &pG_maslout_O_RAVR_extent,
  &pG_maslout_S_UDT_extent,
  &pG_maslout_UC_UCA_extent,
  &pG_maslout_UC_BA_extent,
  &pG_maslout_UC_G_extent,
  &pG_maslout_UC_I_extent,
  &pG_maslout_UC_E_extent,
  &pG_maslout_S_BRG_extent,
  &pG_maslout_A_AP_extent,
  &pG_maslout_A_ATE_extent,
  &pG_maslout_A_AEA_extent,
  &pG_maslout_S_BPARM_extent,
  &pG_maslout_EP_PKG_extent,
  &pG_maslout_S_EDT_extent,
  &pG_maslout_CNST_CSP_extent,
  &pG_maslout_CNST_SYC_extent,
  &pG_maslout_CNST_LFSC_extent,
  &pG_maslout_CNST_LSC_extent,
  &pG_maslout_S_ENUM_extent,
  &pG_maslout_S_SYNC_extent,
  &pG_maslout_S_SPARM_extent,
  &pG_maslout_S_SYS_extent,
  &pG_maslout_G_EIS_extent,
  &pG_maslout_S_DOM_extent,
  &pG_maslout_R_REL_extent,
  &pG_maslout_R_OIR_extent,
  &pG_maslout_R_RTO_extent,
  &pG_maslout_R_RGO_extent,
  &pG_maslout_R_SIMP_extent,
  &pG_maslout_R_PART_extent,
  &pG_maslout_R_FORM_extent,
  &pG_maslout_R_ASSOC_extent,
  &pG_maslout_R_AONE_extent,
  &pG_maslout_R_AOTH_extent,
  &pG_maslout_R_ASSR_extent,
  &pG_maslout_R_SUBSUP_extent,
  &pG_maslout_R_SUPER_extent,
  &pG_maslout_R_SUB_extent,
  &pG_maslout_R_COMP_extent,
  &pG_maslout_R_CONE_extent,
  &pG_maslout_R_COTH_extent,
  &pG_maslout_I_LNK_extent,
  &pG_maslout_I_EVI_extent,
  &pG_maslout_I_AVL_extent,
  &pG_maslout_I_INS_extent,
  &pG_maslout_I_EXE_extent,
  &pG_maslout_I_STF_extent,
  &pG_maslout_I_BSF_extent,
  &pG_maslout_I_STACK_extent,
  &pG_maslout_I_DIV_extent,
  &pG_maslout_I_TIM_extent,
  &pG_maslout_I_EQE_extent,
  &pG_maslout_I_SQE_extent,
  &pG_maslout_I_MON_extent,
  &pG_maslout_CSME_CLM_extent,
  &pG_maslout_I_VSF_extent,
  &pG_maslout_I_LIP_extent,
  &pG_maslout_I_RCH_extent,
  &pG_maslout_I_CIN_extent,
  &pG_maslout_I_ICQE_extent,
  &pG_maslout_CSME_CIE_extent,
  &pG_maslout_CSME_CIS_extent,
  &pG_maslout_S_SS_extent,
  &pG_maslout_BP_BP_extent,
  &pG_maslout_BP_OAL_extent,
  &pG_maslout_BP_EV_extent,
  &pG_maslout_BP_CON_extent,
  &pG_maslout_BP_ST_extent,
  &pG_maslout_S_AW_extent,
  &pG_maslout_S_IRDT_extent,
  &pG_maslout_S_SDT_extent,
  &pG_maslout_S_MBR_extent,
  &pG_maslout_S_DIM_extent,
  &pG_maslout_S_EE_extent,
  &pG_maslout_C_C_extent,
  &pG_maslout_C_I_extent,
  &pG_maslout_C_P_extent,
  &pG_maslout_C_R_extent,
  &pG_maslout_C_EP_extent,
  &pG_maslout_C_AS_extent,
  &pG_maslout_C_IO_extent,
  &pG_maslout_C_SF_extent,
  &pG_maslout_C_PP_extent,
  &pG_maslout_C_IR_extent,
  &pG_maslout_C_DG_extent,
  &pG_maslout_C_PO_extent,
  &pG_maslout_C_RID_extent,
  &pG_maslout_CA_COMM_extent,
  &pG_maslout_CA_EESMC_extent,
  &pG_maslout_CA_SMSMC_extent,
  &pG_maslout_CA_SMEEC_extent,
  &pG_maslout_CA_EESME_extent,
  &pG_maslout_CA_SMSME_extent,
  &pG_maslout_CA_SMEEE_extent,
  &pG_maslout_CA_ACC_extent,
  &pG_maslout_CA_SMOA_extent,
  &pG_maslout_CA_SMEEA_extent,
  &pG_maslout_CA_SMOAA_extent,
  &pG_maslout_CA_SMEED_extent,
  &pG_maslout_SPR_REP_extent,
  &pG_maslout_SPR_PEP_extent,
  &pG_maslout_SPR_RO_extent,
  &pG_maslout_SPR_RS_extent,
  &pG_maslout_SPR_PO_extent,
  &pG_maslout_SPR_PS_extent,
  &pG_maslout_CL_IPINS_extent,
  &pG_maslout_CL_IP_extent,
  &pG_maslout_CL_IR_extent,
  &pG_maslout_CL_IIR_extent,
  &pG_maslout_CL_IC_extent,
  &pG_maslout_CL_POR_extent,
  &pG_maslout_S_EEM_extent,
  &pG_maslout_SM_SM_extent,
  &pG_maslout_SM_STATE_extent,
  &pG_maslout_SM_EVT_extent,
  &pG_maslout_SM_SEME_extent,
  &pG_maslout_SM_NSTXN_extent,
  &pG_maslout_SM_EIGN_extent,
  &pG_maslout_SM_CH_extent,
  &pG_maslout_SM_TXN_extent,
  &pG_maslout_SM_NETXN_extent,
  &pG_maslout_SM_CRTXN_extent,
  &pG_maslout_SM_MOORE_extent,
  &pG_maslout_SM_MEALY_extent,
  &pG_maslout_SM_MOAH_extent,
  &pG_maslout_SM_MEAH_extent,
  &pG_maslout_SM_AH_extent,
  &pG_maslout_SM_ACT_extent,
  &pG_maslout_SM_EVTDI_extent,
  &pG_maslout_SM_SUPDT_extent,
  &pG_maslout_SM_SDI_extent,
  &pG_maslout_SM_ISM_extent,
  &pG_maslout_SM_ASM_extent,
  &pG_maslout_SM_PEVT_extent,
  &pG_maslout_SM_SEVT_extent,
  &pG_maslout_SM_NLEVT_extent,
  &pG_maslout_SM_LEVT_extent,
  &pG_maslout_SM_SGEVT_extent,
  &pG_maslout_SM_TAH_extent,
  &pG_maslout_S_EEDI_extent,
  &pG_maslout_ACT_BLK_extent,
  &pG_maslout_ACT_ACT_extent,
  &pG_maslout_ACT_SMT_extent,
  &pG_maslout_ACT_AI_extent,
  &pG_maslout_ACT_SRW_extent,
  &pG_maslout_ACT_SEL_extent,
  &pG_maslout_ACT_FOR_extent,
  &pG_maslout_ACT_CNV_extent,
  &pG_maslout_ACT_REL_extent,
  &pG_maslout_ACT_UNR_extent,
  &pG_maslout_ACT_E_extent,
  &pG_maslout_ACT_FIW_extent,
  &pG_maslout_ACT_FIO_extent,
  &pG_maslout_ACT_CR_extent,
  &pG_maslout_ACT_DEL_extent,
  &pG_maslout_ACT_RU_extent,
  &pG_maslout_ACT_URU_extent,
  &pG_maslout_ACT_IF_extent,
  &pG_maslout_ACT_TFM_extent,
  &pG_maslout_ACT_WHL_extent,
  &pG_maslout_ACT_BRG_extent,
  &pG_maslout_ACT_EL_extent,
  &pG_maslout_ACT_SR_extent,
  &pG_maslout_ACT_RET_extent,
  &pG_maslout_ACT_FNC_extent,
  &pG_maslout_ACT_IOP_extent,
  &pG_maslout_ACT_LNK_extent,
  &pG_maslout_ACT_SGN_extent,
  &pG_maslout_ACT_CTL_extent,
  &pG_maslout_ACT_BRK_extent,
  &pG_maslout_ACT_CON_extent,
  &pG_maslout_ACT_SAB_extent,
  &pG_maslout_ACT_DAB_extent,
  &pG_maslout_ACT_FNB_extent,
  &pG_maslout_ACT_OPB_extent,
  &pG_maslout_ACT_BRB_extent,
  &pG_maslout_ACT_POB_extent,
  &pG_maslout_ACT_PSB_extent,
  &pG_maslout_ACT_ROB_extent,
  &pG_maslout_ACT_RSB_extent,
  &pG_maslout_ACT_BIC_extent,
  &pG_maslout_ACT_TAB_extent,
  &pG_maslout_ACT_BIE_extent,
  &pG_maslout_S_EEEVT_extent,
  &pG_maslout_E_CEI_extent,
  &pG_maslout_E_GEN_extent,
  &pG_maslout_E_GPR_extent,
  &pG_maslout_E_CEA_extent,
  &pG_maslout_E_GAR_extent,
  &pG_maslout_E_GEC_extent,
  &pG_maslout_E_CEE_extent,
  &pG_maslout_E_GEE_extent,
  &pG_maslout_E_CEC_extent,
  &pG_maslout_E_ESS_extent,
  &pG_maslout_E_CES_extent,
  &pG_maslout_E_GES_extent,
  &pG_maslout_E_CSME_extent,
  &pG_maslout_E_GSME_extent,
  &pG_maslout_S_EEEDI_extent,
  &pG_maslout_PE_PE_extent,
  &pG_maslout_PE_VIS_extent,
  &pG_maslout_PE_CVS_extent,
  &pG_maslout_PE_SRS_extent,
  &pG_maslout_PE_CRS_extent,
  &pG_maslout_V_VAL_extent,
  &pG_maslout_V_PAR_extent,
  &pG_maslout_V_BIN_extent,
  &pG_maslout_V_LBO_extent,
  &pG_maslout_V_LRL_extent,
  &pG_maslout_V_TVL_extent,
  &pG_maslout_V_EDV_extent,
  &pG_maslout_V_ISR_extent,
  &pG_maslout_V_TRV_extent,
  &pG_maslout_V_UNY_extent,
  &pG_maslout_V_LST_extent,
  &pG_maslout_V_LIN_extent,
  &pG_maslout_V_AVL_extent,
  &pG_maslout_V_IRF_extent,
  &pG_maslout_V_BRV_extent,
  &pG_maslout_V_VAR_extent,
  &pG_maslout_V_INT_extent,
  &pG_maslout_V_INS_extent,
  &pG_maslout_V_TRN_extent,
  &pG_maslout_V_SLR_extent,
  &pG_maslout_V_PVL_extent,
  &pG_maslout_V_FNV_extent,
  &pG_maslout_V_LEN_extent,
  &pG_maslout_V_LOC_extent,
  &pG_maslout_V_MVL_extent,
  &pG_maslout_V_AER_extent,
  &pG_maslout_V_ALV_extent,
  &pG_maslout_V_MSV_extent,
  &pG_maslout_V_EPR_extent,
  &pG_maslout_V_SCV_extent,
  &pG_maslout_S_EEEDT_extent,
  &pG_maslout_PA_SIC_extent,
  &pG_maslout_PA_DIC_extent,
  &pG_maslout_SQ_LS_extent,
  &pG_maslout_SQ_CIP_extent,
  &pG_maslout_SQ_COP_extent,
  &pG_maslout_SQ_TM_extent,
  &pG_maslout_SQ_TS_extent,
  &pG_maslout_SQ_CP_extent,
  &pG_maslout_SQ_P_extent,
  &pG_maslout_SQ_EEP_extent,
  &pG_maslout_SQ_CPA_extent,
  &pG_maslout_SQ_AV_extent,
  &pG_maslout_SQ_AP_extent,
  &pG_maslout_SQ_IA_extent,
  &pG_maslout_SQ_FA_extent,
  &pG_maslout_SQ_FAV_extent,
  &pG_maslout_SQ_IAV_extent,
  &pG_maslout_IA_UCP_extent,
  &pG_maslout_SQ_PP_extent,
  &pG_maslout_SEN_E_extent,
  &pG_maslout_SEN_ALE_extent,
  &pG_maslout_SEN_DE_extent,
  &pG_maslout_SEN_DCE_extent,
  &pG_maslout_SEN_RE_extent,
  &pG_maslout_SQU_Q_extent,
  &pG_maslout_SQU_D_extent,
  &pG_maslout_SQU_R_extent,
  &pG_maslout_SQU_DE_extent,
  &pG_maslout_SQU_A_extent,
  &pG_maslout_SP_SP_extent,
  &pG_maslout_SP_SE_extent,
  &pG_maslout_SP_NS_extent,
  &pG_maslout_SP_ALS_extent,
  &pG_maslout_SP_DS_extent,
  &pG_maslout_SR_SR_extent,
  &pG_maslout_SR_M_extent,
  &pG_maslout_SR_CM_extent,
  &pG_maslout_SR_NM_extent,
  &pG_maslout_SR_CMR_extent,
  &pG_maslout_S_DT_extent
};


void maslout_execute_initialization()
{
}
