@echo off

cd %~dp0\build
ctest --verbose
cd ..

REM if not exist %~dp0\bin\FirstGTest.exe (
  REM echo %~dp0\bin\FirstGTest.exe doesn't exist.
  REM echo Aborting...
  REM goto:eof
REM )

REM call %~dp0\bin\FirstGTest.exe