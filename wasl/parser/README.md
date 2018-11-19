HOWTO build and run the ASL parser
===================================

## Build the parser

* Be sure to have a jdk installed.  On ubuntu, `sudo apt-get install default-jdk`.
* Download the ANTLR tool. See `lib/README.md` for further instructions

From the `parser` directory, run:
```bash
ant
```

## Run the parser


### Usage:

(classpath will be the `build` directory and the antlr jar, `lib/antlr-3.5.2-complete.jar`)

Parse single ASL file:
```bash
java -cp <classpath> AslImportParser -f <rule> <ASL file> [-o [file name] ]
```

Parse ASL domain:
```bash
java -cp <classpath> AslImportParser -d <domain directory> [-o [file name] ]
```

Parse ASL project:
```bash
java -cp <classpath> AslImportParser -p <project directory> [-o [file name] ]
```

### Output

If the `-o` flag not specified, the output defaults to `stdout`.

If the `-o` flag is specified with no file name, the output file name is automatically
chosen and the output file is placed in the current working directory.

If the `-o` flag is specified with a file name, the output is written to the specified file.

### Rules

When parsing a single ASL file, you must specify the walker rule you want to parse
with.

The available rules are:
* `target`
* `activityDefinition`
* `objectServiceDefinition`
* `stateDefinition`
* `domainServiceDefinition`
* `terminatorServiceDefinition`
* `projectTerminatorServiceDefinition`
