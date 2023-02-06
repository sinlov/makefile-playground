# this file must use as base Makefile

ENV_PATH_INFO_ROOT_DIST=dist
ENV_PATH_INFO_ROOT_DIST_LOCAL=${ENV_PATH_INFO_ROOT_DIST}/local
ENV_PATH_INFO_ROOT_DIST_OS=${ENV_PATH_INFO_ROOT_DIST}/os

pathDistEnv:
	@echo "-----------------  this pathDistEnv has -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                        ${PATH_INFO_ROOT_DIST}"
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                  ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                     ${ENV_PATH_INFO_ROOT_DIST_OS}"

cleanDistAll:
	-@RM -r ${ENV_PATH_INFO_ROOT_DIST}

pathCheckRootDist: | $(ENV_PATH_INFO_ROOT_DIST)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_INFO_ROOT_DIST}"

$(ENV_PATH_INFO_ROOT_DIST):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_INFO_ROOT_DIST})
else
	-@mkdir -p ${ENV_PATH_INFO_ROOT_DIST}
endif

cleanRootDistLocal:
	-@RM -r ${ENV_PATH_INFO_ROOT_DIST_LOCAL}

pathCheckRootDistLocal: | $(ENV_PATH_INFO_ROOT_DIST_LOCAL)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"

$(ENV_PATH_INFO_ROOT_DIST_LOCAL):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})
else
	-@mkdir -p ${ENV_PATH_INFO_ROOT_DIST_LOCAL}
endif

cleanRootDistOs:
	-@RM -r ${ENV_PATH_INFO_ROOT_DIST_OS}

pathCheckRootDistOs: | $(ENV_PATH_INFO_ROOT_DIST_OS)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_INFO_ROOT_DIST_OS}"

$(ENV_PATH_INFO_ROOT_DIST_OS):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_INFO_ROOT_DIST_OS}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})
else
	-@mkdir -p ${ENV_PATH_INFO_ROOT_DIST_OS}
endif
