@echo off

if exist %~dp0\build (
del %~dp0\build\*.* /F /S /Q
rmdir %~dp0\build /S /Q
)

mkdir %~dp0\build

