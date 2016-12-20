---

This work is licensed under the Creative Commons CC0 License

---

# Provide Data for MASL Editor
### xtUML Project Design Note


1. Abstract
-----------
This note describes work performed to provide structural MASL to the MASL
activity editor in a timely and efficient manner.

2. Document References
----------------------
[1] [8797](https://support.onefact.net/issues/8797) - Provide Data to MASL Editor  
[2] [8931](https://support.onefact.net/issues/8931) - Do not parse when Dialect is not OAL  

3. Background
-------------
In BridgePoint 5.8, MASL data is supplied to the MASL activity editor via
a user initiated domain export.  Until this operation is performed for the
first time, MASL activities cannot be validated.

4. Requirements
---------------
4.1 Provide validation data to the MASL activity editor.  
4.1.1 Emit `.mod` file(s) as needed.  
4.2 Timeliness  
4.2.1 Emit `.mod` files early and often enough so that the user has a
good experience running the MASL activity editor.  
4.2.2 Do not bog the Editor down emitting `.mod` files "too much".  
4.3 Emit the `.mod` file and the `.mod` file only.  

5. Analysis
-----------
5.1 Prebuilder  
The current xtuml2masl operation depends upon the prebuilder.  This is
convenient in that the prebuilder is already designed to supply all of the
needed model data.  However, the prebuilder performs an unnecessary step
that indeed uses the largest amount of time; it runs the OAL activity parser.
This could be changed using the Dialect attribute (and probably should be) [2].

5.2 Scooper  
`xtumlmc_build` supports "scooping" `.xtuml` files from the filesystem in an
hierachical manner.  Since the MASL editor requires only structural xtUML
to validate activities, these scooped files have everything required.  It is
likely more efficient to take the files from the file system rather than
serializing from memory.

5.3 `Globals.xtuml`  
When using the scoop method, the global native xtUML types must be considered.
These are stored in `org.xtuml.bp.pkg/globals/Globals.xtuml`.

5.4 IPRs  
References to model elements in other projects (IPRs) will need to be resolved
or otherwise worked around.

6. Design
---------
6.1 Change x2m to not mess with activity files.  

7. Design Comments
------------------
7.1 EmptyHandleDetected  
During development, a bug was identified in `masl_ooapopulation` in which
an empty instance was being related and unrelated.

8. Unit Test
------------

End
---

