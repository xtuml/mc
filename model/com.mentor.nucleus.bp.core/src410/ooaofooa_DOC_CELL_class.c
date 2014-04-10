/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_CELL_class.c
 *
 * Class:       cell  (DOC_CELL)
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
ooaofooa_DOC_CELL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_CELL * self = (ooaofooa_DOC_CELL *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->text, avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_CELL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_CELL * ooaofooa_DOC_CELL_instance = (ooaofooa_DOC_CELL *) instance;
  {
  }
  {
  }
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_CELL_op_render( ooaofooa_DOC_CELL * self)
{
  ooaofooa_DOC_CELL * doc_cell=0;ooaofooa_DOC_PAR * doc_par=0;
  /* SELECT any doc_cell FROM INSTANCES OF DOC_CELL */
  doc_cell = (ooaofooa_DOC_CELL *) Escher_SetGetAny( &pG_ooaofooa_DOC_CELL_extent.active );
  /* ASSIGN doc_cell = self */
  doc_cell = self;
  /* T::include( file:docbook/t.tableentrybegin.h ) */
#include "docbook/t.tableentrybegin.h"
  /* SELECT one doc_par RELATED BY self->DOC_PAR[R2318] */
  doc_par = ( 0 != self ) ? self->DOC_PAR_R2318_contains : 0;
  /* IF ( not_empty doc_par ) */
  if ( ( 0 != doc_par ) ) {
    /* doc_par.render() */
    ooaofooa_DOC_PAR_op_render( doc_par );
  }
  /* T::include( file:docbook/t.tableentryend.h ) */
#include "docbook/t.tableentryend.h"
  /* SELECT one doc_cell RELATED BY self->DOC_CELL[R2304.follows] */
  doc_cell = ( 0 != self ) ? self->DOC_CELL_R2304_follows : 0;
  /* IF ( not_empty doc_cell ) */
  if ( ( 0 != doc_cell ) ) {
    /* doc_cell.render() */
    ooaofooa_DOC_CELL_op_render( doc_cell );
  }

}

/*
 * class operation:  populate_paragraph
 */
ooaofooa_DOC_CELL *
ooaofooa_DOC_CELL_op_populate_paragraph( ooaofooa_DOC_CELL * p_predecessor, c_t p_text[ESCHER_SYS_MAX_STRING_LEN] )
{
  ooaofooa_DOC_PAR * doc_par;ooaofooa_DOC_CELL * predecessor;ooaofooa_DOC_CELL * doc_cell;ooaofooa_DOC_SEC * empty_doc_sec=0;ooaofooa_DOC_PAR * empty_doc_par=0;
  /* ASSIGN predecessor = PARAM.predecessor */
  predecessor = p_predecessor;
  /* CREATE OBJECT INSTANCE doc_cell OF DOC_CELL */
  doc_cell = (ooaofooa_DOC_CELL *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_CELL_CLASS_NUMBER );
  /* IF ( not_empty predecessor ) */
  if ( ( 0 != predecessor ) ) {
    /* RELATE predecessor TO doc_cell ACROSS R2304 */
    ooaofooa_DOC_CELL_R2304_Link_follows( predecessor, doc_cell );
  }
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:empty_doc_par, text:PARAM.text) */
  doc_par = ooaofooa_DOC_PAR_op_populate(empty_doc_sec, empty_doc_par, p_text);
  /* RELATE doc_par TO doc_cell ACROSS R2318 */
  ooaofooa_DOC_CELL_R2318_Link( doc_par, doc_cell );
  /* RETURN doc_cell */
  return doc_cell;
}

/*
 * class operation:  populate_image
 */
ooaofooa_DOC_CELL *
ooaofooa_DOC_CELL_op_populate_image( c_t p_image[ESCHER_SYS_MAX_STRING_LEN], ooaofooa_DOC_CELL * p_predecessor )
{
  ooaofooa_DOC_PAR * doc_par;ooaofooa_DOC_CELL * predecessor;ooaofooa_DOC_IMG * doc_img;ooaofooa_DOC_CELL * doc_cell;ooaofooa_DOC_SEC * empty_doc_sec=0;ooaofooa_DOC_PAR * empty_doc_par=0;
  /* ASSIGN predecessor = PARAM.predecessor */
  predecessor = p_predecessor;
  /* CREATE OBJECT INSTANCE doc_cell OF DOC_CELL */
  doc_cell = (ooaofooa_DOC_CELL *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_CELL_CLASS_NUMBER );
  /* IF ( not_empty predecessor ) */
  if ( ( 0 != predecessor ) ) {
    /* RELATE predecessor TO doc_cell ACROSS R2304 */
    ooaofooa_DOC_CELL_R2304_Link_follows( predecessor, doc_cell );
  }
  /* SELECT any empty_doc_par FROM INSTANCES OF DOC_PAR WHERE FALSE */
  empty_doc_par = 0;
  /* SELECT any empty_doc_sec FROM INSTANCES OF DOC_SEC WHERE FALSE */
  empty_doc_sec = 0;
  /* ASSIGN doc_par = DOC_PAR::populate(doc_sec:empty_doc_sec, predecessor:empty_doc_par, text:) */
  doc_par = ooaofooa_DOC_PAR_op_populate(empty_doc_sec, empty_doc_par, "");
  /* RELATE doc_par TO doc_cell ACROSS R2318 */
  ooaofooa_DOC_CELL_R2318_Link( doc_par, doc_cell );
  /* CREATE OBJECT INSTANCE doc_img OF DOC_IMG */
  doc_img = (ooaofooa_DOC_IMG *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_IMG_CLASS_NUMBER );
  /* RELATE doc_img TO doc_par ACROSS R2319 */
  ooaofooa_DOC_IMG_R2319_Link( doc_par, doc_img );
  /* ASSIGN doc_img.target = PARAM.image */
  Escher_strcpy( doc_img->target, p_image );
  /* RETURN doc_cell */
  return doc_cell;
}


/*
 * RELATE <left> DOC_CELL TO <right> DOC_CELL ACROSS R2304.'precedes'
 */
void
ooaofooa_DOC_CELL_R2304_Link_precedes( ooaofooa_DOC_CELL * left, ooaofooa_DOC_CELL * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_CELL_R2304_precedes = right; /* SR L1 */
  right->DOC_CELL_R2304_follows = left; /* SR L2 */
}

/*
 * UNRELATE <left> DOC_CELL FROM <right> DOC_CELL ACROSS R2304.'precedes'
 */
void
ooaofooa_DOC_CELL_R2304_Unlink_precedes( ooaofooa_DOC_CELL * left, ooaofooa_DOC_CELL * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_CELL_R2304_precedes = 0; /* SR U1 */
  right->DOC_CELL_R2304_follows = 0; /* SR U2 */
}

/*
 * RELATE <left> DOC_CELL TO <right> DOC_CELL ACROSS R2304.'follows'
 */
void
ooaofooa_DOC_CELL_R2304_Link_follows( ooaofooa_DOC_CELL * left, ooaofooa_DOC_CELL * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_CELL_R2304_precedes = left; /* SR L4 */
  left->DOC_CELL_R2304_follows = right; /* SR L5 */
}

/*
 * UNRELATE <left> DOC_CELL FROM <right> DOC_CELL ACROSS R2304.'follows'
 */
void
ooaofooa_DOC_CELL_R2304_Unlink_follows( ooaofooa_DOC_CELL * left, ooaofooa_DOC_CELL * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_CELL_R2304_precedes = 0; /* SR U4 */
  left->DOC_CELL_R2304_follows = 0; /* SR U5 */
}

/*
 * RELATE DOC_ROW TO DOC_CELL ACROSS R2310
 */
void
ooaofooa_DOC_CELL_R2310_Link_has_first( ooaofooa_DOC_ROW * part, ooaofooa_DOC_CELL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_ROW_R2310 = part;
  part->DOC_CELL_R2310_has_first = form;
}

/*
 * UNRELATE DOC_ROW FROM DOC_CELL ACROSS R2310
 */
void
ooaofooa_DOC_CELL_R2310_Unlink_has_first( ooaofooa_DOC_ROW * part, ooaofooa_DOC_CELL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_ROW_R2310 = 0;
  part->DOC_CELL_R2310_has_first = 0;
}

/*
 * RELATE DOC_PAR TO DOC_CELL ACROSS R2318
 */
void
ooaofooa_DOC_CELL_R2318_Link( ooaofooa_DOC_PAR * part, ooaofooa_DOC_CELL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2318_contains = part;
  part->DOC_CELL_R2318 = form;
}

/*
 * UNRELATE DOC_PAR FROM DOC_CELL ACROSS R2318
 */
void
ooaofooa_DOC_CELL_R2318_Unlink( ooaofooa_DOC_PAR * part, ooaofooa_DOC_CELL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2318_contains = 0;
  part->DOC_CELL_R2318 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_CELL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_CELL * self = (ooaofooa_DOC_CELL *) instance;
  printf( "INSERT INTO DOC_CELL VALUES ( '%s' );\n",
    self->text );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      cell  (DOC_CELL)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_CELL_container[ ooaofooa_DOC_CELL_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_CELL ooaofooa_DOC_CELL_instances[ ooaofooa_DOC_CELL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_CELL_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_CELL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_CELL_instances,
  sizeof( ooaofooa_DOC_CELL ), 0, ooaofooa_DOC_CELL_MAX_EXTENT_SIZE
  };


