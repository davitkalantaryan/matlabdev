#
# file:			qt_example.pro
# creae on:		2020 Apr 08
# created by:		D. Kalantaryan (davit.kalantaryan@desy.de)
# purpose:
#			to demonstarte how to quickly start matlab mex file
#			project in the qt
#

include($${PWD}/../prj/common/common_qt/mex_common.pri)

SOURCES +=	\
	$${PWD}/mex_entry_example.cpp


# We are done

OTHER_FILES	+=	\
	$${PWD}/Makefile.uexample								\
	$${PWD}/../prj/common/common_mkfl/Makefile.umex_common	\
	$${PWD}/../.gitignore
