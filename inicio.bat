@echo off
setlocal

:: VARIABLES
set f1="%USERPROFILE%\OneDrive\Desktop\gestor_dinero"
set f2="%USERPROFILE%\OneDrive\Desktop\algorithms-python"

:: COLORES
set green="#00FF00"
set blue="#03FAFE"

:: Personal colorScheme
set "CUSTOM_SCHEME=Intan"
set "FALLBACK_SCHEME=Tango Dark"

:: Local State de Windows Terminal
set "SETTINGS_PATH=%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

:: Comprobar si existe el colorScheme
findstr /C:"\"name\": \"%CUSTOM_SCHEME%\"" "%SETTINGS_PATH%" >nul 2>&1

if %errorlevel% equ 0 (
    set "FINAL_SCHEME=%CUSTOM_SCHEME%"
) else (
    set "FINAL_SCHEME=%FALLBACK_SCHEME%"
)

wt ^
    new-tab --title "Algoritmos Python" --colorScheme "%FINAL_SCHEME%" --tabColor %blue% --startingDirectory %f2% cmd ^
    ; new-tab --title "Gestor Dinero" --colorScheme "%FINAL_SCHEME%" --tabColor %green% --startingDirectory %f1% cmd