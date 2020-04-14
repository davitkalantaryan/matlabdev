#
# file:			windows.Makefile
# created on:	2020 Mar 17
# created by:	D. Kalantaryan (davit.kalantaryan@desy.de)
#
# purpose:		To compile 2 projects - lib and bin to work with this lib
#

TargetName			= wmf_example
CallerMakeFilePath	= $(MAKEDIR)\winmake_example.Makefile
MatDevRootDir		= $(MAKEDIR)\..

Objects				=	\
	mex_entry_example.obj

include ..\prj\common\common_mkfl\wmex_common.Makefile
	