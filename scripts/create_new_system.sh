#!/bin/bash
#
# file:             create_new_system.sh
# created on:       2019 Jun 14
# created by:       Davit Kalantaryan (davit.kalantaryangmail.com)
#
# the purpose of this file is to create new OS or new matlab version
#


libsSrcDir=/opt/matlab/r2016b/bin/glnxa64
boostLibVersion=1.56.0
libIcuVersion=56
libTbbVersion=2
libUnwindVersion=8
libSslVersion=1

lsbCodeName=`lsb_release -c | cut -f 2`
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
currentDir=`pwd`

libFinalDir=${scriptDir}/../sys/$lsbCodeName/lib

echo "libFinalDir="${libFinalDir}

mkdir -p ${libFinalDir}
#exit 0

cp ${libsSrcDir}/libmx.so                   ${libFinalDir}/.
cp ${libsSrcDir}/libut.so                   ${libFinalDir}/.
cp ${libsSrcDir}/libmwresource_core.so      ${libFinalDir}/.
cp ${libsSrcDir}/libmwi18n.so               ${libFinalDir}/.
cp ${libsSrcDir}/libmwfl.so                 ${libFinalDir}/.
cp ${libsSrcDir}/libmwcpp11compat.so        ${libFinalDir}/.

cp ${libsSrcDir}/libboost_chrono.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libboost_date_time.so.${boostLibVersion}      ${libFinalDir}/.
cp ${libsSrcDir}/libboost_filesystem.so.${boostLibVersion}     ${libFinalDir}/.
cp ${libsSrcDir}/libboost_log.so.${boostLibVersion}            ${libFinalDir}/.
cp ${libsSrcDir}/libboost_regex.so.${boostLibVersion}          ${libFinalDir}/.
cp ${libsSrcDir}/libboost_signals.so.${boostLibVersion}        ${libFinalDir}/.
cp ${libsSrcDir}/libboost_system.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libboost_thread.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libboost_serialization.so.${boostLibVersion}  ${libFinalDir}/.

cp ${libsSrcDir}/libicudata.so.${libIcuVersion}              ${libFinalDir}/.
cp ${libsSrcDir}/libicuuc.so.${libIcuVersion}                ${libFinalDir}/.
cp ${libsSrcDir}/libicui18n.so.${libIcuVersion}              ${libFinalDir}/.
cp ${libsSrcDir}/libicuio.so.${libIcuVersion}                ${libFinalDir}/.

cp ${libsSrcDir}/libtbb.so.${libTbbVersion}                  ${libFinalDir}/.
cp ${libsSrcDir}/libtbbmalloc.so.${libTbbVersion}            ${libFinalDir}/.

cp ${libsSrcDir}/libunwind.so.${libUnwindVersion}               ${libFinalDir}/.

cp ${libsSrcDir}/libssl.so.${libSslVersion}                  ${libFinalDir}/.
cp ${libsSrcDir}/libcrypto.so.${libSslVersion}               ${libFinalDir}/.

cd ${libFinalDir}

ln -s libboost_chrono.so.${boostLibVersion}         libboost_chrono.so
ln -s libboost_date_time.so.${boostLibVersion}      libboost_date_time.so
ln -s libboost_filesystem.so.${boostLibVersion}     libboost_filesystem.so
ln -s libboost_log.so.${boostLibVersion}            libboost_log.so
ln -s libboost_regex.so.${boostLibVersion}          libboost_regex.so
ln -s libboost_signals.so.${boostLibVersion}        libboost_signals.so
ln -s libboost_system.so.${boostLibVersion}         libboost_system.so
ln -s libboost_thread.so.${boostLibVersion}         libboost_thread.so
ln -s libboost_serialization.so.${boostLibVersion}  libboost_serialization.so

ln -s libicudata.so.${libIcuVersion}         libicudata.so
ln -s libicuuc.so.${libIcuVersion}           libicuuc.so
ln -s libicui18n.so.${libIcuVersion}         libicui18n.so
ln -s libicuio.so.${libIcuVersion}           libicuio.so

ln -s libunwind.so.${libUnwindVersion}               libunwind.so

ln -s libssl.so.${libSslVersion}                  libssl.so
ln -s libcrypto.so.${libSslVersion}               libcrypto.so
