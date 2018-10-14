@echo off

call %~dp0\..\Build\Environment\SetEnvironment.bat

cmake %~dp0 -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release

nmake


