/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_PAR_class.c
 *
 * Class:       paragraph  (DOC_PAR)
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
ooaofooa_DOC_PAR_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_PAR * self = (ooaofooa_DOC_PAR *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->sectionID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->text = Escher_strcpy( self->text, avlstring[ 3 ] );
  self->ptext = Escher_strcpy( self->ptext, avlstring[ 4 ] );
  self->formatted = ( '0' != *avlstring[ 5 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_PAR_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_PAR * ooaofooa_DOC_PAR_instance = (ooaofooa_DOC_PAR *) instance;
  ooaofooa_DOC_SEC * ooaofooa_DOC_SECrelated_instance1 = (ooaofooa_DOC_SEC *) Escher_instance_cache[ (intptr_t) ooaofooa_DOC_PAR_instance->sectionID ];
  if ( ooaofooa_DOC_SECrelated_instance1 ) {
    ooaofooa_DOC_PAR_R2305_Link_has_first( ooaofooa_DOC_SECrelated_instance1, ooaofooa_DOC_PAR_instance );
  }
  {
  }
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_PAR_op_render( ooaofooa_DOC_PAR * self)
{
  ooaofooa_DOC_PAR * doc_par=0;ooaofooa_DOC_IMG * doc_img=0;ooaofooa_DOC_FIG * doc_fig=0;ooaofooa_DOC_TBL * doc_tbl=0;
  /* SELECT any doc_par FROM INSTANCES OF DOC_PAR */
  doc_par = (ooaofooa_DOC_PAR *) Escher_SetGetAny( &pG_ooaofooa_DOC_PAR_extent.active );
  /* ASSIGN doc_par = self */
  doc_par = self;
  /* IF ( self.formatted ) */
  if ( self->formatted ) {
    /* T::include( file:docbook/t.paragraph_begin.h ) */
#include "docbook/t.paragraph_begin.h"
  }
  else {
    /* T::include( file:docbook/t.programlistingbegin.h ) */
#include "docbook/t.programlistingbegin.h"
  }
  /* SELECT one doc_tbl RELATED BY self->DOC_TBL[R2315] */
  doc_tbl = ( 0 != self ) ? self->DOC_TBL_R2315_has : 0;
  /* IF ( not_empty doc_tbl ) */
  if ( ( 0 != doc_tbl ) ) {
    /* doc_tbl.render() */
    ooaofooa_DOC_TBL_op_render( doc_tbl );
  }
  /* SELECT one doc_fig RELATED BY self->DOC_FIG[R2316] */
  doc_fig = ( 0 != self ) ? self->DOC_FIG_R2316_has : 0;
  /* IF ( not_empty doc_fig ) */
  if ( ( 0 != doc_fig ) ) {
    /* doc_fig.render() */
    ooaofooa_DOC_FIG_op_render( doc_fig );
  }
  /* SELECT one doc_img RELATED BY self->DOC_IMG[R2319] */
  doc_img = ( 0 != self ) ? self->DOC_IMG_R2319 : 0;
  /* IF ( not_empty doc_img ) */
  if ( ( 0 != doc_img ) ) {
    /* doc_img.render() */
    ooaofooa_DOC_IMG_op_render( doc_img );
  }
  /* IF ( self.formatted ) */
  if ( self->formatted ) {
    /* T::include( file:docbook/t.paragraph_end.h ) */
#include "docbook/t.paragraph_end.h"
  }
  else {
    /* T::include( file:docbook/t.programlistingend.h ) */
#include "docbook/t.programlistingend.h"
  }
  /* SELECT one doc_par RELATED BY self->DOC_PAR[R2314.follows] */
  doc_par = ( 0 != self ) ? self->DOC_PAR_R2314_follows : 0;
  /* IF ( not_empty doc_par ) */
  if ( ( 0 != doc_par ) ) {
    /* doc_par.render() */
    ooaofooa_DOC_PAR_op_render( doc_par );
  }

}

/*
 * class operation:  populate
 */
ooaofooa_DOC_PAR *
ooaofooa_DOC_PAR_op_populate( ooaofooa_DOC_SEC * p_doc_sec, ooaofooa_DOC_PAR * p_predecessor, c_t * p_text )
{
  ooaofooa_DOC_SEC * parent_doc_sec;ooaofooa_DOC_PAR * predecessor;ooaofooa_DOC_PAR * doc_par;
  /* ASSIGN predecessor = PARAM.predecessor */
  predecessor = p_predecessor;
  /* ASSIGN parent_doc_sec = PARAM.doc_sec */
  parent_doc_sec = p_doc_sec;
  /* CREATE OBJECT INSTANCE doc_par OF DOC_PAR */
  doc_par = (ooaofooa_DOC_PAR *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_PAR_CLASS_NUMBER );
  doc_par->ID = (Escher_UniqueID_t) doc_par;
  /* ASSIGN doc_par.text = PARAM.text */
  doc_par->text = Escher_strcpy( doc_par->text, p_text );
  /* ASSIGN doc_par.ptext = PARAM.text */
  doc_par->ptext = Escher_strcpy( doc_par->ptext, p_text );
  /* ASSIGN doc_par.formatted = TRUE */
  doc_par->formatted = TRUE;
  /* IF ( not_empty predecessor ) */
  if ( ( 0 != predecessor ) ) {
    /* RELATE predecessor TO doc_par ACROSS R2314 */
    ooaofooa_DOC_PAR_R2314_Link_follows( predecessor, doc_par );
  }
  /* IF ( not_empty parent_doc_sec ) */
  if ( ( 0 != parent_doc_sec ) ) {
    /* RELATE doc_par TO parent_doc_sec ACROSS R2305 */
    ooaofooa_DOC_PAR_R2305_Link_has_first( parent_doc_sec, doc_par );
  }
  /* RETURN doc_par */
  {ooaofooa_DOC_PAR * xtumlOALrv = doc_par;
  return xtumlOALrv;}

}

/*
 * class operation:  validate
 */
void
ooaofooa_DOC_PAR_op_validate()
{
  ooaofooa_DOC_PAR * doc_par=0;Escher_ObjectSet_s doc_pars_space={0}; Escher_ObjectSet_s * doc_pars = &doc_pars_space;
  /* SELECT many doc_pars FROM INSTANCES OF DOC_PAR */
  Escher_CopySet( doc_pars, &pG_ooaofooa_DOC_PAR_extent.active );
  /* FOR EACH doc_par IN doc_pars */
  { Escher_Iterator_s iterdoc_par;
  ooaofooa_DOC_PAR * iidoc_par;
  Escher_IteratorReset( &iterdoc_par, doc_pars );
  while ( (iidoc_par = (ooaofooa_DOC_PAR *)Escher_IteratorNext( &iterdoc_par )) != 0 ) {
    doc_par = iidoc_par; {
    ooaofooa_DOC_CELL * doc_cell=0;
    /* SELECT one doc_cell RELATED BY doc_par->DOC_CELL[R2318] */
    doc_cell = ( 0 != doc_par ) ? doc_par->DOC_CELL_R2318 : 0;
    /* IF ( empty doc_cell ) */
    if ( ( 0 == doc_cell ) ) {
      ooaofooa_DOC_PAR * predecessor_doc_par=0;
      /* SELECT one predecessor_doc_par RELATED BY doc_par->DOC_PAR[R2314.precedes] */
      predecessor_doc_par = ( 0 != doc_par ) ? doc_par->DOC_PAR_R2314_precedes : 0;
      /* IF ( empty predecessor_doc_par ) */
      if ( ( 0 == predecessor_doc_par ) ) {
        ooaofooa_DOC_SEC * parent_doc_sec=0;
        /* SELECT one parent_doc_sec RELATED BY doc_par->DOC_SEC[R2305] */
        parent_doc_sec = ( 0 != doc_par ) ? doc_par->DOC_SEC_R2305 : 0;
        /* IF ( empty parent_doc_sec ) */
        if ( ( 0 == parent_doc_sec ) ) {
          /* LOG::LogFailure( message:( ( !Paragraph  + doc_par.text ) +  is not linked. ) ) */
          LOG_LogFailure( Escher_stradd( Escher_stradd( "!Paragraph ", doc_par->text ), " is not linked." ) );
        }
      }
    }
  }}}
  Escher_ClearSet( doc_pars );

}


/*
 * RELATE DOC_SEC TO DOC_PAR ACROSS R2305
 */
void
ooaofooa_DOC_PAR_R2305_Link_has_first( ooaofooa_DOC_SEC * part, ooaofooa_DOC_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->sectionID = part->ID;
  form->DOC_SEC_R2305 = part;
  part->DOC_PAR_R2305_has_first = form;
}

/*
 * UNRELATE DOC_SEC FROM DOC_PAR ACROSS R2305
 */
void
ooaofooa_DOC_PAR_R2305_Unlink_has_first( ooaofooa_DOC_SEC * part, ooaofooa_DOC_PAR * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->sectionID = 0;
  form->DOC_SEC_R2305 = 0;
  part->DOC_PAR_R2305_has_first = 0;
}

/*
 * RELATE <left> DOC_PAR TO <right> DOC_PAR ACROSS R2314.'follows'
 */
void
ooaofooa_DOC_PAR_R2314_Link_follows( ooaofooa_DOC_PAR * left, ooaofooa_DOC_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_PAR_R2314_follows = right; /* SR L1 */
  right->DOC_PAR_R2314_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> DOC_PAR FROM <right> DOC_PAR ACROSS R2314.'follows'
 */
void
ooaofooa_DOC_PAR_R2314_Unlink_follows( ooaofooa_DOC_PAR * left, ooaofooa_DOC_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_PAR_R2314_follows = 0; /* SR U1 */
  right->DOC_PAR_R2314_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> DOC_PAR TO <right> DOC_PAR ACROSS R2314.'precedes'
 */
void
ooaofooa_DOC_PAR_R2314_Link_precedes( ooaofooa_DOC_PAR * left, ooaofooa_DOC_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_PAR_R2314_follows = left; /* SR L4 */
  left->DOC_PAR_R2314_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> DOC_PAR FROM <right> DOC_PAR ACROSS R2314.'precedes'
 */
void
ooaofooa_DOC_PAR_R2314_Unlink_precedes( ooaofooa_DOC_PAR * left, ooaofooa_DOC_PAR * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_PAR_R2314_follows = 0; /* SR U4 */
  left->DOC_PAR_R2314_precedes = 0; /* SR U5 */
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_PAR_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_PAR * self = (ooaofooa_DOC_PAR *) instance;
  printf( "INSERT INTO DOC_PAR VALUES ( %ld,%ld,'%s','%s',%d );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ((long)self->sectionID & ESCHER_IDDUMP_MASK),
    ( 0 != self->text ) ? self->text : "",
    ( 0 != self->ptext ) ? self->ptext : "",
    self->formatted );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      paragraph  (DOC_PAR)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_PAR_container[ ooaofooa_DOC_PAR_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_PAR ooaofooa_DOC_PAR_instances[ ooaofooa_DOC_PAR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_PAR_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_PAR_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_PAR_instances,
  sizeof( ooaofooa_DOC_PAR ), 0, ooaofooa_DOC_PAR_MAX_EXTENT_SIZE
  };


