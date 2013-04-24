.//============================================================================
.// Notice:
.// (C) Copyright 1998-2013 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//
/*--------------------------------------------------------------------------
 * File:  ${te_file.factory}.${te_file.src_file_ext}
 *
 * Description:
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#include "${te_file.types}.${te_file.hdr_file_ext}"
.if ( te_thread.enabled )
#include "${te_file.thread}.${te_file.hdr_file_ext}"
.end if
${all_domain_include_files}

.if ( te_sys.InstanceLoading )
Escher_iHandle_t Escher_instance_cache[ 1000000 ];
.end if

${system_class_array.class_info}

/*
 * Create an instance of the class numbered on the input.
 * Return the handle of the created instance.
 */
${te_instance.handle}
sys_factory::${te_instance.create}f(
.if ( multi_domain )
  const ${te_typemap.domain_number_name} domain_num,
.end if
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_set.element_type} * node;
  ${te_instance.handle} instance;
  ${dci.class_info_type} * dci = *(${dci.class_info_name}[ ${domain_num_var} ] + class_num);
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  node = dci->${te_extent.inactive}.head;

  if ( 0 == node ) {
.if ( te_sys.UnitsToDynamicallyAllocate != 0 )
    ${te_set.element_type} * container =
      ( ${te_set.element_type} *) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * sizeof( ${te_set.element_type} ) );
    ${te_instance.handle} pool = ( ${te_instance.handle} ) ${te_dma.allocate}( ${te_sys.UnitsToDynamicallyAllocate} * dci->${te_extent.size_name} );
    ${te_string.memset}( pool, 0, ${te_sys.UnitsToDynamicallyAllocate} * dci->${te_extent.size_name} );

    if ( ( 0 == container ) || ( 0 == pool ) ) {
      ${te_callout.object_pool_empty}( (c_t *) (${domain_num_var}+0), (c_t *) (class_num+0) )
    } else {
      dci->${te_extent.inactive}.head = ${te_set.insert_block}( 
        container, (const u1_t *) pool, dci->${te_extent.size_name}, ${te_sys.UnitsToDynamicallyAllocate} );
      node = dci->${te_extent.inactive}.head;
    }
.else
    ${te_callout.object_pool_empty}( (c_t *) (${domain_num_var}+0), (c_t *) (class_num+0) )
.end if
  }

  dci->${te_extent.inactive}.head = dci->${te_extent.inactive}.head->next;
  instance = (${te_instance.handle}) node->object;
  instance->${te_instance.current_state} = dci->${te_extent.istate_name};
  ${te_set.insert_instance}( &dci->${te_extent.active}, node );
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
  return instance;
}
.if ( persistence_needed.result )
${te_instance.handle}
${te_instance.create_persistent}f(\
  .if ( multi_domain )
 const ${te_typemap.domain_number_name} domain_num,\
  .end if
 const ${te_typemap.object_number_name} class_num )
{ /* Use this interface to create persistent instances.  */
  ${te_instance.handle} instance = ${te_instance.create}f(\
  .if ( multi_domain )
 domain_num,\
  .end if
 class_num );
  /* Mark the persistent instance as "clean".  */
  instance->${instid.dirty_name} = ${instid.dirty_clean};
  ${persist_check_mark.name}( instance,\
 ${domain_num_var},\
 class_num );
  return instance;
}
.end if .// persistence_needed

/*
 * Delete an instance of the class passed and numbered on the input.
 */
void
sys_factory::${te_instance.delete}f(
  ${te_instance.handle} instance,
.if ( multi_domain )
  const ${te_typemap.domain_number_name} domain_num,
.end if
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_set.element_type} * node;
  ${dci.class_info_type} * dci = *(${dci.class_info_name}[ ${domain_num_var} ] + class_num);
    .//
.if ( te_thread.enabled )
  ${te_thread.mutex_lock}( SEMAPHORE_FLAVOR_INSTANCE );
    .end if
.if ( te_sys.CollectionsFlavor == 20 )
  .if ( te_sys.UnitsToDynamicallyAllocate != 0 )
  node = ( ${te_set.element_type} * ) ${te_set.contains}( &dci->${te_extent.active}, instance );
  .else
  node = &dci->${te_extent.container_name}[ 0 ] +
    (((char *) instance - (char *) dci->${te_extent.pool_name} ) / dci->${te_extent.size_name} );
  .end if
  ${te_dlist.remove_node}( &dci->${te_extent.active}, node );
.else
  node = ${te_slist.remove_node}( &dci->active, instance );
.end if
  node->next = dci->${te_extent.inactive}.head;
  dci->${te_extent.inactive}.head = node;
  /* Initialize storage to zero.  */
  ${te_string.memset}( instance, 0, dci->${te_extent.size_name} );
.if ( te_thread.enabled )
  ${te_thread.mutex_unlock}( SEMAPHORE_FLAVOR_INSTANCE );
.end if
}
.if ( persistence_needed.result )
void
${te_instance.delete_persistent}f(
  ${te_instance.handle} instance,
  .if ( multi_domain )
  const ${te_typemap.domain_number_name} domain_num,
  .end if
  const ${te_typemap.object_number_name} class_num )
{ /* Use this interface to delete persistent instances.  */
  ${te_instance.delete}f( instance,\
  .if ( multi_domain )
 ${domain_num_var},\
  .end if
 class_num );
  Escher_PersistDelete( instance,\
  .if ( multi_domain )
 domain_num,\
  .else
 0,\
  .end if
   class_num );
}
.end if .// persistence_needed
.if ( te_sys.InstanceLoading )

typedef void (*brf)( Escher_iHandle_t );
static brf batch_relaters[] = {
    ${all_batch_relaters}
};

/*
 * Self- inter-relate instances one to another.
 */
void ${te_prefix.result}batch_relate( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
void sys_factory::${te_prefix.result}batch_relate(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num
)
{
  ${te_typemap.instance_index_name} i;
  ${te_set.iterator_class_name} iterator;
  ${te_instance.handle} instance;
  ${dci.class_info_type} * dci = *(${dci.class_info_name}[ domain_num ] + class_num);
  ${te_set.iterator_reset}( &iterator, &dci->${te_extent.active} );
  /* Cycle through the active list of instances of this class.  */
  while ( (instance = ${te_set.iterator_next}( &iterator )) != 0 ) {
    if ( 0 != batch_relaters[ class_num ] ) {
      (batch_relaters[ class_num ])( instance );
    }
  }
}
.end if .// te_sys.InstanceLoading


/*
 * Initialize object factory services.
 * Initialize class instance storage free pool (inanimate list)
 * by linking the empty instances into a collection.
 */
void
sys_factory::${te_instance.factory_init}(
  const ${te_typemap.domain_number_name} domain_num,
  const ${te_typemap.object_number_name} class_num )
{
.// Pre-existing Instances (PEI)
.// Generate code to link the statically initialized instances into
.// the active extent.
.//
.// Link the instances in reverse order to allow preexisting
.// instances (if any) to use the front of the array.
.//
  ${dci.class_info_type} * dci = *(${dci.class_info_name}[ domain_num ] + class_num);
  if ( 0 != dci ) {
.if ( te_thread.flavor == "OSX" )
  .// Consider making this default behavior.
  u1_t * zero = (u1_t *) dci->${te_extent.pool_name};
  s4_t zi = dci->${te_extent.population_name} * dci->${te_extent.size_name};
  while ( 0 < zi-- ) { *zero++ = 0; }
.end if
.if ( te_sys.PEIClassCount > 0 )
    int i = (int) dci->${te_extent.active}.head;
    dci->${te_extent.active}.head = ${te_set.insert_block}( 
      dci->${te_extent.container_name},
      (const u1_t *) dci->${te_extent.pool_name},
      dci->${te_extent.size_name},
      i );
    dci->${te_extent.inactive}.head = ${te_set.insert_block}( 
      dci->${te_extent.container_name} + i,
      (const u1_t *) dci->${te_extent.pool_name} + ( i * dci->${te_extent.size_name} ),
      dci->${te_extent.size_name},
      dci->${te_extent.population_name} - i );
.else
  dci->${te_extent.active}.head = 0;
  dci->${te_extent.inactive}.head = ${te_set.insert_block}( 
    dci->${te_extent.container_name},
    (const u1_t *) dci->${te_extent.pool_name},
    dci->${te_extent.size_name},
    dci->${te_extent.population_name} );
.end if
  }
}
