---

This work is licensed under the Creative Commons CC0 License

---

# Support Package References in MC
### xtUML Project Implementation Note

1. Abstract
-----------

This note documents the changes to the model compiler to support
Package References (EP_PKGREF).

2. Document References
----------------------
2.1 [#8072 Support package references in the MC.](https://support.onefact.net/issues/8072) -- issue for this work  
2.2 [#8633 Package References (Imported Packages)](https://support.onefact.net/issues/8633) -- This is the parent issue.  
2.3 [Analysis Note for Package References](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/notes/8633_PackageReference/8633_PackageReference_ant.md)  

3. Background
-------------
The xtUML metamodel has been updated in BridgePoint to add Package
Reference (EP_PKGREF).  A reflexive associative is added as R1402.
The parallel change needs to be made to `mcooa`.

4. Requirements
---------------
4.1 Continue supporting package reference marking the old hacky way for now.  
4.2 Raise a follow-on issue to remove the hacky way of importing packages.  
4.3 Navigate R1402 to support package references the new way.  

5. Design
---------
Package references are already supported in MC-3020 using the scheme of
marking an imported package in the Descrip field.  So, the work to make
this work work by traversing R1402 is small.

Namely, instead of stitching the imported package directly into the
parent component, we will navigate across R1402 to the imported package.
For current MC-3020, we can navigate this association only once for
classes and functions.  MC-3020 does not know how to have the same
class or function in more than one component.

6. Work Required
----------------
as outlined in the design

7. Implementation Comments
--------------------------
7.1 Rebuild docgen.  
Docgen needed to be built to support the updated schema.

7.2 Fix STRING::quote.  
A better way to handle string quotes was introduced during a fix to
`maslout`.  Implement a simpler way here.

8. Unit Test
------------
8.1 Build and test `docgen`.  
Docgen uses package references.  Be sure it still works by generating
documentation using a version of docgen using the updated `mcooa`.  
8.2 Build and test `mcmc`.  

9. User Documentation
---------------------
None

10. Code Changes
----------------
Fork/Repository:  cortlandstarrett/mc  
Fork/Repository:  cortlandstarrett/packaging  
Branch:  8072_packref  

<pre>

</pre>


End
---

