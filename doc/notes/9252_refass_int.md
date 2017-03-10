---

This work is licensed under the Creative Commons CC0 License

---

# Referential added to wrong attribute on reflexive relationship
### xtUML Project Implementation Note


1. Abstract
-----------
There was a hole in the assignment of reference to referential
attribute.  It involved reflexive associatives when the name of
one of the attributes stays the same as the referred to attribute.

2. Document References
----------------------
[1] [9252](https://support.onefact.net/redmine/issues/9252) Referential added to wrong attribute on reflexive relationship  
[2] [9181](https://support.onefact.net/redmine/issues/9181) role phrase attached to wrong attribute on associative reflexive relationship  

3. Background
-------------
[2] addressed a very similar problem.  [2] improved the isolation of the
correct referential attribute using role phrases in addition to referred
to attribute name.

4. Requirements
---------------
4.1 `m2x`  
4.1.1 Import reflexive associatives even when a referential attribute
naming strategy of new name and same name is used.

5. Work Required
----------------
5.1 `m2x`  
5.1.1 Rename the referential attribute very soon after creation from the
referred-to ID name to the local name.  This must be done before the search
leading to referential combination.  This renaming must be done for simple,
sub/super and associative formalization.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9252_refass`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9252_refass

xtuml/mc
 bin/m2x                                                                        | Bin 687984 -> 692080 bytes
 doc/notes/9252_refass_int.md                                                   |  64 +++++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml               |  38 ++++++++++++++++++++++---
 model/maslin/models/maslin/m2x/referentialAttribute/referentialAttribute.xtuml |   5 +---
 4 files changed, 99 insertions(+), 8 deletions(-)

</pre>

End
---

