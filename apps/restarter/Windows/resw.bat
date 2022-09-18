@ECHO OFF
CLS
ECHO World Server Restart Started %time:~0,5% %date:~1%
:SERVERLOOP
worldserver.exe
ECHO World Server Restart %time:~0,5% %date:~1%
ECHO.
GOTO SERVERLOOP
:END 