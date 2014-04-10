/*----------------------------------------------------------------------------
 * File:  ooaofooa_I_LIP_class.c
 *
 * Class:       Link Participation  (I_LIP)
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
ooaofooa_I_LIP_instanceloader( Escher_iHandle_t instance, const c_t * avlstring[] )
{
  Escher_iHandle_t return_identifier = 0;
  ooaofooa_I_LIP * self = (ooaofooa_I_LIP *) instance;
  /* Initialize application analysis class attributes.  */
  self->Rel_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 1 ] );
  self->Inst_ID = (Escher_iHandle_t) Escher_atoi( avlstring[ 2 ] );
  self->Label = Escher_strcpy( self->Label, avlstring[ 3 ] );
  return return_identifier;
}

/*
 * Select any where using referential/identifying attribute set.
 * If not_empty, relate this instance to the selected instance.
 */
void ooaofooa_I_LIP_batch_relate( Escher_iHandle_t instance )
{
  ooaofooa_I_LIP * ooaofooa_I_LIP_instance = (ooaofooa_I_LIP *) instance;
  ooaofooa_I_INS * ooaofooa_I_INSrelated_instance1 = (ooaofooa_I_INS *) Escher_instance_cache[ (intptr_t) ooaofooa_I_LIP_instance->Inst_ID ];
  if ( ooaofooa_I_INSrelated_instance1 ) {
    ooaofooa_I_LIP_R2958_Link( ooaofooa_I_INSrelated_instance1, ooaofooa_I_LIP_instance );
  }
  {
  ooaofooa_R_REL * ooaofooa_R_RELrelated_instance1 = ooaofooa_R_REL_AnyWhere1( ooaofooa_I_LIP_instance->Rel_ID );
  if ( ooaofooa_R_RELrelated_instance1 ) {
    ooaofooa_I_LIP_R2959_Link( ooaofooa_R_RELrelated_instance1, ooaofooa_I_LIP_instance );
  }
  }
}

/*
 * Scan the extent for a matching instance.
 */
ooaofooa_I_LIP *
ooaofooa_I_LIP_AnyWhere1( Escher_UniqueID_t w_Rel_ID, Escher_UniqueID_t w_Inst_ID )
{
  ooaofooa_I_LIP * w; 
  Escher_Iterator_s iter_I_LIP;
  Escher_IteratorReset( &iter_I_LIP, &pG_ooaofooa_I_LIP_extent.active );
  while ( (w = (ooaofooa_I_LIP *) Escher_IteratorNext( &iter_I_LIP )) != 0 ) {
    if ( w->Rel_ID == w_Rel_ID && w->Inst_ID == w_Inst_ID ) {
      return w;
    }
  }
  return 0;
}


/*
 * RELATE I_INS TO I_LIP ACROSS R2958
 */
void
ooaofooa_I_LIP_R2958_Link( ooaofooa_I_INS * part, ooaofooa_I_LIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Inst_ID = part->Inst_ID;
  form->I_INS_R2958 = part;
  Escher_SetInsertElement( &part->I_LIP_R2958, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE I_INS FROM I_LIP ACROSS R2958
 */
void
ooaofooa_I_LIP_R2958_Unlink( ooaofooa_I_INS * part, ooaofooa_I_LIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->I_INS_R2958 = 0;
  Escher_SetRemoveElement( &part->I_LIP_R2958, (Escher_ObjectSet_s *) form );
}

/*
 * RELATE R_REL TO I_LIP ACROSS R2959
 */
void
ooaofooa_I_LIP_R2959_Link( ooaofooa_R_REL * part, ooaofooa_I_LIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->Rel_ID = part->Rel_ID;
  form->R_REL_R2959 = part;
  Escher_SetInsertElement( &part->I_LIP_R2959, (Escher_ObjectSet_s *) form );
}

/*
 * UNRELATE R_REL FROM I_LIP ACROSS R2959
 */
void
ooaofooa_I_LIP_R2959_Unlink( ooaofooa_R_REL * part, ooaofooa_I_LIP * form )
{
  /* Use TagEmptyHandleDetectionOn() to detect empty handle references.  */
  form->R_REL_R2959 = 0;
  Escher_SetRemoveElement( &part->I_LIP_R2959, (Escher_ObjectSet_s *) form );
}

/*
 * Dump instances in SQL format.
 */
void
ooaofooa_I_LIP_instancedumper( Escher_iHandle_t instance )
{
  ooaofooa_I_LIP * self = (ooaofooa_I_LIP *) instance;
  printf( "INSERT INTO I_LIP VALUES ( %ld,%ld,'%s' );\n",
    ((long)self->Rel_ID & ESCHER_IDDUMP_MASK),
    ((long)self->Inst_ID & ESCHER_IDDUMP_MASK),
    ( 0 != self->Label ) ? self->Label : "" );
}
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s ooaofooa_I_LIP_container[ ooaofooa_I_LIP_MAX_EXTENT_SIZE ];
static ooaofooa_I_LIP ooaofooa_I_LIP_instances[ ooaofooa_I_LIP_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_ooaofooa_I_LIP_extent = {
  {0,0}, {0,0}, &ooaofooa_I_LIP_container[ 0 ],
  (Escher_iHandle_t) &ooaofooa_I_LIP_instances,
  sizeof( ooaofooa_I_LIP ), 0, ooaofooa_I_LIP_MAX_EXTENT_SIZE
  };


