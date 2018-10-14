@echo off

if not exist %~dp0\bin\FirstGTest.exe (
  echo %~dp0\bin\FirstGTest.exe doesn't exist.
  echo Aborting...
  goto:eof
)

call %~dp0\bin\FirstGTest.exe