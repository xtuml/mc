/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_ROW_class.c
 *
 * Class:       row  (DOC_ROW)
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
ooaofooa_DOC_ROW_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_ROW * self = (ooaofooa_DOC_ROW *) instance;
  /* Initialize application analysis class attributes.  */
  self->head = ( '0' != *avlstring[ 1 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_ROW_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_ROW * ooaofooa_DOC_ROW_instance = (ooaofooa_DOC_ROW *) instance;
  {
  }
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_ROW_op_render( ooaofooa_DOC_ROW * self)
{
  ooaofooa_DOC_ROW * doc_row=0;ooaofooa_DOC_CELL * doc_cell=0;
  /* SELECT any doc_row FROM INSTANCES OF DOC_ROW */
  doc_row = (ooaofooa_DOC_ROW *) Escher_SetGetAny( &pG_ooaofooa_DOC_ROW_extent.active );
  /* ASSIGN doc_row = self */
  doc_row = self;
  /* IF ( self.head ) */
  if ( self->head ) {
    /* T::include( file:docbook/t.tableheadbegin.h ) */
#include "docbook/t.tableheadbegin.h"
  }
  /* T::include( file:docbook/t.tablerowbegin.h ) */
#include "docbook/t.tablerowbegin.h"
  /* SELECT one doc_cell RELATED BY self->DOC_CELL[R2310] */
  doc_cell = ( 0 != self ) ? self->DOC_CELL_R2310_has_first : 0;
  /* IF ( not_empty doc_cell ) */
  if ( ( 0 != doc_cell ) ) {
    /* doc_cell.render() */
    ooaofooa_DOC_CELL_op_render( doc_cell );
  }
  /* T::include( file:docbook/t.tablerowend.h ) */
#include "docbook/t.tablerowend.h"
  /* IF ( self.head ) */
  if ( self->head ) {
    /* T::include( file:docbook/t.tableheadend.h ) */
#include "docbook/t.tableheadend.h"
    /* T::include( file:docbook/t.tablebodybegin.h ) */
#include "docbook/t.tablebodybegin.h"
  }
  /* SELECT one doc_row RELATED BY self->DOC_ROW[R2303.follows] */
  doc_row = ( 0 != self ) ? self->DOC_ROW_R2303_follows : 0;
  /* IF ( not_empty doc_row ) */
  if ( ( 0 != doc_row ) ) {
    /* doc_row.render() */
    ooaofooa_DOC_ROW_op_render( doc_row );
  }
  else {
    /* T::include( file:docbook/t.tablebodyend.h ) */
#include "docbook/t.tablebodyend.h"
  }

}

/*
 * class operation:  populate
 */
ooaofooa_DOC_ROW *
ooaofooa_DOC_ROW_op_populate( c_t p_columns[8][ESCHER_SYS_MAX_STRING_LEN], const i_t p_count, c_t p_format[8][ESCHER_SYS_MAX_STRING_LEN], ooaofooa_DOC_ROW * p_predecessor )
{
  i_t counter;ooaofooa_DOC_CELL * new_doc_cell;ooaofooa_DOC_CELL * doc_cell;ooaofooa_DOC_ROW * predecessor;ooaofooa_DOC_ROW * doc_row;ooaofooa_DOC_CELL * empty_doc_cell=0;
  /* ASSIGN predecessor = PARAM.predecessor */
  predecessor = p_predecessor;
  /* SELECT any empty_doc_cell FROM INSTANCES OF DOC_CELL WHERE FALSE */
  empty_doc_cell = 0;
  /* CREATE OBJECT INSTANCE doc_row OF DOC_ROW */
  doc_row = (ooaofooa_DOC_ROW *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_ROW_CLASS_NUMBER );
  /* IF ( not_empty predecessor ) */
  if ( ( 0 != predecessor ) ) {
    /* RELATE predecessor TO doc_row ACROSS R2303 */
    ooaofooa_DOC_ROW_R2303_Link_follows( predecessor, doc_row );
    /* ASSIGN doc_row.head = FALSE */
    doc_row->head = FALSE;
  }
  else {
    /* ASSIGN doc_row.head = TRUE */
    doc_row->head = TRUE;
  }
  /* ASSIGN doc_cell = empty_doc_cell */
  doc_cell = empty_doc_cell;
  /* ASSIGN new_doc_cell = empty_doc_cell */
  new_doc_cell = empty_doc_cell;
  /* ASSIGN counter = 0 */
  counter = 0;
  /* WHILE ( ( counter < PARAM.count ) ) */
  while ( ( counter < p_count ) ) {
    /* IF ( ( PARAM.format[counter] == text ) ) */
    if ( ( Escher_strcmp( p_format[counter], "text" ) == 0 ) ) {
    ooaofooa_DOC_CELL * dc;
    /* ASSIGN dc = DOC_CELL::populate_paragraph(predecessor:doc_cell, text:PARAM.columns[counter]) */
    dc = ooaofooa_DOC_CELL_op_populate_paragraph(doc_cell, p_columns[counter]);
    /* ASSIGN new_doc_cell = dc */
    new_doc_cell = dc;
    }
    else if ( ( Escher_strcmp( p_format[counter], "image" ) == 0 ) ) {
    ooaofooa_DOC_CELL * dc;
    /* ASSIGN dc = DOC_CELL::populate_image(image:PARAM.columns[counter], predecessor:doc_cell) */
    dc = ooaofooa_DOC_CELL_op_populate_image(p_columns[counter], doc_cell);
    /* ASSIGN new_doc_cell = dc */
    new_doc_cell = dc;
    }
    else {
    /* LOG::LogFailure( message:DOC_ROW::populate - invalid format no text or image ) */
    LOG_LogFailure( "DOC_ROW::populate - invalid format no text or image" );
    }
    /* IF ( empty doc_cell ) */
    if ( ( 0 == doc_cell ) ) {
    /* RELATE doc_row TO new_doc_cell ACROSS R2310 */
    ooaofooa_DOC_CELL_R2310_Link_has_first( doc_row, new_doc_cell );
    }
    /* ASSIGN doc_cell = new_doc_cell */
    doc_cell = new_doc_cell;
    /* ASSIGN counter = ( counter + 1 ) */
    counter = ( counter + 1 );
  }
  /* RETURN doc_row */
  return doc_row;
}

/*
 * class operation:  validate
 */
void
ooaofooa_DOC_ROW_op_validate()
{
  ooaofooa_DOC_ROW * doc_row=0;Escher_ObjectSet_s doc_rows_space={0}; Escher_ObjectSet_s * doc_rows = &doc_rows_space;
  /* SELECT many doc_rows FROM INSTANCES OF DOC_ROW */
  Escher_CopySet( doc_rows, &pG_ooaofooa_DOC_ROW_extent.active );
  /* FOR EACH doc_row IN doc_rows */
  { Escher_Iterator_s iterdoc_row;
  ooaofooa_DOC_ROW * iidoc_row;
  Escher_IteratorReset( &iterdoc_row, doc_rows );
  while ( (iidoc_row = (ooaofooa_DOC_ROW *)Escher_IteratorNext( &iterdoc_row )) != 0 ) {
    doc_row = iidoc_row; {
    ooaofooa_DOC_ROW * predecessor_doc_row=0;
    /* SELECT one predecessor_doc_row RELATED BY doc_row->DOC_ROW[R2303.precedes] */
    predecessor_doc_row = ( 0 != doc_row ) ? doc_row->DOC_ROW_R2303_precedes : 0;
    /* IF ( empty predecessor_doc_row ) */
    if ( ( 0 == predecessor_doc_row ) ) {
    ooaofooa_DOC_TBL * parent_doc_tbl=0;
    /* SELECT one parent_doc_tbl RELATED BY doc_row->DOC_TBL[R2317] */
    parent_doc_tbl = ( 0 != doc_row ) ? doc_row->DOC_TBL_R2317 : 0;
    /* IF ( empty parent_doc_tbl ) */
    if ( ( 0 == parent_doc_tbl ) ) {
    /* LOG::LogFailure( message:!Row is not linked. ) */
    LOG_LogFailure( "!Row is not linked." );
    }
    }
  }}}
  Escher_ClearSet( doc_rows );

}


/*
 * RELATE <left> DOC_ROW TO <right> DOC_ROW ACROSS R2303.'precedes'
 */
void
ooaofooa_DOC_ROW_R2303_Link_precedes( ooaofooa_DOC_ROW * left, ooaofooa_DOC_ROW * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_ROW_R2303_precedes = right; /* SR L1 */
  right->DOC_ROW_R2303_follows = left; /* SR L2 */
}

/*
 * UNRELATE <left> DOC_ROW FROM <right> DOC_ROW ACROSS R2303.'precedes'
 */
void
ooaofooa_DOC_ROW_R2303_Unlink_precedes( ooaofooa_DOC_ROW * left, ooaofooa_DOC_ROW * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_ROW_R2303_precedes = 0; /* SR U1 */
  right->DOC_ROW_R2303_follows = 0; /* SR U2 */
}

/*
 * RELATE <left> DOC_ROW TO <right> DOC_ROW ACROSS R2303.'follows'
 */
void
ooaofooa_DOC_ROW_R2303_Link_follows( ooaofooa_DOC_ROW * left, ooaofooa_DOC_ROW * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_ROW_R2303_precedes = left; /* SR L4 */
  left->DOC_ROW_R2303_follows = right; /* SR L5 */
}

/*
 * UNRELATE <left> DOC_ROW FROM <right> DOC_ROW ACROSS R2303.'follows'
 */
void
ooaofooa_DOC_ROW_R2303_Unlink_follows( ooaofooa_DOC_ROW * left, ooaofooa_DOC_ROW * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_ROW_R2303_precedes = 0; /* SR U4 */
  left->DOC_ROW_R2303_follows = 0; /* SR U5 */
}

/*
 * RELATE DOC_TBL TO DOC_ROW ACROSS R2317
 */
void
ooaofooa_DOC_ROW_R2317_Link_has_first( ooaofooa_DOC_TBL * part, ooaofooa_DOC_ROW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_TBL_R2317 = part;
  part->DOC_ROW_R2317_has_first = form;
}

/*
 * UNRELATE DOC_TBL FROM DOC_ROW ACROSS R2317
 */
void
ooaofooa_DOC_ROW_R2317_Unlink_has_first( ooaofooa_DOC_TBL * part, ooaofooa_DOC_ROW * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_TBL_R2317 = 0;
  part->DOC_ROW_R2317_has_first = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_ROW_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_ROW * self = (ooaofooa_DOC_ROW *) instance;
  printf( "INSERT INTO DOC_ROW VALUES ( %d );\n",
    self->head );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      row  (DOC_ROW)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_ROW_container[ ooaofooa_DOC_ROW_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_ROW ooaofooa_DOC_ROW_instances[ ooaofooa_DOC_ROW_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_ROW_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_ROW_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_ROW_instances,
  sizeof( ooaofooa_DOC_ROW ), 0, ooaofooa_DOC_ROW_MAX_EXTENT_SIZE
  };


