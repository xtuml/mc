---

This work is licensed under the Creative Commons CC0 License

---

# MASL Marking Import and Export
### xtUML Project Design Note

1. Abstract
-----------
This work documents the design of importing new format marking data into
a project as part of MASL-to-xtUML conversion and supplying these marks
downsteam in the xtUML-to-MASL flow.

2. Document References
----------------------
[1] [8980](https://support.onefact.net/redmine/issues/8980) m2x support for updated marking  
[2] [8981](https://support.onefact.net/redmine/issues/8981) x2m support for updated marking  
[3] [8951](https://support.onefact.net/redmine/issues/8951) marking editor  
[4] [8801](https://support.onefact.net/redmine/issues/8801) MASL round trip test  

3. Background
-------------
MASL models have been marked with pragmas in Descrip fields until the
recent advent of the Marking Editor [3].  Now marking data is kept
separate from the model data in text files.

4. Requirements
---------------
4.1 m2x  
4.1.1 marking files  
Instead of storing marks in Descrip fields within model data, persist
them to text files in the gen/ folder of the project.

4.1.2 pragmas  
Recognize pragmas in serialized MASL as before.

4.2 x2m  
4.2.1 marking files  
Instead of finding marks in Descrip fields within model data, find
the marks in the separately persisted marking files.

4.2.2 pragmas  
Emit pragmas into the generated MASL as before changing only x2m and not masl.

5. Analysis
-----------
5.1 Files  
Marking data is now stored in `gen/features.mark` and `gen/application.mark`.
See [3].

5.2 Model of Marking and Persistence  
A model of marking has been created in `org.xtuml.bp.ui.marking`.  This model
is not presently translated in Java.

A big design decision revolves around the marking data contained in ascii
test files in a comma separated values (CSV) format.  The current x2m loads
instances; all data comes to it using this consistent load process.

Also, even though this marking data is coming from ascii text, it is
modeled.  We can populate the model from the text data and perform
the m2x and x2m transformations on this instance data.

5.3 Passing Marks In  
Passing the marking data into the project from the MASL conversion process
may be messy.  Here are options to communicate the marking data from `m2x`
to the BridgePoint `Import` process:  
5.3.1 Add marking model to OOA and enable persistence.  Select and serialize
to gen files on Import.  
5.3.2 m2x fills a Descrip field which Import then writes into the gen folder.  
5.3.3 m2x creates features.mark and application.mark files and programmatically
copies them into the gen/ folder.  
5.3.4 m2x creates features.mark and application.mark files and leaves them
to be copied into the project gen/ folder.

5.3.4 is the alternative selected.

6. Design
---------
6.1 m2x  
6.1.1 Detect pragma messages among the stream of serialized MASL.  Recognize
and maintain model element associations.  
6.1.2 Create and relate instances in the model of marking.  Create feature
and markable element type instances as needed.  
6.1.3 At the end of the m2x processing, serialize the model of marking
into files per 5.3.4.  

6.2 x2m  
6.2.1 Launch and load SQL format xtUML instances.  
6.2.2 Using EE, read features.mark file and load/relate instances.  
6.2.3 Using EE, read application.mark file and load/relate instances.  
6.2.4 Maintain links to the application model by name and path lookup.  
6.2.5 During xtUML-to-MASL processing, pragmas in the form of serialized
MASL are translated from the marking model.  
6.2.6 Unmatched marks shall be logged (in the Console).  

6.3 CSV EE  
The STRING or CSV EE will be extended to read and write the marking files.

7. Design Comments
------------------

8. Unit Test
------------
8.1 Round Trip Test  
Run [4].

End
---

