foo := $(wordlist 2, 3, foo bar baz)
bar := $(wordlist 3, 4, foo bar baz)
baz := $(wordlist 5, 6, foo bar baz)

all:
	@echo foo [${foo}]
	@echo bar [${bar}]
	@echo baz [${baz}]