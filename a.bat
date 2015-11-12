set pathMSBuild = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\"
@echo off
cls
cd %pathMSBuild%
<<<<<<< HEAD
set mypath=%~dp0
set repo=Hello\

set res=1
if exist "%mypath%%repo%bin" (
  echo Deleting make files
  set res=0
  RMDIR /S "%mypath%%repo%bin"
)
if exist "%mypath%%repo%obj" (
  if %res% ==1 echo Deleting make files
  RMDIR /S "%mypath%%repo%obj"
)


if exist buildHistory.txt (
  echo. >> buildHistory.txt
  echo. >> buildHistory.txt
)
echo New build >> buildHistory.txt
echo %DATE%  >> buildHistory.txt
echo %TIME%  >> buildHistory.txt
msbuild.exe "%mypath%Hello.sln" /p:configuration=debug   >> buildHistory.txt


=======

set mypath=%~dp0
msbuild.exe "%mypath%Hello.sln" /p:configuration=debug
>>>>>>> 19d9694a8cf777d69726ed9e661fc01e2a077263

pause