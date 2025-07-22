@echo off

REM Ejecutar PowerShell con permisos de bypass e instalar Chocolatey
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"

REM Esperar unos segundos para asegurar que la instalación termine
timeout /t 10 >nul

REM Instalar ffmpeg con Chocolatey (usando ruta absoluta para evitar problemas de PATH)
start "" powershell -NoProfile -ExecutionPolicy Bypass -Command "%ALLUSERSPROFILE%\chocolatey\bin\choco.exe install ffmpeg -y; Read-Host -Prompt 'Presiona Enter para salir'"

REM Mantener la consola abierta
cmd /k
