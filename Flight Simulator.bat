@echo off
start "" "explorer.exe" "shell:AppsFolder\Microsoft.FlightSimulator_8wekyb3d8bbwe!App"


timeout /t 221 /nobreak > nul
Taskkill /f /im explorer.exe

:repeat
timeout /t 5 /nobreak > nul
tasklist /fi "IMAGENAME eq FlightSimulator.exe" | find "FlightSimulator.exe" > nul && goto :repeat
start "" "%WINDIR%\explorer.exe"