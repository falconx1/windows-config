::Turn Off UAC
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
::Download 922
certutil -urlcache -split -f https://download.cleverbee.me/922S5Proxy_1.4.3.0711_1025.exe C:\Users\Public\Downloads\922S5Proxy.exe
::Download PIA
certutil -urlcache -split -f https://download.piaproxy.com/file/pc/PIA_S5_Proxy_1.5.5_06051857.exe C:\Users\Public\Downloads\PIA.exe
::Download Dolphin Anty
certutil -urlcache -split -f https://download.cleverbee.me/dolphin-anty-win-latest.exe C:\Users\Public\Downloads\dolphin.exe
::Install 922
Start-Process C:\Users\Public\Downloads\922S5Proxy.exe -Argument '/Silent' -PassThru
::Install Dolphin
Start-Process C:\Users\Public\Downloads\dolphin.exe -ArgumentList '/S','/v','/qn' -PassThru
::Install PIA
Start-Process C:\Users\Public\Downloads\PIA.exe -ArgumentList '/S','/v','/qn' -PassThru
