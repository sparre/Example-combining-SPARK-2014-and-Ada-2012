ifndef PROVE
   $(error Please set PROVE to either "true" or "false".)
endif

ifeq ($(PROVE),true)
   DEFAULT_BUILD = build_unchecked
else
   DEFAULT_BUILD = build_checked
endif

all: $(DEFAULT_BUILD)

build_unchecked: prove
	gnatmake -Pexample

build_checked:
	gnatmake -fstack-check -gnata -gnato -Pexample

prove:
	gnatprove -Pexample

test: $(DEFAULT_BUILD)

.PHONY: all build_unchecked build_checked prove test

