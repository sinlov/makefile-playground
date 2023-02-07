# this file must use as base Makefile

ENV_PATH_INFO_ROOT_DIST=dist
ENV_PATH_INFO_ROOT_DIST_LOCAL=${ENV_PATH_INFO_ROOT_DIST}/local
ENV_PATH_INFO_ROOT_DIST_OS=${ENV_PATH_INFO_ROOT_DIST}/os

pathDistEnv:
	@echo "-----------------  this pathDistEnv has -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                        ${PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                  $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                     $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
else
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                  ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                     ${ENV_PATH_INFO_ROOT_DIST_OS}"
endif

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

ENV_INFO_PLATFORM_OS_ARCH_AMD64=amd64
ENV_INFO_PLATFORM_OS_ARCH_386=386
ENV_INFO_PLATFORM_OS_ARCH_ARM64=arm64
ENV_INFO_PLATFORM_OS_ARCH_ARM=arm

ENV_INFO_PLATFORM_OS_WINDOWS=windows

ENV_PATH_DIST_PLATFORM_OS_WINDOWS=${ENV_PATH_INFO_ROOT_DIST_OS}/${ENV_INFO_PLATFORM_OS_WINDOWS}

pathCheckRootDistPlatformWin: | $(ENV_PATH_DIST_PLATFORM_OS_WINDOWS)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}"

$(ENV_PATH_DIST_PLATFORM_OS_WINDOWS):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}
endif

cleanRootRootDistPlatformWin:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}
endif

ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64=${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}/${ENV_INFO_PLATFORM_OS_ARCH_AMD64}

pathCheckRootDistPlatformWinAmd64: | $(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64}"

$(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64}
endif

cleanRootRootDistPlatformWinAmd64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_AMD64}
endif

ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386=${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}/${ENV_INFO_PLATFORM_OS_ARCH_386}

pathCheckRootDistPlatformWin386: | $(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386}"

$(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386}
endif

cleanRootRootDistPlatformWin386:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_386}
endif

ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64=${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}/${ENV_INFO_PLATFORM_OS_ARCH_ARM64}

pathCheckRootDistPlatformWinArm64: | $(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64}"

$(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64}
endif

cleanRootRootDistPlatformWinArm64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM64}
endif

ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM=${ENV_PATH_DIST_PLATFORM_OS_WINDOWS}/${ENV_INFO_PLATFORM_OS_ARCH_ARM}

pathCheckRootDistPlatformWinArm: | $(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM}"

$(ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM}
endif

cleanRootRootDistPlatformWinArm:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_WINDOWS_ARM}
endif

pathCheckRootDistPlatformWinAll: pathCheckRootDistPlatformWinAmd64 pathCheckRootDistPlatformWin386 pathCheckRootDistPlatformWinArm64 pathCheckRootDistPlatformWinArm

ENV_INFO_PLATFORM_OS_LINUX=linux

ENV_PATH_DIST_PLATFORM_OS_LINUX=${ENV_PATH_INFO_ROOT_DIST_OS}/${ENV_INFO_PLATFORM_OS_LINUX}

pathCheckRootDistPlatformLinux: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX}
endif

cleanRootRootDistPlatformLinux:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX}
endif

ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_AMD64}

pathCheckRootDistPlatformLinuxAmd64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64}
endif

cleanRootRootDistPlatformLinuxAmd64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64}
endif