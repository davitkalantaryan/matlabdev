#
# file:			windows.Makefile
# created on:	2020 Mar 17
# created by:	D. Kalantaryan (davit.kalantaryan@desy.de)
#
# purpose:		To compile 2 projects - lib and bin to work with this lib
#

# TargetMachine	= x86

PlugTargetName	= wmf_example
ObjectsDirBaseB	= .objects
ObjectsDirBase	= .objects\win

CC				= cl 
CPPC           	= cl -Zc:__cplusplus
LINKER        	= link
DEFINES       	= -DUNICODE -D_UNICODE -DUSETIME_HASH=\"be759ec2\" -DDLL_EXPORT_SYM=__declspec(dllexport)  /D "DLL_EXPORT_SYM=__declspec(dllexport)"
#CFLAGS        	= /MTd -nologo -Zc:wchar_t -FS -Zc:strictStrings -Zi -MDd -W3 -w44456 -w44457 -w44458 /$(TargetName).vc.pdb $(DEFINES)
#CXXFLAGS      	= -nologo -Zc:wchar_t -FS -Zc:rvalueCast -Zc:inline -Zc:strictStrings -Zc:throwingNew -Zc:referenceBinding -Zc:__cplusplus -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS /W3 -Zi -MDd -W3 -w34100 -w34189 -w44996 -w44456 -w44457 -w44458 -wd4577 -wd4467 -EHsc /$(TargetName).vc.pdb $(DEFINES)
CFLAGS			= /MTd $(DEFINES) 
CFLAGS			= $(CFLAGS) -I"$(MAKEDIR)\..\include"
CXXFLAGS		= $(CFLAGS)
LIBS			=

InitCurDir		= $(MAKEDIR)
PlugObjectsDir	= $(ObjectsDirBase)


PlugObjects			=					\
	mex_entry_example.obj	


CurObjectsDir = $(ObjectsDirBase)

.cpp.obj:
	if not exist $(CurObjectsDir)\$(@D) mkdir $(CurObjectsDir)\$(@D)
	$(CPPC) /c $(CXXFLAGS) /Fo$(CurObjectsDir)\ $*.cpp

#.cxx.obj:
#	if not exist $(CurObjectsDir)\$(@D) mkdir $(CurObjectsDir)\$(@D)
#	$(CPPC) /c $(CXXFLAGS) /Fo$(BinObjectsDir)\ $*.cxx

default: $(PlugTargetName)
  
#all: $(BinTargetName) $(DDTargetName)


clean:
	if exist $(ObjectsDirBaseB) rmdir /q /s $(ObjectsDirBaseB)
	@if exist $(PlugTargetName).mexw64 del $(PlugTargetName).mexw64
	@if exist *.ilk del /s /q *.ilk
	@if exist *.pdb del /s /q *.pdb
	@echo "clean done!"
	

$(PlugTargetName): $(PlugObjects) 
	@cd $(PlugObjectsDir)
	$(LINKER) $(LFLAGS) $(PlugObjects) $(LIBS) /DLL /LIBPATH:$(MAKEDIR)/../sys/win_x64/lib /SUBSYSTEM:CONSOLE libmx.lib libmex.lib /OUT:$(PlugTargetName).mexw64
	@cd $(InitCurDir)
	@copy /y $(PlugObjectsDir)\$(PlugTargetName).mexw64 .


tests:
	@echo InitCurDir=$(ThisDir)
	@echo MAKEDIR=$(MAKEDIR)
	@echo MAKEFLAGS=$(MAKEFLAGS)
	@echo MAKE=$(MAKE)
	@echo PATH=$(PATH)
	