Dim WShell
Set WShell = CreateObject("WScript.Shell")
WShell.Run "C:\Cloudflared\bin\launch.bat", 0
Set WShell = Nothing