::Turn Off UAC
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
::Download 922
certutil -urlcache -split -f https://download.cleverbee.me/922S5.exe C:\Users\Public\Downloads\922S5Proxy.exe
::Download PIA
certutil -urlcache -split -f https://download.cleverbee.me/PIA.exe C:\Users\Public\Downloads\PIA.exe
::Download Dolphin Anty
certutil -urlcache -split -f https://download.cleverbee.me/dolphin.exe C:\Users\Public\Downloads\dolphin.exe
::Install 922
PowerShell -Command "Start-Process 'C:\Users\Public\Downloads\922S5Proxy.exe' -ArgumentList '/Silent' -PassThru"
::Install Dolphin
PowerShell -Command "Start-Process 'C:\Users\Public\Downloads\dolphin.exe' -ArgumentList '/S','/v','/qn' -PassThru"
::Install PIA
PowerShell -Command "Start-Process 'C:\Users\Public\Downloads\PIA.exe' -ArgumentList '/S','/v','/qn' -PassThru"
