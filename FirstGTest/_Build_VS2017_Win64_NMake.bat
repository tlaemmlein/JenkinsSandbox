@echo off

call %~dp0\..\Build\Environment\SetEnvironment.bat

call %~dp0\_Cleanup.bat

cd %~dp0\build 

cmake ..\  -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release

nmake

cd ..

echo The executable is located under %~dp0\build\bin

rem cmake %~dp0 -G "NMake Makefiles" -DCMAKE_BUILD_TYPE=Release

rem nmake


