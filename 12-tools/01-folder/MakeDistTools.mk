# this file must use as base Makefile

PATH_INFO_ROOT_DIST=dist
PATH_INFO_ROOT_DIST_LOCAL=${PATH_INFO_ROOT_DIST}/local
PATH_INFO_ROOT_DIST_OS=${PATH_INFO_ROOT_DIST}/os

pathDistEnv:
	@echo "-----------------  this pathDistEnv has -----------------"
	@echo "PATH_INFO_ROOT_DIST                        ${PATH_INFO_ROOT_DIST}"
	@echo "PATH_INFO_ROOT_DIST_LOCAL                  ${PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "PATH_INFO_ROOT_DIST_OS                     ${PATH_INFO_ROOT_DIST_OS}"

cleanDistAll:
	-@RM -r ${PATH_INFO_ROOT_DIST}

pathCheckRootDist: | $(PATH_INFO_ROOT_DIST)
	@echo "-> dist folder tools path exist at: ${PATH_INFO_ROOT_DIST}"

$(PATH_INFO_ROOT_DIST):
	@echo "-> dist folder tools does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST})
else
	-@mkdir -p ${PATH_INFO_ROOT_DIST}
endif

cleanRootDistLocal:
	-@RM -r ${PATH_INFO_ROOT_DIST_LOCAL}

pathCheckRootDistLocal: | $(PATH_INFO_ROOT_DIST_LOCAL)
	@echo "-> dist folder tools path exist at: ${PATH_INFO_ROOT_DIST_LOCAL}"

$(PATH_INFO_ROOT_DIST_LOCAL):
	@echo "-> dist folder tools does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST_LOCAL}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST_LOCAL})
else
	-@mkdir -p ${PATH_INFO_ROOT_DIST_LOCAL}
endif

cleanRootDistOs:
	-@RM -r ${PATH_INFO_ROOT_DIST_OS}

pathCheckRootDistOs: | $(PATH_INFO_ROOT_DIST_OS)
	@echo "-> dist folder tools path exist at: ${PATH_INFO_ROOT_DIST_OS}"

$(PATH_INFO_ROOT_DIST_OS):
	@echo "-> dist folder tools does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST_OS}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST_OS})
else
	-@mkdir -p ${PATH_INFO_ROOT_DIST_OS}
endif
