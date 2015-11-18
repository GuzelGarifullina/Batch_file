if "%1"=="" (
  echo Please execute main!
  pause
  GOTO EOF
)
%MSBUILD% "%SOLUTIONFILE%" >%MSBUILDLOG%
if ERRORLEVEL 1 (
  set BUILD_OK=0
) else (
  set BUILD_OK=1
)

:EOF