---

This work is licensed under the Creative Commons CC0 License

---

# Missing formalism for reflexive non-associative relationship with collapsed referential
### xtUML Project Implementation Note

1. Abstract
-----------

2. Document References
----------------------
<a id="2.1"></a>2.1 [#9323 Missing formalism for reflexive non-associative relationship with collapsed referential](https://support.onefact.net/issues/9323)  

3. Background
-------------
See [[2.1]].

4. Requirements
---------------
See [[2.1]].

5. Work Required
----------------
See [[2.1]].

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9275_incomplete` and `9276_incomplete`.  
7.1.2 See empty diff.  
7.1.3 Run `masl_round_trip` on test `9149_id` and `9192_dupref`.  
7.1.4 See empty diff.  

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9323_recursive_ref

xtuml/mc
 bin/m2x                                                                          | Bin 691664 -> 691824 bytes
 bin/x2m                                                                          | Bin 691376 -> 691376 bytes
 doc/notes/9323_collapsed_ref/9323_recursive_ref_dnt.md                           | 143 ++++++++++++++++++++++++
 doc/notes/9323_collapsed_ref/9323_recursive_ref_int.md                           |  56 ++++++++++++
 doc/notes/9323_collapsed_ref/attr.png                                            | Bin 0 -> 85730 bytes
 model/maslin/gen/masl2xtuml_O_ATTR_class.c                                       |   2 +-
 model/maslin/models/maslin/m2x/assocFormalization/assocFormalization.xtuml       |   6 +-
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml                 |  88 +++++++++++++++++++--
 model/maslin/models/maslin/m2x/referentialAttribute/referentialAttribute.xtuml   | 141 ++++++++++++++++++++----
 model/maslin/models/maslin/m2x/simpleFormalization/simpleFormalization.xtuml     |  15 ++---
 model/maslin/models/maslin/m2x/subsuperFormalization/subsuperFormalization.xtuml |   6 +-
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml                |   4 +-
 model/mcooa/models/mcooa/ooaofooa/Subsystem/Subsystem.xtuml                      |   2 +-
 schema/sql/xtumlmc_schema.sql                                                    |   2 +-
 14 files changed, 427 insertions(+), 38 deletions(-)

</pre>

End
---

