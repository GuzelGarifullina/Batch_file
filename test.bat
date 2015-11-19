if "%1"=="" (
  echo Please execute main!
  pause
  GOTO :EOF
)
%MSTest% /testcontainer:"%TESTFILE%" >%MSTESTLOG%

if ERRORLEVEL 1 (
  set TEST_OK=0
) else (
  set TEST_OK=1
)

if exist %BUILDERFOLDER%TestResults  RMDIR /S %BUILDERFOLDER%TestResults
