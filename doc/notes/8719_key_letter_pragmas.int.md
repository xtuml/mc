---

This work is licensed under the Creative Commons CC0 License

---

# MASL "key_letter" pragmas as class key letters
### xtUML Project Implementation Note

1. Abstract
-----------
In the absence of a true marking editor, MASL pragmas have been stored as text
in model element description fields. The MASL "key_letter" pragma can be
eliminated and the key letters can be stored in xtUML class key letters field.

2. Document References
----------------------
<a id=2.1></a>2.1 [#8719 Class keyletters and associated pragma](https://support.onefact.net/issues/8719)  

3. Background
-------------
None

4. Requirements
---------------

4.1 On MASL import use the pragma to populate the key letters field of the
class and discard the pragma (do not carry it around in the model).  
4.2 On MASL export use the value of the class key letters field to generate the
pragma statement for object key letters.  
4.3 Provide some form of configuration option enabling the user to disable
generation of the pragma statement for object key letters.  

5. Work Required
----------------
5.1 `m2x`  
5.1.1 Add implementation of `STRING::strlen` bridge in the `maslin` project  
5.1.2 Add check in `ooapragma_item` class on render of pragma into the
description field. If the current markable is an object and the pragma name is
"key_letter", set the class key letters instead of writing into the description  

5.2 `x2m`  
5.2.1 Add `STRING::quote` bridge to get a literal quote in OAL  
5.2.2 Add statements in `class2object` function to output a pragma for the class
key letters  

5.3 `masl`
5.3.1 Update command line usage to take a new optional argument `-k`. If `-k` is
present, key letter pragmas are generated. If `-k` is absent, no key letter
pragmas are generated.  
5.3.2 Add parameter to the `render` message on the `gen` interface. This
parameter is passed from the command line value.  
5.3.3 Add boolean attribute to the `population` singleton object. This attribute
will get set by the `render` message and be referenced by the pragma render
routine.  
5.3.4 Add check in the `render` operation on the `pragma` class to generate the
pragma. If the pragma name is "key_letter" and the current markable is an
"object" and the output key letters option is not enabled, no pragma is
generated.  

5.4 Update the `xtuml2masl` function in the `xtumlmc_build` script to call
`masl` with the `-k` option enabled. To configure the exporter to suppress
generation of key letter pragmas, the `-k` option can be removed from the
script. This satisfies requirement 4.3.

6. Implementation Comments
--------------------------
6.1 This change is limited to class key letters. MASL "key_letter" pragmas
continue to exist for terminators.

7. Unit Test
------------
7.1 Convert and import a MASL model with class key letter pragmas  
7.1.1 Verify that the key letters are in the "Class Key Letters" field in the
properties view  
7.1.2 Verify that there are no "key_letter" pragmas in class description fields  

7.2 Export a MASL domain with class key letters  
7.2.1 Verify that the "key_letter" pragmas exist in the generated MASL  

7.3 Remove the `-k` flag from the `xtuml2masl` routine in the `xtumlmc_build`
script  
7.3.1 Export the MASL domain again  
7.3.2 Verify that there are no "key_letter" pragmas on objects in the generated
MASL  

8. Code Changes
---------------
Branch name: 8719_key_lett_pragmas

<pre>

 bin/xtumlmc_build                                                                   |  2 +-
 model/masl/gen/sys_user_co.c                                                        | 12 ++++++++----
 model/masl/models/masl/lib/gen/gen.xtuml                                            |  9 +++++++++
 model/masl/models/masl/lib/masl/masl.xtuml                                          |  9 ++++++++-
 model/masl/models/masl/maslpopulation/population/population.xtuml                   | 18 ++++++++++++++++++
 model/masl/models/masl/maslpopulation/pragma/pragma.xtuml                           | 33 ++++++++++++++++++++++++---------
 model/maslin/gen/STRING_bridge.c                                                    |  4 +++-
 model/maslin/models/maslin/marking/ooapragma_item/ooapragma_item.xtuml              | 23 ++++++++++++++++++++---
 model/maslout/gen/STRING_bridge.c                                                   | 13 +++++++++++++
 model/maslout/models/maslout/lib/xtuml2masl/maslout_imported/maslout_imported.xtuml |  8 ++++++++
 model/mcshared/models/mcshared/MC_EEs/MC_EEs.xtuml                                  | 10 ++++++++++
 11 files changed, 122 insertions(+), 19 deletions(-)

</pre>

End
---

