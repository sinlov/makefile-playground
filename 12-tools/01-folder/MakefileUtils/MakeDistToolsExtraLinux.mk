# this file must use same folder at MakeDistTools.mk
# need var ENV_PATH_INFO_ROOT_DIST ENV_PATH_INFO_ROOT_DIST_LOCAL ENV_PATH_INFO_ROOT_DIST_OS on so on
# use at Makefile
# include MakefileUtils/MakeDistTools.mk
# include MakefileUtils/MakeDistToolsExtraLinux.mk

makeDistToolsExtraLinux:
	@echo "-----------------  this makeDistToolsExtraLinux has start -----------------"
	@echo "ENV_PATH_INFO_ROOT_DIST                                ${ENV_PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_LOCAL})"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             $(subst /,\,${ENV_PATH_INFO_ROOT_DIST_OS})"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_LINUX                           $(subst /,\,${ENV_INFO_PLATFORM_OS_LINUX})"
	@echo ""
	@echo "-----------------"
	@echo ""
else
	@echo "ENV_PATH_INFO_ROOT_DIST_LOCAL                          ${ENV_PATH_INFO_ROOT_DIST_LOCAL}"
	@echo "ENV_PATH_INFO_ROOT_DIST_OS                             ${ENV_PATH_INFO_ROOT_DIST_OS}"
	@echo ""
	@echo "-----------------"
	@echo "ENV_INFO_PLATFORM_OS_LINUX                           ${ENV_INFO_PLATFORM_OS_LINUX}"
	@echo ""
	@echo "pathCheckRootDistPlatformLinuxAmd64 cleanRootDistPlatformLinuxAmd64"
	@echo "ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64                ${ENV_PATH_DIST_PLATFORM_OS_LINUX_AMD64}"
	@echo ""
	@echo "-----------------"
	@echo ""
endif

	@echo ""
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS                         ${ENV_INFO_PLATFORM_OS_ARCH_MIPS}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS64                       ${ENV_INFO_PLATFORM_OS_ARCH_MIPS64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_MIPS66LE                     ${ENV_INFO_PLATFORM_OS_ARCH_MIPS66LE}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_RISCV64                      ${ENV_INFO_PLATFORM_OS_ARCH_RISCV64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_S390X                        ${ENV_INFO_PLATFORM_OS_ARCH_S390X}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_PPC64                        ${ENV_INFO_PLATFORM_OS_ARCH_PPC64}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_PPC64LE                      ${ENV_INFO_PLATFORM_OS_ARCH_PPC64LE}"
	@echo "ENV_INFO_PLATFORM_OS_ARCH_LOONG64                      ${ENV_INFO_PLATFORM_OS_ARCH_LOONG64}"
	@echo "-----------------  this makeDistToolsExtraLinux has end -----------------"


ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64=${ENV_PATH_DIST_PLATFORM_OS_LINUX}/${ENV_INFO_PLATFORM_OS_ARCH_LOONG64}

pathCheckRootDistPlatformLinuxLoong64: | $(ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64)
	@echo "-> dist folder tools path exist at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}"

$(ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64):
	@echo "-> dist folder tools does not exist, try mkdir at: ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64})
else
	-@mkdir -p ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
endif

cleanRootDistPlatformLinuxLoong64:
ifeq ($(OS),Windows_NT)
	-@RM -r $(subst /,\,${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64})
else
	-@RM -r ${ENV_PATH_DIST_PLATFORM_OS_LINUX_LOONG64}
endif
