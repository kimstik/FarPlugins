@echo off

set MAKEFILE=makefile_vc

call "%VS90COMNTOOLS%..\..\VC\BIN\vcvars32.bat"

set WIDE=1
set IA64=
set AMD64=

nmake /A /B /F %MAKEFILE%

call "%VS90COMNTOOLS%..\..\VC\BIN\vcvarsx86_amd64.bat"
set AMD64=1
nmake /A /B /F %MAKEFILE%