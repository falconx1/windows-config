certutil -urlcache -split -f "https://github.com/songhieu/rustdesk/releases/download/nightly/rustdesk-1.2.4-x86_64.exe" "C:\Users\Public\Downloads\RustDesk.exe"
start /wait C:\Users\Public\Downloads\RustDesk.exe --silent-install
timeout /t 5
cd /d C:\Program Files\RustDesk
rustdesk.exe --set-password Global@25#
