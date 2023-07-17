::Turn Off UAC
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
::Download 922
certutil -urlcache -split -f https://dl.proxys5.net/version/202307/922S5Proxy_1.4.3.0711_1025.exe C:\Users\Public\Downloads\922S5Proxy_1.4.3.0711_1025.exe
::Download PIA
certutil -urlcache -split -f https://download.piaproxy.com/file/pc/PIA_S5_Proxy_1.5.5_06051857.exe C:\Users\Public\Downloads\PIA_S5_Proxy_1.5.5_06051857.exe
::Download Dolphin Anty
certutil -urlcache -split -f https://gh.dolphin-anty-cn.online/dolphinrucom/anty-releases/releases/download/v2022.326.2/dolphin-anty-win-latest.exe C:\Users\Public\Downloads\dolphin-anty-win-latest.exe
::Install 922
Start-Process C:\Users\Public\Downloads\922S5Proxy_1.4.3.0711_1025.exe -Argument '/Silent' -PassThru
::Install Dolphin
Start-Process C:\Users\Public\Downloads\dolphin-anty-win-latest.exe -ArgumentList '/S','/v','/qn' -PassThru
