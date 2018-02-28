---

This work is licensed under the Creative Commons CC0 License

---

# Polymorphic creation events cause round trip to crash
### xtUML Project Implementation Note

### 1. Abstract

A user reported a crash in the MASL round trip tools when the model included a
creation event in an object that has a subtype.

### 2. Document References

<a id="2.1"></a>2.1 [#10039 Polymorphic creation events cause round trip to crash](https://support.onefact.net/issues/10039) Main issue  
<a id="2.2"></a>2.2 [#10044 Polymorphic creation events cause round trip to crash](https://support.onefact.net/issues/10044) Duplicate public BridgePoint issue  
<a id="2.3"></a>2.3 [#9706 When polymorphic events are changed in a supertype, reflect the change in the subtype(s)](https://support.onefact.net/issues/9706) Original issue for updating MASL polymorphic event idiom  
<a id="2.4"></a>2.4 [#9706 implementation note](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/notes/9706_polys/9706_polys_int.md)  

### 3. Background

Recently, the idiom for editing and maintaining polymorphic events in
BridgePoint for MASL changed from a purely name based approach to being
maintained automatically by the model (see [[2.3]](#2.4) and [[2.4]](#2.4)).
Because of this change, a regression occurred where models that include creation
events in supertype classes.

In both xtUML and MASL idioms of state machines, creation events must be
handled only by the instance state machine of the class they are defined in.
Creation events cannot be polymorphic. In textual MASL, for completeness _all_
events of _all_ supertype objects are included in the transition tables of a
subtype object. This includes creation events defined in a supertype. In this
special case, the end state of any creation event defined in another class
_must_ be "Cannot_Happen".

The conversion tool must safely ignore these lines on import, and the export tool
must reproduce them on export to preserve round trip equality.

### 4. Requirements

4.1 Running MASL round trip on the given example model ([[2.1]](#2.1)) shall not
result in a crash.  
4.2 Running MASL round trip on the given example model ([[2.1]](#2.1)) shall
result in zero diffs.  

### 5. Work Required

5.1 Modify `m2x` to ignore any creation events from a different class.  
5.1.1 Print an error if such an event has an end state other than
"Cannot_Happen" or "cannot_happen".  

5.2 Modify `x2m` to generate transition table cells for all creation events in
all supertypes along with the other events.  

### 6. Implementation Comments

None.

### 7. Unit Test

7.1 The given example model has been added to the regression suite in the
`models` repository. For acceptance, the regression suite including this model
must pass with no diffs.

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/mc  
Branch: 10039_creation_poly  

<pre>

 doc/notes/10039_creation_poly_int.md                              | 94 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 model/maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  | 82 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------
 model/maslout/models/maslout/lib/xtuml2masl/maslout/maslout.xtuml | 67 ++++++++++++++++++++++++++++++++++++++++++++++++++++---------------
 3 files changed, 206 insertions(+), 37 deletions(-)

</pre>

Fork/Repository: leviathan747/models  
Branch: 10039_creation_poly  

<pre>

 masl/test/10039_creation_poly/PolymorphicCreationEvent.int |  2 ++
 masl/test/10039_creation_poly/PolymorphicCreationEvent.mod | 34 ++++++++++++++++++++++++++++++++++
 masl/test/10039_creation_poly/Sub_Created.al               |  4 ++++
 masl/test/10039_creation_poly/Super_Created.al             |  4 ++++
 masl/test/all_tests                                        |  1 +
 5 files changed, 45 insertions(+)

</pre>

### End
