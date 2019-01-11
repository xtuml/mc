ifndef BRIDGEPOINT_DIR
    $(error BRIDGEPOINT_DIR is undefined)
endif

ROOTDIR  := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECTS := $(ROOTDIR) $(ROOTDIR)/../mcooa $(ROOTDIR)/../mcshared
MARKINGS := $(ROOTDIR)/src
SOURCES  := $(ROOTDIR)/src

#
# Don't modify below unless you know what you are doing
#

BP       ?= $(BRIDGEPOINT_DIR)/bridgepoint
MC3020   ?= $(ROOTDIR)/../../bin/mc3020.py
CC       ?= gcc
CFLAGS   ?= -Wno-pointer-to-int-cast -Wno-parentheses-equality
LDFLAGS  ?= -lc

SRC_FILES   := $(shell find $(SOURCES) -name *.c -type f | sed 's/ /\\ /g')
MARK_FILES  := $(shell find $(MARKINGS) -name *.mark -type f | sed 's/ /\\ /g')
MODEL_FILES := $(shell find $(PROJECTS) -name *.xtuml -type f | sed 's/ /\\ /g')

TARGET := $(shell ls $(ROOTDIR)/models)
GENDIR := $(ROOTDIR)/gen/code_generation

CDTAPP := org.eclipse.cdt.managedbuilder.core.headlessbuild
TMPWS  := $(shell mktemp -u)
WS     := $(GENDIR)/_ws
SRCDIR := $(GENDIR)/_ch
SQL    := $(GENDIR)/$(TARGET).sql
BIN    := $(ROOTDIR)/$(TARGET)

COPIES := $(notdir $(SRC_FILES))
COPIES := $(addprefix $(SRCDIR)/, $(COPIES))

all: $(BIN)

$(WS):
	@echo "Creating workspace..."
	@$(foreach PROJECT,$(PROJECTS),$(BP) -nosplash -data $(TMPWS) -application $(CDTAPP) -import $(PROJECT);)
	@mkdir -p $(GENDIR)
	@mv $(TMPWS) $@

$(SQL): $(WS) $(MODEL_FILES)
	@echo "Prebuilding model..."
	@$(BP) -nosplash -data $(WS) -application org.xtuml.bp.cli.Build -project $(TARGET) -prebuildOnly

$(SRCDIR): $(SQL) $(MARK_FILES)
	@echo "Generating source code..."
	@$(MC3020) -m $(MARKINGS) -o $(GENDIR) $(SQL)
	@rm -f $(COPIES)
	@touch $@

$(BIN): $(SRC_FILES) $(SRCDIR)
	@echo "Compiling source code..."
	@cd $(GENDIR); $(CC) -o $@ -I$(SRCDIR) $(CFLAGS) $(SRC_FILES) $(wildcard $(SRCDIR)/*.c) $(LDFLAGS)

.PHONEY:
clean:
	@rm -f $(BIN)
	@rm -rf $(GENDIR)
