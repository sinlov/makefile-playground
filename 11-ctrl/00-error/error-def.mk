ifdef ERROR_001

$(error error is $(ERROR_001))

endif

all:
	@echo ERROR_001 [${ERROR_001}]