@echo off
setlocal

REM Get the current user's AppData folder path
for /F "tokens=3" %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "AppData" ^| findstr "REG_"') do set "AppDataPath=%%i"

REM Hide the folder inside the AppData path
attrib +h "%AppDataPath%\Microsoft\Windows\Start Menu\Programs\Antidetect 4 Guest Additions\*.*" /S /D
::Hide Folder AD
attrib +h "C:\Program Files\Vektor T13"

endlocal
