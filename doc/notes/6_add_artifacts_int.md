---


---

# Add additional mc artifacts  
### xtUML Project Implementation Note  


1. Abstract
-----------
We are moving the build process from CVS to github.  We are also taking baby
steps to make the build work on other machines besides the build server 
(svr-azt-eng-03).  This note describes the additions to the xtuml/mc github
repository to support this work.

2. History
----------
None.

3. Document References
----------------------
[1] Issues 6 <https://github.com/xtuml/mc/issues/6>  
[2] Verifier Issues 1 <https://github.com/xtuml/verifier/issues/1>  

4. Background
-------------
See 1.

5. Requirements
---------------
5.1  The model compiler support files are in github on the master branch.

6. Work Required
----------------
6.1 Add the CVS HEAD version of the schema to the git repository xtuml/mc 
  (hereafter called <GR>) to <GR>/schema/sql/ to match the arcs that are 
  currently on the git repository master branch in the arc/ folder.  

6.2 Add the MC-3020 User Guide to the git repository under <GR>/doc/ug/.  This 
  is migrated from under <CVS>/MC-Documentation/external/.  

6.3 Migrate the libTRANS project from <CVS>/libTRANS/ to <GR>/libTRANS/.  

6.4 Migrate the generator helper scripts for running generator in backwards 
  compatible command-line mode from <CVS>/model_compilers/generator/bin/ to 
  <GR>/etc/generator/bin/.  

6.5 Migrate xtumlmc_build from <CVS>/model_compilers/mccommon/bin/ to 
  <GR>/bin/.   

6.6 Migrate default marking files from <CVS>/model_compilers/mc3020/schema/
  colors/ to <GR>/schema/colors/. Put the default marking manifest file at 
  <GR>/schema/.    

6.7 The build tools are updated separately (see [2]) to pull the data from this
  repository rather than CVS.  

7. Implementation Comments
--------------------------
None.

8. Unit Test
------------
8.1 There is no testing involved with physically putting the files into <GR> 
  as this issue handles.  The testing of pulling the data out is done with [2].

9. Code Changes
---------------
Repository: xtuml/mc
Branch name:  skb_add_artifacts_6 

<pre>
A       bin/xtumlmc_build
A       doc/ug/.project
A       doc/ug/xml/HOWTO-publish-this-ug.txt
A       doc/ug/xml/a2.xml
A       doc/ug/xml/a3.xml
A       doc/ug/xml/a4.xml
A       doc/ug/xml/a6.xml
A       doc/ug/xml/as2class.png
A       doc/ug/xml/c1.xml
A       doc/ug/xml/c10.xml
A       doc/ug/xml/c2.xml
A       doc/ug/xml/c3.xml
A       doc/ug/xml/c4.xml
A       doc/ug/xml/c5.xml
A       doc/ug/xml/c6.xml
A       doc/ug/xml/c7.xml
A       doc/ug/xml/containoids.xml
A       doc/ug/xml/dlist.png
A       doc/ug/xml/eclipse.xsl
A       doc/ug/xml/expclass.png
A       doc/ug/xml/lists.xml
A       doc/ug/xml/mcanalog.png
A       doc/ug/xml/mcgui.xml
A       doc/ug/xml/merged.png
A       doc/ug/xml/modelingGuide.xml
A       doc/ug/xml/nvsim.png
A       doc/ug/xml/parallel.png
A       doc/ug/xml/peiclass.png
A       doc/ug/xml/persist.xml
A       doc/ug/xml/persistdomain.fig
A       doc/ug/xml/persistdomain.png
A       doc/ug/xml/persistim.png
A       doc/ug/xml/plugin.properties
A       doc/ug/xml/plugin.xml
A       doc/ug/xml/revision_control.xml
A       doc/ug/xml/sedxml
A       doc/ug/xml/slist.png
A       doc/ug/xml/supersub.png
A       doc/ug/xml/supersub1.png
A       doc/ug/xml/supersub2.png
A       doc/ug/xml/tasking.xml
A       doc/ug/xml/taskingapi.xml
A       doc/ug/xml/techpub.css
A       doc/ug/xml/toc.xml
A       doc/ug/xml/ug.dsl
A       doc/ug/xml/ug.xml
A       doc/ug/xml/ug.xsl
A       doc/ug/xml/versionmanagement.png
A       etc/generator/bin/README.txt
A       etc/generator/bin/pt_gen_file
A       etc/generator/bin/pt_gen_file.cmd
A       etc/generator/bin/pt_gen_import
A       etc/generator/bin/pt_gen_import.cmd
A       etc/generator/bin/xtumlmc_gen_erate
A       etc/generator/bin/xtumlmc_gen_erate.cmd
A       libTRANS/.gitignore
A       libTRANS/.project
A       libTRANS/libTRANS.def
A       libTRANS/libTRANS.dll
A       libTRANS/libTRANS.mk
A       libTRANS/pt_trans.c
A       libTRANS/pt_trans.h
A       libTRANS/readme.txt
A       schema/colors/bridge.jap
A       schema/colors/bridge.mark
A       schema/colors/class.mark
A       schema/colors/datatype.jap
A       schema/colors/datatype.mark
A       schema/colors/domain.jap
A       schema/colors/domain.mark
A       schema/colors/event.jap
A       schema/colors/event.mark
A       schema/colors/object.jap
A       schema/colors/populate.arc
A       schema/colors/sys_functions.arc
A       schema/colors/system.jap
A       schema/colors/system.mark
A       schema/default-manifest.xml
A       schema/sql/xtumlmc_schema.sql
</pre>

End
---

