/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BLK_class.c
 *
 * Class:       Extended Block  (TE_BLK)
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
ooaofooa_TE_BLK_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_BLK * self = (ooaofooa_TE_BLK *) instance;
  /* Initialize application analysis class attributes.  */
  self->Block_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->first_Statement_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->declaration = Escher_strcpy( self->declaration, avlstring[ 3 ] );
  self->deallocation = Escher_strcpy( self->deallocation, avlstring[ 4 ] );
  self->depth = Escher_atoi( avlstring[ 5 ] );
  self->indentation = Escher_strcpy( self->indentation, avlstring[ 6 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_BLK_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_BLK * ooaofooa_TE_BLK_instance = (ooaofooa_TE_BLK *) instance;
  ooaofooa_TE_SMT * ooaofooa_TE_SMTrelated_instance1 = ooaofooa_TE_SMT_AnyWhere1( ooaofooa_TE_BLK_instance->first_Statement_ID );
  if ( ooaofooa_TE_SMTrelated_instance1 ) {
    ooaofooa_TE_BLK_R2014_Link( ooaofooa_TE_SMTrelated_instance1, ooaofooa_TE_BLK_instance );
  }
  {
  ooaofooa_ACT_BLK * ooaofooa_ACT_BLKrelated_instance1 = (ooaofooa_ACT_BLK *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_BLK_instance->Block_ID ];
  if ( ooaofooa_ACT_BLKrelated_instance1 ) {
    ooaofooa_TE_BLK_R2016_Link( ooaofooa_ACT_BLKrelated_instance1, ooaofooa_TE_BLK_instance );
  }
  }
  {
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_BLK_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_BLK_R2011_Link_has_root( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_BLK_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_BLK *
ooaofooa_TE_BLK_AnyWhere1( Escher_UniqueID_t w_Block_ID )
{
  ooaofooa_TE_BLK * w; 
  Escher_Iterator_s iter_TE_BLK;
  Escher_IteratorReset( &iter_TE_BLK, &pG_ooaofooa_TE_BLK_extent.active );
  while ( (w = (ooaofooa_TE_BLK *) Escher_IteratorNext( &iter_TE_BLK )) != 0 ) {
    if ( w->Block_ID == w_Block_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_ABA TO TE_BLK ACROSS R2011
 */
void
ooaofooa_TE_BLK_R2011_Link_has_root( ooaofooa_TE_ABA * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AbaID = part->AbaID;
  form->TE_ABA_R2011 = part;
  part->TE_BLK_R2011_has_root = form;
}

/*
 * UNRELATE TE_ABA FROM TE_BLK ACROSS R2011
 */
void
ooaofooa_TE_BLK_R2011_Unlink_has_root( ooaofooa_TE_ABA * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->AbaID = 0;
  form->TE_ABA_R2011 = 0;
  part->TE_BLK_R2011_has_root = 0;
}

/*
 * RELATE TE_SMT TO TE_BLK ACROSS R2014
 */
void
ooaofooa_TE_BLK_R2014_Link( ooaofooa_TE_SMT * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_Statement_ID = part->Statement_ID;
  form->TE_SMT_R2014_has_first = part;
  part->TE_BLK_R2014 = form;
}

/*
 * UNRELATE TE_SMT FROM TE_BLK ACROSS R2014
 */
void
ooaofooa_TE_BLK_R2014_Unlink( ooaofooa_TE_SMT * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->first_Statement_ID = 0;
  form->TE_SMT_R2014_has_first = 0;
  part->TE_BLK_R2014 = 0;
}

/*
 * RELATE ACT_BLK TO TE_BLK ACROSS R2016
 */
void
ooaofooa_TE_BLK_R2016_Link( ooaofooa_ACT_BLK * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Block_ID = part->Block_ID;
  form->ACT_BLK_R2016 = part;
  part->TE_BLK_R2016 = form;
}

/*
 * UNRELATE ACT_BLK FROM TE_BLK ACROSS R2016
 */
void
ooaofooa_TE_BLK_R2016_Unlink( ooaofooa_ACT_BLK * part, ooaofooa_TE_BLK * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->ACT_BLK_R2016 = 0;
  part->TE_BLK_R2016 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_BLK_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_BLK * self = (ooaofooa_TE_BLK *) instance;
  printf( "INSERT INTO TE_BLK VALUES ( %ld,%ld,'%s','%s',%d,'%s',%ld );\n",
    ((long)self->Block_ID & ESCHER_IDDUMP_MASK),
    ((long)self->first_Statement_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->declaration ) ? self->declaration : "",
    ( 0 != self->deallocation ) ? self->deallocation : "",
    self->depth,
    ( 0 != self->indentation ) ? self->indentation : "",
    ((long)self->AbaID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_BLK_container[ ooaofooa_TE_BLK_MAX_EXTENT_SIZE ];
static ooaofooa_TE_BLK ooaofooa_TE_BLK_instances[ ooaofooa_TE_BLK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_BLK_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_BLK_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_BLK_instances,
  sizeof( ooaofooa_TE_BLK ), 0, ooaofooa_TE_BLK_MAX_EXTENT_SIZE
  };


