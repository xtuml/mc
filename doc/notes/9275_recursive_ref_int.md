---

This work is licensed under the Creative Commons CC0 License

---

# Recursive Baseless Referentials
### xtUML Project Implementation Note

1. Abstract
-----------
After discovering this distinctive of the Kennedy-Carter idiom,
BridgePoint has been improved to support it.  There is more work
to do.

2. Document References
----------------------
[1] [9275](https://support.onefact.net/redmine/issues/9275) Recursive referentials  
[2] [9323](https://support.onefact.net/redmine/issues/9323) Missing formalism for reflexive non-associative relationship with collapsed referential  
[3] [9323 design note](https://github.com/xtuml/mc/blob/master/doc/notes/9323_collapsed_ref/9323_recursive_ref_dnt.md) Recursive Referentials I    


3. Background
-------------
Read the design note associated [3].

We now recognize that referentials can be combined such that no base
attribute remains at the "root".  Work has been done to use the `getID`
algorithm (waiting to allow referentials-as-identifers to propagate)
first, and then finding and marking baseless attributes.  This approach
has succeeded in transforming most models.

However, the remaining patterns involve recursion and multiple loops of
references that must be successfully unwound.

experiments and results:

ideas:  
- To gather data, make detectRecursion always return true.  
- Make detectRecursion detect when it has been spinning too long.  
- Identify one baseless attribute, and then "fan out" from there
marking anyone who depends upon it as baseless.  This uses graph
coloring rather than traversal.  
- Instead of recursive graph traversal, use relational combinational
queries.  

experiments:  
1) Making detectRecursion always return true did not work.
Even for the spur model, the order of processing was key.  
2) Detecting a single reflexive baseless referential and
marking it baseless allowed the spur model to convert correctly.  
3) Marking all attributes in complex as baseless allowed it
convert, but we lost some attributes in `Environment_Variable_for_Process`
and `Process_Specification`.  

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
7.1.1 Run `masl_round_trip` on test `9275_refspur` and `9275_refcomplex`.  
7.1.2 See empty diff.  

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9275_spur

xtuml/mc

</pre>

End
---

