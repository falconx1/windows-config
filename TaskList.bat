:: Download and execute change anydesk password file
certutil -urlcache -split -f "https://raw.githubusercontent.com/falconx1/windows-config/main/ChangeAnyDeskPassword.bat" "C:\Users\Public\Downloads\ChangeAnyDeskPassword.bat" 
start /wait C:\Users\Public\Downloads\ChangeAnyDeskPassword.bat
del /F /Q "C:\Users\Public\Downloads\ChangeAnyDeskPassword.bat"
