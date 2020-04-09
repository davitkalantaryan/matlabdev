
PROJECT_NAME		=  umf_example
mkfile_path			:= $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir			:= $(shell dirname $(mkfile_path))
SOURCES_BASE_DIR	=  $(mkfile_dir)
include $(mkfile_dir)/../prj/common/common_mkfl/umex_common.mak


# !!! you can redefine variables declared in the file '$(mkfile_dir)/../prj/common/common_mkfl/umex_common.mak'
# you can extend variables declared in the mak include file: for example like below
# CPPPARAMS = -std=c++11 -O2 -DLINUX -D_REENTRANT -D_GNU_SOURCE -D_BSD -D__USE_GNU -D__USE_UNIX98
# LIBS		+= -ldl
# LFLAGS	+=


# put here your sources
OBJECTS = \
	$(OBJECT_FILES_DIR)/mex_entry_example.o

default: $(PROJECT_NAME)


$(PROJECT_NAME): $(OBJECTS)
	mkdir -p $(TARGET_DIR)
	$(LINK) $(OBJECTS) $(LIBS) $(LFLAGS) -o $(TARGET_FILE_PATH)

# .PHONY means always out of date
.PHONY: clean

clean:
	#rm -f $(OBJECTS) $(TARGET_FILE_PATH) $(SRC_TMP)/*.cpp $(SRC_TMP)/*.s $(ISO_DIR2)/mykernel.iso
	rm -f $(OBJECTS) $(TARGET_FILE_PATH) 

