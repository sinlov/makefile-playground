.PHONY: test check clean build dist all
# Makefile root
# can change this by env:ENV_CI_DIST_VERSION use and change by env:ENV_CI_DIST_MARK by CI
ENV_DIST_VERSION=latest
ENV_DIST_MARK=

ROOT_NAME?=basic

include MakefileUtils/MakeBasicEnv.mk
include MakefileUtils/MakeDistTools.mk
include MakefileUtils/MakeDistToolsExtraLinux.mk
include MakefileUtils/MakeDistToolsExtraFreebsd.mk
include MakefileUtils/MakeDistToolsExtraOpenbsd.mk
include MakefileUtils/MakeDistToolsExtraNetbsd.mk

all: env
	@echo "all task finish"

env: envBasic
	@echo "== project env info start =="
	@echo ""
	@echo "ENV_DIST_VERSION                          ${ENV_DIST_VERSION}"
	@echo "ENV_DIST_MARK                             ${ENV_DIST_MARK}"
	@echo ""
	@echo "== project env info end =="

pathDistEnvAll: pathDistExtraOpenbsdEnv pathDistExtraNetbsdEnv pathDistExtraFreebsdEnv pathDistToolsExtraLinux pathDistEnv

pathCheckDistTools: pathCheckRootDistPlatformWinAll pathCheckRootDistPlatformMacOsAll pathCheckRootDistPlatformLinuxCommon

pathCheckDistExtraLinux: pathCheckRootDistPlatformLinuxMipsAll pathCheckRootDistPlatformLinuxNew

pathCheckDistExtraFreebsd: pathCheckRootDistPlatformFreebsdAll

pathCheckDistExtraNetbsd: pathCheckRootDistPlatformNetbsdAll

pathCheckDistExtraOpenbsd: pathCheckRootDistPlatformOpenbsdAll

pathCheckDistAll: pathCheckDistTools pathCheckDistExtraLinux pathCheckDistExtraFreebsd pathCheckDistExtraNetbsd pathCheckDistExtraOpenbsd

helpProjectRoot:
ifeq ($(OS),Windows_NT)
	@echo ""
	@echo "warning: other install make cli tools has bug, please use: scoop install main/make"
	@echo " run will at make tools version 4.+"
	@echo "windows use this kit must install tools blow:"
	@echo ""
	@echo "https://scoop.sh/#/apps?q=busybox&s=0&d=1&o=true"
	@echo "-> scoop install main/busybox"
	@echo "and"
	@echo "https://scoop.sh/#/apps?q=shasum&s=0&d=1&o=true"
	@echo "-> scoop install main/shasum"
	@echo ""
endif
	@echo " clean dist by task"
	@echo "$$ make cleanDistAll             ~> clean at ${ENV_PATH_INFO_ROOT_DIST}"
	@echo ""
	@echo " show dist path by task"
	@echo "$$ make pathDistEnvAll           ~> show all env under: ${ENV_PATH_INFO_ROOT_DIST}"
	@echo ""
	@echo " then check dist path by task"
	@echo "$$ make pathCheckDistAll         ~> check all support platform at ${ENV_PATH_INFO_ROOT_DIST}"
	@echo ""


help: helpProjectRoot
	@echo "help: makefile template"
	@echo "------    ------"
	@echo "- first run you can use make env to check environment"
	@echo "------    ------"
	@echo ""
	@echo "$$ make env                      ~> print env"
	@echo ""