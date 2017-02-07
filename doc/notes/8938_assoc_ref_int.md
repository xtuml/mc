---

This work is licensed under the Creative Commons CC0 License

---

# Associative Relationship Formalization with Combined Referentials
### xtUML Project Implementation Note


1. Abstract
-----------
Issue reported:  
> With classes that make use of preferred referential identifiers that are then
> used in an associative class as below the attributes do not get merged
> correctly. This can be partially resolved by doing a combine but that is only
> allowed on one of the A_id's.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8938 Merged Referentail Problems With Associative Classes](https://support.onefact.net/issues/8938) Headline issue  
<a id="2.2"></a>2.2 [#8935 masl2xtuml core dumps when translating preferred identifiers that are merged referentials](https://support.onefact.net/issues/8935)  
<a id="2.3"></a>2.3 [#8935 implementation note](8935_formalize_int.md)  
<a id="2.4"></a>2.4 [test model](../../model/maslin/test_data/8938_test/)  

3. Background
-------------
After analysis of the issue there was found to be two underlying problems, one
of which was solved for simple association formalizations in issue #8935
[[2.2]](#2.2).

The formalization routine loops over formalization instances and checks if they
are "ready" to be formalized by testing the presence and readiness of the
referred to identifying attributes in the participant object against the
referential attributes attached to the formalization instance.

The first problem was that the routine was checking each of the attributes in
the "one" and "other" objects against __*all*__ of the referential attributes in
the formalization. Since an associative formalization includes three objects, it
should only check against the attributes in the "one" or the "other" object (not
both at the same time). This was fixed by adding a "where" clause to select for
only referential attributes that refer to an attribute in the current target
object.

The second problem was identical to the problem identified and solved in section
6.8 of [[2.3]](#2.3)

A test model was provided in the issue [[2.1]](#2.1), but it had errors. The
model has been proofread and committed in the `test_data` directory
[[2.4]](#2.4) 

4. Requirements
---------------
4.1 Successfully convert and import the test model

5. Work Required
----------------
5.1 Add test data  
5.2 Update select of `referentialAttribute` instances with a "where" clause  
5.3 Introduce check on attributes for "readiness" for IDs 1, 2, 3  
  
6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 Convert  
Convert the test model (see [[2.4]](#2.4))  
7.2 Import  
Import the resulting model into BridgePoint.  
7.3 View  
View the model and see the correct class diagram. An image of the expected class
diagram is provided in comment #6 of the issue [[2.1]](#2.1)  

8. Code Changes
---------------
<pre>

Fork: leviathan747/mc   
Branch name: 8938_assoc_ref  

 model/maslin/models/maslin/m2x/assocFormalization/assocFormalization.xtuml | 50 +++++++++++++++++++++++++++++++++++++++++++++++---
 model/maslin/test_data/8938_test/test.mod                                  | 42 ++++++++++++++++++++++++++++++++++++++++++
 model/maslin/test_data/8938_test/test.smasl                                | 80 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 169 insertions(+), 3 deletions(-)

</pre>

End
---

