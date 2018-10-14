@echo off

if "%VS2017_ENV%"=="" (
    echo -
    echo Build up VS2017 env
    echo -
    if exist "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat" (
        call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"
        set VS2017_ENV=OK
        echo Visual Studio 2017 environment is available.    
    ) else (
        echo Could not find "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"
    )
) else (
    echo VS2017 env is already available
    echo "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"
)
