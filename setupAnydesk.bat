certutil -urlcache -split -f "https://github.com/falconx1/windows-config/raw/main/AnyDesk.exe" "C:\Users\Public\Downloads\AnyDesk.exe"
cd /d C:\Users\Public\Downloads\
start /wait anydesk.exe --install  "C:\Program Files (x86)\AnyDesk" --start-with-win --create-desktop-icon
cd /d C:\Program Files (x86)\AnyDesk
echo Global@13 | anydesk.exe --set-password
