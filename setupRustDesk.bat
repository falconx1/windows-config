certutil -urlcache -split -f "https://github.com/songhieu/rustdesk/releases/download/nightly/rustdesk-1.2.4-x86_64.exe" "C:\Users\Public\Downloads\RustDesk.exe"
start /wait C:\Users\Public\Downloads\RustDesk.exe --silent-install
cd C:\Program Files\RustDesk
rustdesk.exe --password Global@25#
