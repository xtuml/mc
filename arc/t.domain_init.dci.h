.//============================================================================
.// Notice:
.// (C) Copyright 1998-2012 Mentor Graphics Corporation
.//     All rights reserved.
.//
.// This document contains confidential and proprietary information and
.// property of Mentor Graphics Corp.  No part of this document may be
.// reproduced without the express written permission of Mentor Graphics Corp.
.//============================================================================
.//

  public:
    virtual ${te_extent.type} * ${te_instance.get_dci}( const ${te_typemap.object_number_name} cn ) { return ${te_dci.array_name}[cn]; }
    .if ( not_empty te_sm )
      .if ( te_thread.enabled )
    virtual ${te_typemap.object_number_name} * ${te_instance.get_thread_assignment}( void ) { return &${te_dci.task_list}[0]; }
      .end if
    virtual ${class_dispatch_array.element_type} * ${te_instance.get_event_dispatcher}( void ) { return ${class_dispatch_array.result}; }
    .end if

  private:
    .// TODO - SKB - I tried to make this a class member instead of a class static
    .// but failed to get the kinks worked out.  The problems mostly had to do with
    .// trying to initialize this array in the constructor.  It didn't like the way
    .// the module's class extents were pulled in.
    static ${te_cia.class_info_type} * const ${te_dci.array_name}[];
    .if ( not_empty te_sm )
      .if ( te_thread.enabled )
    static ${te_typemap.object_number_name} ${te_dci.task_list}[];
      .end if
    static ${class_dispatch_array.element_type} ${class_dispatch_array.result}[];
    .end if
.//
