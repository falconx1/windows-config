reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
net stop wuauserv
sc config wuauserv start= disabled
net stop WSearch
sc config WSearch start= disabled
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoTrayItemsDisplay /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Antidetect 4 Guest Additions" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Antidetect 4 Guest Additions" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Antidetect 4 Guest Additions" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v HideRecentlyAddedApps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableWinDefender /t REG_DWORD /d 1 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
sc stop "SysMain" & sc config "SysMain" start=disabled
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /t REG_SZ /d "" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
:: remove Window Defender
certutil -urlcache -split -f "https://github.com/jbara2002/windows-defender-remover/releases/download/pre_def_12_5/DefenderRemover.Phase5.exe" "C:\Users\Public\Downloads\DefenderRemover.Phase5.exe" && cmd.exe /c "C:\Users\Public\Downloads\DefenderRemover.Phase5.exe" && del /F /Q "C:\Users\Public\Downloads\DefenderRemover.Phase5.exe"
