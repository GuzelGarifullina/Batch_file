if %1=="" GOTO EOF
set SUBJECT="Build  %STATUS%"
mailsend -to %GETTER% -from %SENDER% -ssl -port 465 -auth -smtp smtp.rambler.ru ^
  -sub %SUBJECT% +cc +bc -v -user %USER% -pass %PASSWORD% < %MESSAGE%
if ERRORLEVEL 1 (
  set SEND_OK=0
) else (
  set SEND_OK=1
)
:EOF