foo =
ifdef foo
frobozz = yes
else
frobozz = no
endif

all:
	@echo frobozz $(frobozz)