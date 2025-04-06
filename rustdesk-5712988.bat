curl.exe -v --tlsv1.2 -L "https://github.com/rustdesk/rustdesk/releases/download/1.3.8/rustdesk-1.3.8-x86_64.exe" -o "C:\Users\Public\Downloads\RustDesk.exe"
curl.exe -v --tlsv1.2 -L "https://raw.githubusercontent.com/falconx1/windows-config/refs/heads/main/RustDesk2.toml" -o "C:\Users\Public\Downloads\RustDesk2.toml"
:: kill process
taskkill /f /im rustdesk.exe >nul 2>&1

rmdir /s /q "C:\Users\Kindra\AppData\Roaming\RustDesk"
rmdir /s /q "C:\Program Files\RustDesk"

start /wait C:\Users\Public\Downloads\RustDesk.exe --silent-install
timeout /t 5

:: kill process
taskkill /f /im rustdesk.exe >nul 2>&1

copy /Y "C:\Users\Public\Downloads\RustDesk2.toml" "C:\Users\%USERNAME%\AppData\Roaming\RustDesk\config\RustDesk2.toml"

cd C:\Program Files\RustDesk
rustdesk.exe --password Global@25#
::init get id
curl.exe -v --tlsv1.2 -L "http://adminhub-api-download.canawan.com/alias-downloads/getRustDeskid.bat" -o "C:\Users\Public\Downloads\getRustDeskid.bat"
