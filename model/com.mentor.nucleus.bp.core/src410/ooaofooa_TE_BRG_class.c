/*----------------------------------------------------------------------------
 * File:  ooaofooa_TE_BRG_class.c
 *
 * Class:       Extended Bridge  (TE_BRG)
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
ooaofooa_TE_BRG_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_TE_BRG * self = (ooaofooa_TE_BRG *) instance;
  /* Initialize application analysis class attributes.  */
  Escher_strcpy( self->EEname, avlstring[ 1 ] );
  Escher_strcpy( self->EEkeyletters, avlstring[ 2 ] );
  Escher_strcpy( self->Name, avlstring[ 3 ] );
  Escher_strcpy( self->GeneratedName, avlstring[ 4 ] );
  self->AbaID = (Escher_iHandle_t) Escher_atoi( avlstring[ 5 ] );
  self->Brg_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 6 ] );
  self->EE_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 7 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_TE_BRG_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_TE_BRG * ooaofooa_TE_BRG_instance = (ooaofooa_TE_BRG *) instance;
  ooaofooa_TE_EE * ooaofooa_TE_EErelated_instance1 = ooaofooa_TE_EE_AnyWhere1( ooaofooa_TE_BRG_instance->EE_ID );
  if ( ooaofooa_TE_EErelated_instance1 ) {
    ooaofooa_TE_BRG_R2089_Link( ooaofooa_TE_EErelated_instance1, ooaofooa_TE_BRG_instance );
  }
  {
  ooaofooa_TE_ABA * ooaofooa_TE_ABArelated_instance1 = (ooaofooa_TE_ABA *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_BRG_instance->AbaID ];
  if ( ooaofooa_TE_ABArelated_instance1 ) {
    ooaofooa_TE_BRG_R2010_Link( ooaofooa_TE_ABArelated_instance1, ooaofooa_TE_BRG_instance );
  }
  }
  {
  ooaofooa_S_BRG * ooaofooa_S_BRGrelated_instance1 = (ooaofooa_S_BRG *) Escher_instance_cache[ (intptr_t) ooaofooa_TE_BRG_instance->Brg_ID ];
  if ( ooaofooa_S_BRGrelated_instance1 ) {
    ooaofooa_TE_BRG_R2025_Link( ooaofooa_S_BRGrelated_instance1, ooaofooa_TE_BRG_instance );
  }
  }
}


/*
 * RELATE TE_ABA TO TE_BRG ACROSS R2010
 */
void
ooaofooa_TE_BRG_R2010_Link( ooaofooa_TE_ABA * supertype, ooaofooa_TE_BRG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->AbaID = supertype->AbaID;
  /* Optimized linkage for TE_BRG->TE_ABA[R2010] */
  subtype->TE_ABA_R2010 = supertype;
  /* Optimized linkage for TE_ABA->TE_BRG[R2010] */
  supertype->R2010_subtype = subtype;
  supertype->R2010_object_id = ooaofooa_TE_BRG_CLASS_NUMBER;
}


/*
 * UNRELATE TE_ABA FROM TE_BRG ACROSS R2010
 */
void
ooaofooa_TE_BRG_R2010_Unlink( ooaofooa_TE_ABA * supertype, ooaofooa_TE_BRG * subtype )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  subtype->TE_ABA_R2010 = 0;
  supertype->R2010_subtype = 0;
  supertype->R2010_object_id = 0;
}


/*
 * RELATE S_BRG TO TE_BRG ACROSS R2025
 */
void
ooaofooa_TE_BRG_R2025_Link( ooaofooa_S_BRG * part, ooaofooa_TE_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = part->Brg_ID;
  form->S_BRG_R2025 = part;
  part->TE_BRG_R2025 = form;
}

/*
 * UNRELATE S_BRG FROM TE_BRG ACROSS R2025
 */
void
ooaofooa_TE_BRG_R2025_Unlink( ooaofooa_S_BRG * part, ooaofooa_TE_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Brg_ID = 0;
  form->S_BRG_R2025 = 0;
  part->TE_BRG_R2025 = 0;
}

/*
 * RELATE TE_EE TO TE_BRG ACROSS R2089
 */
void
ooaofooa_TE_BRG_R2089_Link( ooaofooa_TE_EE * part, ooaofooa_TE_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = part->EE_ID;
  form->TE_EE_R2089 = part;
  Escher_SetInsertElement( &part->TE_BRG_R2089, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE TE_EE FROM TE_BRG ACROSS R2089
 */
void
ooaofooa_TE_BRG_R2089_Unlink( ooaofooa_TE_EE * part, ooaofooa_TE_BRG * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->EE_ID = 0;
  form->TE_EE_R2089 = 0;
  Escher_SetRemoveElement( &part->TE_BRG_R2089, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_TE_BRG_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_TE_BRG * self = (ooaofooa_TE_BRG *) instance;
  printf( "INSERT INTO TE_BRG VALUES ( '%s','%s','%s','%s',%ld,%ld,%ld );\n",
    self->EEname,
    self->EEkeyletters,
    self->Name,
    self->GeneratedName,
    ((long)self->AbaID & ESCHER_IDDUMP_MASK),
    ((long)self->Brg_ID & ESCHER_IDDUMP_MASK),
    ((long)self->EE_ID & ESCHER_IDDUMP_MASK) );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_TE_BRG_container[ ooaofooa_TE_BRG_MAX_EXTENT_SIZE ];
static ooaofooa_TE_BRG ooaofooa_TE_BRG_instances[ ooaofooa_TE_BRG_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_TE_BRG_extent = {
  {0,0}, {0,0}, &ooaofooa_TE_BRG_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_TE_BRG_instances,
  sizeof( ooaofooa_TE_BRG ), 0, ooaofooa_TE_BRG_MAX_EXTENT_SIZE
  };


