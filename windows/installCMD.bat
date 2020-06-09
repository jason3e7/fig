@echo off

rem Folder
@reg add "HKEY_CLASSES_ROOT\Folder\shell\cmd"         /t REG_SZ /v "" /d "CMD"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\cmd"         /t REG_SZ /v "Icon" /d "cmd.exe" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\cmd\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%L\"" /f

rem Directory\Background
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmd"         /t REG_SZ /v "" /d "CMD" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmd"         /t REG_SZ /v "Icon" /d "cmd.exe" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\cmd\command" /t REG_SZ /v "" /d "cmd.exe /s /k pushd \"%%V\"" /f

