taskkill /IM cloudflared.exe /F
if exist "%USERPROFILE%\.cloudflared" del /s/q "%USERPROFILE%\.cloudflared\*.*"
start /B C:\Cloudflared\bin\cloudflared.exe access rdp --hostname [access hostname] --url localhost:2244 --destination [workstation]:3389 > NUL
mstsc /v:localhost:2244
taskkill /IM cloudflared.exe /F