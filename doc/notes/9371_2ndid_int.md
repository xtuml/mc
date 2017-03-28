---

This work is licensed under the Creative Commons CC0 License

---

# Missing secondary identifier for combined referential attribute  
### xtUML Project Implementation Note


1. Abstract
-----------
A simple model with a combined referential loses a secondary identifier.

2. Document References
----------------------
[1] [9371](https://support.onefact.net/issues/9371) Missing secondary identifier for combined referential attribute  

3. Background
-------------

4. Requirements
---------------
4.1 `m2x`  

5. Work Required
----------------
5.1 `m2x`  

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9370_2nd_id_1` and `9370_2nd_id_2`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9371_2ndid

xtuml/mc

</pre>

End
---

