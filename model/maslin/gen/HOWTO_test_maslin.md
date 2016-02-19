# HOWTO Build and Test maslin in Isolation

It is possible to test the maslin converter application in isolation.  This means you
can unit test without integrating with the rest of BridgePoint.  


## Configuring the workspace
You need to get the following projects from the mc repository:
  * masl
  * maslin
  * mcooa
  * mcshared


## Test in verifier
The project does not currently support testing in verifier.

## Test the Executable
The maslin project contains a test component with a test function called `doTest`.  You 
can use that or you can modify the system.mark to not use the initialization function and just
rely on the executable's ability to read from stdin to provide input via keyboard or file.
 
### Generate code
Run BridgePoint's `Build Project` action to generate the C code.

### Build the maslin project  
The C compiler is turned off, so you will need to compile the generated C code.
  * Open a terminal and navigate to the maslin project folder  
  * `cd src`
  * `make -f makefile.maslin`

### Run the executable.  
`./m2x > /tmp/converted.xtuml`

You can then fire up BridgePoint, create a new xtUML project and import /tmp/converted.xtuml into it.

If you disable the doTest init function, you can provide input by typing into the standard input:  
```
project,fi
domain,fo
terminator,fum
^D
```

(That last input is control-D to end the file input.)

Another way to run is to redirect input from a file.  A file with test data is `maslin/test_data/SAC.masldsl`.
`./m2x < ./maslin/test_data/SAC.masldsl`

Input is of the form:  
```
<element name>,<attribute value>,...
<element name>,<attribute value>,...
```

These must be provided in the correct order as expected from the parser or from the xtuml2masl M2M transform.

