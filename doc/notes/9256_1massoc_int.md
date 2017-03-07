---

This work is licensed under the Creative Commons CC0 License

---

# One-to-Many with associative crashes masl process  
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9256](https://support.onefact.net/redmine/issues/9256) One-to-Many with associative crashes masl process  

3. Background
-------------
Given a model formalized with lots of symmetry, the `masl` process crashes.
In this model the role phrases match each other, and the referentials match
their referred-to identifiers.

4. Requirements
---------------
4.1 `masl`  
4.1.1 Do not crash on symmetric model.

5. Work Required
----------------
5.1 `masl`  
4.1.1 When setting up the referential, detect when the role phrases of an
association match.  Deal with different as well as symmetric role phrases.
In such a case, resolve the target using the object name.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9254_1tomassoc`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9254_1tomassoc

xtuml/mc
 bin/masl                                                          | Bin 243848 -> 243848 bytes
 doc/notes/9256_1massoc_int.md                                     |  61 +++++++++++++++++++
 model/masl/gen/masl_population_class.c                            |  71 ++++++++++++++++++++++
 model/masl/models/masl/maslpopulation/population/population.xtuml |  31 +++++++++++++++++
 4 files changed, 163 insertions(+)

</pre>

End
---

