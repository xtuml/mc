/*----------------------------------------------------------------------------
 * File:  ooaofooa_DOC_SEC_class.c
 *
 * Class:       section  (DOC_SEC)
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
ooaofooa_DOC_SEC_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_DOC_SEC * self = (ooaofooa_DOC_SEC *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  self->nextID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  Escher_strcpy( self->title, avlstring[ 3 ] );
  Escher_strcpy( self->subtitle, avlstring[ 4 ] );
  self->level = Escher_atoi( avlstring[ 5 ] );
  Escher_strcpy( self->abstract, avlstring[ 6 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_DOC_SEC_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_DOC_SEC * ooaofooa_DOC_SEC_instance = (ooaofooa_DOC_SEC *) instance;
  {
  ooaofooa_DOC_SEC * ooaofooa_DOC_SECrelated_instance1 = (ooaofooa_DOC_SEC *) Escher_instance_cache[ (intptr_t) ooaofooa_DOC_SEC_instance->nextID ];
  if ( ooaofooa_DOC_SECrelated_instance1 ) {
    ooaofooa_DOC_SEC_R2306_Link_follows( ooaofooa_DOC_SECrelated_instance1, ooaofooa_DOC_SEC_instance );
  }
  }
  {
  }
  {
  }
  {
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_DOC_SEC *
ooaofooa_DOC_SEC_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_DOC_SEC * w; 
  Escher_Iterator_s iter_DOC_SEC;
  Escher_IteratorReset( &iter_DOC_SEC, &pG_ooaofooa_DOC_SEC_extent.active );
  while ( (w = (ooaofooa_DOC_SEC *) Escher_IteratorNext( &iter_DOC_SEC )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}

/*
 * instance operation:  render
 */
void
ooaofooa_DOC_SEC_op_render( ooaofooa_DOC_SEC * self, ooaofooa_DOC_DOC * p_doc_doc )
{
  ooaofooa_DOC_DOC * doc_doc;ooaofooa_DOC_SEC * doc_sec;ooaofooa_DOC_SEC * following_doc_sec=0;ooaofooa_DOC_SEC * child_doc_sec=0;ooaofooa_DOC_PAR * doc_par=0;ooaofooa_DOC_FOOT * doc_foot=0;ooaofooa_DOC_HEAD * doc_head=0;
  /* ASSIGN doc_sec = self */
  doc_sec = self;
  /* ASSIGN doc_doc = PARAM.doc_doc */
  doc_doc = p_doc_doc;
  /* LOG::LogInfo( message:( self.title + self.subtitle ) ) */
  LOG_LogInfo( Escher_stradd( self->title, self->subtitle ) );
  /* T::include( file:docbook/t.section_begin_no_abstract.h ) */
#include "docbook/t.section_begin_no_abstract.h"
  /* SELECT one doc_head RELATED BY self->DOC_HEAD[R2309] */
  doc_head = ( 0 != self ) ? self->DOC_HEAD_R2309 : 0;
  /* IF ( not_empty doc_head ) */
  if ( ( 0 != doc_head ) ) {
  }
  /* SELECT one doc_foot RELATED BY self->DOC_FOOT[R2308] */
  doc_foot = ( 0 != self ) ? self->DOC_FOOT_R2308 : 0;
  /* IF ( not_empty doc_foot ) */
  if ( ( 0 != doc_foot ) ) {
  }
  /* SELECT one doc_par RELATED BY self->DOC_PAR[R2305] */
  doc_par = ( 0 != self ) ? self->DOC_PAR_R2305_has_first : 0;
  /* IF ( not_empty doc_par ) */
  if ( ( 0 != doc_par ) ) {
    /* doc_par.render() */
    ooaofooa_DOC_PAR_op_render( doc_par );
  }
  /* SELECT one child_doc_sec RELATED BY self->DOC_SEC[R2307.has first child] */
  child_doc_sec = ( 0 != self ) ? self->DOC_SEC_R2307_has_first_child : 0;
  /* IF ( not_empty child_doc_sec ) */
  if ( ( 0 != child_doc_sec ) ) {
    /* child_doc_sec.render( doc_doc:doc_doc ) */
    ooaofooa_DOC_SEC_op_render( child_doc_sec,  doc_doc );
  }
  /* T::include( file:docbook/t.section_end.h ) */
#include "docbook/t.section_end.h"
  /* T::emit( file:doc_doc.filename ) */
  T_emit( doc_doc->filename );
  /* SELECT one following_doc_sec RELATED BY self->DOC_SEC[R2306.follows] */
  following_doc_sec = ( 0 != self ) ? self->DOC_SEC_R2306_follows : 0;
  /* IF ( not_empty following_doc_sec ) */
  if ( ( 0 != following_doc_sec ) ) {
    /* following_doc_sec.render( doc_doc:doc_doc ) */
    ooaofooa_DOC_SEC_op_render( following_doc_sec,  doc_doc );
  }

}

/*
 * class operation:  validate
 */
void
ooaofooa_DOC_SEC_op_validate()
{
  ooaofooa_DOC_SEC * doc_sec=0;Escher_ObjectSet_s doc_secs_space={0}; Escher_ObjectSet_s * doc_secs = &doc_secs_space;
  /* SELECT many doc_secs FROM INSTANCES OF DOC_SEC */
  Escher_CopySet( doc_secs, &pG_ooaofooa_DOC_SEC_extent.active );
  /* FOR EACH doc_sec IN doc_secs */
  { Escher_Iterator_s iterdoc_sec;
  ooaofooa_DOC_SEC * iidoc_sec;
  Escher_IteratorReset( &iterdoc_sec, doc_secs );
  while ( (iidoc_sec = (ooaofooa_DOC_SEC *)Escher_IteratorNext( &iterdoc_sec )) != 0 ) {
    doc_sec = iidoc_sec; {
    ooaofooa_DOC_SEC * predecessor_doc_sec=0;
    /* SELECT one predecessor_doc_sec RELATED BY doc_sec->DOC_SEC[R2306.precedes] */
    predecessor_doc_sec = ( 0 != doc_sec ) ? doc_sec->DOC_SEC_R2306_precedes : 0;
    /* IF ( empty predecessor_doc_sec ) */
    if ( ( 0 == predecessor_doc_sec ) ) {
    ooaofooa_DOC_SEC * parent_doc_sec=0;
    /* SELECT one parent_doc_sec RELATED BY doc_sec->DOC_SEC[R2307.has parent] */
    parent_doc_sec = ( 0 != doc_sec ) ? doc_sec->DOC_SEC_R2307_has_parent : 0;
    /* IF ( empty parent_doc_sec ) */
    if ( ( 0 == parent_doc_sec ) ) {
    ooaofooa_DOC_DOC * parent_doc_doc=0;
    /* SELECT one parent_doc_doc RELATED BY doc_sec->DOC_DOC[R2300] */
    parent_doc_doc = ( 0 != doc_sec ) ? doc_sec->DOC_DOC_R2300 : 0;
    /* IF ( empty parent_doc_doc ) */
    if ( ( 0 == parent_doc_doc ) ) {
    /* LOG::LogFailure( message:( ( !Section  + doc_sec.title ) +  is not linked. ) ) */
    LOG_LogFailure( Escher_stradd( Escher_stradd( "!Section ", doc_sec->title ), " is not linked." ) );
    }
    }
    }
  }}}
  Escher_ClearSet( doc_secs );

}

/*
 * class operation:  populate
 */
ooaofooa_DOC_SEC *
ooaofooa_DOC_SEC_op_populate( ooaofooa_DOC_SEC * p_parent_doc_sec, c_t p_subtitle[ESCHER_SYS_MAX_STRING_LEN], c_t p_title[ESCHER_SYS_MAX_STRING_LEN] )
{
  ooaofooa_DOC_SEC * parent_doc_sec;ooaofooa_DOC_SEC * doc_sec;
  /* CREATE OBJECT INSTANCE doc_sec OF DOC_SEC */
  doc_sec = (ooaofooa_DOC_SEC *) Escher_CreateInstance( ooaofooa_DOMAIN_ID, ooaofooa_DOC_SEC_CLASS_NUMBER );
  doc_sec->ID = (Escher_UniqueID_t) doc_sec;
  /* ASSIGN doc_sec.title = PARAM.title */
  Escher_strcpy( doc_sec->title, p_title );
  /* ASSIGN doc_sec.subtitle = PARAM.subtitle */
  Escher_strcpy( doc_sec->subtitle, p_subtitle );
  /* ASSIGN doc_sec.level = 1 */
  doc_sec->level = 1;
  /* ASSIGN parent_doc_sec = PARAM.parent_doc_sec */
  parent_doc_sec = p_parent_doc_sec;
  /* IF ( not_empty parent_doc_sec ) */
  if ( ( 0 != parent_doc_sec ) ) {
    ooaofooa_DOC_SEC * sibling_doc_sec=0;
    /* SELECT one sibling_doc_sec RELATED BY parent_doc_sec->DOC_SEC[R2307.has first child] */
    sibling_doc_sec = ( 0 != parent_doc_sec ) ? parent_doc_sec->DOC_SEC_R2307_has_first_child : 0;
    /* IF ( empty sibling_doc_sec ) */
    if ( ( 0 == sibling_doc_sec ) ) {
    /* RELATE doc_sec TO parent_doc_sec ACROSS R2307 */
    ooaofooa_DOC_SEC_R2307_Link_has_parent( doc_sec, parent_doc_sec );
    /* ASSIGN doc_sec.level = ( parent_doc_sec.level + 1 ) */
    doc_sec->level = ( parent_doc_sec->level + 1 );
    }
    else {
    ooaofooa_DOC_SEC * next_doc_sec;
    /* ASSIGN next_doc_sec = sibling_doc_sec */
    next_doc_sec = sibling_doc_sec;
    /* WHILE ( not_empty next_doc_sec ) */
    while ( ( 0 != next_doc_sec ) ) {
    /* ASSIGN sibling_doc_sec = next_doc_sec */
    sibling_doc_sec = next_doc_sec;
    /* SELECT one next_doc_sec RELATED BY sibling_doc_sec->DOC_SEC[R2306.follows] */
    next_doc_sec = ( 0 != sibling_doc_sec ) ? sibling_doc_sec->DOC_SEC_R2306_follows : 0;
    }
    /* RELATE sibling_doc_sec TO doc_sec ACROSS R2306 */
    ooaofooa_DOC_SEC_R2306_Link_follows( sibling_doc_sec, doc_sec );
    /* ASSIGN doc_sec.level = sibling_doc_sec.level */
    doc_sec->level = sibling_doc_sec->level;
    }
  }
  /* RETURN doc_sec */
  return doc_sec;
}


/*
 * RELATE DOC_DOC TO DOC_SEC ACROSS R2300
 */
void
ooaofooa_DOC_SEC_R2300_Link_has_first( ooaofooa_DOC_DOC * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2300 = part;
  part->DOC_SEC_R2300_has_first = form;
}

/*
 * UNRELATE DOC_DOC FROM DOC_SEC ACROSS R2300
 */
void
ooaofooa_DOC_SEC_R2300_Unlink_has_first( ooaofooa_DOC_DOC * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_DOC_R2300 = 0;
  part->DOC_SEC_R2300_has_first = 0;
}

/*
 * RELATE <left> DOC_SEC TO <right> DOC_SEC ACROSS R2306.'follows'
 */
void
ooaofooa_DOC_SEC_R2306_Link_follows( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = left->ID;
  left->DOC_SEC_R2306_follows = right; /* SR L1 */
  right->DOC_SEC_R2306_precedes = left; /* SR L2 */
}

/*
 * UNRELATE <left> DOC_SEC FROM <right> DOC_SEC ACROSS R2306.'follows'
 */
void
ooaofooa_DOC_SEC_R2306_Unlink_follows( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->nextID = 0;
  left->DOC_SEC_R2306_follows = 0; /* SR U1 */
  right->DOC_SEC_R2306_precedes = 0; /* SR U2 */
}

/*
 * RELATE <left> DOC_SEC TO <right> DOC_SEC ACROSS R2306.'precedes'
 */
void
ooaofooa_DOC_SEC_R2306_Link_precedes( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = right->ID;
  right->DOC_SEC_R2306_follows = left; /* SR L4 */
  left->DOC_SEC_R2306_precedes = right; /* SR L5 */
}

/*
 * UNRELATE <left> DOC_SEC FROM <right> DOC_SEC ACROSS R2306.'precedes'
 */
void
ooaofooa_DOC_SEC_R2306_Unlink_precedes( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->nextID = 0;
  right->DOC_SEC_R2306_follows = 0; /* SR U4 */
  left->DOC_SEC_R2306_precedes = 0; /* SR U5 */
}

/*
 * RELATE <left> DOC_SEC TO <right> DOC_SEC ACROSS R2307.'has first child'
 */
void
ooaofooa_DOC_SEC_R2307_Link_has_first_child( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_SEC_R2307_has_first_child = right; /* SR L1 */
  right->DOC_SEC_R2307_has_parent = left; /* SR L2 */
}

/*
 * UNRELATE <left> DOC_SEC FROM <right> DOC_SEC ACROSS R2307.'has first child'
 */
void
ooaofooa_DOC_SEC_R2307_Unlink_has_first_child( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  left->DOC_SEC_R2307_has_first_child = 0; /* SR U1 */
  right->DOC_SEC_R2307_has_parent = 0; /* SR U2 */
}

/*
 * RELATE <left> DOC_SEC TO <right> DOC_SEC ACROSS R2307.'has parent'
 */
void
ooaofooa_DOC_SEC_R2307_Link_has_parent( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_SEC_R2307_has_first_child = left; /* SR L4 */
  left->DOC_SEC_R2307_has_parent = right; /* SR L5 */
}

/*
 * UNRELATE <left> DOC_SEC FROM <right> DOC_SEC ACROSS R2307.'has parent'
 */
void
ooaofooa_DOC_SEC_R2307_Unlink_has_parent( ooaofooa_DOC_SEC * left, ooaofooa_DOC_SEC * right )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  right->DOC_SEC_R2307_has_first_child = 0; /* SR U4 */
  left->DOC_SEC_R2307_has_parent = 0; /* SR U5 */
}

/*
 * RELATE DOC_FOOT TO DOC_SEC ACROSS R2308
 */
void
ooaofooa_DOC_SEC_R2308_Link( ooaofooa_DOC_FOOT * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_FOOT_R2308 = part;
  part->DOC_SEC_R2308 = form;
}

/*
 * UNRELATE DOC_FOOT FROM DOC_SEC ACROSS R2308
 */
void
ooaofooa_DOC_SEC_R2308_Unlink( ooaofooa_DOC_FOOT * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_FOOT_R2308 = 0;
  part->DOC_SEC_R2308 = 0;
}

/*
 * RELATE DOC_HEAD TO DOC_SEC ACROSS R2309
 */
void
ooaofooa_DOC_SEC_R2309_Link( ooaofooa_DOC_HEAD * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_HEAD_R2309 = part;
  part->DOC_SEC_R2309 = form;
}

/*
 * UNRELATE DOC_HEAD FROM DOC_SEC ACROSS R2309
 */
void
ooaofooa_DOC_SEC_R2309_Unlink( ooaofooa_DOC_HEAD * part, ooaofooa_DOC_SEC * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->DOC_HEAD_R2309 = 0;
  part->DOC_SEC_R2309 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_DOC_SEC_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_DOC_SEC * self = (ooaofooa_DOC_SEC *) instance;
  printf( "INSERT INTO DOC_SEC VALUES ( %ld,%ld,'%s','%s',%d,'%s' );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    ((long)self->nextID & ESCHER_IDDUMP_MASK),
    self->title,
    self->subtitle,
    self->level,
    self->abstract );
}

/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      section  (DOC_SEC)
 * Component:  ooaofooa
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_DOC_SEC_container[ ooaofooa_DOC_SEC_MAX_EXTENT_SIZE ];
static ooaofooa_DOC_SEC ooaofooa_DOC_SEC_instances[ ooaofooa_DOC_SEC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_DOC_SEC_extent = {
  {0,0}, {0,0}, &ooaofooa_DOC_SEC_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_DOC_SEC_instances,
  sizeof( ooaofooa_DOC_SEC ), 0, ooaofooa_DOC_SEC_MAX_EXTENT_SIZE
  };


