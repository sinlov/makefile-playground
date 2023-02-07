# this file must use same folder at MakeDistTools.mk
# need var ENV_PATH_INFO_ROOT_DIST ENV_PATH_INFO_ROOT_DIST_LOCAL ENV_PATH_INFO_ROOT_DIST_OS on so on
# use at Makefile
# include MakefileUtils/MakeDistTools.mk
# include MakefileUtils/MakeDistToolsExtraOpenbsd.mk

pathDistExtraOpenbsdEnv:
	@echo "-----------------  this pathDistExtraOpenbsdEnv has start -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                                ${ENV_PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_OPENBSD                           $(subst /,\,${ENV_INFO_PLATFORM_OS_OPENBSD})"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdAmd64 cleanRootDistPlatformOpenbsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64})"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsd386 cleanRootDistPlatformOpenbsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386})"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdArm64 cleanRootDistPlatformOpenbsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64})"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdArm cleanRootDistPlatformOpenbsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM})"
	@echo ""
	@echo "-----------------"
	@echo ""
else
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_OPENBSD                           ${ENV_INFO_PLATFORM_OS_OPENBSD}"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdAmd64 cleanRootDistPlatformOpenbsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64                ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64}"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsd386 cleanRootDistPlatformOpenbsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386                  ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386}"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdArm64 cleanRootDistPlatformOpenbsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64                ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64}"
	@echo ""
	@echo "pathCheckRootDistPlatformOpenbsdArm cleanRootDistPlatformOpenbsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM                  ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM}"
	@echo ""
	@echo "-----------------"
	@echo ""
endif
	@echo "-----------------  this pathDistExtraOpenbsdEnv has end -----------------"

ENV_INFO_PLATFORM_OS_OPENBSD=openbsd

ENV_PATH_DIST_PLATFORM_OS_OPENBSD=${ENV_PATH_INFO_ROOT_DIST_OS}/${ENV_INFO_PLATFORM_OS_OPENBSD}

pathCheckRootDistPlatformOpenbsd: | $(ENV_PATH_DIST_PLATFORM_OS_OPENBSD)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}"

$(ENV_PATH_DIST_PLATFORM_OS_OPENBSD):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}
endif

cleanRootDistPlatformOpenbsd:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}
endif

ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64=${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}/${ENV_INFO_PLATFORM_OS_ARCH_AMD64}

pathCheckRootDistPlatformOpenbsdAmd64: | $(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64}"

$(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64}
endif

cleanRootDistPlatformOpenbsdAmd64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_AMD64}
endif

ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386=${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}/${ENV_INFO_PLATFORM_OS_ARCH_386}

pathCheckRootDistPlatformOpenbsd386: | $(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386}"

$(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386}
endif

cleanRootDistPlatformOpenbsd386:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_386}
endif

ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64=${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM64}

pathCheckRootDistPlatformOpenbsdArm64: | $(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64}"

$(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64}
endif

cleanRootDistPlatformOpenbsdArm64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM64}
endif

ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM=${ENV_PATH_DIST_PLATFORM_OS_OPENBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM}

pathCheckRootDistPlatformOpenbsdArm: | $(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM}"

$(ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM}
endif

cleanRootDistPlatformOpenbsdArm:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_OPENBSD_ARM}
endif

pathCheckRootDistPlatformOpenbsdAll: pathCheckRootDistPlatformOpenbsdAmd64 pathCheckRootDistPlatformOpenbsd386 pathCheckRootDistPlatformOpenbsdArm64 pathCheckRootDistPlatformOpenbsdArm