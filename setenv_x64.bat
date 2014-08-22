@echo off
set BITSHARES_ROOT=%~dp0..\
echo Using %BITSHARES_ROOT% as Bitshares root directory

set OPENSSL_ROOT=%BITSHARES_ROOT%\OpenSSL.x64
set OPENSSL_ROOT_DIR=%OPENSSL_ROOT%
set OPENSSL_INCLUDE_DIR=%OPENSSL_ROOT%\include
set DBROOTDIR=%BITSHARES_ROOT%\BerkeleyDB.x64
set QTDIR=%BITSHARES_ROOT%\QT.x64
set ICUROOT=%BITSHARES_ROOT%\ICU.x64
set BOOST_ROOT=%BITSHARES_ROOT%\boost_1.55.x64
set TCL_ROOT=%BITSHARES_ROOT%\tcl.x64

set PATH=%APPDATA%\npm;%QTDIR%\bin;%ICUROOT%\bin;%ICUROOT%\lib;%BITSHARES_ROOT%\bin;%BITSHARES_ROOT%\tcl.x64\bin;%BITSHARES_ROOT%\Cmake\bin;%BOOST_ROOT%\stage\lib;%PATH%
set CMAKE_PREFIX_PATH=%QTDIR%

echo Setting up VS2013 environment...
call "%VS120COMNTOOLS%\..\..\VC\vcvarsall.bat" amd64

