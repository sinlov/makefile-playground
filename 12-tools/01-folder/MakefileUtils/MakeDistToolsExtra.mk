# this file must use into MakeDistTools.mk

pathDistExtraEnv:
	@echo "-----------------  this pathDistExtraEnv has start -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                                ${ENV_PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
else
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_FREEBSD                           ${ENV_INFO_PLATFORM_OS_FREEBSD}"
	@echo ""
endif
	@echo "-----------------  this pathDistExtraEnv has end -----------------"

ENV_INFO_PLATFORM_OS_FREEBSD=freebsd