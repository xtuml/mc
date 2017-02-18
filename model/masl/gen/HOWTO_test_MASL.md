# HOWTO Build and Test MASL in Isolation

It is possible to test the model of MASL in isolation.  This means you
can unit test the populate/validate/render operations without integrating
with the rest of BridgePoint or even with ooaofooa.  

Build the masl project in isolation.  

Make sure the workspace includes escher, mcooa, and mcshared projects from the 
mc repository.  The workspace must also have imported into it the org.xtuml.bp.ui.marking 
project from the bridgepoint repository.
  
The C compiler is turned off, so you will need to compile the generated C code.
Run BridgePoint's "Build Project" command.  Then open a terminal and navigate to
the project's src/ folder. Run:

`make -f makefile.masl`

Run the executable.  
`mcmasl`


Provide input by typing into the standard input.  
```
project,fi
domain,fo
terminator,fum
^D
```

(That last input is control-D to end the file input.)

Another way to run is to redirect input from a file.  
`./a.out < input.txt`

Input is of the form:  
```
<element name>,<attribute value>,...
<element name>,<attribute value>,...
```

These must be provided in the correct order as expected from the parser
or from the xtuml2masl M2M transform.

The output will go to `stdout`.  
