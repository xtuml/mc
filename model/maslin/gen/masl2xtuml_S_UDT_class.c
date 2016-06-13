/*----------------------------------------------------------------------------
 * File:  masl2xtuml_S_UDT_class.c
 *
 * Class:       User Data Type  (S_UDT)
 * Component:   masl2xtuml
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "maslin_sys_types.h"
#include "LOG_bridge.h"
#include "STRING_bridge.h"
#include "TRACE_bridge.h"
#include "masl2xtuml_IDLINK_bridge.h"
#include "masl2xtuml_classes.h"

/*
 * Instance Loader (from string data).
 */
Escher_UniqueID_t
masl2xtuml_S_UDT_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_UniqueID_t return_identifier = 0;
  masl2xtuml_S_UDT * self = (masl2xtuml_S_UDT *) instance;
  /* Initialize application analysis class attributes.  */
  self->DT_ID = Escher_atoi( avlstring[ 1 ] );
  self->CDT_DT_ID = Escher_atoi( avlstring[ 2 ] );
  self->Gen_Type = Escher_atoi( avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void masl2xtuml_S_UDT_batch_relate( Escher_iHandle_t instance )
{
  masl2xtuml_S_UDT * masl2xtuml_S_UDT_instance = (masl2xtuml_S_UDT *) instance;
  masl2xtuml_S_DT * masl2xtuml_S_DTrelated_instance1 = masl2xtuml_S_DT_AnyWhere1( masl2xtuml_S_UDT_instance->DT_ID );
  if ( masl2xtuml_S_DTrelated_instance1 ) {
    masl2xtuml_S_UDT_R17_Link( masl2xtuml_S_DTrelated_instance1, masl2xtuml_S_UDT_instance );
  }
  {
  masl2xtuml_S_DT * masl2xtuml_S_DTrelated_instance1 = masl2xtuml_S_DT_AnyWhere1( masl2xtuml_S_UDT_instance->CDT_DT_ID );
  if ( masl2xtuml_S_DTrelated_instance1 ) {
    masl2xtuml_S_UDT_R18_Link_defines_domain_of( masl2xtuml_S_DTrelated_instance1, masl2xtuml_S_UDT_instance );
  }
  }
}


/*
 * RELATE S_DT TO S_UDT ACROSS R17
 */
void
masl2xtuml_S_UDT_R17_Link( masl2xtuml_S_DT * supertype, masl2xtuml_S_UDT * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "masl2xtuml_S_UDT_R17_Link" );
    return;
  }
  subtype->DT_ID = supertype->DT_ID;
  /* Optimized linkage for S_UDT->S_DT[R17] */
  subtype->S_DT_R17 = supertype;
  /* Optimized linkage for S_DT->S_UDT[R17] */
  supertype->R17_subtype = subtype;
  supertype->R17_object_id = masl2xtuml_S_UDT_CLASS_NUMBER;
}


/*
 * UNRELATE S_DT FROM S_UDT ACROSS R17
 */
void
masl2xtuml_S_UDT_R17_Unlink( masl2xtuml_S_DT * supertype, masl2xtuml_S_UDT * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "masl2xtuml_S_UDT_R17_Unlink" );
    return;
  }
  /* Note:  S_UDT->S_DT[R17] not navigated */
  supertype->R17_subtype = 0;
  supertype->R17_object_id = 0;
}


/*
 * RELATE S_DT TO S_UDT ACROSS R18
 */
void
masl2xtuml_S_UDT_R18_Link_defines_domain_of( masl2xtuml_S_DT * part, masl2xtuml_S_UDT * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "S_UDT", "masl2xtuml_S_UDT_R18_Link_defines_domain_of" );
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
masl2xtuml_S_UDT_instancedumper( Escher_iHandle_t instance )
{
  masl2xtuml_S_UDT * self = (masl2xtuml_S_UDT *) instance;
  if ( self->CDT_DT_ID < 0xba5e000 ) {
    printf( "INSERT INTO S_UDT VALUES ( %d,%d,%d );\n",
      self->DT_ID,
      self->CDT_DT_ID,
      self->Gen_Type );
  } else {
    printf( "INSERT INTO S_UDT VALUES ( %d,\"ba5eda7a-def5-0000-0000-0000000000%02x\",%d );\n",
      self->DT_ID,
      self->CDT_DT_ID - 0xba5ed00,
      self->Gen_Type );
  }
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s masl2xtuml_S_UDT_container[ masl2xtuml_S_UDT_MAX_EXTENT_SIZE ];
static masl2xtuml_S_UDT masl2xtuml_S_UDT_instances[ masl2xtuml_S_UDT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_masl2xtuml_S_UDT_extent = {
  {0,0}, {0,0}, &masl2xtuml_S_UDT_container[ 0 ],
  (Escher_iHandle_t) &masl2xtuml_S_UDT_instances,
  sizeof( masl2xtuml_S_UDT ), 0, masl2xtuml_S_UDT_MAX_EXTENT_SIZE
  };

