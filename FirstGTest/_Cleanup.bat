@echo off

if exist %~dp0\CMakeFiles (
del /f /s /q %~dp0\CMakeFiles
rmdir /s /q %~dp0\CMakeFiles
)

if exist %~dp0\FirstGTest.dir (
del /f /s /q %~dp0\FirstGTest.dir
rmdir /s /q %~dp0\FirstGTest.dir
)

if exist %~dp0\x64 (
del /f /s /q %~dp0\x64
rmdir /s /q %~dp0\x64
)

if exist %~dp0\Testing (
del /f /s /q %~dp0\Testing
rmdir /s /q %~dp0\Testing
)

if exist %~dp0\CMakeCache.txt (
del %~dp0\CMakeCache.txt
)

if exist %~dp0\Makefile (
del %~dp0\Makefile
)

