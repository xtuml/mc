---

This work is licensed under the Creative Commons CC0 License

---

# Incomplete Reflexive Formalisation
### xtUML Project Implementation Note


1. Abstract
-----------

2. Document References
----------------------
[1] [9275](https://support.onefact.net/redmine/issues/9275) Incomplete Reflexive Formalisation  

3. Background
-------------
A reflexive association that uses a combined referential ("collapsed"
referential + identifier) fails to formalize.  The loop that detects
when referentials-as-identifiers are "ready" had been blocking the
formalization.  The block has been lifted, but there is still a problem
with the identifier.

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
7.1.1 Run `masl_round_trip` on test `9275_incomplete`.  
7.1.4 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9275_incomplete

xtuml/mc

</pre>

End
---

