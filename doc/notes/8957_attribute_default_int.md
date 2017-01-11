---

This work is licensed under the Creative Commons CC0 License

---

# MASL Attribute Default Values
### xtUML Project Implementation Note


1. Abstract
-----------
When converting a model with default attribute values, the masl2xtuml
converter does not include the default values and gives warnings.

2. Document References
----------------------
[1] [8957](https://support.onefact.net/issues/8957) - Failure to convert/import default attribute value  
[2] `xtuml/mc/model/maslin/test_data/8957_test`  

3. Background
-------------
MASL supports default values for attributes.  xtUML and BridgePoint also
support this concept.  This capability was not support in the masl2xtuml
flow in the first implementation.  It is now added.

4. Requirements
---------------
4.1 Successfully convert and import the test model [1].  

5. Work Required
----------------
5.1 Add support for `expression` to maslin.  
  
6. Implementation Comments
--------------------------
6.1 xtuml2masl  
xtuml2masl was pointing to `xtumlmc_build.exe`.  This is no longer correct.
The unix distros deliver `xtumlmc_build` in perl form which will be marked
executable.  On Windows, the .exe would be run, but it does not matter,
because `xtuml2masl` is not supported on Windows.

7. Unit Test
------------
7.1 Convert  
Convert the test model [2].  
7.2 Import
Import the resulting model into BridgePoint.  
7.3 View  
View the model and see the correct class diagram.  An image of the
expected class diagram is provided the issue [1].  Be sure to check
the properties of the attributes to see that there are populated
DefaultValues (77, 3.14 and "hello").

8. Code Changes
---------------
<pre>

Fork: cortlandstarrett/mc   

Branch name: 8957_default_attr

xtuml/mc
 bin/m2x                                                         | Bin 646585 -> 646657 bytes
 bin/xtuml2masl                                                  |   2 +-
 doc/notes/8957_attribute_default_int.md                         |  64 ++++++++++++++++++++++++++++
 model/maslin/gen/masl2xtuml_ooapopulation_class.c               |  37 ++++++++++++++++
 .../maslin/models/maslin/m2x/ooapopulation/ooapopulation.xtuml  |  49 ++++++++++++++++++++-
 model/maslin/test_data/8957_test/test.mod                       |  11 +++++
 model/maslin/test_data/8957_test/test.smasl                     |  21 +++++++++
 7 files changed, 181 insertions(+), 3 deletions(-)

</pre>

End
---

