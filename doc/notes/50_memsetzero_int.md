---


---

# Instance Memory not Completely Zeroed
### xtUML Project Implementation Note  


1.  Abstract
------------
Memory for instances is not completely zeroed out at delete time
and dynamic allocation time.  This is due to 16 bit counter
limitations.  16 bits was good back in 1998.  Now, we should use
something larger and some day consider using something derived
from size_t.


2.  History
-----------
None.

3.  Document References
-----------------------
[1] Issues 50 <https://github.com/xtuml/mc/issues/50>
    Instance Memory not Completely Zeroed
[2] CQ dts0101048377

6. Work Required
----------------
6.1     size_t
6.1.1   Define a new type, Escher_size_t that is 32 bits and easily
        changed to be based off of stddef.h / size_t.  
6.1.2   Use this type where strings and buffers are being created or
        accessed.  

7. Implementation Comments
--------------------------
7.1     I found a compile error when compiling polymorphic events.
        This was due to a declaration not being generated, because
        the event is not used.  However, when optimizations are disabled,
        we need to generate the declaration.  So, a check for the optimization
        flag has been added.  
7.2     I alphabetized the mcmc/arlan/current_list.sh script to help in a
        sizing effort.  This is benign and just helps make it easier to
        know which files are included.  

8. Unit Test
------------
8.1 Model compiler tests must pass.  

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  50_memsetzero 

<pre>
 arc/c/q.sys.singletons.arc     |  2 +-
 arc/c/t.sys_sets.h             | 14 +++++++-------
 arc/c/t.sys_types.h            |  1 +
 arc/q.class.events.arc         |  3 ++-
 arc/q.class.sem.arc            |  6 ++++--
 arc/sysc/q.sys.singletons.arc  |  2 +-
 arc/sysc/t.sys_sets.h          | 14 +++++++-------
 arc/sysc/t.sys_types.h         |  1 +
 arc/t.sys_sets.c               | 24 ++++++++++++------------
 doc/notes/50_memsetzero_int.md | 63 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 mcmc/arlan/current_list.sh     | 22 +++++++++++-----------
 11 files changed, 110 insertions(+), 42 deletions(-)
</pre>

End
---

