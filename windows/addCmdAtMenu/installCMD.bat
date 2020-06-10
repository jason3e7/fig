@echo off

rem Folder
@reg add "HKEY_CLASSES_ROOT\Folder\shell\runas"         /t REG_SZ /v "" /d "CMD"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\runas"         /t REG_SZ /v "HasLUAShield" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\runas\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%L\"" /f

rem Directory\Background
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\runas"         /t REG_SZ /v "" /d "CMD" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\runas"         /t REG_SZ /v "HasLUAShield" /d "" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\runas\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%V\"" /f

pause
