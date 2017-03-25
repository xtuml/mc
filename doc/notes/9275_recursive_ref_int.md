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
Actually, this is precisely what the current approach does.  
- spur detection  
It is possible to detect spurs by getting infinity back from
`detectRecursive`.  In the proper loop will see itself.  

experiments:  
1) Make detectRecursion always return true.  
*result:*  This did not work.  Even for the spur model, the order of
formalization is critical.  
2) Detect a single reflexive baseless referential.  
*result:*  This allowed the spur model to convert correctly.  The
complex model still did not convert.  
3) Mark all attributes as baseless.  
*result:*  In the complex model, this experiment allowed it
convert, but it lost attributes in `Environment_Variable_for_Process`
and `Process_Specification` due to incorrect formalization order.  

4. Requirements
---------------
See [3].

5. Work Required
----------------
5.1 See [3].

5.2 `R113`  
There are still places in `m2x` that have not embraced the conditional
association between `O_RATTR` and `O_BATTR`.  Deal with these by ensuring
that a legit data type is linked to `O_ATTR` any time there is a baseless
referential.

5.3 Ordering of Formalization  
Give priority to formalizations that are part of a baseless referential
loop.  This can be done by selecting formalizations that are associated
with referential-attributes-as-identifer.  Such referenentials are on
the loop of associations rather than on a leading or trailing "spur".

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
 bin/m2x                                                                        | Bin 691824 -> 695920 bytes
 doc/notes/9275_recursive_ref_int.md                                            | 106 ++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml               |  31 +++++++++++--
 model/maslin/models/maslin/m2x/referentialAttribute/referentialAttribute.xtuml |  37 +++++++++++++--
 4 files changed, 165 insertions(+), 9 deletions(-)

</pre>

End
---

