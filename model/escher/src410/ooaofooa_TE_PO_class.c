/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_PO_class.c
 *
 * Class:       Extended Port  (TE_PO)
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
ooaofooa_TE_PO_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_PO * self = (ooaofooa_TE_PO *) instance;
  /* Initialize application analysis class attributes.  */
  self->ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  return_identifier = self->ID;
  Escher_strcpy( self->Name, avlstring[ 2 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 3 ] );
  Escher_strcpy( self->InterfaceName, avlstring[ 4 ] );
  Escher_strcpy( self->PackageName, avlstring[ 5 ] );
  self->Provision = ( '0' != *avlstring[ 6 ] );
  self->polymorphic = ( '0' != *avlstring[ 7 ] );
  self->sibling = Escher_atoi( avlstring[ 8 ] );
  self->Order = Escher_atoi( avlstring[ 9 ] );
  self->te_cID = (Escher_iHandle_t) Escher_atoi( avlstring[ 10 ] );
  self->c_iId = (Escher_iHandle_t) Escher_atoi( avlstring[ 11 ] );
  self->c_poId = (Escher_iHandle_t) Escher_atoi( avlstring[ 12 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_PO_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_PO * ooaofooa_TE_PO_instance = (ooaofooa_TE_PO *) instance;
  ooaofooa_TE_C * ooaofooa_TE_Crelated_instance1 = (ooaofooa_TE_C *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PO_instance->te_cID ];
  if ( ooaofooa_TE_Crelated_instance1 ) {
    ooaofooa_TE_PO_R2005_Link( ooaofooa_TE_Crelated_instance1, ooaofooa_TE_PO_instance );
  }
  {
  ooaofooa_C_I * ooaofooa_C_Irelated_instance1 = ooaofooa_C_I_AnyWhere1( ooaofooa_TE_PO_instance->c_iId );
  if ( ooaofooa_C_Irelated_instance1 ) {
    ooaofooa_TE_PO_R2007_Link( ooaofooa_C_Irelated_instance1, ooaofooa_TE_PO_instance );
  }
  }
  {
  ooaofooa_C_PO * ooaofooa_C_POrelated_instance1 = (ooaofooa_C_PO *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_PO_instance->c_poId ];
  if ( ooaofooa_C_POrelated_instance1 ) {
    ooaofooa_TE_PO_R2044_Link( ooaofooa_C_POrelated_instance1, ooaofooa_TE_PO_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_TE_PO *
ooaofooa_TE_PO_AnyWhere1( Escher_UniqueID_t w_ID )
{
  ooaofooa_TE_PO * w; 
  Escher_Iterator_s iter_TE_PO;
  Escher_IteratorReset( &iter_TE_PO, &pG_ooaofooa_TE_PO_extent.active );
  while ( (w = (ooaofooa_TE_PO *) Escher_IteratorNext( &iter_TE_PO )) != 0 ) {
    if ( w->ID == w_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE TE_C TO TE_PO ACROSS R2005
 */
void
ooaofooa_TE_PO_R2005_Link( ooaofooa_TE_C * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = part->ID;
  form->TE_C_R2005 = part;
  Escher_SetInsertElement( &part->TE_PO_R2005, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_C FROM TE_PO ACROSS R2005
 */
void
ooaofooa_TE_PO_R2005_Unlink( ooaofooa_TE_C * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->te_cID = 0;
  form->TE_C_R2005 = 0;
  Escher_SetRemoveElement( &part->TE_PO_R2005, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_I TO TE_PO ACROSS R2007
 */
void
ooaofooa_TE_PO_R2007_Link( ooaofooa_C_I * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_iId = part->Id;
  form->C_I_R2007 = part;
  Escher_SetInsertElement( &part->TE_PO_R2007, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE C_I FROM TE_PO ACROSS R2007
 */
void
ooaofooa_TE_PO_R2007_Unlink( ooaofooa_C_I * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_iId = 0;
  form->C_I_R2007 = 0;
  Escher_SetRemoveElement( &part->TE_PO_R2007, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE C_PO TO TE_PO ACROSS R2044
 */
void
ooaofooa_TE_PO_R2044_Link( ooaofooa_C_PO * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_poId = part->Id;
  form->C_PO_R2044 = part;
  part->TE_PO_R2044 = form;
}

/*
 * UNRELATE C_PO FROM TE_PO ACROSS R2044
 */
void
ooaofooa_TE_PO_R2044_Unlink( ooaofooa_C_PO * part, ooaofooa_TE_PO * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->c_poId = 0;
  form->C_PO_R2044 = 0;
  part->TE_PO_R2044 = 0;
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_PO_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_PO * self = (ooaofooa_TE_PO *) instance;
  printf( "INSERT INTO TE_PO VALUES ( %ld,'%s','%s','%s','%s',%d,%d,%d,%d,%ld,%ld,%ld );\n",
    ((long)self->ID & ESCHER_IDDUMP_MASK),
    self->Name,
    self->GeneratedName,
    self->InterfaceName,
    self->PackageName,
    self->Provision,
    self->polymorphic,
    self->sibling,
    self->Order,
    ((long)self->te_cID & ESCHER_IDDUMP_MASK),
    ((long)self->c_iId & ESCHER_IDDUMP_MASK),
    ((long)self->c_poId & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_PO_container[ ooaofooa_TE_PO_MAX_EXTENT_SIZE ];
static ooaofooa_TE_PO ooaofooa_TE_PO_instances[ ooaofooa_TE_PO_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_PO_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_PO_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_PO_instances,
  sizeof( ooaofooa_TE_PO ), 0, ooaofooa_TE_PO_MAX_EXTENT_SIZE
  };


