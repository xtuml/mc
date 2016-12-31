---

This work is licensed under the Creative Commons CC0 License

---

# Relationship Formalization with Combined Referentials
### xtUML Project Implementation Note


1. Abstract
-----------
When converting a model with combined referentials, the mast2xtuml translator
crashes. This is due to the use of merged referential attributes being
part of the preferred identifier.

2. Document References
----------------------
[1] [8935](https://support.onefact.net/issues/8935) - masl2xtuml core dumps when translating preferred identifiers that are merged referentials  
[2] [8694](https://support.onefact.net/issues/8694) - masl2xtuml crash  

3. Background
-------------
MASL models associations as formalized relationships exclusively.  All
classes participating in associations carry a combination of identifiers
and referential attributes.  A model with a reflexive association with
one combined referential that was also part of the identifier revealed
the problem.

4. Requirements
---------------
4.1 Successfully convert and import the model pasted into [1].  

5. Work Required
----------------
5.1 Solve the crash.  
5.2 Get good imported model.  
  
6. Implementation Comments
--------------------------
6.1 The model provided by the user in the issue had a couple of
bugs.  Domain was capitalized, and the referentials for R1 used
the wrong end text phrase.

6.2 When neither functions nor terminators are included in a model, an
empty handle is detected during an unrelate of R4012.  A test was added
to `InterfaceReference_formalize`.

6.3 Unrelating R112 during the dispose of `O_REF` (`AttributeReferenceInClass`)
was triggering the empty handle detection.  Another stanza was put in place
to deal with the situation in which there is only one `O_REF`.

6.4 In `removeDuplicateAttrs` the nested loop iterated over deleted
attributes.  We "pulled the carpet out from under ourselves".  A `break`
statement was added.

6.5 `SimpleAssociate_isFormalized` has dead code.  However, this was
left in place.

6.6 Dubious Code  
The following code looked dubious.
```
   select any oida related by other_attr->O_OIDA[R105];
   if ( not_empty oida )  // attribute is identifying
     self.ReferentialAttribute_migrateToBase( o_rattr:other_rattr );
   else
     self.Attribute_dispose( o_attr:other_attr );
   end if;
```
We will never migrate a referential to a base attribute.  The dispose
is now done unconditionally.

6.7 Question  
What is this?  (ooapopulate.processingIdentifier)
```
  if ( 0 == o_id.Oid_ID )
  ra.identifier1 = true;
  elif ( 1 == o_id.Oid_ID )
  ra.identifier2 = true;
  elif ( 2 == ooapopulation.processingIdentifier )
  ra.identifier3 = true;
  end if;
```

6.8 `getID`  
The primary fix was to successfully detect when an association is "ready"
to be formalized.  This was accomplished by recognizing the following:  
* All of the model input, and the formalization and referential information
is cached.
* During model input, all class attributes are created as base attributes.
* At the end, the cached referential information is applied.
* A formalization is complete when a class referential (`O_RATTR`) exists
in a formalizer for each identifier attribute in the participant.  
A query to detect and short-circuit the formalization (and wait until
the next "round") was added.

7. Unit Test
------------
7.1 Convert  
Convert the model pasted into comment #8 of [1] using `masl2xtuml`  
7.2 Import  
Import the resulting model into BridgePoint.  
7.3 View  
View the model and see the correct class diagram.

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   

Branch name: 8935_formalize

xtuml/mc
 doc/notes/8935_formalize_int.md                                                | 128 +++++++++++++++++++++++++++++++++++
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                              | 156 ++++++++++++++++---------------------------
 model/maslin/models/maslin/m2x/m2x.xtuml                                       |   2 +-
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml               |  79 +++++++++++-----------
 model/maslin/models/maslin/m2x/referentialAttribute/referentialAttribute.xtuml |  41 ++++--------
 model/maslin/models/maslin/m2x/simpleFormalization/simpleFormalization.xtuml   |  47 ++++++++++++-
 6 files changed, 281 insertions(+), 172 deletions(-)

</pre>

End
---

