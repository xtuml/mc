---

This work is licensed under the Creative Commons CC0 License

---

# role phrase attached to wrong attribute on associative reflexive relationship
### xtUML Project Implementation Note


1. Abstract
-----------
Referential attributes are not always associated with the correct role
phrase when part of an associative reflexive.

2. Document References
----------------------
[1] [9190](https://support.onefact.net/redmine/issues/9190) role phrase attached to wrong attribute on associative reflexive relationship  

3. Background
-------------
A MASL referential provides a role phrase, which is required when the
relationship is reflexive.  In the case of associative reflexives, there
will be (at least) one referential attribute for each participant instance.
This means that pairs of referentials will be referring to the same class,
because a reflexive relates back to itself.

`m2x` was selecting one and then the other of these referential attributes.
At this point in the processing, the referential attributes have the same
name as the referred to identifying attribute.  So, in the reflexive case,
this is the same identifier, thus having the same name.

The above means that we cannot find the matching referential by name
only.  We must distinguish one from the other by selecting to the participants
(`R_AONE` and `R_AOTH`) to find the role phrase that matches the cached
referential attribute.

4. Requirements
---------------
4.1 Consistently configure referential attributes to be matched with
to correct role phrases, even in the reflexive associative case.

5. Work Required
----------------
5.1 `m2x::ooapopulation::batchFormalize`  
5.1.1 Change the code expect multiple referential attributes with a name
matching the referred to identifying attribute.  Further refine the
selection to identify the referential attribute that is referring across
the matching role phrase.

6. Implementation Comments
--------------------------

7. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9190_assref`.  
7.1.2 See empty diff.

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc  9190_assref

xtuml/mc
 bin/m2x                                                          | Bin 683472 -> 683472 bytes
 doc/notes/9190_assref_int.md                                     |  77 ++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml |  15 +++++++++--
 3 files changed, 90 insertions(+), 2 deletions(-)

</pre>

End
---

