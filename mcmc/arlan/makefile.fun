#* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ *#
#*| Title:               Makefile (Dependency Resolution)           |*#
#*| File Name:           makefile                                   |*#
#*| Owner:               Cortland D. Starrett                       |*#
#*|                                                                 |*#
#*| Abstract -                                                      |*#
#*|   This is a makefile.  Typing "make" will cause files in        |*#
#*|   the current directory to be processed.                        |*#
#*|                                                                 |*#
#*| Notes -                                                         |*#
#*|   Lex should work in place of flex.  I have not tried it.       |*#
#* _________________________________________________________________ *#


SHELL        = /bin/sh
LEX          = flex
LEXFLAGS     =
#LEXFLAGS     = -d
YACC         = yacc
CC           = cc
CFLAGS       = -O -c -DFUN
LINKER       = cc
LOCALGRAMMAR = arlan.l arlan.y
LOCALSOURCES = lex.yy.c y.tab.c
LOCALOBJS    = lex.yy.o y.tab.o
OBJS         = $(LOCALOBJS)
EXE          = fname


#----------------------------------------------------------
#  Default stanza to make the world.
#----------------------------------------------------------
.PHONY:  all
all:  main

.PHONY:  fname
fname:  $(LOCALOBJS)

#-------------------------------------------------------------
#  Link the executable.
#-------------------------------------------------------------
main:  $(OBJS)
	$(LINKER) $(OBJS) -lfl -o $(EXE)

FORCE:

#-------------------------------------------------------------
#  Build source "compile" stanzas.
#-------------------------------------------------------------
lex.yy.c:  arlan.l
	$(LEX) $(LEXFLAGS) arlan.l

y.tab.c:  arlan.y
	$(YACC) arlan.y

lex.yy.o:  lex.yy.c
	$(CC) $(CFLAGS) lex.yy.c

y.tab.o:  y.tab.c
	$(CC) $(CFLAGS) y.tab.c

#-------------------------------------------------------------
#  Clean up the trash.
#-------------------------------------------------------------
clean:
	rm *.o

#
# Identity and Version Information -
# $Id: makefile.fun,v 1.1 2006/03/28 18:35:13 cstarret Exp $
#
# Revision History -
# $Log: makefile.fun,v $
# Revision 1.1  2006/03/28 18:35:13  cstarret
# Job:1865
# Adding arlan to CVS.
#  ----------------------------------------------------------------------
#  Added Files:
#  	arlan.l arlan.y classes.l classes.y fold.l gen.l gen.y
#  	makefile.arl makefile.arlan makefile.classes makefile.fol
#  	makefile.fra makefile.fun makefile.gen makefile.ind
#  	makefile.template template_engine.l template_engine.y
#  ----------------------------------------------------------------------
#
# Revision 1.6  1995/10/04  05:44:46  cort
# Added support for comments between PARAMs.
# Re-enabled recognition of FROM INSTANCES OF in comments.
#
# Revision 1.5  1995/09/22  04:47:50  cort
# Fully functional.  Shipping to PT.
#
#
