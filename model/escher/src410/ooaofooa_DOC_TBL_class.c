/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_TBL_class.c
 *
 * Class:       table  (DOC_TBL)
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
ooaofooa_DOC_TBL_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_TBL * self = (ooaofooa_DOC_TBL *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->title, avlstring[ 1 ] );
  self->num_cols = Escher_atoi( avlstring[ 2 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_TBL_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_TBL * ooaofooa_DOC_TBL_instance = (ooaofooa_DOC_TBL *) instance;
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_TBL_op_render( ooaofooa_DOC_TBL * self)
{
  ooaofooa_DOC_TBL * doc_tbl=0;ooaofooa_DOC_ROW * doc_row=0;
  /* SELECT any doc_tbl FROM INSTANCES OF DOC_TBL */
  doc_tbl = (ooaofooa_DOC_TBL *) Escher_SetGetAny( &pG_ooaofooa_DOC_TBL_extent.active );
  /* ASSIGN doc_tbl = self */
  doc_tbl = self;
  /* T::include( file:docbook/t.tablebegin.h ) */
#include "docbook/t.tablebegin.h"
  /* SELECT one doc_row RELATED BY self->DOC_ROW[R2317] */
  doc_row = ( 0 != self ) ? self->DOC_ROW_R2317_has_first : 0;
  /* IF ( not_empty doc_row ) */
  if ( ( 0 != doc_row ) ) {
    /* doc_row.render() */
    ooaofooa_DOC_ROW_op_render( doc_row );
  }
  /* T::include( file:docbook/t.tableend.h ) */
#include "docbook/t.tableend.h"

}

/*
 * class operation:  populate
 */
ooaofooa_DOC_TBL *
ooaofooa_DOC_TBL_op_populate( ooaofooa_DOC_PAR * p_doc_par, const i_t p_num_cols, c_t p_title[ESCHER_SYS_MAX_STRING_LEN] )
{
  ooaofooa_DOC_PAR * doc_par;ooaofooa_DOC_TBL * doc_tbl;
  /* ASSIGN doc_par = PARAM.doc_par */
  doc_par = p_doc_par;
  /* CREATE OBJECT INSTANCE doc_tbl OF DOC_TBL */
  doc_tbl = (ooaofooa_DOC_TBL *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_TBL_CLASS_NUMBER );
  /* RELATE doc_tbl TO doc_par ACROSS R2315 */
  ooaofooa_DOC_TBL_R2315_Link_has( doc_par, doc_tbl );
  /* ASSIGN doc_tbl.title = PARAM.title */
  Escher_strcpy( doc_tbl->title, p_title );
  /* ASSIGN doc_tbl.num_cols = PARAM.num_cols */
  doc_tbl->num_cols = p_num_cols;
  /* RETURN doc_tbl */
  return doc_tbl;
}

/*
 * class operation:  validate
 */
void
ooaofooa_DOC_TBL_op_validate()
{
  ooaofooa_DOC_TBL * doc_tbl=0;Escher_ObjectSet_s doc_tbls_space={0}; Escher_ObjectSet_s * doc_tbls = &doc_tbls_space;
  /* SELECT many doc_tbls FROM INSTANCES OF DOC_TBL */
  Escher_CopySet( doc_tbls, &pG_ooaofooa_DOC_TBL_extent.active );
  /* FOR EACH doc_tbl IN doc_tbls */
  { Escher_Iterator_s iterdoc_tbl;
  ooaofooa_DOC_TBL * iidoc_tbl;
  Escher_IteratorReset( &iterdoc_tbl, doc_tbls );
  while ( (iidoc_tbl = (ooaofooa_DOC_TBL *)Escher_IteratorNext( &iterdoc_tbl )) != 0 ) {
    doc_tbl = iidoc_tbl; {
    ooaofooa_DOC_ROW * doc_row=0;ooaofooa_DOC_PAR * parent_doc_par=0;
    /* SELECT one parent_doc_par RELATED BY doc_tbl->DOC_PAR[R2315] */
    parent_doc_par = ( 0 != doc_tbl ) ? doc_tbl->DOC_PAR_R2315 : 0;
    /* SELECT one doc_row RELATED BY doc_tbl->DOC_ROW[R2317] */
    doc_row = ( 0 != doc_tbl ) ? doc_tbl->DOC_ROW_R2317_has_first : 0;
    /* IF ( ( empty parent_doc_par or empty doc_row ) ) */
    if ( ( ( 0 == parent_doc_par ) || ( 0 == doc_row ) ) ) {
    /* LOG::LogFailure( message:( ( !Table  + doc_tbl.title ) +  is not linked. ) ) */
    LOG_LogFailure( Escher_stradd( Escher_stradd( "!Table ", doc_tbl->title ), " is not linked." ) );
    }
  }}}
  Escher_ClearSet( doc_tbls );

}


/*
 * RELATE DOC_PAR TO DOC_TBL ACROSS R2315
 */
void
ooaofooa_DOC_TBL_R2315_Link_has( ooaofooa_DOC_PAR * part, ooaofooa_DOC_TBL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2315 = part;
  part->DOC_TBL_R2315_has = form;
}

/*
 * UNRELATE DOC_PAR FROM DOC_TBL ACROSS R2315
 */
void
ooaofooa_DOC_TBL_R2315_Unlink_has( ooaofooa_DOC_PAR * part, ooaofooa_DOC_TBL * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_PAR_R2315 = 0;
  part->DOC_TBL_R2315_has = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_TBL_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_TBL * self = (ooaofooa_DOC_TBL *) instance;
  printf( "INSERT INTO DOC_TBL VALUES ( '%s',%d );\n",
    self->title,
    self->num_cols );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      table  (DOC_TBL)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_TBL_container[ ooaofooa_DOC_TBL_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_TBL ooaofooa_DOC_TBL_instances[ ooaofooa_DOC_TBL_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_TBL_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_TBL_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_TBL_instances,
  sizeof( ooaofooa_DOC_TBL ), 0, ooaofooa_DOC_TBL_MAX_EXTENT_SIZE
  };


