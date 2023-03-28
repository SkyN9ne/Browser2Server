@echo OFF
COLOR 0A
TASKLIST | FIND /i "ngrok.exe" >NUL && goto check || ECHO "The NGROK.exe Service is not Running. Try renewing the NGROK account or update the secret AUTHTOKEN. Change your NGROK_AUTH_TOKEN secret in your cloned repo's Settings, under Secrets first either change or add the NGROK_AUTH_TOKEN by clickng and editing the Repository Secrets option. Then go to Actions and click Re-Run All Jobs" & PING 127.0.0.1 -n 4 >NUL & PING 8.8.8.8 -n 4 >NUL & EXIT
:check
PING 127.0.0.1 -n 4 >NUL
CLS
goto check
