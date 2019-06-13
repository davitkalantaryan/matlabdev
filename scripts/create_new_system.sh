#!/bin/bash


libsSrcDir=/opt/matlab/r2016b/bin/glnxa64
boostLibVersion=1.56.0
libCuVersion=7.5

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
cp ${libsSrcDir}/libboost_chrono.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libboost_date_time.so.${boostLibVersion}      ${libFinalDir}/.
cp ${libsSrcDir}/libboost_filesystem.so.${boostLibVersion}     ${libFinalDir}/.
cp ${libsSrcDir}/libboost_log.so.${boostLibVersion}            ${libFinalDir}/.
cp ${libsSrcDir}/libboost_regex.so.${boostLibVersion}          ${libFinalDir}/.
cp ${libsSrcDir}/libboost_signals.so.${boostLibVersion}        ${libFinalDir}/.
cp ${libsSrcDir}/libboost_system.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libboost_thread.so.${boostLibVersion}         ${libFinalDir}/.
cp ${libsSrcDir}/libmwcpp11compat.so        ${libFinalDir}/.
cp ${libsSrcDir}/libicudata.so.${libCuVersion}              ${libFinalDir}/.
cp ${libsSrcDir}/libicuuc.so                ${libFinalDir}/.
cp ${libsSrcDir}/libicui18n.so              ${libFinalDir}/.
cp ${libsSrcDir}/libicuio.so                ${libFinalDir}/.
cp ${libsSrcDir}/libtbb.so                  ${libFinalDir}/.
cp ${libsSrcDir}/libtbbmalloc.so            ${libFinalDir}/.
cp ${libsSrcDir}/libboost_serialization.so  ${libFinalDir}/.
cp ${libsSrcDir}/libunwind.so               ${libFinalDir}/.
cp ${libsSrcDir}/libssl.so                  ${libFinalDir}/.
cp ${libsSrcDir}/libcrypto.so               ${libFinalDir}/.

cd ${libFinalDir}

ln -s libboost_chrono.so.${boostLibVersion}         libboost_chrono.so
ln -s libboost_date_time.so.${boostLibVersion}      libboost_date_time.so
ln -s libboost_filesystem.so.${boostLibVersion}     libboost_filesystem.so
ln -s libboost_log.so.${boostLibVersion}            libboost_log.so
ln -s libboost_regex.so.${boostLibVersion}          libboost_regex.so
ln -s libboost_signals.so.${boostLibVersion}        libboost_signals.so
ln -s libboost_system.so.${boostLibVersion}         libboost_system.so
ln -s libboost_thread.so.${boostLibVersion}         libboost_thread.so
