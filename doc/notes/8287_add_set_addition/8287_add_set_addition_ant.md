---

This work is licensed under the Creative Commons CC0 License

---

# 8287 Add Instance Reference Set Addition
### xtUML Project Analysis Note


1. Abstract
-----------
Currently the model compiler doesn't support addition operations on inst_ref_sets, and there is a need for conditionally selecting multiple sets and combining them for further processing. Current implementation requires selecting one set and operating over, then selecting the next set and performing duplicate operation on it.

2. Document References
----------------------
<a id="2.1"></a>2.1 [MC C #8287](https://support.onefact.net/issues/8287) Issue link.

3. Background
-------------
Instance reference set addition is considered legal and the parser supports it, but support in the verifier and model compilers doesn't exist.

4. Requirements
---------------

4.1 Select two unique subsets of instances of an object and add them to produce a third subset that has all the instances from the selected two subsets.

5. Analysis
-----------

5.1 Requirement 4.1 calls for unique subsets, but that isn't being enforced.

5.2 Additional arithmetic operations could be supported. This might be easier to implement with a truly relational database management tool.

5.3 Single instance (inst_ref) to instance set (inst_ref_set) addition isn't supported by the parser, so a single instance would have to be selected as a set.  

6. Work Required
----------------
6.1 Determine the best way to merge the sets.

6.2 Determine how to ensure the result set container is large enough.

6.3 Add an addition operator for the instance reference sets.

6.4 Add language-specific, implementation support if needed.

7. Acceptance Test
------------------
7.1 Create an object A with an attribute that can be used for selection.

7.2 Select a subset 1 for an object A, and track the cardinality.

7.3 Select a subset 2 for object A, and track the cardinality.

7.4 Add subset 1 to subset 2 to produce subset 3.

7.5 Ensure the cardinality of subset 3 is the sum of the cardinalities of subset 1 and subset 2.

7.6 Examine the instances in subset 3 to ensure all instances from subset 1 and subset 2 are included.

End
---
