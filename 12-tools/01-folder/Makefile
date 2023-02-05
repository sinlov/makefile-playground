.PHONY: test check clean build dist all

TEST_DATA_FOLDER_PATH=testData

checkTestDataFolder: | $(TEST_DATA_FOLDER_PATH)
	@echo "Continuation regardless of existence of ${TEST_DATA_FOLDER_PATH}"

$(TEST_DATA_FOLDER_PATH):
	@echo "Folder $(TEST_DATA_FOLDER_PATH) "
	mkdir ${TEST_DATA_FOLDER_PATH}

PATH_INFO_ROOT_DIST=dist
PATH_INFO_ROOT_DIST_LOCAL=${PATH_INFO_ROOT_DIST}/local
PATH_INFO_ROOT_DIST_OS=${PATH_INFO_ROOT_DIST}/os

cleanRootDist:
	-@RM -r ${PATH_INFO_ROOT_DIST}

pathCheckRootDist: | $(PATH_INFO_ROOT_DIST)
	@echo "folder path exist at: ${PATH_INFO_ROOT_DIST}"

$(PATH_INFO_ROOT_DIST):
	@echo "folder does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST})
else
  -@mkdir -p ${PATH_INFO_ROOT_DIST}
endif

cleanRootDistLocal:
	-@RM -r ${PATH_INFO_ROOT_DIST_LOCAL}

pathCheckRootDistLocal: | $(PATH_INFO_ROOT_DIST_LOCAL)
	@echo "folder path exist at: ${PATH_INFO_ROOT_DIST_LOCAL}"

$(PATH_INFO_ROOT_DIST_LOCAL):
	@echo "folder does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST_LOCAL}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST_LOCAL})
else
  -@mkdir -p ${PATH_INFO_ROOT_DIST_LOCAL}
endif

cleanRootDistOs:
	-@RM -r ${PATH_INFO_ROOT_DIST_OS}

pathCheckRootDistOs: | $(PATH_INFO_ROOT_DIST_OS)
	@echo "folder path exist at: ${PATH_INFO_ROOT_DIST_OS}"

$(PATH_INFO_ROOT_DIST_OS):
	@echo "folder does not exist, try mkdir at: ${PATH_INFO_ROOT_DIST_OS}"
ifeq ($(OS),Windows_NT)
	-@mkdir $(subst /,\,${PATH_INFO_ROOT_DIST_OS})
else
  -@mkdir -p ${PATH_INFO_ROOT_DIST_OS}
endif