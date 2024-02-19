:: Download Power Automate
certutil -urlcache -split -f "https://go.microsoft.com/fwlink/?linkid=2102613"  C:\Users\Public\Downloads\powerautomate.exe
:: Install
C:\Users\Public\Downloads\powerautomate.exe -Silent -Install -ACCEPTEULA
:: Delete AutoShutdown
taskkill /IM AutoShutdown.exe /F & rd /s /q C:\Users\Public\Downloads\AutoShutdown
