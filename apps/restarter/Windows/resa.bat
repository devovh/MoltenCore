@ECHO OFF
CLS
ECHO Auth Server Restart Started %time:~0,5% %date:~1%
:SERVERLOOP
authserver.exe
ECHO Auth Server Restart %time:~0,5% %date:~1%
ECHO.
GOTO SERVERLOOP
:END 