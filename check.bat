if "%1"=="" (
  echo Please execute main!
  pause
  GOTO :EOF
)
set CHECK_OK=1
if exist %LOSTFILELOG% del %LOSTFILELOG%
for /F  tokens^=*^ delims^=^ eol^= %%i in (%FileList%) do call subCheck %%i 

