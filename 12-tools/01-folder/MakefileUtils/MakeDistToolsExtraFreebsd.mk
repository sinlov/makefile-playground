# this file must use same folder at MakeDistTools.mk
# need var ENV_PATH_INFO_ROOT_DIST ENV_PATH_INFO_ROOT_DIST_LOCAL ENV_PATH_INFO_ROOT_DIST_OS on so on
# use at Makefile
# include MakefileUtils/MakeDistTools.mk
# include MakefileUtils/MakeDistToolsExtraFreebsd.mk

pathDistExtraFreebsdEnv:
	@echo "-----------------  this pathDistExtraFreebsdEnv has start -----------------"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST                                $(subst /,\,${ENV_PATH_INFO_ROOT_DIST})"
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_FREEBSD                           $(subst /,\,${ENV_INFO_PLATFORM_OS_FREEBSD})"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdAmd64 cleanRootDistPlatformFreebsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64})"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsd386 cleanRootDistPlatformFreebsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386})"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdArm64 cleanRootDistPlatformFreebsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64})"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdArm cleanRootDistPlatformFreebsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM                  $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM})"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdAll  to check all"
	@echo "-----------------"
	@echo ""
else
	@echo "ENV_PATH_INFO_ROOT_DIST                                ${ENV_PATH_INFO_ROOT_DIST}"
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_FREEBSD                           ${ENV_INFO_PLATFORM_OS_FREEBSD}"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdAmd64 cleanRootDistPlatformFreebsdAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64                ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64}"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsd386 cleanRootDistPlatformFreebsd386"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386                  ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386}"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdArm64 cleanRootDistPlatformFreebsdArm64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64                ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64}"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdArm cleanRootDistPlatformFreebsdArm"
	@echo "ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM                  ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM}"
	@echo ""
	@echo "pathCheckRootDistPlatformFreebsdAll  to check all"
	@echo "-----------------"
	@echo ""
endif
	@echo "-----------------  this pathDistExtraFreebsdEnv has end -----------------"

ENV_INFO_PLATFORM_OS_FREEBSD=freebsd

ENV_PATH_DIST_PLATFORM_OS_FREEBSD=${ENV_PATH_INFO_ROOT_DIST_OS}/${ENV_INFO_PLATFORM_OS_FREEBSD}

pathCheckRootDistPlatformFreebsd: | $(ENV_PATH_DIST_PLATFORM_OS_FREEBSD)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}"

$(ENV_PATH_DIST_PLATFORM_OS_FREEBSD):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}
endif

cleanRootDistPlatformFreebsd:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}
endif

ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64=${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}/${ENV_INFO_PLATFORM_OS_ARCH_AMD64}

pathCheckRootDistPlatformFreebsdAmd64: | $(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64}"

$(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64}
endif

cleanRootDistPlatformFreebsdAmd64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_AMD64}
endif

ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386=${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}/${ENV_INFO_PLATFORM_OS_ARCH_386}

pathCheckRootDistPlatformFreebsd386: | $(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386}"

$(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386}
endif

cleanRootDistPlatformFreebsd386:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_386}
endif

ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64=${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM64}

pathCheckRootDistPlatformFreebsdArm64: | $(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64}"

$(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64}
endif

cleanRootDistPlatformFreebsdArm64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM64}
endif

ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM=${ENV_PATH_DIST_PLATFORM_OS_FREEBSD}/${ENV_INFO_PLATFORM_OS_ARCH_ARM}

pathCheckRootDistPlatformFreebsdArm: | $(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM}"

$(ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM}
endif

cleanRootDistPlatformFreebsdArm:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_FREEBSD_ARM}
endif

pathCheckRootDistPlatformFreebsdAll: pathCheckRootDistPlatformFreebsdAmd64 pathCheckRootDistPlatformFreebsd386 pathCheckRootDistPlatformFreebsdArm64 pathCheckRootDistPlatformFreebsdArm