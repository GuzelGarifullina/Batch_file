set pathMSBuild = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\"
@echo off
cls
cd %pathMSBuild%

set mypath=%~dp0
msbuild.exe "%mypath%Hello.sln" /p:configuration=debug

pause