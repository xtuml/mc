import os, re, subprocess, sys

ofilepath = sys.argv[1]
if ( not os.path.isdir( ofilepath ) ):
  os.mkdir( ofilepath )
root = '/Users/cort/git/masl/core-java/src/main/java/org/xtuml/masl/metamodelImpl'
dirs = [ d for d in os.listdir( root ) if not os.path.isfile( os.path.join( root, d ) ) ]

# list of objects
domainobjects = set()
# lists of subsystems
subsystem = [set() for _ in xrange(20)]
# list of subtype supertype tuples
subsup = []
# Object and relationship numbers are suboffset + subsystem * subbase + counter
suboffset = 1000
subbase = 100
reserved_words = [ 'anonymous', 'delta', 'dictionary', 'digits', 'domain', 'event', 'exception', 'generate', 'instance', 'object', 'preferred', 'project', 'range', 'readonly', 'relationship', 'reverse', 'service', 'state', 'terminator', 'type' ]
# excluded classes
#   CheckedLookup, NameLookup, Position and Positioned are parser domain.
#   PragmaList will get linked from another subsystem.
#   Visibility will be an enumerated type.
excluded_classes = [ 'CheckedLookup', 'LocalVariableCollector', 'Name', 'Named', 'NameLookup', 'Position', 'Positioned', 'Pragma', 'PragmaList', 'Visibility' ]
excluded_directories = [ 'error', 'name' ]

# Return a list of subtypes for the input object.
def getsubtypes( supertype ):
  ss = set()
  for sub, sup in subsup:
    if ( sup == supertype ):
      ss.add( sub )
  return ss

# Return object name as imported object.
def getimportedname( obj, ss ):
  return 'IMPORTED_' + obj + '_' + ss

# Initialize domainobjects and subsystem lists.
subsystemindex = 0
for d in sorted( dirs ):
  if ( d in excluded_directories ):
    continue
  dpath = os.path.join( root, d )
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    if ( objectname in excluded_classes ):
      continue
    domainobjects.add( objectname )
    subsystem[ subsystemindex ].add( objectname )
  subsystemindex = subsystemindex + 1

# Initialize subtype map.
for d in sorted( dirs ):
  if ( d in excluded_directories ):
    continue
  dpath = os.path.join( root, d )
  files = [ f for f in os.listdir( dpath ) if os.path.isfile( os.path.join( dpath, f ) ) ]
  for fname in sorted( files ):
    objectname = os.path.splitext( fname )[0]
    if ( objectname in excluded_classes ):
      continue
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
      if ( subtype not in excluded_classes ):
        subsup.append( subsuper )

# Produce .mod files for each subsytem.
subsystemindex = 0
for d in sorted( dirs ):
  if ( d in excluded_directories ):
    continue
  objnum = suboffset + ( subbase * subsystemindex )
  relnum = suboffset + ( subbase * subsystemindex )
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
    if ( objectname in excluded_classes ):
      continue
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
    slist = ''
    delim = ''
    ss = getsubtypes( objectname )
    for s in sorted( ss ):
      subtypename = s
      if ( s not in subsystem[ subsystemindex ] ):
        importedobjects.add( s )
        subtypename = getimportedname( s, d )
      slist = slist + delim + ' ' + subtypename
      delim = ','
    if ss:
      relspec = 'relationship R' + str( relnum ) + ' is ' + objectname + ' is_a (' + slist + ' );\n'
      relspecs = relspecs + '  ' + relspec
      relnum = relnum + 1
    attrs = attrs.rstrip()
    for s in [ 'private', 'protected', 'public', 'final', 'static', 'throws SemanticError' ]:
      attrs = attrs.replace( s, '' )
    attrs = attrs.replace( "org.xtuml.masl.metamodel.common.Visibility", "Visibility" )
    attrs = attrs.replace( "org.xtuml.masl.metamodel.relationship.MultiplicityType", "MultiplictyType" )
    attrs = attrs.replace( "org.xtuml.masl.metamodel.statemodel.TransitionType", "TransitionType" )
    attrs = attrs.replace( "EventDeclaration.Type", "EventDeclaration" )
    attrs = attrs.replace( "State.Type", "State" )
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
      atype = re.sub( '<.*>', '', atype )
      if ( atype in domainobjects ):
        if ( atype in excluded_classes ):
          nop = 'nop'
        else:
          relatedname = atype
          if ( atype not in subsystem[ subsystemindex ] ):
            importedobjects.add( atype )
            relatedname = getimportedname( atype, d )
          # Build relationship specification and comment for referential attribute.
          relspec = "relationship R" + str(relnum) + " is " + objectname + " unconditionally XX " + side1multiplicity + " " + relatedname + ", " + relatedname + " unconditionally YY one " + objectname + ";\n"
          relspecs = relspecs + '  ' + relspec
          attrcomment = '    //!' + relspec
          relnum = relnum + 1
        atype = 'i' + atype
      if ( aname in reserved_words ):
        attrcomment = attrcomment + "    //!" + aname + "\n"
        aname = 'my_' + aname
      attrs = attrs + attrcomment
      # Deal with duplicate attribute names.
      if aname in anames:
        aduplicates = aduplicates + 1
        aname = aname + str( aduplicates )
      anames.add( aname )
      attrs = attrs + "    " + aname + " : " + atype + ";\n"
    objectdefinition = objectdefinition + '  object ' + objectname + ' is\n' + attrs + '  end object; pragma id(' + str( objnum ) + ');\n'
    objnum = objnum + 1

  for iobj in importedobjects:
    typelist = typelist + '  private type i' + iobj + ' is instance of ' + getimportedname( iobj, d ) + ';\n'
    objectdeclaration = objectdeclaration + '  object IMPORTED_' + iobj + '_' + d + ';\n'
    importedobjectlist = importedobjectlist + '\n  //!IMPORTED\n  object ' + getimportedname( iobj, d ) + ' is\n  end object; pragma id(' + str( objnum ) + ');\n'
    objnum = objnum + 1

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
