if "%1"=="" (
  echo Please execute main!
  pause
  GOTO :EOF
)
:: Custom project settings
set REPOFOLDER=C:\Users\Guzel\Desktop\lol\
set DOTNETVER=4.0.30319
set MSBUILD=%windir%\Microsoft.NET\Framework64\v%DOTNETVER%\MSBuild.exe
set MSTest="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\MSTest.exe"

set GETTER=bluegg@ya.ru
set SENDER=gukluk2@mail.ru
set USER=gukluk2
set PASSWORD=lolLol2

:: General project settings
set BUILDERFOLDER=%~dp0
set SOLUTIONFOLDER=%REPOFOLDER%Geometric-task\
set SOLUTIONFILE=%SOLUTIONFOLDER%projectX.sln

set origin=https://github.com/minonastya/Geometric-task.git
set MSBUILDLOG=%BUILDERFOLDER%msbuild.log
set GITLOG=%BUILDERFOLDER%git.log
set FILELIST=%BUILDERFOLDER%files.txt
set TESTFILE=%SOLUTIONFOLDER%UnitTestProject1\bin\Debug\UnitTestProject1.dll
set MSTESTLOG=%BUILDERFOLDER%mstest.log
set LOSTFILELOG=%BUILDERFOLDER%lostfile.log
set MESSAGE=%BUILDERFOLDER%file.txt