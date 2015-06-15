# README - HOWTO Create xtumlmc_build.exe

1. Abstract
-----------
This note describes the steps for creating the xtumlmc_build.exe using 
Strawberry Perl and put it where it will be picked up by the nightly
build process.   

2. Document References
----------------------
[1] [xtumlmc_build perl script] (https://github.com/xtuml/mc/blob/master/bin/xtumlmc_build)  
[2] [Strawberry Perl] (http://strawberryperl.com/)  
[3] [Packaging folder for extra files] (https://github.com/xtuml/packaging/tree/master/build/extra_files)  

3. One Time Setup
-------------
1.  Install Strawberry Perl [2] 5.16.3.1-32bit.  Note that we have encountered issues trying to use newer versions.  So be careful when choosing a version other than this recommended one.
2.  Open the Windows environment variable settings, move the Strawberry perl entries to the beginning of the path.
3.  Open the Strawberry Perl CPAN Client (Start > All Programs > Strawberry Perl > Tools > CPAN Client)
4.  Inside the CPAN Client run ```force install PAR::Packer``` 

4. EXE build steps
-------------
1.  Open the Strawberry Perl console (Start > All Programs > Strawberry Perl > Perl (command line))
2.  Navigate to the folder that contains the xtumlmc_build script to compile.
4.  Run ```pp -o xtumlmc_build.exe xtumlmc_build```
5.  In order for the new EXE to be included inside an official BridgePoint build, put the new EXE into the packging repository [3] in the ```build/extra_files/``` folder.

5. Troubleshooting
-----------------------
1. Make sure the Strawberry perl directories are at the front of your Windows PATH.  When it isn't I've seen wierd errors like:
  -  VSI was installed on the same system and VSI's MinGW perl interfered with Strawberry.  Running ```cpan``` gave errors about not being able to write config file for ```C:\Users\cwilson```
  -  Trying to install PAR::Packer failed with MSVC errors about bad C++ DLLs

2. If the ```pp``` command gives a "command not found" error, you must install the pp module:
```
- Open the Strawberry Perl console
C:\> cpan
cpan> install pp
```
If the above fails you can try:
```
C:\> cpanm -n PAR::Packer --force
```
