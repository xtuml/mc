---

This work is licensed under the Creative Commons CC0 License

---

# Marking (Pragmas) and Exceptions
### xtUML Project Design Note

1. Abstract
-----------
MASL supports marking with `pragma` statements.  MASL supports exceptions
with the `exception` declaration.  This note proposes a design to support
MASL marking and exceptions in BridgePoint.

2. Document References
----------------------
[1] [model of pragma - 8416](https://support.onefact.net/issues/8416)  
[2] [model of exception - 8497](https://support.onefact.net/issues/8497)  
[3] [parent meta-modeling issue - 8409](https://support.onefact.net/issues/8409)  
[4] [Raven Production meta-model changes - 8467](https://support.onefact.net/issues/8467)  

3. Background
-------------
MASL pragmas have been imported into element Descrip fields up until now.
This is not a long-term solution.  xtUML needs a flexible model of marking
to allow MASL pragmas and perhaps other marks without polluting the
application model.

Separately, exceptions are support by MASL but have not been supported
by xtUML.  This work adds a design of rudimentary exception declaration
support.  Exception definition and exception handling in the action
language (MASL or OAL) are beyond the scope of this design note.

4. Requirements
---------------
4.1  Marking (pragma)  
4.1.1 A location in the xtUML meta-model shall be provided to store pragmas
imported during MASL to xtUML conversion (`m2x` and Import).  
4.1.2 A model of marking shall be supplied that enables the general purpose
storage of model element tagging.  
4.1.2.1 The marking model shall not pollute the functional xtUML meta-model.  
4.1.2.2 A means of loosely associating marks with model elements shall be
designed.  
4.1.3 It shall be possible to emit pragmas into generated MASL using the
MASL Export flow (`x2m`).  

4.2  Exceptions  
4.2.1 A location in the xtUML meta-model shall be provided to store exception
declarations imported during MASL conversion.  
4.2.2 Exceptions should be stored in the meta-model in a manner that allows
them to be found and validated against activity reference in the future.  
4.2.3 A model of exception shall be supplied that enables future xtUML
support of exceptions and exception handling.  
4.2.4 It shall be possible to emit exceptions into generated MASL using the
MASL Export flow.  

5. Analysis
-----------
5.1 Marking (pragma)  
5.1.1 Pragmas have a key word and predictable format that makes it is easy
to detect and parse them in the downstream model compiler chain.  
5.1.2 Thought was given to predicting the form of marking data.  It is noted
that marking could include many forms and combinations of data type, ordering,
punctuation and formatting.  So, it is concluded that marking data should be
stored in the meta-model as a free-form string.  
5.1.3 It is desirable that the model of marking be loosely coupled to the
application meta-model.  This is because marking will be different for
various target architectures, languages and back-end requirements.  Note,
also that marking may be applied to a significant percentage of classes in
the meta-model (markable model elements).  Therefore,
a strategy of name-based linking of marks to model elements is devised.  The
alternative would be a more complex and brittle formalized relationship
hierarchy.  

5.2 Exceptions  
5.2.1 Exceptions in MASL are declared at the domain level.  
5.2.2 Exceptions at the structural model level are composed of a name
and a visibility (of `public` or `private` defaulting to `public`).  
5.2.3 Exceptions are associated with handlers at the activity level.
However, this association is not visible at the structural level.
Therefore, this work will defer the association of the exception to the
handler until a time in the future when it becomes necessary to make
this association.  

6. Design
---------
6.1 Marking  
6.1.1 A new package is added to _ooaofooa_ called _Marking_.  
6.1.2 Two new classes are introduced in this package named _Markable_
and _Mark_.  
6.1.3 The classes will be modeled as such:  
```
Markable [M_MBL] ( Name:string {I} ) 1 marks ----- is marked by * Mark [M_M] ( ID? {I}, Name {I2, R}, Path:string {I2}, Value:string )
```
6.1.4 The _Path_ attribute is the same xtUML model hierarchy path used to
uniquely identify logical and graphical elements in the application model.
This path is a double-colon ('::') separated list of model elements
mostly showing containment from the system down through the packages
to the named model element.  It is unique for every element in a model.  
6.1.5 The _Name_ attribute on Markable is the key letters of the xtUML
meta-model that can be marked.  This is supplied in pre-existing instance
data.

6.2 Exceptions  
6.2.1 A new class is introduced into the _Domain_ package called _Exception_.  
6.2.2 _Exception_ is a packagable element and participates in R8001.  
6.2.3 The class is modeled as such:  
```
Exception [S_EXP] ( Exception_ID:unique_id {I,R8001}, Name:string )
```

7. Design Comments
------------------

8. Unit Test
------------
8.1 Perform MASL round trip test with model containing exceptions and
pragmas.  
8.2 Inspect model data to ensure Mark, Markable and Exception instances
are present.  

End
---

