@echo OFF
COLOR 0A
DEL /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
NET CONFIG server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
NET USER Administrator SecureMyAssword1337 /add >NUL
NET LOCALGROUP administrators Administrator /add >NUL
NET USER Administrator /active:yes >NUL
DISKPERF -Y >NUL
SC CONFIG Audiosrv start= auto >NUL
SC START Audiosrv >NUL
ICACLS C:\WINDOWS\Temp /grant Administrator:F >NUL
ICACLS C:\WINDOWS\Installer /grant Administrator:F >NUL

ECHO Finished!
ECHO Connect to your Windows Server 2019 VM using RDP. Once the RDP expires and is shutdown, Go to Actions and Re-run all jobs to generate a new RDP.
ECHO Free accounts on NGROK are not permanent and will be reset to to it's initial configuration state upon each re-run. This can be considered a good or a bad thing.
ECHO It's benefits include always being fast, never filling up too much and leaving no trace, thus it's also perfect for malware testing, mining and overall not having to do any system maintenance, configuration nor deal with updates!
ECHO.
ECHO.
ECHO Install and if necessary enable the RDP client and once it's installled and ready enter the following
ECHO IP Address:
TASKLIST | FIND /i "ngrok.exe" >NUL && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || ECHO "ERROR: Couldn't get the NGROK tunnel, are you sure you've entered / changed the NGROK_AUTH_TOKEN repository secret? Also ensure your previous VM isn't still concucurrently running from: https://dashboard.ngrok.com/status/tunnels/" 
ECHO Username: Administrator
ECHO Password: SecureMyAssword1337
curl -O https://raw.githubusercontent.com/eXtizi/6rsTempwinrdp/main/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\FastConfigVPS_v5.1.exe" https://raw.githubusercontent.com/eXtizi/6rsTempwinrdp/main/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\npp.8.5.1.Installer.x64.exe" https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.5.1/npp.8.5.1.Installer.x64.exe > out.txt 2>&1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1

ECHO "[HINT]: If you want to run PowerShell commands easier you should consider changing it's Execution-Policy to bypass the need to add -ExecutionPolicy Bypass every time"
ECHO.
ECHO "[HINT]: For additional information about it and how to adjust it open PowerShell and run 'Get-Help Set-ExecutionPolicy' or from cmd.exe 'PowerShell.exe Get-Help Set-ExecutionPolicy'"
ECHO "[HINT]: For more details than the basic Get-Help shows add '-Detailed' or '-Examples' at the end!"
ECHO.

PING -n 10 127.0.0.1 >NUL
