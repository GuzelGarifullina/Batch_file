if "%1"=="" (
  echo Please execute main!
  pause
  GOTO :EOF
)
set file=%1
if not exist %SOLUTIONFOLDER%%file% (
        echo %file% >> %LOSTFILELOG%
	set CHECK_OK=0
)
