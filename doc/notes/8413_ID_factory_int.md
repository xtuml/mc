---

This work is licensed under the Creative Commons CC0 License

---

# Use Integer ID Factory for unique_id Initialization
### xtUML Project Implementation Note

1. Abstract
-----------
Integers are more convenient and manageable as embedded control unique
identifiers.  Deploy a simple mechanism.

2. Document References
----------------------
[1] [8413 - Add ID Factory to MC](https://support.onefact.net/issues/8413)  

3. Background
-------------
The C model compilers have used a pointer-based mechanism to initialize
instance attribute values having type `unique_id`.  MC-3020 implemented
`unique_id` by casting an instance pointer to integer.  This has worked
pretty well for all these years.  However, when exchanging (SQL) instance
data between elements in a flow of transformation, the cast pointers
make big numbers and are not repeatable.  A simple incremented integer
approach would be better in this case.

4. Requirements
---------------
4.1 IDs will be unique.  
4.2 IDs will be integers.  
4.3 IDs will fit in 31 bits.  
4.4 IDs will be smaller and more predictable and easier to manipulate
than the cast memory pointers used up until now.  

5. Work Required
----------------
5.1 Change `Escher_UniqueID_t` from pointer (iHandle_t) to integer (i_t).  
5.2 Supply `Escher_ID_factory()` to return a static monotonically incremented
integer.  
5.3 Update the attribute value initialization code to call the ID factory
rather than casting the instance pointer.  
5.3 Update the instance dumping and loading code to use the integer IDs.  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Run maslin on SAC.smasl and PSC.smasl.  

8. Code Changes
---------------
Branch name:  8411_mmtypes commit 1521dd8

<pre>

 arc/c/t.sys_sets.h                                |   1 +
 arc/c/t.sys_types.h                               |   2 +-
 arc/frag_util.arc                                 |   1 +
 arc/q.class.factory.arc                           |  13 +-
 arc/q.sys.populate.arc                            |   8 +-
 arc/t.class.attribute.init.c                      |   2 +-
 arc/t.sys_sets.c                                  |  10 ++
 arc/t.sys_xtumlload.c                             |   4 +-
 doc/notes/8411_mmtypes/8411_types_dnt.md          |  86 ++++++++++++
 model/maslin/gen/masl2xtuml_O_ATTR_class.c        |  39 ++---
 model/maslin/gen/masl2xtuml_S_UDT_class.c         |  20 +--
 model/maslin/gen/masl2xtuml_ooapopulation_class.c | 554 ++++++++++++++++++++++++++++++++++++++----------------------------------
 model/maslin/gen/masl2xtuml_ooapopulation_class.h |   8 +-

</pre>

End
---

