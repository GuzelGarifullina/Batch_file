@echo off

call settings.bat 1
set STATUS=succesfull
:: call get.bat 1
set GET_OK=1
if %GET_OK%==0 (
  echo Can't clone remote
  echo Please try again
  GOTO EOF
)
call build.bat 1
if %BUILD_OK%==0 (
  echo Error in build
  type %MSBUILDLOG%
  set STATUS=failed

  echo Error in build > %MESSAGE%
  type %MSBUILDLOG% >> %MESSAGE%
  call sender.bat  1
  GOTO EOF
)
call check.bat 1
if %CHECK_OK%==0 (
  echo Missing files
  type %LOSTFILELOG%

  echo These ^ files ^ are ^ lost > %MESSAGE%
  type %LOSTFILELOG% >> %MESSAGE%
  set STATUS=failed
  call sender.bat 1
  GOTO EOF
)
call test.bat 1
if %TEST_OK%==0 (
  echo Tests failed
  type %MSTESTLOG%
 
  echo Tests failed > %MESSAGE%
  type %MSTESTLOG% >> %MESSAGE%
  set STATUS=failed
  call sender.bat 1
  pause
  GOTO EOF
)
echo Everything ^ OK ^ %DATE% ^ %TIME% > %MESSAGE%
call sender.bat 1
del %MESSAGE%
:EOF
pause