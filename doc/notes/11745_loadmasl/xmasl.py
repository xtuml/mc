import sys, os, subprocess, re

ofilepath = sys.argv[1]
if ( not os.path.isdir( ofilepath ) ):
  os.mkdir( ofilepath )
root = '/Users/cort/git/masl/core-java/src/main/java/org/xtuml/masl/metamodelImpl'
dirs = [ d for d in os.listdir( root ) if not os.path.isfile( os.path.join( root, d ) ) ]

# list of objects
objectlist = set()
# lists of subsystems
subsystem = [set() for _ in xrange(20)]
# reserved words
reserved_words = [ 'anonymous', 'delta', 'dictionary', 'digits', 'domain', 'exception', 'generate', 'instance', 'object', 'range', 'readonly', 'reverse', 'service', 'terminator', 'type' ]
# list of subtype supertype tuples
subsup = []

# Return a list of subtypes for the input object.
def getsubtypes( supertype ):
  line = ""
  delim = ""
  for sub, sup in subsup:
    if ( sup == supertype ):
      line = line + delim + " " + sub
      delim = ","
  return line

# Initialize objectlist and subsystem lists.
subsystemindex = 0
for d in sorted( dirs ):
  dpath = os.path.join( root, d )
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    objectlist.add( objectname )
    subsystem[ subsystemindex ].add( objectname )
  subsystemindex = subsystemindex + 1

# Initialize subtype map.
for d in sorted( dirs ):
  dpath = os.path.join( root, d )
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    extension = ""
    pattern = ' class ' + objectname + ' extends '
    program = '/{print $(NF - 2), " ", $(NF);}' + "' "
    cmd = "awk '/" + pattern + program + dpath + '/' + fname
    try:
      extension = subprocess.check_output(cmd, shell=True)
    except Exception, e:
      extension = str( e.output )
    extension = extension.rstrip()
    extension = re.sub( '<.*>', '', extension )
    extension = re.sub( ' +', ' ', extension )
    if extension.strip():
      subsuper = extension.split(" ")
      subtype = subsuper[0]
      supertype = subsuper[1]
      subsup.append( subsuper )

# Produce .mod files for each subsytem.
relnum = 100
subsystemindex = 0
for d in sorted( dirs ):
  dpath = os.path.join( root, d )
  objectdeclaration = ""
  typelist = ""
  relspecs = ""
  objectdefinition = ""
  importedobjects = set()
  importedobjectlist = ""
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    objectdeclaration = objectdeclaration + '  object ' + objectname + ';\n'
    typelist = typelist + '  private type i' + objectname + ' is instance of ' + objectname + ';\n'
    pattern = ' p.* ' + objectname + ' \\( '
    cmd = "awk '/" + pattern + "/,/\)/{print $0;}' " + dpath + '/' + fname
    attrs = ""
    try:
      attrs = subprocess.check_output(cmd, shell=True)
    except Exception, e:
      attrs = str( e.output )
    # Find subtypes if they exist.
    if ( objectname not in [ 'CheckedLookup', 'NameLookup', 'Position', 'Positioned', 'PragmaList', 'Visibility' ] ):
      found = False
      slist = getsubtypes( objectname )
      ss = slist.split(",")
      for s in ss:
        s = re.sub( ' +', '', s )
        if s:
          if ( ',' not in s ):
            found = True
            if ( s not in subsystem[ subsystemindex ] ):
              importedobjects.add( s )
      if ss and found:
        relspec = 'relationship R' + str( relnum ) + ' is ' + objectname + ' is_a (' + slist + ' );\n'
        relspecs = relspecs + '  ' + relspec
        relnum = relnum + 1
    attrs = attrs.rstrip()
    attrs = attrs.replace( "private", "" )
    attrs = attrs.replace( "protected", "" )
    attrs = attrs.replace( "public", "" )
    attrs = attrs.replace( "final", "" )
    attrs = attrs.replace( "static", "" )
    attrs = attrs.replace( "throws SemanticError", "" )
    attrs = attrs.replace( "org.xtuml.masl.metamodel.common.Visibility", "Visibility" )
    attrs = re.sub( r'\.Mode', '', attrs )
    attrs = re.sub( r'\.Reference', '', attrs )
    attrs = re.sub( r'.*\(', '', attrs )
    attrs = attrs.replace( ")", "" )
    attrs = attrs.replace( ", ", "\n " )
    attrs = attrs.replace( ",", "" )
    attrs = re.sub( ' +', ' ', attrs )
    attrs = re.sub( r'^\n', '', attrs )
    alines = attrs.splitlines()
    alines = [line for line in alines if line.strip()]
    # Remove duplicates.
    alines = set(alines)
    attrs = ""
    anames = set()
    aduplicates = 0
    for line in alines:
      attrcomment = ""
      side1multiplicity = "one"
      words = line.split(" ")
      emptyness = words[0]
      atype = words[1]
      aname = words[2]
      if ( 'List<' in atype ):
        # List turns into a simple referential, probably 'first_'.
        atype = atype.replace( 'List<', '' )
        atype = atype.replace( '>', '' )
        aname = 'List_' + aname
        side1multiplicity = "many"
      if ( atype in objectlist ):
        if ( atype not in subsystem[ subsystemindex ] ):
          importedobjects.add( atype )
        if ( atype in [ 'CheckedLookup', 'NameLookup', 'Position', 'Positioned', 'PragmaList', 'Visibility' ] ):
          # CheckedLookup, NameLookup, Position and Positioned are parser domain.
          # PragmaList will get linked from another subsystem.
          # Visibility will be an enumerated type.
          nop = 'nop'
        else:
          # Build relationship specification and comment for referential attribute.
          relspec = "relationship R" + str(relnum) + " is " + objectname + " unconditionally XX " + side1multiplicity + " " + atype + ", " + atype + " unconditionally YY one " + objectname + ";\n"
          relspecs = relspecs + "  " + relspec
          attrcomment = "    //!" + relspec
          relnum = relnum + 1
        atype = "i" + atype
      if ( aname in reserved_words ):
        attrcomment = attrcomment + "    //!" + aname + "\n"
        aname = "my_" + aname
      attrs = attrs + attrcomment
      # Deal with duplicate attribute names.
      if aname in anames:
        aduplicates = aduplicates + 1
        aname = aname + str( aduplicates )
      anames.add( aname )
      attrs = attrs + "    " + aname + " : " + atype + ";\n"
    objectdefinition = objectdefinition + '  object ' + objectname + ' is\n' + attrs + '  end object;\n'

  for iobj in importedobjects:
    objectdeclaration = objectdeclaration + '  object ' + iobj + ';\n'
    importedobjectlist = importedobjectlist + '\n  //!imported\n  object ' + iobj + ' is\n    IMPORTED: integer;\n  end object;\n'

  # Write the subsystem file as a domain.
  subsystemname = 'masl_' + d
  dfilepath = os.path.join( ofilepath, subsystemname )
  if ( not os.path.isdir( dfilepath ) ):
    os.mkdir( dfilepath )
  dfilename = os.path.join( dfilepath, subsystemname )
  with open( dfilename + '.int', 'w' ) as intfile:
    intfile.write( 'domain ' + subsystemname + ' is\nend domain;\n' )
  with open( dfilename + '.mod', 'w' ) as modfile:
    modfile.write( 'domain ' + subsystemname + ' is\n' )
    modfile.write( objectdeclaration )
    modfile.write( typelist )
    modfile.write( relspecs )
    modfile.write( objectdefinition )
    modfile.write( importedobjectlist )
    modfile.write( 'end domain;\n' )
  subsystemindex = subsystemindex + 1
