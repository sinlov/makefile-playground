# this file must use same folder at MakeDistTools.mk
# need var ENV_PATH_INFO_ROOT_DIST ENV_PATH_INFO_ROOT_DIST_LOCAL ENV_PATH_INFO_ROOT_DIST_OS on so on
# use at Makefile
# include MakefileUtils/MakeDistTools.mk
# include MakefileUtils/MakeDistToolsExtraNetbsd.mk

pathDistExtraNetbsdEnv:
	@echo "-----------------  this pathDistExtraNetbsdEnv has start -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                                ${ENV_PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_NETBSD                           $(subst /,\,${ENV_INFO_PLATFORM_OS_NETBSD})"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdAmd64 cleanRootDistPlatformNetbsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64})"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsd386 cleanRootDistPlatformNetbsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_386                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386})"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdArm64 cleanRootDistPlatformNetbsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64})"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdArm cleanRootDistPlatformNetbsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM})"
	@echo ""
	@echo "-----------------"
	@echo ""
else
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_NETBSD                           ${ENV_INFO_PLATFORM_OS_NETBSD}"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdAmd64 cleanRootDistPlatformNetbsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64                ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64}"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsd386 cleanRootDistPlatformNetbsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_386                  ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386}"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdArm64 cleanRootDistPlatformNetbsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64                ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64}"
	@echo ""
	@echo "pathCheckRootDistPlatformNetbsdArm cleanRootDistPlatformNetbsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM                  ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM}"
	@echo ""
	@echo "-----------------"
	@echo ""
endif
	@echo "-----------------  this pathDistExtraNetbsdEnv has end -----------------"

ENV_INFO_PLATFORM_OS_NETBSD=netbsd

ENV_PATH_DIST_PLATFORM_OS_NETBSD=${ENV_PATH_INFO_ROOT_DIST_OS}/${ENV_INFO_PLATFORM_OS_NETBSD}

pathCheckRootDistPlatformNetbsd: | $(ENV_PATH_DIST_PLATFORM_OS_NETBSD)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD}"

$(ENV_PATH_DIST_PLATFORM_OS_NETBSD):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_NETBSD}
endif

cleanRootDistPlatformNetbsd:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_NETBSD}
endif

ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64=${ENV_PATH_DIST_PLATFORM_OS_NETBSD}/${ENV_INFO_PLATFORM_OS_ARCH_AMD64}

pathCheckRootDistPlatformNetbsdAmd64: | $(ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64}"

$(ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64}
endif

cleanRootDistPlatformNetbsdAmd64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_AMD64}
endif

ENV_PATH_DIST_PLATFORM_OS_NETBSD_386=${ENV_PATH_DIST_PLATFORM_OS_NETBSD}/${ENV_INFO_PLATFORM_OS_ARCH_386}

pathCheckRootDistPlatformNetbsd386: | $(ENV_PATH_DIST_PLATFORM_OS_NETBSD_386)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386}"

$(ENV_PATH_DIST_PLATFORM_OS_NETBSD_386):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386}
endif

cleanRootDistPlatformNetbsd386:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_386}
endif

ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64=${ENV_PATH_DIST_PLATFORM_OS_NETBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM64}

pathCheckRootDistPlatformNetbsdArm64: | $(ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64}"

$(ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64}
endif

cleanRootDistPlatformNetbsdArm64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM64}
endif

ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM=${ENV_PATH_DIST_PLATFORM_OS_NETBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM}

pathCheckRootDistPlatformNetbsdArm: | $(ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM}"

$(ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM}
endif

cleanRootDistPlatformNetbsdArm:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_NETBSD_ARM}
endif

pathCheckRootDistPlatformNetbsdAll: pathCheckRootDistPlatformNetbsdAmd64 pathCheckRootDistPlatformNetbsd386 pathCheckRootDistPlatformNetbsdArm64 pathCheckRootDistPlatformNetbsdArm