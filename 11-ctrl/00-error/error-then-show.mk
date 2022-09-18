ERR = $(error found an error!)

.PHONY: err

right:
	@echo right

err:
	@echo err $(ERR)