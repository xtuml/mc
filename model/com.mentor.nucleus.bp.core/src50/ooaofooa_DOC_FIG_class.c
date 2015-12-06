/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_FIG_class.c
 *
 * Class:       figure  (DOC_FIG)
 * Component:   ooaofooa
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "sys_sys_types.h"
#include "LOG_bridge.h"
#include "POP_bridge.h"
#include "T_bridge.h"
#include "ooaofooa_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
ooaofooa_DOC_FIG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_FIG * self = (ooaofooa_DOC_FIG *) instance;
  /* Initialize application analysis class attributes.  */
  self->title = Escher_strcpy( self->title, avlstring[ 1 ] );
  self->ident = Escher_strcpy( self->ident, avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_FIG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_FIG * ooaofooa_DOC_FIG_instance = (ooaofooa_DOC_FIG *) instance;
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_FIG_op_render( ooaofooa_DOC_FIG * self)
{
  ooaofooa_DOC_FIG * doc_fig=0;ooaofooa_DOC_IMG * doc_img=0;
  /* SELECT any doc_fig FROM INSTANCES OF DOC_FIG */
  doc_fig = (ooaofooa_DOC_FIG *) Escher_SetGetAny( &pG_ooaofooa_DOC_FIG_extent.active );
  /* ASSIGN doc_fig = self */
  doc_fig = self;
  /* T::include( file:docbook/t.figurebegin.h ) */
#include "docbook/t.figurebegin.h"
  /* SELECT one doc_img RELATED BY self->DOC_IMG[R2313] */
  doc_img = ( 0 != self ) ? self->DOC_IMG_R2313_showcases : 0;
  /* IF ( not_empty doc_img ) */
  if ( ( 0 != doc_img ) ) {
    /* doc_img.render() */
    ooaofooa_DOC_IMG_op_render( doc_img );
  }
  /* T::include( file:docbook/t.figureend.h ) */
#include "docbook/t.figureend.h"

}

/*
 * class operation:  populate
 */
ooaofooa_DOC_FIG *
ooaofooa_DOC_FIG_op_populate( ooaofooa_DOC_PAR * p_doc_par, c_t * p_image_target, c_t * p_title )
{
  ooaofooa_DOC_PAR * doc_par;ooaofooa_DOC_IMG * doc_img;ooaofooa_DOC_FIG * doc_fig;ooaofooa_DOC_DOC * doc_doc=0;
  /* ASSIGN doc_par = PARAM.doc_par */
  doc_par = p_doc_par;
  /* CREATE OBJECT INSTANCE doc_fig OF DOC_FIG */
  doc_fig = (ooaofooa_DOC_FIG *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_FIG_CLASS_NUMBER );
  /* RELATE doc_fig TO doc_par ACROSS R2316 */
  ooaofooa_DOC_FIG_R2316_Link_has( doc_par, doc_fig );
  /* ASSIGN doc_fig.title = PARAM.title */
  doc_fig->title = Escher_strcpy( doc_fig->title, p_title );
  /* ASSIGN doc_fig.ident = T::r(s:PARAM.image_target) */
  doc_fig->ident = Escher_strcpy( doc_fig->ident, T_r( p_image_target ) );
  /* CREATE OBJECT INSTANCE doc_img OF DOC_IMG */
  doc_img = (ooaofooa_DOC_IMG *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_IMG_CLASS_NUMBER );
  /* RELATE doc_img TO doc_fig ACROSS R2313 */
  ooaofooa_DOC_IMG_R2313_Link_showcases( doc_fig, doc_img );
  /* SELECT any doc_doc FROM INSTANCES OF DOC_DOC */
  doc_doc = (ooaofooa_DOC_DOC *) Escher_SetGetAny( &pG_ooaofooa_DOC_DOC_extent.active );
  /* ASSIGN doc_img.target = ( PARAM.image_target + doc_doc.model_image_ext ) */
  doc_img->target = Escher_strcpy( doc_img->target, Escher_stradd( p_image_target, doc_doc->model_image_ext ) );
  /* RETURN doc_fig */
  {ooaofooa_DOC_FIG * xtumlOALrv = doc_fig;
  return xtumlOALrv;}

}


/*
 * RELATE DOC_PAR TO DOC_FIG ACROSS R2316
 */
void
ooaofooa_DOC_FIG_R2316_Link_has( ooaofooa_DOC_PAR * part, ooaofooa_DOC_FIG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2316 = part;
  part->DOC_FIG_R2316_has = form;
}

/*
 * UNRELATE DOC_PAR FROM DOC_FIG ACROSS R2316
 */
void
ooaofooa_DOC_FIG_R2316_Unlink_has( ooaofooa_DOC_PAR * part, ooaofooa_DOC_FIG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2316 = 0;
  part->DOC_FIG_R2316_has = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_FIG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_FIG * self = (ooaofooa_DOC_FIG *) instance;
  printf( "INSERT INTO DOC_FIG VALUES ( '%s','%s' );\n",
    ( 0 != self->title ) ? self->title : "",
    ( 0 != self->ident ) ? self->ident : "" );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      figure  (DOC_FIG)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_FIG_container[ ooaofooa_DOC_FIG_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_FIG ooaofooa_DOC_FIG_instances[ ooaofooa_DOC_FIG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_FIG_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_FIG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_FIG_instances,
  sizeof( ooaofooa_DOC_FIG ), 0, ooaofooa_DOC_FIG_MAX_EXTENT_SIZE
  };


