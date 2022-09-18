ifdef bletch
ifeq "$(origin bletch)" "environment"
bletch = barf, gag, etc.
endif
endif

foo := foo

all:
	@echo "origin -> undefined [$(origin notfound)]"
	@echo "origin -> default : CC [$(origin CC)]"
	@echo "origin -> environment : PATH [$(origin PATH)]"
	@echo "origin -> file : foo [$(origin foo)]"
	@echo "origin -> command line : C_FLAG [$(origin C_FLAG)]"
	@echo "origin -> change : bletch [$(origin bletch)]"