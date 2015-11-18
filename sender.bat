if "%1"=="" (
  echo Please execute main!
  pause
  GOTO EOF
)
set SUBJECT="Build  %STATUS%"
mailsend -to %GETTER% -from %SENDER% -ssl -port 465 -auth -smtp smtp.mail.ru ^
  -sub %SUBJECT% +cc +bc -v -user %USER% -pass %PASSWORD% < %MESSAGE%
if ERRORLEVEL 1 (
  set SEND_OK=0
) else (
  set SEND_OK=1
)
:EOF
