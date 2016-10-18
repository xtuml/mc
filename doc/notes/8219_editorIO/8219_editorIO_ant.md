---

This work is licensed under the Creative Commons CC0 License

---

# Editor I/O - Indexing Structural MASL for Activity Cross-Reference
### xtUML Project Analysis Note

1. Abstract
-----------
BridgePoint supports importing, editing and exporting xtUML/OAL.  This note
analyzes the cross-referencing of MASL activities with structural xtUML
while editing.

2. Document References
----------------------
[1] [8219 Parent Task for Editor](https://support.onefact.net/issues/8219)  
[2] [8258 MASL activity editor](https://support.onefact.net/issues/8258)  
[3] [8259 MASL user defined identifier validation](https://support.onefact.net/issues/8259)  
[4] [8260 MASL xtUML context-sensitive edit/completion assistance](https://support.onefact.net/issues/8260)  
[5] [8261 MASL automatic reference maintenance](https://support.onefact.net/issues/8261)  
[6] [Raven Advanced SRS (restricted access)](https://docs.google.com/document/d/1hi6TnVgNQj51zt9Ce1C3H6DHJI_kCjF1CDMBXxoe7wo/edit)  
[7] [x2m and xtuml2masl (a.k.a. maslout)](https://github.com/xtuml/mc/tree/master/model/maslout)  

3. Background
-------------
MASL is a modeling language inspired by the Action Specification Language
used in a heritage UML tool.  MASL supports a rich syntax for encoding
Shlaer-Mellor (S-M) model activities, and it also expresses the structural
(domains, classes, associations, state machines) elements of S-M models.

A syntax-highlighting and xtUML-aware MASL activity editor has
been developed [2].  

4. Requirements
---------------
4.1 [6 - E1] The MASL activity editor shall support syntax highlighting
similar to other widely used source code editors like those found in the
Eclipse JDT.  

4.2 [6 - E2] The MASL editor shall validate user-defined identifiers within
MASL activities.  Validation shall be provided against the local activity as
well as against structural elements within scope.

4.3 [6 - E3, E4] Context-sensitive completion assistance shall be provided
for MASL actions.  Completion assistance includes MASL keywords and
user-defined identifiers.  As with validation, assistance shall leverage
local elements and structural elements within scope.

4.4 [6 - M1] As structural model elements are modified, the MASL activity
editor shall support automatic maintenance of the affected model-element
references contained within MASL activities.

5. Analysis
-----------
BridgePoint edits Shlaer-Mellor Executable UML models by supporting a
mixed graphical and textual modeling language.  Components, class diagrams
and state machines are modeled using a graphical modeling language based
on the UML2 standard.  Activities are modeled using textual action language.
As of 2016 BridgePoint support two action languages, OAL and MASL.

We often refer to "structural xtUML" and "textual xtUML".  Structural xtUML
is (presently) modeled graphically.  Textual xtUML is (presently) confined
to action bodies, but this may change in the future.  In all cases, textual
xtUML (OAL or MASL) must be parsed.  Once parsed, operations on it can
validate it, provide editing assistance and deal with refactoring.

MASL has textual syntax for almost all of xtUML.  It is possible to validate
all of MASL by parsing complete MASL models.

### 5.1 Interfacing a MASL Activity Editor into the Structural BridgePoint Editor

There are options for interfacing a textual editor into
Papyrus-xtUML (BridgePoint).

5.1.1 Direct Access to Existing Java API  
The xtUML metamodel is translated into Java and exposes a consistent
API for creating, deleting, (un)relating, reading and writing instance data.
The AST of the MASL activity editor could be decorated with Java actions
that call into this API.  This approach is simple and straight-forward
but suffers from being low-level, brittle and tightly coupled.

5.1.2 Instance-Based Component API  
Instead of providing direct access to the generated metamodel as described
above, a more formal and more loosely coupled interface could be supplied.
Such an interface would be through messages between an _Activity Editor_
component and an _OOAofOOA_ (xtUML metamodel) component.  This interface
might be similar to the interface between _OOAofOOA_ and _Graphics_.
Or it could be similar to the _Serial MASL_ interface.  It would consist
of a set of messages that would be sent/received between the editor and
the structural metamodel.

5.1.3 Persisted Structural MASL  
There exists a utility `x2m` which converts xtUML to MASL and exports it.
This capability can be leveraged to maintain a MASL representation of
structural xtUML.  The Activity Editor can parse the structural
MASL into its own AST.  All validation, edit assistance and refactoring
then occurs within the AST-level representation of textual MASL.
Such an interface can work well through the file system and thus
minimizing the requirement for direct communication between the activity
editor application and the structural/graphical editor application.
See File System API below.

Note, that when adding a feature to Papyrus-xtUML (BridgePoint), we will
need to update both the structural editor and the text activity editor(s).

5.1.4 EMF Facade of Structural xtUML/MASL  
A facade in a form easily traversable by the editor could be projected
from _OOAofOOA_.  Such a facade model could be generated.  The facade
would contain only the subset of elements needed to provide editor
validation and assitance functionality.  The technology of the facade
model (EMF) would be compatible with the technology of the editor (Xtext).

### 5.2 File System API  
The primary interface between the structural (graphical) editor and the
textual activity editor can be the file system.  Changes to these
resources can be detected by either side (graphical editor and textual
editor).

### 5.3 Who Is King of Signatures?

5.3.1 Structure Is King  
When structure is king, the structural representation of an activity
signature (name, parameters, types, return type) is the master.  The
signatures in the activity files are read-only copies.  When structure
is king, the signature is edited and maintained in Model Explorer.
When structure is king, the signature in the activity file is validated
against the `.mod` MASL representation and either "marked with squigglies"
or actually synchronized automatically by the editor.

5.3.2 Text Is King  
When text is king, the signatures in the MASL activity file are the
definitive master copy.  The structural representation must be synchronized
from this textual definition.  Note that this type of synchronization
is a challenge in the presence of "UUID-based" structural models.  So,
careful consideration needs to be made about attempting this before
a "natural, naming identifier" -based structural modeling language is
in place.

5.3.3 Most Recent Is King  
Eventually, we need the best of both worlds.  The file with the most
recent timestamp will push its changes to other.  So, when the signature
is edited in Model Explorer, it gets pushed into the activity file.
When the signature is edited in the activity file, upon save, it gets
pushed into the structural (in-memory) representation in Model Explorer.

It will be acceptable to choose a temporary king and later end up in
a more cooperative and peer-collaborative world where the most
recently updated signature is the master and synchronizes outwards
to the other representations.

6. Work Required
----------------
The following work assumes the strategy of 5.1.3 above (Persisted Structural
MASL), using the file system for synchornization (5.2 File System API) and
declaring the structure is king (for now).
 
6.1 Highlight syntax on all MASL statements.

6.2 Validate identifiers against `.mod` files located in `/masl` folder (or
new location to be supplied).  

6.3 Provide edit assistance against `.mod` files located in `/masl` (or
new location to be supplied) folder.

6.4 Provide refactoring against `.mod` files located in `/masl` (or
new location to be supplied) folder.

6.5 Support multi-activity editing in a single file.  
Group all activities into a single file along the following boundaries:  
6.5.1 all functions and bridges in a package (grouped by type)  
6.5.2 all operations on a class  
6.5.3 all states and transitions in a state machine  
6.5.4 all messages in a component (grouped by port)  

6.6 Choose a King  
Structure is King (for now).  
6.6.1 Validate activity signatures against the structural MASL.  Indicate
errors in the normal way.  Provide quick-fixing and/or other utilities
to make keeping the signature consistent.

6.7 Persist structural MASL  
6.7.1 Optimize `x2m` to skip prebuilder and run the file system scooper.  
6.7.2 Run `x2m` at activity open before activity editor is launched.  
6.7.3 (later) Consider storing structural MASL at top of activity file.  
6.7.4 (later) Consider porting `x2m` from C to Java.  

7. Acceptance Test
------------------
Acceptance test will be defined in the Design Note.

End
---

