if %1 == "" GOTO EOF
set BUILDERFOLDER=%~dp0

:: custom project settings
set DOTNETVER=4.0.30319
set REPOFOLDER=C:\Users\Guzel\Desktop\lol\


set SOLUTIONFOLDER=%REPOFOLDER%Geometric-task\
set SOLUTIONFILE=%SOLUTIONFOLDER%projectX.sln

set origin=https://github.com/minonastya/Geometric-task.git
set MSBUILDLOG=%BUILDERFOLDER%msbuild.log
set GITLOG=%BUILDERFOLDER%git.log
set FILELIST=%BUILDERFOLDER%files.txt
set TESTFILE=%SOLUTIONFOLDER%UnitTestProject1\bin\Debug\UnitTestProject1.dll
set MSTESTLOG=%BUILDERFOLDER%mstest.log
set LOSTFILELOG=%BUILDERFOLDER%lostfile.log

set MSBUILD=%windir%\Microsoft.NET\Framework64\v%DOTNETVER%\MSBuild.exe
set MSTest="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\MSTest.exe"

set GETTER=bluegg@ya.ru
set SENDER=gukluk@rambler.ru
set USER=gukluk
set PASSWORD=lollol

set MESSAGE=%BUILDERFOLDER%file.txt

:EOF