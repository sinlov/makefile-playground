# this file must use same folder at MakeDistTools.mk
# need var ENV_PATH_INFO_ROOT_DIST ENV_PATH_INFO_ROOT_DIST_LOCAL ENV_PATH_INFO_ROOT_DIST_OS on so on
# use at Makefile
# include MakefileUtils/MakeDistTools.mk
# include MakefileUtils/MakeDistToolsExtraLinux.mk

pathDistToolsExtraLinux:
	@echo "-----------------  this pathDistToolsExtraLinux has start -----------------"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST                              $(subst /,\,${ENV_PATH_INFO_ROOT_DIST})"
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                        $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                           $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_LINUX                           $(subst /,\,${ENV_INFO_PLATFORM_OS_LINUX})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips pathCheckRootDistPlatformLinuxMips"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS                 $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips64 pathCheckRootDistPlatformLinuxMips64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64               $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips64le pathCheckRootDistPlatformLinuxMips64le"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE             $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMipsAll cleanRootDistPlatformLinuxMipsAll"
	@echo "for linux mips task"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxRiscv64 cleanRootDistPlatformLinuxRiscv64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64              $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxS390x cleanRootDistPlatformLinuxS390x"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxPpc64 cleanRootDistPlatformLinuxPpc64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64                $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxPpc64le cleanRootDistPlatformLinuxPpc64le"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE              $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE})"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxLoong64 cleanRootDistPlatformLinuxLoong64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64              $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64})"
	@echo ""
	@echo "-----------------"
	@echo ""
else
	@echo "ENV_PATH_INFO_ROOT_DIST                              ${ENV_PATH_INFO_ROOT_DIST}"
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                        ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                           ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_LINUX                           ${ENV_INFO_PLATFORM_OS_LINUX}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips pathCheckRootDistPlatformLinuxMips"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS                 ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips64 pathCheckRootDistPlatformLinuxMips64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64               ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMips64le pathCheckRootDistPlatformLinuxMips64le"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE             ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxMipsAll cleanRootDistPlatformLinuxMipsAll"
	@echo "for linux mips task"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxRiscv64 cleanRootDistPlatformLinuxRiscv64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64              ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxS390x cleanRootDistPlatformLinuxS390x"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X                ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxPpc64 cleanRootDistPlatformLinuxPpc64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64                ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxPpc64le cleanRootDistPlatformLinuxPpc64le"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE              ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxLoong64 cleanRootDistPlatformLinuxLoong64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64              ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}"
	@echo ""
	@echo "-----------------"
	@echo ""
endif

	@echo ""
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS                         ${ENV_INFO_PLATFORM_OS_ARCH_MIPS}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS64                       ${ENV_INFO_PLATFORM_OS_ARCH_MIPS64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS64LE                     ${ENV_INFO_PLATFORM_OS_ARCH_MIPS64LE}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_RISCV64                      ${ENV_INFO_PLATFORM_OS_ARCH_RISCV64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_S390X                        ${ENV_INFO_PLATFORM_OS_ARCH_S390X}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_PPC64                        ${ENV_INFO_PLATFORM_OS_ARCH_PPC64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_PPC64LE                      ${ENV_INFO_PLATFORM_OS_ARCH_PPC64LE}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_LOONG64                      ${ENV_INFO_PLATFORM_OS_ARCH_LOONG64}"
	@echo "-----------------  this makeDistToolsExtraLinux has end -----------------"

ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_MIPS}

pathCheckRootDistPlatformLinuxMips: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}
endif

cleanRootDistPlatformLinuxMips:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS}
endif

ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_MIPS64}

pathCheckRootDistPlatformLinuxMips64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}
endif

cleanRootDistPlatformLinuxMips64:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64}
endif


ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_MIPS64LE}

pathCheckRootDistPlatformLinuxMips64le: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}
endif

cleanRootDistPlatformLinuxMips64le:
ifeq ($(OS),Windows_NT)
	@$(RM) -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE})
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_MIPS64LE}
endif

pathCheckRootDistPlatformLinuxMipsAll: pathCheckRootDistPlatformLinuxMips pathCheckRootDistPlatformLinuxMips64 pathCheckRootDistPlatformLinuxMips64le

cleanRootDistPlatformLinuxMipsAll: cleanRootDistPlatformLinuxMips cleanRootDistPlatformLinuxMips64 cleanRootDistPlatformLinuxMips64le


ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_RISCV64}

pathCheckRootDistPlatformLinuxRiscv64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}
endif

cleanRootDistPlatformLinuxRiscv64:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_RISCV64}
endif


ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_S390X}

pathCheckRootDistPlatformLinuxS390x: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}
endif

cleanRootDistPlatformLinuxS390x:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_S390X}
endif


ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_PPC64}

pathCheckRootDistPlatformLinuxPpc64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}
endif

cleanRootDistPlatformLinuxPpc64:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64}
endif


ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_PPC64LE}

pathCheckRootDistPlatformLinuxPpc64le: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}
endif

cleanRootDistPlatformLinuxPpc64le:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_PPC64LE}
endif


ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_LOONG64}

pathCheckRootDistPlatformLinuxLoong64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}"
ifeq ($(OS),Windows_NT)
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
else
	@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
endif

cleanRootDistPlatformLinuxLoong64:
ifeq ($(OS),Windows_NT)
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
else
	@$(RM) -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
endif

pathCheckRootDistPlatformLinuxNew: pathCheckRootDistPlatformLinuxRiscv64 pathCheckRootDistPlatformLinuxS390x pathCheckRootDistPlatformLinuxPpc64 pathCheckRootDistPlatformLinuxPpc64le pathCheckRootDistPlatformLinuxLoong64