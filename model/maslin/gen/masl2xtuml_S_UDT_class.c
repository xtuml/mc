/*----------------------------------------------------------------------------
 * File:  maslin_S_UDT_class.c
 *
 * Class:       User Data Type  (S_UDT)
 * Component:   maslin
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "maslin_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_iHandle_t
maslin_S_UDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  maslin_S_UDT * self = (maslin_S_UDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->CDT_DT_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Gen_Type = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void maslin_S_UDT_batch_relate( Escher_iHandle_t instance )
{
  maslin_S_UDT * maslin_S_UDT_instance = (maslin_S_UDT *) instance;
  maslin_S_DT * maslin_S_DTrelated_instance1 = maslin_S_DT_AnyWhere1( maslin_S_UDT_instance->DT_ID );
  if ( maslin_S_DTrelated_instance1 ) {
    maslin_S_UDT_R17_Link( maslin_S_DTrelated_instance1, maslin_S_UDT_instance );
  }
  {
  maslin_S_DT * maslin_S_DTrelated_instance1 = maslin_S_DT_AnyWhere1( maslin_S_UDT_instance->CDT_DT_ID );
  if ( maslin_S_DTrelated_instance1 ) {
    maslin_S_UDT_R18_Link_defines_domain_of( maslin_S_DTrelated_instance1, maslin_S_UDT_instance );
  }
  }
}


/*
 * RELATE S_DT TO S_UDT ACROSS R17
 */
void
maslin_S_UDT_R17_Link( maslin_S_DT * supertype, maslin_S_UDT * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "maslin_S_UDT_R17_Link" );
    return;
  }
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_UDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_UDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = maslin_S_UDT_CLASS_NUMBER;
}


/*
 * RELATE S_DT TO S_UDT ACROSS R18
 */
void
maslin_S_UDT_R18_Link_defines_domain_of( maslin_S_DT * part, maslin_S_UDT * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "maslin_S_UDT_R18_Link_defines_domain_of" );
    return;
  }
  form->CDT_DT_ID = part->DT_ID;
  /* Note:  S_UDT->S_DT[R18] not navigated */
  /* Note:  S_DT->S_UDT[R18] not navigated */
}
/*
 * Dump instances in SQL format.
 */
void
maslin_S_UDT_instancedumper( Escher_iHandle_t instance )
{
  maslin_S_UDT * self = (maslin_S_UDT *) instance;
  /* Orig
  printf( "INSERT INTO S_UDT VALUES ( %ld,%ld,%d );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
    ((long)self->CDT_DT_ID & ESCHER_IDDUMP_MASK),
    self->Gen_Type );*/
  // Force the parent type to be masltype
  printf( "INSERT INTO S_UDT VALUES ( %ld,\"%s\",%d );\n",
    ((long)self->DT_ID & ESCHER_IDDUMP_MASK),
	"ba5eda7a-def5-0000-0000-000000000011",
    self->Gen_Type );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s maslin_S_UDT_container[ maslin_S_UDT_MAX_EXTENT_SIZE ];
static maslin_S_UDT maslin_S_UDT_instances[ maslin_S_UDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_maslin_S_UDT_extent = {
  {0,0}, {0,0}, &maslin_S_UDT_container[ 0 ],
  (Escher_iHandle_t) &maslin_S_UDT_instances,
  sizeof( maslin_S_UDT ), 0, maslin_S_UDT_MAX_EXTENT_SIZE
  };

