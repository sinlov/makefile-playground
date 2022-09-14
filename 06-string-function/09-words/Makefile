sources := foo bar baz

foo := $(words, $(sources))
last := $(word $(words $(sources) ),$(sources))

all:
	@echo foo [${foo}]
	@echo last [${last}]