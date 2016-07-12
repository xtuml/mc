---

This work is licensed under the Creative Commons CC0 License

---

# Export MASL interface files
### xtUML Project Implementation Note

1. Abstract
-----------
Interface files must be generated as well as domain model files when exporting a
MASL domain.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#8504 parent issue](https://support.onefact.net/issues/8504)  

3. Background
-------------
MASL models are defined in domain model (`.mod`) files. Domain models can have
dependencies on other domains. Types, exceptions, and services/functions can be
used across domain boundaries. These model elements must be declared in an
interface (`.int`) file before they can be used by the referring domain.
Interface files are identical to domain files except they only contain the
public types, public exceptions, and public domain services/functions. An
interface file contains a subset of the referred to domain model file.

4. Requirements
---------------
4.1 The xtUML to MASL exporter shall emit an interface (`.int`) file along with
a domain model (`.mod`) file when invoked  
4.2 The resultant interface file shall contain the public types, public
exceptions, and public domain services/functions  

5. Work Required
----------------

5.1 add 'render_interface' operation to the 'domain' class to render only the
public elements  
5.2 add call to 'render_interface' to domain rendering routine. add call to emit
the `.int` file  

5.3 change location where interface messages are stored from C_EP.Descrip to
C_IO.Descrip  


6. Implementation Comments
--------------------------
During implementation, a bug was discovered in which descriptions of terminator
services were lost since they were being stored in the wrong descrip field. The
small fix was made as a part of this work due to convenience.

7. Unit Test
------------

7.1 Export a MASL domain that contains public types, public exceptions and
public domain services/functions  
7.2 Verify that a `.int` file and a `.mod` file were emitted  
7.3 Compare the `.int` file and the `.mod` file  
7.3.1 Verify that all public types, public exceptions, and public
services/functions that are present in the `.mod` file are also present in the
`.int` file  
7.3.2 Verify that the `.int` file does not include any extraneous MASL beyond
the public types, public exceptions, and public services/functions  

8. Code Changes
---------------
Branch name: leviathan747/8504_int_files

<pre>

 model/masl/models/masl/masl/domain/domain.xtuml                         | 42 ++++++++++++++++++++++++++++++++++++++++++
 model/masl/models/masl/maslpopulation/file/file.xtuml                   |  2 ++
 model/maslin/gen/masl2xtuml_ooapopulation_class.c                       | 13 ++++++++-----
 model/maslin/models/maslin/masl2xtuml/ooapopulation/ooapopulation.xtuml |  5 +++--
 4 files changed, 55 insertions(+), 7 deletions(-)

</pre>

End
---

