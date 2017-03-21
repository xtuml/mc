---

This work is licensed under the Creative Commons CC0 License

---

# Missing formalism for reflexive non-associative relationship with collapsed referential
### xtUML Project Design Note

1. Abstract
-----------
The use of collapsed referentials is not supported by xtUML. Consequently, round
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
terms **"collapsed referential"**, **"recursive referential"**, and **"baseless
referential"** are used interchangeably. These terms refer to the specific case in
which a referential attribute is combined with the very base attribute to which
it refers. This necessarily means there is an endless reference loop in the
model (i.e. recursive) and that there is no longer a base attribute referenced
(i.e. baseless). A user has coined the term "collapsed referential" to
distinguish this situation from "combined referentials" where two referential
attributes are combined into one attribute with the union set of the references
of the two combined attributes.

4. Requirements
---------------
4.1 MASL round trip shall be supported for collapsed referentials  
4.2 BridgePoint editor shall support collapsed referentials  
4.2.1 Models with collapsed referentials shall be viewable in BridgePoint  
4.2.2 BridgePoint shall support creating models with collapsed referentials  
4.3 The xtUML metamodel shall be compatible with current model compilers  

5. Analysis
-----------

5.1 Metamodel

Below is a snippet of the model of attributes in the OOA of OOA. This image
shows the supertype "Attribute" and its two subtypes "Referential Attribute" and
"Base Attribute" along with the relationship (R113) between them.
![attr.png](attr.png)

There are several ways to model collapsed referentials. One possibility is to
remove the subtype/supertype relationship R106 and replace it with two simple
relationships to O_RATTR and O_BATTR. This way an attribute can be both a base
attribute and a referential attribute at the same time (the referential is its
own base). This is not optimal because it disturbs the model too much.

A better way (shown in the image above) is to simply change R113 from one
_unconditional_ on the O_BATTR side to one _conditional_. In this way a
referential attribute can exist without a base attribute ("baseless").
Furthermore, this does not interfere with existing model compilers as it
"loosens" and does not constrain it more.

In the model of attributes, the type of the attribute is related to the
supertype "Attribute" and not the subtypes. This design is good for this work
because it allows us to explicitly type referentials without changing the
metamodel. Today, BridgePoint enforces referential attributes to have the type
"same_as<Base_Attribute>" which is simply a dummy type used to indicate that
R113 should be traversed to get the type. For this work, this restraint shall be
relaxed so that we can type referential attributes as base attributes.

5.2 Round trip

The main challenge facing round trip is formalization during model convert.
During population of the xtUML model from MASL, a model of formalization is
constructed. This instance population is then used to formalize relationships
after the fact in an intelligent way by detecting dependent formalizations.
Since these baseless referentials create an infinite loop of reference, the
formalization mechanism does not ever think they are "ready" to formalize.

5.3 BridgePoint

6. Design
---------

6.1 `m2x`

6.1.1 Create `collapse_ref` operation for `Referential Attribute`

This operation will combine a referential with its base attribute by migrating
the base attribute to a referential attribute and then merging the referential
attribute into the original base attribute (which is now a referential attribute
too).  Each referential attribute that referred back to the original base
attribute is explicitly typed to the type of the old base attribute

6.1.2 Add `baseless` attribute and `detectRecursive` operation to
`referentialAttribute`

The `referentialAttribute` will be extended to detect whether or not it is a
baseless referential. This is done by recursively following the reference chain
checking if a loop has occurred. If there is a loop, each `referentialAttribute`
in the chain is marked "baseless".

6.1.3 Add condition in `getID` operations to allow formalizations involving
"baseless" referentials to be ready

The `getID` operations are used to check if a formalization is "ready" to be
formalized. Here the check is added to see if baseless referentials are
involved. If they are, and all the other referentials are ready, the
formalization is ready

6.1.4 Update the `postProcess` operation to collapse baseless referentials

6.1.5 Fix datatypes to allow typing referentials

`m2x` has the type for referential attributes hard coded in the instance dumper
to link it to the "same_as<Base_Attribute>". It needs to be changed to only do
this if there is no type related to the referential attribute. This allows
typing of referential attributes explicitly.

6.2 `x2m`

6.2.1 Update `attribute2attribute` to select the type of the base attribute for
referentials only if the base attribute across R113 is not empty.

7. Design Comments
------------------

8. User Documentation
---------------------

9. Unit Test
------------

End
---

