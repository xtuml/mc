---

This work is licensed under the Creative Commons CC0 License

---

# Formalising against secondary identifier which is superset of primary identifier misses referential spec from attribute
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9253](https://support.onefact.net/redmine/issues/9253) Formalising against secondary identifier which is superset of primary identifier misses referential spec from attribute  

3. Background
-------------
When formalizing an association an identifier in the participant is chosen.
There can be many (up to three).  Any identifier is eligible.  In the given
model, the secondary identifier is chosen to be the reference in the
formalizing class.  Also interesting in this issue is that the secondary
identifier is a _superset_ of the primary (which may be a bit dubious but
syntactically legal and perhaps useful to further constrain a related
instance set).  Because of the superset nature of the secondary key, the
weak search algorithm found the primary key first.

4. Requirements
---------------
4.1 `m2x`  
4.1.1 Identify the correct foreign key when formalizing against a
superset identifier.

5. Work Required
----------------
5.1 `m2x`  
4.1.1 Strengthen the search for the correct key.  Exhaustively match the
referential attribute set against the identifier attribute set.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9253_secondaryid`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9253_secondaryid

xtuml/mc
 bin/m2x                                                          | Bin 692080 -> 692080 bytes
 doc/notes/9253_secondaryid_int.md                                |  66 ++++++++++++++++++++++
 model/maslin/models/maslin/m2x/formalization/formalization.xtuml |   6 ++++--
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml |   8 +++++--
 4 files changed, 76 insertions(+), 4 deletions(-)

</pre>

End
---

