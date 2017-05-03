---

This work is licensed under the Creative Commons CC0 License

---

# Build mc executables on the build server
### xtUML Project Implementation Note

### 1. Abstract

At the moment, `mcmc`, `docgen`, and the MASL executables are compiled
individually when the source code is changed and committed to the `mc`
repository. It is better to build these from source each time a build is run.

2. Document References
----------------------
<a id="2.1"></a>2.1 [#9438 Build mc executables on the build server](https://support.onefact.net/issues/9438)  
<a id="2.2"></a>2.2 [#8976 S_IRDTs omitted by prebuilder (mcmc crash)](https://support.onefact.net/issues/8976)  
<a id="2.3"></a>2.3 [osxcross: MacOS cross compiler](https://github.com/tpoechtrager/osxcross)  

3. Background
-------------
None

4. Requirements
---------------
4.1 Build the mc tools from source on the build server for each build  
4.1.2 `mcmc`, `docgen`, `m2x`, `x2m`, `masl`, and `MASLParser.jar` shall be built  
4.1.3 They shall be built for Windows, MacOS, and Linux platforms  

5. Work Required
----------------

5.1 mc repository

5.1.1 Reorganized `bin/` directory to have subdirectories `win/` and `mac/` for
containing executables for those platforms  
5.1.2 Added/updated `.gitignore` files as necessary  
5.1.3 Removed binaries that will be built on the server  
5.1.4 Remove `-m32` and `-static` from `mcmc` and `docgen` makefiles. These will
be added in explicitly as needed when `make` is invoked  
5.1.5 Cleaned up `escher` project definition and removed unused builders and
natures  
5.1.6 Move `flex` library flags to a variable so it can be changed when
compiling form Mac (Mac uses `-ll` and not `-lfl`)  
5.1.7 Surround system calls to `mkdir` with preprocessor condition for
compatibility with Windows  
5.1.8 Implemented `_strsep` to replace standard function `strsep` for
compatibility with windows  

5.2 BridgePoint repository

5.2.1 Updated `releng/org.xtuml.bp.mctools/pom.xml` to include all the mc tools
for each platform from the mc repository  

5.3 buildmt repository

5.3.1 Update `get-package-dependencies.sh` with new dependencies:  
  * flex  
  * bison  
  * JDK  
  * clang  
  * MinGW 32bit Windows compiler  
5.3.2 Reorganized `.gitignores` for jobs such that a new `.gitignore` is not
needed for each new job  
5.3.2 Added the "build-mc" job to build the executables  
5.3.3 Updated the "Build-BridgePoint" job to invoke the "build-mc" job  
5.3.4 Updated `setup.sh` to install `osxcross` cross compiler project  
5.3.5 Added `osxcross` to the `.gitignore`  
5.3.6 Fixed `setup.sh` to replace "WORKSPACE" with "WORKSPACE2" in
`launch-cli.py` as well as `CLI.sh`  
5.3.7 Updated the server setup HOWTO  

6. Implementation Comments
--------------------------
6.1 Due to issue #8976 [[2.2]](#2.2), `mcmc` cannot currently be built on the
server  
6.2 `osxcross` requires a packaged version of the MacOS SDK. Because this needs
to be in place before installation, a new image must be created with it already
on the server. This has been noted in the HOWTO document. More on the osxcross
project [[2.3]](#2.3)  

7. Unit Test
------------
7.1 Smoke test each platform

8. User Documentation
---------------------
None

9. Code Changes
---------------
Fork/Repository: leviathan747/mc  
Branch: 9438_build_mc  

<pre>

 bin/.gitignore                                                                                         |   6 ++++-
 bin/MASLParser.jar                                                                                     | Bin 279774 -> 0 bytes
 bin/build_masl                                                                                         | 108 ----------------------------------------------------------------------------
 bin/docgen                                                                                             | Bin 1295014 -> 0 bytes
 bin/docgen.exe                                                                                         | Bin 651939 -> 0 bytes
 bin/m2x                                                                                                | Bin 695992 -> 0 bytes
 bin/mac/.gitignore                                                                                     |   4 +++
 bin/mac/mcmc                                                                                           | Bin 0 -> 1450168 bytes
 bin/masl                                                                                               | Bin 243848 -> 0 bytes
 bin/masl_check                                                                                         |   0
 bin/win/.gitignore                                                                                     |   4 +++
 bin/{ => win}/CLI.bat                                                                                  |   0
 bin/{ => win}/gen_erate.exe                                                                            | Bin
 bin/{ => win}/mcmc.exe                                                                                 | Bin
 bin/{ => win}/xtumlmc_build.exe                                                                        | Bin
 bin/x2m                                                                                                | Bin 695472 -> 0 bytes
 model/docgen/src/makefile.docgen                                                                       |   4 +--
 model/escher/.classpath                                                                                |   2 +-
 model/escher/.cproject                                                                                 | 269 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 model/escher/.externalToolBuilders/Core Builder.launch                                                 |  29 ---------------------
 model/escher/.externalToolBuilders/org.eclipse.cdt.managedbuilder.core.ScannerConfigBuilder (1).launch |   7 -----
 model/escher/.externalToolBuilders/org.eclipse.cdt.managedbuilder.core.genmakebuilder (1).launch       |  21 ---------------
 model/escher/.externalToolBuilders/org.eclipse.jdt.core.javabuilder.launch                             |   7 -----
 model/escher/.externalToolBuilders/org.eclipse.pde.ManifestBuilder.launch                              |   7 -----
 model/escher/.externalToolBuilders/org.eclipse.pde.SchemaBuilder.launch                                |   7 -----
 model/escher/.project                                                                                  |  25 ------------------
 model/escher/src/makefile.mcmc                                                                         |   3 ++-
 model/masl/gen/T_bridge.c                                                                              |   4 +++
 model/masl/gen/sys_user_co.c                                                                           |  21 ++++++++++++---
 model/maslin/gen/sys_user_co.c                                                                         |  21 ++++++++++++---
 model/maslout/gen/T_bridge.c                                                                           |   4 +++
 31 files changed, 62 insertions(+), 491 deletions(-)

</pre>

Fork/Repository: leviathan747/bridgepoint  
Branch: 9438_build_mc  

<pre>

 releng/org.xtuml.bp.mctools/pom.xml | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

</pre>

Fork/Repository: leviathan747/buildmt  
Branch: 9438_build_mc  

<pre>

 buildmt/.gitignore                                       |   2 ++
 buildmt/get-package-dependencies.sh                      |   2 +-
 buildmt/jenkins-home/config.xml                          |   1 +
 buildmt/jenkins-home/jobs/.gitignore                     |   9 +++++++++
 buildmt/jenkins-home/jobs/Build-BridgePoint/.gitignore   |   6 ------
 buildmt/jenkins-home/jobs/Build-BridgePoint/config.xml   |  23 +++++++++++++++++++++++
 buildmt/jenkins-home/jobs/Run-MASL-Round-Trip/.gitignore |   6 ------
 buildmt/jenkins-home/jobs/bridgepoint/.gitignore         |   6 ------
 buildmt/jenkins-home/jobs/bridgepoint/config.xml         |   1 -
 buildmt/jenkins-home/jobs/build-mc/config.xml            | 180 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 buildmt/jenkins-home/jobs/git-refresh/.gitignore         |   6 ------
 buildmt/jenkins-home/jobs/install-bp/.gitignore          |   6 ------
 buildmt/jenkins-home/jobs/publish/.gitignore             |   6 ------
 buildmt/jenkins-home/jobs/roundtrip/.gitignore           |   6 ------
 buildmt/setup.sh                                         |  19 ++++++++++++++++++-
 doc/howtos/HOWTO_setup_build_server.md                   |   6 +++++-
 16 files changed, 239 insertions(+), 46 deletions(-)

</pre>

End
---

