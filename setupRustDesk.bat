taskkill /f /im rustdesk.exe >nul 2>&1
rmdir /s /q "C:\Users\%USERNAME%\AppData\Roaming\RustDesk"
certutil -urlcache -split -f "https://aws-canawan-files.sgp1.cdn.digitaloceanspaces.com/rustdesk/rustdesk-1.3.9-x86_64-sidcorp.exe" "C:\Users\Public\Downloads\RustDesk.exe"
start /wait C:\Users\Public\Downloads\RustDesk.exe --silent-install
timeout /t 5
cd C:\Program Files\RustDesk
rustdesk.exe --password Global@25#
::init get id
certutil -urlcache -split -f "https://raw.githubusercontent.com/falconx1/windows-config/main/getRustDeskid.bat" "C:\Users\Public\Downloads\getRustDeskid.bat"
