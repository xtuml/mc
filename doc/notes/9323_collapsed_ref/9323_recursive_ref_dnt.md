---

This work is licensed under the Creative Commons CC0 License

---

# Missing formalism for reflexive non-associative relationship with collapsed referential
### xtUML Project Design Note

1. Abstract
-----------
The use of recursive referentials is not supported by xtUML. Consequently, round
trip tests are failing. Additionally, the editor does not support creating such
constructs.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#9323 Missing formalism for reflexive non-associative relationship with collapsed referential](https://support.onefact.net/issues/9323)  
<a id="2.2"></a>2.2 [#9277 Missing Formalism for associative relationship with second relationship to the associative object](https://support.onefact.net/issues/9277)  
<a id="2.3"></a>2.3 [#9275 Missing formalism for reflexive non-associative relationship with collapsed referential](https://support.onefact.net/issues/9275) Service Pro version of 2.1  

3. Background
-------------
Review and understand the models in [[2.1]](#2.1) and [[2.2]](#2.2). Read the
email correspondence in [[2.3]](#2.3).

3.1 Terms

Throughout this note and the related documents and engineering artifacts, the
terms **"recursive referential"** and **"baseless referential"** are used
interchangeably. These terms refer to the specific case in which a referential
attribute is combined (merged, collapsed) with the very base attribute to which
it refers. This necessarily means there is an endless reference loop in the
model (i.e. recursive) and that there is no longer a base attribute referenced
(i.e. baseless).

4. Requirements
---------------
4.1 MASL round trip shall be supported for recursive referentials  
4.2 BridgePoint editor shall support recursive referentials  
4.2.1 Models with recursive referentials shall be viewable in BridgePoint  
4.2.2 BridgePoint shall support creating models with recursive referentials  
4.3 The xtUML metamodel shall be compatible with current model compilers  

5. Analysis
-----------

5.1 Metamodel

Below is a snippet of the model of attributes in the OOA of OOA. This image
shows the supertype "Attribute" and its two subtypes "Referential Attribute" and
"Base Attribute" along with the relationship (R113) between them.
![attr.png](attr.png)

There are several ways to model recursive referentials. One possibility is to
remove the subtype/supertype relationship R106 and replace it with two simple
relationships to `O_RATTR` and `O_BATTR`. This way an attribute can be both a base
attribute and a referential attribute at the same time (the referential is its
own base). This is not optimal because it disturbs the model too much.

A better way (shown in the image above) is to simply change R113 from one
_unconditional_ on the `O_BATTR` side to one _conditional_. In this way a
referential attribute can exist without a base attribute ("baseless").
Furthermore, this does not interfere with existing model compilers as it
"loosens" and does not constrain it more.

In the model of attributes, the type of the attribute is related to the
supertype "Attribute" and not the subtypes. This design is good for this work,
because it allows us to explicitly type referentials without changing the
metamodel. Today, BridgePoint enforces referential attributes to have the type
`same_as<Base_Attribute>` which is simply a dummy type used to indicate that
R113 should be traversed to get the type. For this work, this restraint shall
be relaxed so that we can type referential attributes as base attributes.

5.2 Round Trip

The main challenge facing round trip is formalization during model convert.
During population of the xtUML model from MASL, a model of formalization is
constructed. This instance population is then used to formalize relationships
after the fact in an intelligent way by detecting dependent formalizations.
Since these baseless referentials create an infinite loop of reference, the
formalization mechanism does not ever think they are "ready" to formalize.

5.3 BridgePoint

5.3.1 Viewing

BridgePoint needs to be able to display models containing recursive
referentials. Specifically, the data type of a recursive referential needs to be
selected from the referential attribute itself and not the base attribute.

5.3.2 Editing

BridgePoint supports combining two referential attributes which refer to
the same base attribute. Once combined, these attributes can also be split
apart. This facility must be extended to allow users to combine attributes to
create recursive referentials and to separate them again.

5.3.2.1 Definition of combining attributes

The following definition is used to determine if two attributes can be combined:

_Attributes can be combined if and only if_
* _Two attributes in the same class are referentials and they refer to the same
  base attribute **OR**_  
* _A referential attribute refers to an identifying base attribute in the same
  class_  

6. Design
---------

6.1 `m2x`

6.1.1 Create `collapse_ref` operation for `Referential Attribute`

This operation will combine a referential with its base attribute by migrating
the base attribute to a referential attribute and then merging the referential
attribute into the original base attribute (which is now a referential attribute
too).  Each referential attribute that referred back to the original base
attribute is explicitly typed to the type of the old base attribute.

6.1.2 Add `baseless` attribute and `detectRecursive` operation to
`referentialAttribute`

The `referentialAttribute` will be extended to detect whether or not it is a
baseless referential. This is done by recursively following the reference chain
checking if a loop has occurred. If there is a loop, each `referentialAttribute`
in the chain is marked "baseless" (boolean `true`).

6.1.3 Add condition in `getID` operations to allow formalizations involving
"baseless" referentials to be ready

The `getID` operations are used to check if a formalization is "ready" to be
formalized. Here the check is added to see if baseless referentials are
involved. If they are, and all the other referentials are ready, the
formalization is ready.

A previous explicit check for the simple case of a single, reflexive,
recursive referential is removed from this routine.  The more general
loop detection now covers this case.

6.1.4 Update the `postProcess` operation to collapse baseless referentials

6.1.5 Update `batchFormalize` to process based referentials first.

Loop detection is complicated when there a branches entering or exiting
the loop.  The simple loop detection implemented requires proper loops
that can be traversed from a starting point back the starting point.  To
ensure that the referential loops are proper, based referentials must be
processed first.

To "prune" the referential graph, _based_ referentials are processed in
`batchFormalize` first, using the original `getID` algorithm.  The reference
candidates are not marked as baseless until after the `batchFormalize` has
processed as much as it can, namely the based referentials.  This is
detected by allowing `batchFormalize` to loop until formalizations are
no longer being processed and eliminated.  When this is detected (using
the delta cardinality of the formalizations), the recursion detector is
then run.

6.1.6 Fix datatypes to allow typing referentials

`m2x` has the type for referential attributes hard coded in the instance dumper
to link it to the "same_as<Base_Attribute>". It needs to be changed to only do
this if there is no type related to the referential attribute. This allows
typing of referential attributes explicitly.

6.2 `x2m`

6.2.1 Update `attribute2attribute` to select the type of the base attribute for
referentials only if the base attribute across R113 is not empty.

6.3 BridgePoint

6.3.1 Modify OOA of OOA

Change the O_BATTR side of R113 to be conditional, update schema accordingly

6.3.2 Change O_RATTR `newReferentialAttribute`

Update this operation to check whether a base attribute exists across R113
before setting the data type to "same_as<Base_Attribute>". This assures that
recursive referentials keep their data type.

6.3.3 Update property source and O_OBJ `get_compartment_text`

Both the attribute property page and `get_compartment_text` on Model Class were
assuming a base attribute across R113. They must be changed to get the local
data type in the case where there is no base attribute.

6.3.4 Update O_ATTR `actionFilter`

The action filter for attribute must be updated to allow combining of attributes
in both cases specified in 5.3.2.1. Additionally, fork "can split" into "can
split ref" and "can split base" to filter for attributes that can be split in
both ways.

Because two different types of split are being introduced (splitting into a base
and a ref, and splitting into two refs), the "can split base" filter is further
narrowed to only allow splitting if there is exactly one O_REF. This prevents
both from being active at the same time.

6.3.5 Add O_ATTR `canCombineWith` operation

This operation is introduced to handle the added complexity of selecting the set
of candidate attributes to combine with. It now selects the attribute set based
on the definition in 5.3.2.1

6.3.6 Update `O_ATTR_CombineWith` context menu function

Update the select statement in the function to call `canCombineWith`

6.3.7 Add `O_ATTR_ReferentialSplit` and `O_ATTR_BaseAndRefSplit` context menu
functions

Move `O_ATTR_Split` to `O_ATTR_ReferentialSplit` and introduce the new function
`O_ATTR_BaseAndRefSplit`. These functions correspond to the two types of split
mentioned in 6.3.4. The new function calls `split_base_and_ref` in O_ATTR to
perform the split.

6.3.8 Move O_RATTR `combine_refs` into O_ATTR

This operation should be moved because now base attributes can participate in
combinations

6.3.9 Add O_ATTR `split_base_and_ref` operation

The split operation for recursive referentials works as follows:  
1. Create a new referential attribute with the single O_REF instance  
2. Migrate the original referential attribute to a base attribute  
3. Set the data type of the new base attribute to that of the original attribute  
4. Set all referentials in the chain to point to the new base attribute across
R113  

6.3.10 Add O_RATTR `propagateBaseAttr` operation

This new operation is a recursive operation used to traverse a referential chain
and set the base attribute for each O_RATTR. It is used for step 4 above

6.3.11 Update CME PEI data

Update the PEI data for context menu entries to create two different entries for
the two types of split

7. Design Comments
------------------

8. User Documentation
---------------------

9. Unit Test
------------
7.1 `masl_round_trip`  
7.1.1 Run `masl_round_trip` on test `9275_incomplete` and `9276_incomplete`.  
7.1.2 See empty diff.  
7.1.3 Run `masl_round_trip` on test `9149_id` and `9192_dupref`.  
7.1.4 See empty diff.  

7.2 `masl_round_trip` regression  
7.2.1 Run `regression_test`.  
7.2.2 See empty diff files.  

7.3 BridgePoint test  
7.3.1 See [[2.1]](#2.1) comment #3  

End
---

