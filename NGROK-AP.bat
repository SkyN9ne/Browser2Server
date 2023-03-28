C:
CD C:\Users\runneradmin\.ngrok2
ECHO region: ap >> ngrok.yml & ECHO tunnels: >> ngrok.yml & ECHO     default: >> ngrok.yml & ECHO         proto: tcp >> ngrok.yml & ECHO         addr: 3389 >> ngrok.yml
COPY ngrok.yml C:\WINDOWS\System32
nssm install ngrok C:\WINDOWS\System32\ngrok.exe start --all --config="C:\WINDOWS\System32\ngrok.yml"
