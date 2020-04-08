#
# file:			qt_example.pro
# creae on:		2020 Apr 08
# created by:		D. Kalantaryan (davit.kalantaryan@desy.de)
# purpose:
#			to demonstarte how to quickly start matlab mex file
#			project in the qt
#



include($${PWD}/../prj/common/common_qt/mex_common.pri)

win32{
} else {
	GCCPATH = $$system(which gcc)
	message("!!!!!!!!!!! GCCPATH=$$GCCPATH")
	# QMAKE_CXXFLAGS += -std=c++14 # in the case of DOOCS
	#TARGET_NAME = $$TARGET_NAME.mexa64
	TARGET = $${TARGET}.mexa64
}

SOURCES +=	\
	$${PWD}/mex_entry_example.cpp

OTHER_FILES	+=	\
	$${PWD}/umake_example.Makefile							\
	$${PWD}/../prj/common/common_mkfl/umex_common.mak		\
	$${PWD}/../.gitignore
