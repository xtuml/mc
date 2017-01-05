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
4.2.3 Provide validation data early enough to prevent a user from
seeing unvalidated MASL in the activity editor due to a missing `.mod` file.  
4.3 Emit the `.mod` file and the `.mod` file only.  
4.4 Provide Enough Data  
4.4.1 Emit enough data into `.mod` files to provide satisfactory
validation and assistance to the MASL activity editor.  

5. Analysis
-----------
5.1 Prebuilder  
The current xtuml2masl operation depends upon the prebuilder.  This is
convenient in that the prebuilder is already designed to supply all of the
needed model data.

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

5.5 When to Run  
This is the big problem.  How and when is this export/refresh operation run?
Is it automatic?

5.6 Formatting  
A manually triggered `Export MASL Domain` operation results in a `.mod` file
that has been formatted.  The formatting is done with a java application that
runs in its own virtual machine and thus takes about 1 second to run.  Should
fomatting always be done?

5.7 Options  

5.7.1 Leave As Is  
Leave as is and depend upon the user to refresh the `.mod` files as deemed
necessary.  

5.7.2 Initialized MASL Domain  
BridgePoint could be modified to trigger `Export MASL Domain` upon import
of a MASL project.

5.7.3 Scooped/Exported on a Clock  
Refresh the `.mod` file once every minute or so.

5.7.4 Scooped/Exported at Editor Open  
Refresh the `.mod` file as the user is opening a MASL activity to edit it.

5.7.5 Scooped/Exported on a Listener  
Refresh the `.mod` file every time a (structural) model change is detected.

5.8 Scoop vs Export  
I do not think it matters whether scoop or prebuild is used.

5.9 Format or Not  
Formatting is not important in this case.  And since it takes a long
time, it should be skipped or made to run faster.

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

